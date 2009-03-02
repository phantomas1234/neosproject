$TITLE FBA implementation (Proof of Principle)

*
*
*

Sets
    i metabolite/row index /
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
    /;
    j reaction/column index /
    R_PGM
R_ENO
R_EX_ac_e_
R_EX_akg_e_
R_PGK
R_ACKr
R_ADK1
R_ACONT
R_EX_co2_e_
R_CO2t
R_TPI
R_EX_etoh_e_
R_FBA
R_EX_for_e_
R_FORt
R_EX_fum_e_
R_PGI
R_EX_glc_e_
R_FUM
R_EX_h2o_e_
R_H2Ot
R_EX_h_e_
R_ACt2r
R_AKGt2r
R_ETOHt2r
R_EX_lac_D_e_
R_D_LACt2
R_LDH_D
R_MDH
R_ADHEr
R_G6PDH2r
R_ICDHyr
R_EX_o2_e_
R_O2t
R_PIt
R_PTAr
R_ATPS4r
R_GAPD
R_EX_pi_e_
R_EX_pyr_e_
R_PYRt2r
R_SUCD4
R_RPI
R_RPE
R_TALA
R_SUCOAS
R_EX_succ_e_
R_TKT2
R_TKT1
R_PFK
R_FRD
R_PGL
R_ATPM
R_FBP
R_MALS
R_FUMt2_2
R_ICL
R_AKGDH
R_ME1
R_GND
R_ME2
R_THD2
R_NADTRHD
R_PPCK
R_CS
R_GLCpts
R_PPC
R_PYK
R_PFL
R_PPS
R_PDH
R_NADH11
R_CYTBD
R_Biomass_Ecoli_core_N__w_GAM_
R_SUCD1i
R_SUCCt2b
R_SUCCt2_2
    /;

Parameters
    S(i,j) stoichiometric matrix /
    R_PGM . R_PGK	1.
R_PGM . R_GAPD	1.
R_ENO . R_PGM	-1.
R_ENO . R_ENO	-1.
R_EX_ac_e_ . R_PGM	1.
R_EX_ac_e_ . R_PGK	-1.
R_EX_ac_e_ . R_Biomass_Ecoli_core_N__w_GAM_	-1.496
R_EX_akg_e_ . R_PGL	1.
R_EX_akg_e_ . R_GND	-1.
R_PGK . R_G6PDH2r	1.
R_PGK . R_PGL	-1.
R_ACKr . R_ACKr	-1.
R_ACKr . R_ACt2r	1.
R_ADK1 . R_ADHEr	-1.
R_ADK1 . R_PTAr	-1.
R_ADK1 . R_MALS	-1.
R_ADK1 . R_CS	-1.
R_ADK1 . R_PFL	1.
R_ADK1 . R_PDH	1.
R_ADK1 . R_Biomass_Ecoli_core_N__w_GAM_	-3.7478
R_ACONT . R_EX_ac_e_	-1.
R_ACONT . R_ACt2r	-1.
R_EX_co2_e_ . R_ACKr	1.
R_EX_co2_e_ . R_PTAr	1.
R_CO2t . R_PGK	1.
R_CO2t . R_ACKr	1.
R_CO2t . R_ADK1	2.
R_CO2t . R_ATPS4r	-1.
R_CO2t . R_SUCOAS	1.
R_CO2t . R_PFK	1.
R_CO2t . R_ATPM	1.
R_CO2t . R_PPCK	1.
R_CO2t . R_PYK	-1.
R_CO2t . R_Biomass_Ecoli_core_N__w_GAM_	55.703
R_TPI . R_AKGt2r	1.
R_TPI . R_ICDHyr	1.
R_TPI . R_AKGDH	-1.
R_TPI . R_Biomass_Ecoli_core_N__w_GAM_	-1.0789
R_EX_etoh_e_ . R_EX_akg_e_	-1.
R_EX_etoh_e_ . R_AKGt2r	-1.
R_FBA . R_ADK1	-1.
R_FBA . R_PPS	1.
R_EX_for_e_ . R_PGK	-1.
R_EX_for_e_ . R_ACKr	-1.
R_EX_for_e_ . R_ADK1	-1.
R_EX_for_e_ . R_ATPS4r	1.
R_EX_for_e_ . R_SUCOAS	-1.
R_EX_for_e_ . R_PFK	-1.
R_EX_for_e_ . R_ATPM	-1.
R_EX_for_e_ . R_PPCK	-1.
R_EX_for_e_ . R_PYK	1.
R_EX_for_e_ . R_PPS	-1.
R_EX_for_e_ . R_Biomass_Ecoli_core_N__w_GAM_	-55.703
R_FORt . R_ACONT	-1.
R_FORt . R_CS	1.
R_EX_fum_e_ . R_CO2t	1.
R_EX_fum_e_ . R_ICDHyr	1.
R_EX_fum_e_ . R_AKGDH	1.
R_EX_fum_e_ . R_ME1	1.
R_EX_fum_e_ . R_GND	1.
R_EX_fum_e_ . R_ME2	1.
R_EX_fum_e_ . R_PPCK	1.
R_EX_fum_e_ . R_PPC	-1.
R_EX_fum_e_ . R_PDH	1.
R_PGI . R_EX_co2_e_	-1.
R_PGI . R_CO2t	-1.
R_EX_glc_e_ . R_ADHEr	1.
R_EX_glc_e_ . R_PTAr	1.
R_EX_glc_e_ . R_SUCOAS	-1.
R_EX_glc_e_ . R_MALS	1.
R_EX_glc_e_ . R_AKGDH	-1.
R_EX_glc_e_ . R_CS	1.
R_EX_glc_e_ . R_PFL	-1.
R_EX_glc_e_ . R_PDH	-1.
R_EX_glc_e_ . R_Biomass_Ecoli_core_N__w_GAM_	3.7478
R_FUM . R_TPI	-1.
R_FUM . R_FBA	1.
R_EX_h2o_e_ . R_TALA	1.
R_EX_h2o_e_ . R_TKT2	-1.
R_EX_h2o_e_ . R_Biomass_Ecoli_core_N__w_GAM_	-0.361
R_H2Ot . R_ETOHt2r	1.
R_H2Ot . R_ADHEr	1.
R_EX_h_e_ . R_EX_etoh_e_	-1.
R_EX_h_e_ . R_ETOHt2r	-1.
R_ACt2r . R_PGI	1.
R_ACt2r . R_TALA	1.
R_ACt2r . R_TKT2	1.
R_ACt2r . R_PFK	-1.
R_ACt2r . R_FBP	1.
R_ACt2r . R_Biomass_Ecoli_core_N__w_GAM_	-0.0709
R_AKGt2r . R_SUCD4	1.
R_AKGt2r . R_FRD	1.
R_AKGt2r . R_SUCD1i	-1.
R_ETOHt2r . R_SUCD4	-1.
R_ETOHt2r . R_FRD	-1.
R_ETOHt2r . R_SUCD1i	1.
R_EX_lac_D_e_ . R_FBA	-1.
R_EX_lac_D_e_ . R_PFK	1.
R_EX_lac_D_e_ . R_FBP	-1.
R_D_LACt2 . R_FORt	1.
R_D_LACt2 . R_PFL	1.
R_LDH_D . R_EX_for_e_	-1.
R_LDH_D . R_FORt	-1.
R_MDH . R_FUM	-1.
R_MDH . R_FRD	-1.
R_MDH . R_FUMt2_2	1.
R_MDH . R_SUCD1i	1.
R_ADHEr . R_EX_fum_e_	-1.
R_ADHEr . R_FUMt2_2	-1.
R_G6PDH2r . R_TPI	1.
R_G6PDH2r . R_FBA	1.
R_G6PDH2r . R_GAPD	-1.
R_G6PDH2r . R_TALA	-1.
R_G6PDH2r . R_TKT2	1.
R_G6PDH2r . R_TKT1	1.
R_G6PDH2r . R_Biomass_Ecoli_core_N__w_GAM_	-0.129
R_ICDHyr . R_PGI	-1.
R_ICDHyr . R_G6PDH2r	-1.
R_ICDHyr . R_GLCpts	1.
R_ICDHyr . R_Biomass_Ecoli_core_N__w_GAM_	-0.205
R_EX_o2_e_ . R_EX_glc_e_	-1.
R_EX_o2_e_ . R_GLCpts	-1.
R_O2t . R_MALS	-1.
R_O2t . R_ICL	1.
R_PIt . R_ENO	1.
R_PIt . R_FUM	-1.
R_PIt . R_H2Ot	1.
R_PIt . R_ATPS4r	1.
R_PIt . R_PGL	-1.
R_PIt . R_ATPM	-1.
R_PIt . R_FBP	-1.
R_PIt . R_MALS	-1.
R_PIt . R_CS	-1.
R_PIt . R_PPC	-1.
R_PIt . R_PPS	-1.
R_PIt . R_CYTBD	1.
R_PIt . R_Biomass_Ecoli_core_N__w_GAM_	-55.703
R_PTAr . R_EX_h2o_e_	-1.
R_PTAr . R_H2Ot	-1.
R_ATPS4r . R_ACt2r	1.
R_ATPS4r . R_AKGt2r	1.
R_ATPS4r . R_ETOHt2r	1.
R_ATPS4r . R_D_LACt2	1.
R_ATPS4r . R_LDH_D	1.
R_ATPS4r . R_MDH	1.
R_ATPS4r . R_ADHEr	-2.
R_ATPS4r . R_G6PDH2r	1.
R_ATPS4r . R_ATPS4r	3.
R_ATPS4r . R_GAPD	1.
R_ATPS4r . R_PYRt2r	1.
R_ATPS4r . R_PFK	1.
R_ATPS4r . R_PGL	1.
R_ATPS4r . R_ATPM	1.
R_ATPS4r . R_MALS	1.
R_ATPS4r . R_FUMt2_2	2.
R_ATPS4r . R_THD2	2.
R_ATPS4r . R_CS	1.
R_ATPS4r . R_PPC	1.
R_ATPS4r . R_PYK	-1.
R_ATPS4r . R_PPS	2.
R_ATPS4r . R_NADH11	-3.
R_ATPS4r . R_CYTBD	-2.
R_ATPS4r . R_Biomass_Ecoli_core_N__w_GAM_	41.025
R_ATPS4r . R_SUCCt2b	-1.
R_ATPS4r . R_SUCCt2_2	2.
R_GAPD . R_EX_h_e_	-1.
R_GAPD . R_ACt2r	-1.
R_GAPD . R_AKGt2r	-1.
R_GAPD . R_ETOHt2r	-1.
R_GAPD . R_D_LACt2	-1.
R_GAPD . R_ATPS4r	-4.
R_GAPD . R_PYRt2r	-1.
R_GAPD . R_FUMt2_2	-2.
R_GAPD . R_THD2	-2.
R_GAPD . R_NADH11	2.
R_GAPD . R_CYTBD	2.
R_GAPD . R_SUCCt2b	1.
R_GAPD . R_SUCCt2_2	-2.
R_EX_pi_e_ . R_ACONT	1.
R_EX_pi_e_ . R_ICDHyr	-1.
R_EX_pi_e_ . R_ICL	-1.
R_EX_pyr_e_ . R_D_LACt2	1.
R_EX_pyr_e_ . R_LDH_D	-1.
R_PYRt2r . R_EX_lac_D_e_	-1.
R_PYRt2r . R_D_LACt2	-1.
R_SUCD4 . R_FUM	1.
R_SUCD4 . R_MDH	-1.
R_SUCD4 . R_MALS	1.
R_SUCD4 . R_ME1	-1.
R_SUCD4 . R_ME2	-1.
R_RPI . R_LDH_D	-1.
R_RPI . R_MDH	-1.
R_RPI . R_ADHEr	2.
R_RPI . R_GAPD	-1.
R_RPI . R_AKGDH	-1.
R_RPI . R_ME1	-1.
R_RPI . R_THD2	1.
R_RPI . R_NADTRHD	-1.
R_RPI . R_PDH	-1.
R_RPI . R_NADH11	1.
R_RPI . R_Biomass_Ecoli_core_N__w_GAM_	-3.547
R_RPE . R_LDH_D	1.
R_RPE . R_MDH	1.
R_RPE . R_ADHEr	-2.
R_RPE . R_GAPD	1.
R_RPE . R_AKGDH	1.
R_RPE . R_ME1	1.
R_RPE . R_THD2	-1.
R_RPE . R_NADTRHD	1.
R_RPE . R_PDH	1.
R_RPE . R_NADH11	-1.
R_RPE . R_Biomass_Ecoli_core_N__w_GAM_	3.547
R_TALA . R_G6PDH2r	-1.
R_TALA . R_ICDHyr	-1.
R_TALA . R_GND	-1.
R_TALA . R_ME2	-1.
R_TALA . R_THD2	-1.
R_TALA . R_NADTRHD	1.
R_TALA . R_Biomass_Ecoli_core_N__w_GAM_	18.225
R_SUCOAS . R_G6PDH2r	1.
R_SUCOAS . R_ICDHyr	1.
R_SUCOAS . R_GND	1.
R_SUCOAS . R_ME2	1.
R_SUCOAS . R_THD2	1.
R_SUCOAS . R_NADTRHD	-1.
R_SUCOAS . R_Biomass_Ecoli_core_N__w_GAM_	-18.225
R_EX_succ_e_ . R_O2t	1.
R_EX_succ_e_ . R_CYTBD	-0.5
R_TKT2 . R_EX_o2_e_	-1.
R_TKT2 . R_O2t	-1.
R_TKT1 . R_MDH	1.
R_TKT1 . R_PPCK	-1.
R_TKT1 . R_CS	-1.
R_TKT1 . R_PPC	1.
R_TKT1 . R_Biomass_Ecoli_core_N__w_GAM_	-1.7867
R_PFK . R_ENO	1.
R_PFK . R_PPCK	1.
R_PFK . R_GLCpts	-1.
R_PFK . R_PPC	-1.
R_PFK . R_PYK	-1.
R_PFK . R_PPS	1.
R_PFK . R_Biomass_Ecoli_core_N__w_GAM_	-0.5191
R_FRD . R_PIt	-1.
R_FRD . R_PTAr	-1.
R_FRD . R_ATPS4r	-1.
R_FRD . R_GAPD	-1.
R_FRD . R_SUCOAS	1.
R_FRD . R_ATPM	1.
R_FRD . R_FBP	1.
R_FRD . R_PPC	1.
R_FRD . R_PPS	1.
R_FRD . R_Biomass_Ecoli_core_N__w_GAM_	55.703
R_PGL . R_PIt	1.
R_PGL . R_EX_pi_e_	-1.
R_ATPM . R_LDH_D	1.
R_ATPM . R_PYRt2r	1.
R_ATPM . R_ME1	1.
R_ATPM . R_ME2	1.
R_ATPM . R_GLCpts	1.
R_ATPM . R_PYK	1.
R_ATPM . R_PFL	-1.
R_ATPM . R_PPS	-1.
R_ATPM . R_PDH	-1.
R_ATPM . R_Biomass_Ecoli_core_N__w_GAM_	-2.8328
R_FBP . R_EX_pyr_e_	-1.
R_FBP . R_PYRt2r	-1.
R_MALS . R_SUCD4	-1.
R_MALS . R_NADH11	-1.
R_MALS . R_CYTBD	1.
R_FUMt2_2 . R_SUCD4	1.
R_FUMt2_2 . R_NADH11	1.
R_FUMt2_2 . R_CYTBD	-1.
R_ICL . R_RPI	-1.
R_ICL . R_TKT1	-1.
R_ICL . R_Biomass_Ecoli_core_N__w_GAM_	-0.8977
R_AKGDH . R_RPI	1.
R_AKGDH . R_RPE	-1.
R_AKGDH . R_GND	1.
R_ME1 . R_TALA	-1.
R_ME1 . R_TKT1	1.
R_GND . R_SUCOAS	-1.
R_GND . R_FRD	1.
R_GND . R_ICL	1.
R_GND . R_SUCD1i	-1.
R_GND . R_SUCCt2b	-1.
R_GND . R_SUCCt2_2	1.
R_ME2 . R_EX_succ_e_	-1.
R_ME2 . R_SUCCt2b	1.
R_ME2 . R_SUCCt2_2	-1.
R_THD2 . R_SUCOAS	1.
R_THD2 . R_AKGDH	1.
R_NADTRHD . R_RPE	1.
R_NADTRHD . R_TKT2	-1.
R_NADTRHD . R_TKT1	-1.

    /;

Variables
    Z objective function value
    v(j) flux vector;

positive variable v;

Equations
    obj objective function
    st_constr stoichiometric constraints
    
obj.. Z =e= v(R_Biomass_Ecoli_core_N__w_GAM_)
st_constr(i).. sum(j, S(i,j)*v(j)) =e= 0;

Model fba /all/;

Solve fba using lp maximizing Z;