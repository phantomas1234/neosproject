$Title PAKLIVE: Pakistan Punjab Livestock Model (PAKLIVE,SEQ=55)
$Stitle Set Definitions

$Ontext

   This model examines the role of livestock in the agricultural
   sector in the Punjab and how it is effected by variations in
   farm size, water availability, credit, crop prices and labor.


World Bank, Pakistan Punjab Livestock Project. Tech. rep., The World Bank,
1977.

$Offtext


 Set c      crops   / wheat
                      basrice
                      irrrice   irradiated rice
                      maize
                      oilseed
                      gram
                      cotton
                      sugar
                      berseem
                      kharfodder                  /

     h      livestock types / bullocks , bufflocows , cattlecows /

     f      seasonal inputs    / landuse
                                 irrwat      irrigation water
                                 labor
                                 tdn         total digestible nutrients
                                 protein
                                 draftpower
                                 credit                           /

     n(f)   nutrients          / tdn , protein /

     dp(f)  draftpower         / draftpower /

     ta     seasons and annual / annual , kharif , rabi /

     t(ta)  seasons            / kharif , rabi /


 Scalar     fsize     farm size (acres)                        / 12.5 /
            watercost cost of purchased water (rs per inch)    / 20   /
            laborcost cost of hired labor (rs per man-day)     / 10   /
            maxcredit maximum annual credit  (rs)              / 20000 /
            lrr       livestock reproduction ratio             /  1.25 /
            wpup      maximum water purchaseable (inches)      / 17.5  /
            draftcost cost of hired draftpower (rs per workday)/ 30    /

 Parameter  bullockr(c)   bullock requirements in the third season (work-days) / wheat 8, oilseed 2, sugar 1, berseem 2/
            bullocka(h)   livestock availability in third season (work-days)   / bullocks 40 /
            waf(t)        maximum water available at no cost (inches per acre) / kharif   56 , rabi    32 /
            rationcost(n) cost of purchased rations  (rs per kg)               / tdn     1.3 , protein  5 /
            cprice(c)     crop prices (rs per maund)  / wheat   41.15, basrice  89.38, irrrice  39.92, maize  37.04
                                                        oilseed 59.26, gram     37.04, cotton  127.27, sugar   5.96 /

            gmargin(h)    gross margin from livestock (rs) / bufflocows 900 , cattlecows 600 /
            eff(n)        storage efficiency of nutrients  / tdn  .5 /
            maxflab(t)    maximum seasonal family labor (man-days)   / kharif 390 , rabi 530 /
            watavail(t)   max water available on farm at no cost (inches)
            crev(c)       crop revenue (rs per acre)

 Table  cinput(*,ta,c)  input-output matrix for crops

* landuse   : acres
* irrwat    : inches
* labor     : man-days
* draftpower: work-days
* tdn       : kgs
* protein   : kgs
* credit    : rs per year
* yield     : maund/acre per year

                       wheat  basrice  irrrice  maize  oilseed  gram  cotton  sugar  berseem  kharfodder

 landuse.kharif         .1      1.       1.      1.      .3      .3    1.      1.     .3        1.
 landuse.rabi           1.      .1                       .6      1.    .4      1.     .8         .1
 irrwat.kharif                  65.      60.     25.             30.   25.            15.
 irrwat.rabi            20.                               20.    15.   10.     45.    35.
 labor.kharif           7.      21.      21.     22.       4.     2.   11.     15.     3.       18.
 labor.rabi             16.      9.       9.      5.      10.     8.   10.     62.    15.        6.
 tdn.kharif                   -530.    -510.   -450.                  -60.   -350.           -2400.
 tdn.rabi             -450.                    -650      -85.  -215. -130.   -1775. -1940.
 protein.kharif                 -6.      -8.    -31.                   -1.     -6.            -242.
 protein.rabi
 draftpower.kharif      12.      8.       8.               3.     3.                    3.
 draftpower.rabi         6.      1.       1.      7.       1.     3.    7.     30.               6.
 credit.annual         150.     180.     220.    100.     120.   70.   145.   500.       65.   120
 yield.annual          -16     -11.4    -21     -10       -6     -6   -10    -375

 Table     linput(*,ta,h)    livestock inputs-outputs

* labor      : man-days
* draftpower : work-days
* tdn        : kgs
* protein    : kgs
* credit     : rs per year
                               bullocks  bufflocows  cattlecows

      labor.kharif                17.5       19          14
      labor.rabi                  26.5       29          21.5
      draftpower.kharif         -100
      draftpower.rabi           -175
      tdn.(kharif,rabi)          1550       1050         750
      protein.(kharif,rabi)       155        105          75
      credit.annual               300        250         180
                                                            ;

 crev(c)  = - cprice(c)*cinput("yield","annual",c);
 watavail(t) = fsize*waf(t);
 Display crev,watavail ;

$Stitle model definition

 Positive variables xcrop(c)       cropping activities                (acres)
                    wpurchase(t)   water purchased                   (inches)
                    xrations(n,t)  purchased rations                     (kg)
                    xlabor(t)      hired labor                     (man-days)
                    xtransf(n,t)   fodder transfer                      (kgs)
                    dhire          hire of draftpower               (workday)
                    xlivestk(h)    livestock production             (animals)

 Variable           rev            revenue from livestock and crops      (rs)
                    lcost          cost of hired labor                   (rs)
                    dcost          cost of hired draftpower              (rs)
                    wcost          cost of purchased water               (rs)
                    rcost          cost of purchased rations             (rs)
                    return         net return

 Equations      draft(dp,t)   draftpower constraint                  (work-day)
                land(t)       land use by season                         (acre)
                water(t)      irrigation water use by season           (inches)
                labor(t)      total labor required by season          (man-day)
                nutbal(n,t)   seasonal purchase of nutrients              (kgs)
                bullock       bullock use during third season       (work-days)
                credit        credit requirements                          (rs)
                totalrev      total revenue from crops and livestock       (rs)
                costlabor     cost of hired labor                          (rs)
                costdraft     cost of hired draftpower                     (rs)
                costwater     cost of purchased water                      (rs)
                costrat       cost of purchased rations                    (rs)
                obj           net return                                   (rs);

 totalrev..   rev =e= sum(c, crev(c)*xcrop(c)) +sum(h, gmargin(h)*xlivestk(h));

 costdraft..  dcost =e= draftcost*dhire;

 costlabor..  lcost =e= laborcost*sum(t, xlabor(t));

 costwater..  wcost =e= watercost*sum(t, wpurchase(t));

 costrat..    rcost =e= sum(n, rationcost(n)*sum(t, xrations(n,t)));

 obj..        return =e= rev  - lcost - wcost - rcost - dcost;

 land(t)..    sum(c, cinput("landuse",t,c)*xcrop(c)) =l= fsize;

 water(t)..   sum(c, cinput("irrwat",t,c)*xcrop(c)) =l= watavail(t) + wpurchase(t);

 labor(t)..  sum(c, cinput("labor",t,c)*xcrop(c)) + sum(h, linput("labor",t,h)*xlivestk(h)) =l= maxflab(t) + xlabor(t);

 draft(dp,t).. sum(c, cinput(dp,t,c)*xcrop(c)) =l= - sum(h, linput(dp,t,h)*xlivestk(h));

 bullock..     sum(c, bullockr(c)*xcrop(c)) =l= sum(h, bullocka(h)*xlivestk(h)) + dhire;

 credit..      sum(c, cinput("credit","annual",c)*xcrop(c)) + sum(h, linput("credit","annual",h)*xlivestk(h))
             + rcost + lcost + wcost + dcost =l= maxcredit;

 nutbal(n,t).. - sum(c, cinput(n,t,c)*xcrop(c)) + eff(n)*xtransf(n,t--1) + xrations(n,t)
             =g= sum(h, linput(n,t,h)* xlivestk(h));

 xcrop.up("sugar") = 2 ;
 wpurchase.up(t)   = wpup ;

 Model pakistan / all /;
 Solve pakistan using lp maximizing return;

 Parameter ivl  imputed value of family labor (rs);
 ivl= rev.l / sum (t, sum(c, cinput("labor",t,c)*xcrop.l(c))+sum (h,linput("labor",t,h)*xlivestk.l(h)) );
 Display ivl;
