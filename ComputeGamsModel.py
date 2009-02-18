#!/usr/bin/env python
# encoding: utf-8
"""
ComputeGamsModel.py

Created by Nikolaus Sonnenschein on 2009-02-13.
Copyright (c) 2009 Jacobs University of Bremen. All rights reserved.
"""

import sys
import getopt
import xmlrpclib
import time
import curses


class Neos(object):
    """docstring for Neos"""
    def __init__(self, model, host="neos.mcs.anl.gov", port=3332, modelName="",
    category=None, solver=None, inputMethod=None, priority="short",
    comments="No comment."):
        super(Neos, self).__init__()
        self.xmlTemplate = """<risk>
<exampleName>%s</exampleName>
<category>%s</category>
<solver>%s</solver>
<inputMethod>%s</inputMethod>
<priority>%s</priority>
<model><![CDATA[
%s
]]></model>
<comments>
%s
</comments>
</risk>"""
        self.host = host
        self.port = port
        if model:
            self.model = model
        else:
            self.model = raw_input()
        if modelName:
            self.modelName = modelName
        else:
            self.modelName = self._getMissingParams("model name")
        if category:
            self.category = category
        else:
            self.category = self._getMissingParams("category")
        if solver:
            self.solver = solver
        else:
            self.solver = self._getMissingParams("solver")
        if inputMethod:
            self.inputMethod = inputMethod
        else:
            self.inputMethod = self._getMissingParams("input method")
        self.priority = priority
        self.comments = comments
        self.connection = xmlrpclib.Server("http://%s:%d" % (self.host, self.port))
        self.jobNumber = None
        self.password = None
        self.job = self._wrap()
        self.status = None
        self.jobSubmitted = False
    
    def __str__(self):
        """Prints infos about the Neos connection and the job progress."""
        if self.jobSubmitted == True:
            tmpString = "Jobnumber: " + repr(self.jobNumber) + "\n"
            tmpString += "Password:" + repr(self.password) + "\n"
            return tmpString + "The job has the following status: " + str(self.status)
        else:
            return "No job submitted so far."
    
    def _getMissingParams(self, arg):
        """Ask for missing info."""
        print "Specify the neos " + str(arg) + " please: "
        return raw_input()
    
    def _wrap(self):
        """Wraps the model into the Neos job submission xml template."""
        return self.xmlTemplate % (self.modelName, self.category, self.solver,
        self.inputMethod, self.priority, self.model, self.comments)
    
    def getStatus(self):
        """Get the status from neos."""
        if self.jobSubmitted:
            return self.connection.getJobStatus(self.jobNumber, 
            self.password)
        else:
            return self.status
    
    def submitJob(self):
        """Submits the the wrapped job to neos."""
        (self.jobNumber, self.password) = self.connection.submitJob(self.job)
        if self.jobNumber == 0:
            raise self.password
            sys.exit()
        self.status = self.getStatus()
        self.jobSubmitted = True
        return self.status
    
    def retrieveResults(self):
        return self.connection.getFinalResults(self.jobNumber, self.password).data

    def solve(self, timeDelay=10):
        """docstring for solve"""
        w = curses.initscr()
        w.erase()
        self.submitJob()
        while self.status == "Running" or self.status=="Waiting" or \
        self.status==None:
            self.status = self.getStatus()
            w.erase()
            try:
                w.addstr(time.asctime() + "\n")
                w.addstr(self.__str__())
                w.addstr(self.connection.printQueue())
            except curses.error:
                pass
            w.refresh()
            if self.status == "Done":
                break
            time.sleep(timeDelay)
        curses.endwin()
        print "retrieving results: "
        return self.retrieveResults()

class GAMSmodel(object):
    """docstring for GAMSmodel"""
    def __init__(self, modelTemplate, parameterDict):
        super(GAMSmodel, self).__init__()
        self.model = modelTemplate
        self.parameterDict = parameterDict
        self.modModel = self.model % self.parameterDict
    
    def __str__(self):
        """docstring for __str__"""
        return self.modModel
    
    def submit2neos(self, neos_host="neos.mcs.anl.gov", neos_port=3332):
        """Submits the model to neos"""
        neos=xmlrpclib.Server("http://%s:%d" % (neos_host, neos_port))

def testNeos():
    """docstring for testNeos"""
    stubModel = open('aircraft.lp', 'r').read()
    neos = Neos(stubModel, modelName="aircraft", category="lp", solver="BDMLP", 
    inputMethod="GAMS", comments="None")
    print neos
    results = neos.solve()
    print results
    
def loadParams(path):
    """docstring for loadParams"""
    return eval(open(path, 'r').read())
    

def testGAMSmodel(templatePath, paramsPath):
    """docstring for testGAMSmodel"""
    template = open(templatePath, 'r').read()
    paramDB = loadParams(paramsPath)
    return GAMSmodel(template, paramDB)
    

path1 = "ProofOfPrinciple_GAMS_FBA.txt"
path2 = "/Users/niko/programmingTmp/largePythonDict.txt"
path3 = "/Users/niko/arbeit/Data/SBMLmodels/EcoliCore/EcoliCore_Gams_Parameters.txt"


if __name__ == "__main__":
    # testNeos()
    tmp = testGAMSmodel(path1, path3)
    print tmp
    open('expandedFBAmodel.txt', 'w').write(tmp.modModel)
    # neos = Neos(tmp.modModel, modelName="stub", category="lp", solver="BDMLP", 
    # inputMethod="GAMS", comments="None")
    # results = neos.solve(999)
    # print results









