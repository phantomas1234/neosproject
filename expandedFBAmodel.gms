$TITLE FBA implementation (Proof of Principle)

*
*
*

Sets
    i row index /
    M13dpgc
M2pgc
M3pgc
M6pgcc
M6pglc
Macb
Macc
Maccoac
Mace
Mactpc
Madpc
Makgb
Makgc
Makge
Mampc
Matpc
Mcitc
Mco2b
Mco2c
Mco2e
Mcoac
Mdhapc
Me4pc
Metohb
Metohc
Metohe
Mf6pc
Mfadc
Mfadh2c
Mfdpc
Mforb
Mforc
Mfore
Mfumb
Mfumc
Mfume
Mg3pc
Mg6pc
MglcDb
MglcDe
Mglxc
Mh2ob
Mh2oc
Mh2oe
Mhb
Mhc
Mhe
Micitc
MlacDb
MlacDc
MlacDe
MmalLc
Mnadc
Mnadhc
Mnadpc
Mnadphc
Mo2b
Mo2c
Mo2e
Moaac
Mpepc
Mpib
Mpic
Mpie
Mpyrb
Mpyrc
Mpyre
Mq8c
Mq8h2c
Mr5pc
Mru5pDc
Ms7pc
Msuccb
Msuccc
Msucce
Msuccoac
Mxu5pDc
    /
    j column index /
    R-PGM
R-ENO
R-EX-ac-e-
R-EX-akg-e-
R-PGK
R-ACKr
R-ADK1
R-ACONT
R-EX-co2-e
R-CO2t
R-TPI
R-EX-etoh-e-
R-FBA
R-EX-for-e-
R-FORt
R-EX-fum-e-
R-PGI
R-EX-glc-e-
R-FUM
R-EX-h2o-e-
R-H2Ot
R-EX-h-e-
R-ACt2r
R-AKGt2r
R-ETOHt2r
R-EX-lac-D-e-
R-D-LACt2
R-LDH-D
R-MDH
R-ADHEr
R-G6PDH2r
R-ICDHyr
R-EX-o2-e-
R-O2t
R-PIt
R-PTAr
R-ATPS4r
R-GAPD
R-EX-pi-e-
R-EX-pyr-e-
R-PYRt2r
R-SUCD4
R-RPI
R-RPE
R-TALA
R-SUCOAS
R-EX-succ-e-
R-TKT2
R-TKT1
R-PFK
R-FRD
R-PGL
R-ATPM
R-FBP
R-MALS
R-FUMt2-2
R-ICL
R-AKGDH
R-ME1
R-GND
R-ME2
R-THD2
R-NADTRHD
R-PPCK
R-CS
R-GLCpts
R-PPC
R-PYK
R-PFL
R-PPS
R-PDH
R-NADH11
R-CYTBD
R-Biomass-Ecoli-core-N--w-GAM-
R-SUCD1i
R-SUCCt2b
R-SUCCt2-2
    /
;

Parameters
    S(i,j) stoichiometric matrix /
    R-PGM . R-PGK	1.
R-PGM . R-GAPD	1.
R-ENO . R-PGM	-1.
R-ENO . R-ENO	-1.
R-EX-ac-e- . R-PGM	1.
R-EX-ac-e- . R-PGK	-1.
R-EX-ac-e- . R-Biomass-Ecoli-core-N--w-GAM-	-1.496
R-EX-akg-e- . R-PGL	1.
R-EX-akg-e- . R-GND	-1.
R-PGK . R-G6PDH2r	1.
R-PGK . R-PGL	-1.
R-ACKr . R-ACKr	-1.
R-ACKr . R-ACt2r	1.
R-ADK1 . R-ADHEr	-1.
R-ADK1 . R-PTAr	-1.
R-ADK1 . R-MALS	-1.
R-ADK1 . R-CS	-1.
R-ADK1 . R-PFL	1.
R-ADK1 . R-PDH	1.
R-ADK1 . R-Biomass-Ecoli-core-N--w-GAM-	-3.7478
R-ACONT . R-EX-ac-e-	-1.
R-ACONT . R-ACt2r	-1.
R-EX-co2-e- . R-ACKr	1.
R-EX-co2-e- . R-PTAr	1.
R-CO2t . R-PGK	1.
R-CO2t . R-ACKr	1.
R-CO2t . R-ADK1	2.
R-CO2t . R-ATPS4r	-1.
R-CO2t . R-SUCOAS	1.
R-CO2t . R-PFK	1.
R-CO2t . R-ATPM	1.
R-CO2t . R-PPCK	1.
R-CO2t . R-PYK	-1.
R-CO2t . R-Biomass-Ecoli-core-N--w-GAM-	55.703
R-TPI . R-AKGt2r	1.
R-TPI . R-ICDHyr	1.
R-TPI . R-AKGDH	-1.
R-TPI . R-Biomass-Ecoli-core-N--w-GAM-	-1.0789
R-EX-etoh-e- . R-EX-akg-e-	-1.
R-EX-etoh-e- . R-AKGt2r	-1.
R-FBA . R-ADK1	-1.
R-FBA . R-PPS	1.
R-EX-for-e- . R-PGK	-1.
R-EX-for-e- . R-ACKr	-1.
R-EX-for-e- . R-ADK1	-1.
R-EX-for-e- . R-ATPS4r	1.
R-EX-for-e- . R-SUCOAS	-1.
R-EX-for-e- . R-PFK	-1.
R-EX-for-e- . R-ATPM	-1.
R-EX-for-e- . R-PPCK	-1.
R-EX-for-e- . R-PYK	1.
R-EX-for-e- . R-PPS	-1.
R-EX-for-e- . R-Biomass-Ecoli-core-N--w-GAM-	-55.703
R-FORt . R-ACONT	-1.
R-FORt . R-CS	1.
R-EX-fum-e- . R-CO2t	1.
R-EX-fum-e- . R-ICDHyr	1.
R-EX-fum-e- . R-AKGDH	1.
R-EX-fum-e- . R-ME1	1.
R-EX-fum-e- . R-GND	1.
R-EX-fum-e- . R-ME2	1.
R-EX-fum-e- . R-PPCK	1.
R-EX-fum-e- . R-PPC	-1.
R-EX-fum-e- . R-PDH	1.
R-PGI . R-EX-co2-e-	-1.
R-PGI . R-CO2t	-1.
R-EX-glc-e- . R-ADHEr	1.
R-EX-glc-e- . R-PTAr	1.
R-EX-glc-e- . R-SUCOAS	-1.
R-EX-glc-e- . R-MALS	1.
R-EX-glc-e- . R-AKGDH	-1.
R-EX-glc-e- . R-CS	1.
R-EX-glc-e- . R-PFL	-1.
R-EX-glc-e- . R-PDH	-1.
R-EX-glc-e- . R-Biomass-Ecoli-core-N--w-GAM-	3.7478
R-FUM . R-TPI	-1.
R-FUM . R-FBA	1.
R-EX-h2o-e- . R-TALA	1.
R-EX-h2o-e- . R-TKT2	-1.
R-EX-h2o-e- . R-Biomass-Ecoli-core-N--w-GAM-	-0.361
R-H2Ot . R-ETOHt2r	1.
R-H2Ot . R-ADHEr	1.
R-EX-h-e- . R-EX-etoh-e-	-1.
R-EX-h-e- . R-ETOHt2r	-1.
R-ACt2r . R-PGI	1.
R-ACt2r . R-TALA	1.
R-ACt2r . R-TKT2	1.
R-ACt2r . R-PFK	-1.
R-ACt2r . R-FBP	1.
R-ACt2r . R-Biomass-Ecoli-core-N--w-GAM-	-0.0709
R-AKGt2r . R-SUCD4	1.
R-AKGt2r . R-FRD	1.
R-AKGt2r . R-SUCD1i	-1.
R-ETOHt2r . R-SUCD4	-1.
R-ETOHt2r . R-FRD	-1.
R-ETOHt2r . R-SUCD1i	1.
R-EX-lac-D-e- . R-FBA	-1.
R-EX-lac-D-e- . R-PFK	1.
R-EX-lac-D-e- . R-FBP	-1.
R-D-LACt2 . R-FORt	1.
R-D-LACt2 . R-PFL	1.
R-LDH-D . R-EX-for-e-	-1.
R-LDH-D . R-FORt	-1.
R-MDH . R-FUM	-1.
R-MDH . R-FRD	-1.
R-MDH . R-FUMt2-2	1.
R-MDH . R-SUCD1i	1.
R-ADHEr . R-EX-fum-e-	-1.
R-ADHEr . R-FUMt2-2	-1.
R-G6PDH2r . R-TPI	1.
R-G6PDH2r . R-FBA	1.
R-G6PDH2r . R-GAPD	-1.
R-G6PDH2r . R-TALA	-1.
R-G6PDH2r . R-TKT2	1.
R-G6PDH2r . R-TKT1	1.
R-G6PDH2r . R-Biomass-Ecoli-core-N--w-GAM-	-0.129
R-ICDHyr . R-PGI	-1.
R-ICDHyr . R-G6PDH2r	-1.
R-ICDHyr . R-GLCpts	1.
R-ICDHyr . R-Biomass-Ecoli-core-N--w-GAM-	-0.205
R-EX-o2-e- . R-EX-glc-e-	-1.
R-EX-o2-e- . R-GLCpts	-1.
R-O2t . R-MALS	-1.
R-O2t . R-ICL	1.
R-PIt . R-ENO	1.
R-PIt . R-FUM	-1.
R-PIt . R-H2Ot	1.
R-PIt . R-ATPS4r	1.
R-PIt . R-PGL	-1.
R-PIt . R-ATPM	-1.
R-PIt . R-FBP	-1.
R-PIt . R-MALS	-1.
R-PIt . R-CS	-1.
R-PIt . R-PPC	-1.
R-PIt . R-PPS	-1.
R-PIt . R-CYTBD	1.
R-PIt . R-Biomass-Ecoli-core-N--w-GAM-	-55.703
R-PTAr . R-EX-h2o-e-	-1.
R-PTAr . R-H2Ot	-1.
R-ATPS4r . R-ACt2r	1.
R-ATPS4r . R-AKGt2r	1.
R-ATPS4r . R-ETOHt2r	1.
R-ATPS4r . R-D-LACt2	1.
R-ATPS4r . R-LDH-D	1.
R-ATPS4r . R-MDH	1.
R-ATPS4r . R-ADHEr	-2.
R-ATPS4r . R-G6PDH2r	1.
R-ATPS4r . R-ATPS4r	3.
R-ATPS4r . R-GAPD	1.
R-ATPS4r . R-PYRt2r	1.
R-ATPS4r . R-PFK	1.
R-ATPS4r . R-PGL	1.
R-ATPS4r . R-ATPM	1.
R-ATPS4r . R-MALS	1.
R-ATPS4r . R-FUMt2-2	2.
R-ATPS4r . R-THD2	2.
R-ATPS4r . R-CS	1.
R-ATPS4r . R-PPC	1.
R-ATPS4r . R-PYK	-1.
R-ATPS4r . R-PPS	2.
R-ATPS4r . R-NADH11	-3.
R-ATPS4r . R-CYTBD	-2.
R-ATPS4r . R-Biomass-Ecoli-core-N--w-GAM-	41.025
R-ATPS4r . R-SUCCt2b	-1.
R-ATPS4r . R-SUCCt2-2	2.
R-GAPD . R-EX-h-e-	-1.
R-GAPD . R-ACt2r	-1.
R-GAPD . R-AKGt2r	-1.
R-GAPD . R-ETOHt2r	-1.
R-GAPD . R-D-LACt2	-1.
R-GAPD . R-ATPS4r	-4.
R-GAPD . R-PYRt2r	-1.
R-GAPD . R-FUMt2-2	-2.
R-GAPD . R-THD2	-2.
R-GAPD . R-NADH11	2.
R-GAPD . R-CYTBD	2.
R-GAPD . R-SUCCt2b	1.
R-GAPD . R-SUCCt2-2	-2.
R-EX-pi-e- . R-ACONT	1.
R-EX-pi-e- . R-ICDHyr	-1.
R-EX-pi-e- . R-ICL	-1.
R-EX-pyr-e- . R-D-LACt2	1.
R-EX-pyr-e- . R-LDH-D	-1.
R-PYRt2r . R-EX-lac-D-e-	-1.
R-PYRt2r . R-D-LACt2	-1.
R-SUCD4 . R-FUM	1.
R-SUCD4 . R-MDH	-1.
R-SUCD4 . R-MALS	1.
R-SUCD4 . R-ME1	-1.
R-SUCD4 . R-ME2	-1.
R-RPI . R-LDH-D	-1.
R-RPI . R-MDH	-1.
R-RPI . R-ADHEr	2.
R-RPI . R-GAPD	-1.
R-RPI . R-AKGDH	-1.
R-RPI . R-ME1	-1.
R-RPI . R-THD2	1.
R-RPI . R-NADTRHD	-1.
R-RPI . R-PDH	-1.
R-RPI . R-NADH11	1.
R-RPI . R-Biomass-Ecoli-core-N--w-GAM-	-3.547
R-RPE . R-LDH-D	1.
R-RPE . R-MDH	1.
R-RPE . R-ADHEr	-2.
R-RPE . R-GAPD	1.
R-RPE . R-AKGDH	1.
R-RPE . R-ME1	1.
R-RPE . R-THD2	-1.
R-RPE . R-NADTRHD	1.
R-RPE . R-PDH	1.
R-RPE . R-NADH11	-1.
R-RPE . R-Biomass-Ecoli-core-N--w-GAM-	3.547
R-TALA . R-G6PDH2r	-1.
R-TALA . R-ICDHyr	-1.
R-TALA . R-GND	-1.
R-TALA . R-ME2	-1.
R-TALA . R-THD2	-1.
R-TALA . R-NADTRHD	1.
R-TALA . R-Biomass-Ecoli-core-N--w-GAM-	18.225
R-SUCOAS . R-G6PDH2r	1.
R-SUCOAS . R-ICDHyr	1.
R-SUCOAS . R-GND	1.
R-SUCOAS . R-ME2	1.
R-SUCOAS . R-THD2	1.
R-SUCOAS . R-NADTRHD	-1.
R-SUCOAS . R-Biomass-Ecoli-core-N--w-GAM-	-18.225
R-EX-succ-e- . R-O2t	1.
R-EX-succ-e- . R-CYTBD	-0.5
R-TKT2 . R-EX-o2-e-	-1.
R-TKT2 . R-O2t	-1.
R-TKT1 . R-MDH	1.
R-TKT1 . R-PPCK	-1.
R-TKT1 . R-CS	-1.
R-TKT1 . R-PPC	1.
R-TKT1 . R-Biomass-Ecoli-core-N--w-GAM-	-1.7867
R-PFK . R-ENO	1.
R-PFK . R-PPCK	1.
R-PFK . R-GLCpts	-1.
R-PFK . R-PPC	-1.
R-PFK . R-PYK	-1.
R-PFK . R-PPS	1.
R-PFK . R-Biomass-Ecoli-core-N--w-GAM-	-0.5191
R-FRD . R-PIt	-1.
R-FRD . R-PTAr	-1.
R-FRD . R-ATPS4r	-1.
R-FRD . R-GAPD	-1.
R-FRD . R-SUCOAS	1.
R-FRD . R-ATPM	1.
R-FRD . R-FBP	1.
R-FRD . R-PPC	1.
R-FRD . R-PPS	1.
R-FRD . R-Biomass-Ecoli-core-N--w-GAM-	55.703
R-PGL . R-PIt	1.
R-PGL . R-EX-pi-e-	-1.
R-ATPM . R-LDH-D	1.
R-ATPM . R-PYRt2r	1.
R-ATPM . R-ME1	1.
R-ATPM . R-ME2	1.
R-ATPM . R-GLCpts	1.
R-ATPM . R-PYK	1.
R-ATPM . R-PFL	-1.
R-ATPM . R-PPS	-1.
R-ATPM . R-PDH	-1.
R-ATPM . R-Biomass-Ecoli-core-N--w-GAM-	-2.8328
R-FBP . R-EX-pyr-e-	-1.
R-FBP . R-PYRt2r	-1.
R-MALS . R-SUCD4	-1.
R-MALS . R-NADH11	-1.
R-MALS . R-CYTBD	1.
R-FUMt2-2 . R-SUCD4	1.
R-FUMt2-2 . R-NADH11	1.
R-FUMt2-2 . R-CYTBD	-1.
R-ICL . R-RPI	-1.
R-ICL . R-TKT1	-1.
R-ICL . R-Biomass-Ecoli-core-N--w-GAM-	-0.8977
R-AKGDH . R-RPI	1.
R-AKGDH . R-RPE	-1.
R-AKGDH . R-GND	1.
R-ME1 . R-TALA	-1.
R-ME1 . R-TKT1	1.
R-GND . R-SUCOAS	-1.
R-GND . R-FRD	1.
R-GND . R-ICL	1.
R-GND . R-SUCD1i	-1.
R-GND . R-SUCCt2b	-1.
R-GND . R-SUCCt2-2	1.
R-ME2 . R-EX-succ-e-	-1.
R-ME2 . R-SUCCt2b	1.
R-ME2 . R-SUCCt2-2	-1.
R-THD2 . R-SUCOAS	1.
R-THD2 . R-AKGDH	1.
R-NADTRHD . R-RPE	1.
R-NADTRHD . R-TKT2	-1.
R-NADTRHD . R-TKT1	-1.

    /
;

Variables
    Z objective function value
    v(j) flux vector
;

positive variable v;

Equations
    obj objective function
    st-constr stoichiometric constraints
    
obj.. Z =e= v(R-Biomass-Ecoli-core-N--w-GAM-)
st-constr(i).. sum(j, S(i,j)*v(j)) =e= 0;

Model fba /all/;

Solve fba using lp maximizing Z;