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
    R_PGM
R_PGM_Rev
R_ENO
R_ENO_Rev
R_EX_ac_e_
R_EX_ac_e__Rev
R_EX_akg_e_
R_EX_akg_e__Rev
R_PGK
R_PGK_Rev
R_ACKr
R_ACKr_Rev
R_ADK1
R_ADK1_Rev
R_ACONT
R_ACONT_Rev
R_EX_co2_e_
R_EX_co2_e__Rev
R_CO2t
R_CO2t_Rev
R_TPI
R_TPI_Rev
R_EX_etoh_e_
R_EX_etoh_e__Rev
R_FBA
R_FBA_Rev
R_EX_for_e_
R_EX_for_e__Rev
R_FORt
R_FORt_Rev
R_EX_fum_e_
R_EX_fum_e__Rev
R_PGI
R_PGI_Rev
R_EX_glc_e_
R_EX_glc_e__Rev
R_FUM
R_FUM_Rev
R_EX_h2o_e_
R_EX_h2o_e__Rev
R_H2Ot
R_H2Ot_Rev
R_EX_h_e_
R_EX_h_e__Rev
R_ACt2r
R_ACt2r_Rev
R_AKGt2r
R_AKGt2r_Rev
R_ETOHt2r
R_ETOHt2r_Rev
R_EX_lac_D_e_
R_EX_lac_D_e__Rev
R_D_LACt2
R_D_LACt2_Rev
R_LDH_D
R_LDH_D_Rev
R_MDH
R_MDH_Rev
R_ADHEr
R_ADHEr_Rev
R_G6PDH2r
R_G6PDH2r_Rev
R_ICDHyr
R_ICDHyr_Rev
R_EX_o2_e_
R_EX_o2_e__Rev
R_O2t
R_O2t_Rev
R_PIt
R_PIt_Rev
R_PTAr
R_PTAr_Rev
R_ATPS4r
R_ATPS4r_Rev
R_GAPD
R_GAPD_Rev
R_EX_pi_e_
R_EX_pi_e__Rev
R_EX_pyr_e_
R_EX_pyr_e__Rev
R_PYRt2r
R_PYRt2r_Rev
R_SUCD4
R_SUCD4_Rev
R_RPI
R_RPI_Rev
R_RPE
R_RPE_Rev
R_TALA
R_TALA_Rev
R_SUCOAS
R_SUCOAS_Rev
R_EX_succ_e_
R_EX_succ_e__Rev
R_TKT2
R_TKT2_Rev
R_TKT1
R_TKT1_Rev
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
    /
;

Parameters
    S(i,j) stoichiometric matrix /
    M13dpgc . R_PGK = 1.
M13dpgc . R_PGK_Rev = -1.
M13dpgc . R_GAPD = 1.
M13dpgc . R_GAPD_Rev = -1.
M2pgc . R_PGM = -1.
M2pgc . R_PGM_Rev = 1.
M2pgc . R_ENO = -1.
M2pgc . R_ENO_Rev = 1.
M3pgc . R_PGM = 1.
M3pgc . R_PGM_Rev = -1.
M3pgc . R_PGK = -1.
M3pgc . R_PGK_Rev = 1.
M3pgc . R_Biomass_Ecoli_core_N__w_GAM_ = -1.496
M6pgcc . R_PGL = 1.
M6pgcc . R_GND = -1.
M6pglc . R_G6PDH2r = 1.
M6pglc . R_G6PDH2r_Rev = -1.
M6pglc . R_PGL = -1.
Macb . R_ACKr = -1.
Macb . R_ACKr_Rev = 1.
Macb . R_ACt2r = 1.
Macb . R_ACt2r_Rev = -1.
Macc . R_ADHEr = -1.
Macc . R_ADHEr_Rev = 1.
Macc . R_PTAr = -1.
Macc . R_PTAr_Rev = 1.
Macc . R_MALS = -1.
Macc . R_CS = -1.
Macc . R_PFL = 1.
Macc . R_PDH = 1.
Macc . R_Biomass_Ecoli_core_N__w_GAM_ = -3.7478
Maccoac . R_EX_ac_e_ = -1.
Maccoac . R_EX_ac_e__Rev = 1.
Maccoac . R_ACt2r = -1.
Maccoac . R_ACt2r_Rev = 1.
Mace . R_ACKr = 1.
Mace . R_ACKr_Rev = -1.
Mace . R_PTAr = 1.
Mace . R_PTAr_Rev = -1.
Mactpc . R_PGK = 1.
Mactpc . R_PGK_Rev = -1.
Mactpc . R_ACKr = 1.
Mactpc . R_ACKr_Rev = -1.
Mactpc . R_ADK1 = 2.
Mactpc . R_ADK1_Rev = -2.
Mactpc . R_ATPS4r = -1.
Mactpc . R_ATPS4r_Rev = 1.
Mactpc . R_SUCOAS = 1.
Mactpc . R_SUCOAS_Rev = -1.
Mactpc . R_PFK = 1.
Mactpc . R_ATPM = 1.
Mactpc . R_PPCK = 1.
Mactpc . R_PYK = -1.
Mactpc . R_Biomass_Ecoli_core_N__w_GAM_ = 55.703
Madpc . R_AKGt2r = 1.
Madpc . R_AKGt2r_Rev = -1.
Madpc . R_ICDHyr = 1.
Madpc . R_ICDHyr_Rev = -1.
Madpc . R_AKGDH = -1.
Madpc . R_Biomass_Ecoli_core_N__w_GAM_ = -1.0789
Makgb . R_EX_akg_e_ = -1.
Makgb . R_EX_akg_e__Rev = 1.
Makgb . R_AKGt2r = -1.
Makgb . R_AKGt2r_Rev = 1.
Makgc . R_ADK1 = -1.
Makgc . R_ADK1_Rev = 1.
Makgc . R_PPS = 1.
Makge . R_PGK = -1.
Makge . R_PGK_Rev = 1.
Makge . R_ACKr = -1.
Makge . R_ACKr_Rev = 1.
Makge . R_ADK1 = -1.
Makge . R_ADK1_Rev = 1.
Makge . R_ATPS4r = 1.
Makge . R_ATPS4r_Rev = -1.
Makge . R_SUCOAS = -1.
Makge . R_SUCOAS_Rev = 1.
Makge . R_PFK = -1.
Makge . R_ATPM = -1.
Makge . R_PPCK = -1.
Makge . R_PYK = 1.
Makge . R_PPS = -1.
Makge . R_Biomass_Ecoli_core_N__w_GAM_ = -55.703
Mampc . R_ACONT = -1.
Mampc . R_ACONT_Rev = 1.
Mampc . R_CS = 1.
Matpc . R_CO2t = 1.
Matpc . R_CO2t_Rev = -1.
Matpc . R_ICDHyr = 1.
Matpc . R_ICDHyr_Rev = -1.
Matpc . R_AKGDH = 1.
Matpc . R_ME1 = 1.
Matpc . R_GND = 1.
Matpc . R_ME2 = 1.
Matpc . R_PPCK = 1.
Matpc . R_PPC = -1.
Matpc . R_PDH = 1.
Mcitc . R_EX_co2_e_ = -1.
Mcitc . R_EX_co2_e__Rev = 1.
Mcitc . R_CO2t = -1.
Mcitc . R_CO2t_Rev = 1.
Mco2b . R_ADHEr = 1.
Mco2b . R_ADHEr_Rev = -1.
Mco2b . R_PTAr = 1.
Mco2b . R_PTAr_Rev = -1.
Mco2b . R_SUCOAS = -1.
Mco2b . R_SUCOAS_Rev = 1.
Mco2b . R_MALS = 1.
Mco2b . R_AKGDH = -1.
Mco2b . R_CS = 1.
Mco2b . R_PFL = -1.
Mco2b . R_PDH = -1.
Mco2b . R_Biomass_Ecoli_core_N__w_GAM_ = 3.7478
Mco2c . R_TPI = -1.
Mco2c . R_TPI_Rev = 1.
Mco2c . R_FBA = 1.
Mco2c . R_FBA_Rev = -1.
Mco2e . R_TALA = 1.
Mco2e . R_TALA_Rev = -1.
Mco2e . R_TKT2 = -1.
Mco2e . R_TKT2_Rev = 1.
Mco2e . R_Biomass_Ecoli_core_N__w_GAM_ = -0.361
Mcoac . R_ETOHt2r = 1.
Mcoac . R_ETOHt2r_Rev = -1.
Mcoac . R_ADHEr = 1.
Mcoac . R_ADHEr_Rev = -1.
Mdhapc . R_EX_etoh_e_ = -1.
Mdhapc . R_EX_etoh_e__Rev = 1.
Mdhapc . R_ETOHt2r = -1.
Mdhapc . R_ETOHt2r_Rev = 1.
Me4pc . R_PGI = 1.
Me4pc . R_PGI_Rev = -1.
Me4pc . R_TALA = 1.
Me4pc . R_TALA_Rev = -1.
Me4pc . R_TKT2 = 1.
Me4pc . R_TKT2_Rev = -1.
Me4pc . R_PFK = -1.
Me4pc . R_FBP = 1.
Me4pc . R_Biomass_Ecoli_core_N__w_GAM_ = -0.0709
Metohb . R_SUCD4 = 1.
Metohb . R_SUCD4_Rev = -1.
Metohb . R_FRD = 1.
Metohb . R_SUCD1i = -1.
Metohc . R_SUCD4 = -1.
Metohc . R_SUCD4_Rev = 1.
Metohc . R_FRD = -1.
Metohc . R_SUCD1i = 1.
Metohe . R_FBA = -1.
Metohe . R_FBA_Rev = 1.
Metohe . R_PFK = 1.
Metohe . R_FBP = -1.
Mf6pc . R_FORt = 1.
Mf6pc . R_FORt_Rev = -1.
Mf6pc . R_PFL = 1.
Mfadc . R_EX_for_e_ = -1.
Mfadc . R_EX_for_e__Rev = 1.
Mfadc . R_FORt = -1.
Mfadc . R_FORt_Rev = 1.
Mfadh2c . R_FUM = -1.
Mfadh2c . R_FUM_Rev = 1.
Mfadh2c . R_FRD = -1.
Mfadh2c . R_FUMt2_2 = 1.
Mfadh2c . R_SUCD1i = 1.
Mfdpc . R_EX_fum_e_ = -1.
Mfdpc . R_EX_fum_e__Rev = 1.
Mfdpc . R_FUMt2_2 = -1.
Mforb . R_TPI = 1.
Mforb . R_TPI_Rev = -1.
Mforb . R_FBA = 1.
Mforb . R_FBA_Rev = -1.
Mforb . R_GAPD = -1.
Mforb . R_GAPD_Rev = 1.
Mforb . R_TALA = -1.
Mforb . R_TALA_Rev = 1.
Mforb . R_TKT2 = 1.
Mforb . R_TKT2_Rev = -1.
Mforb . R_TKT1 = 1.
Mforb . R_TKT1_Rev = -1.
Mforb . R_Biomass_Ecoli_core_N__w_GAM_ = -0.129
Mforc . R_PGI = -1.
Mforc . R_PGI_Rev = 1.
Mforc . R_G6PDH2r = -1.
Mforc . R_G6PDH2r_Rev = 1.
Mforc . R_GLCpts = 1.
Mforc . R_Biomass_Ecoli_core_N__w_GAM_ = -0.205
Mfore . R_EX_glc_e_ = -1.
Mfore . R_EX_glc_e__Rev = 1.
Mfore . R_GLCpts = -1.
Mfumb . R_MALS = -1.
Mfumb . R_ICL = 1.
Mfumc . R_ENO = 1.
Mfumc . R_ENO_Rev = -1.
Mfumc . R_FUM = -1.
Mfumc . R_FUM_Rev = 1.
Mfumc . R_H2Ot = 1.
Mfumc . R_H2Ot_Rev = -1.
Mfumc . R_ATPS4r = 1.
Mfumc . R_ATPS4r_Rev = -1.
Mfumc . R_PGL = -1.
Mfumc . R_ATPM = -1.
Mfumc . R_FBP = -1.
Mfumc . R_MALS = -1.
Mfumc . R_CS = -1.
Mfumc . R_PPC = -1.
Mfumc . R_PPS = -1.
Mfumc . R_CYTBD = 1.
Mfumc . R_Biomass_Ecoli_core_N__w_GAM_ = -55.703
Mfume . R_EX_h2o_e_ = -1.
Mfume . R_EX_h2o_e__Rev = 1.
Mfume . R_H2Ot = -1.
Mfume . R_H2Ot_Rev = 1.
Mg3pc . R_ACt2r = 1.
Mg3pc . R_ACt2r_Rev = -1.
Mg3pc . R_AKGt2r = 1.
Mg3pc . R_AKGt2r_Rev = -1.
Mg3pc . R_ETOHt2r = 1.
Mg3pc . R_ETOHt2r_Rev = -1.
Mg3pc . R_D_LACt2 = 1.
Mg3pc . R_D_LACt2_Rev = -1.
Mg3pc . R_LDH_D = 1.
Mg3pc . R_LDH_D_Rev = -1.
Mg3pc . R_MDH = 1.
Mg3pc . R_MDH_Rev = -1.
Mg3pc . R_ADHEr = -2.
Mg3pc . R_ADHEr_Rev = 2.
Mg3pc . R_G6PDH2r = 1.
Mg3pc . R_G6PDH2r_Rev = -1.
Mg3pc . R_ATPS4r = 3.
Mg3pc . R_ATPS4r_Rev = -3.
Mg3pc . R_GAPD = 1.
Mg3pc . R_GAPD_Rev = -1.
Mg3pc . R_PYRt2r = 1.
Mg3pc . R_PYRt2r_Rev = -1.
Mg3pc . R_PFK = 1.
Mg3pc . R_PGL = 1.
Mg3pc . R_ATPM = 1.
Mg3pc . R_MALS = 1.
Mg3pc . R_FUMt2_2 = 2.
Mg3pc . R_THD2 = 2.
Mg3pc . R_CS = 1.
Mg3pc . R_PPC = 1.
Mg3pc . R_PYK = -1.
Mg3pc . R_PPS = 2.
Mg3pc . R_NADH11 = -3.
Mg3pc . R_CYTBD = -2.
Mg3pc . R_Biomass_Ecoli_core_N__w_GAM_ = 41.025
Mg3pc . R_SUCCt2b = -1.
Mg3pc . R_SUCCt2_2 = 2.
Mg6pc . R_EX_h_e_ = -1.
Mg6pc . R_EX_h_e__Rev = 1.
Mg6pc . R_ACt2r = -1.
Mg6pc . R_ACt2r_Rev = 1.
Mg6pc . R_AKGt2r = -1.
Mg6pc . R_AKGt2r_Rev = 1.
Mg6pc . R_ETOHt2r = -1.
Mg6pc . R_ETOHt2r_Rev = 1.
Mg6pc . R_D_LACt2 = -1.
Mg6pc . R_D_LACt2_Rev = 1.
Mg6pc . R_ATPS4r = -4.
Mg6pc . R_ATPS4r_Rev = 4.
Mg6pc . R_PYRt2r = -1.
Mg6pc . R_PYRt2r_Rev = 1.
Mg6pc . R_FUMt2_2 = -2.
Mg6pc . R_THD2 = -2.
Mg6pc . R_NADH11 = 2.
Mg6pc . R_CYTBD = 2.
Mg6pc . R_SUCCt2b = 1.
Mg6pc . R_SUCCt2_2 = -2.
MglcDb . R_ACONT = 1.
MglcDb . R_ACONT_Rev = -1.
MglcDb . R_ICDHyr = -1.
MglcDb . R_ICDHyr_Rev = 1.
MglcDb . R_ICL = -1.
MglcDe . R_D_LACt2 = 1.
MglcDe . R_D_LACt2_Rev = -1.
MglcDe . R_LDH_D = -1.
MglcDe . R_LDH_D_Rev = 1.
Mglxc . R_EX_lac_D_e_ = -1.
Mglxc . R_EX_lac_D_e__Rev = 1.
Mglxc . R_D_LACt2 = -1.
Mglxc . R_D_LACt2_Rev = 1.
Mh2ob . R_FUM = 1.
Mh2ob . R_FUM_Rev = -1.
Mh2ob . R_MDH = -1.
Mh2ob . R_MDH_Rev = 1.
Mh2ob . R_MALS = 1.
Mh2ob . R_ME1 = -1.
Mh2ob . R_ME2 = -1.
Mh2oc . R_LDH_D = -1.
Mh2oc . R_LDH_D_Rev = 1.
Mh2oc . R_MDH = -1.
Mh2oc . R_MDH_Rev = 1.
Mh2oc . R_ADHEr = 2.
Mh2oc . R_ADHEr_Rev = -2.
Mh2oc . R_GAPD = -1.
Mh2oc . R_GAPD_Rev = 1.
Mh2oc . R_AKGDH = -1.
Mh2oc . R_ME1 = -1.
Mh2oc . R_THD2 = 1.
Mh2oc . R_NADTRHD = -1.
Mh2oc . R_PDH = -1.
Mh2oc . R_NADH11 = 1.
Mh2oc . R_Biomass_Ecoli_core_N__w_GAM_ = -3.547
Mh2oe . R_LDH_D = 1.
Mh2oe . R_LDH_D_Rev = -1.
Mh2oe . R_MDH = 1.
Mh2oe . R_MDH_Rev = -1.
Mh2oe . R_ADHEr = -2.
Mh2oe . R_ADHEr_Rev = 2.
Mh2oe . R_GAPD = 1.
Mh2oe . R_GAPD_Rev = -1.
Mh2oe . R_AKGDH = 1.
Mh2oe . R_ME1 = 1.
Mh2oe . R_THD2 = -1.
Mh2oe . R_NADTRHD = 1.
Mh2oe . R_PDH = 1.
Mh2oe . R_NADH11 = -1.
Mh2oe . R_Biomass_Ecoli_core_N__w_GAM_ = 3.547
Mhb . R_G6PDH2r = -1.
Mhb . R_G6PDH2r_Rev = 1.
Mhb . R_ICDHyr = -1.
Mhb . R_ICDHyr_Rev = 1.
Mhb . R_GND = -1.
Mhb . R_ME2 = -1.
Mhb . R_THD2 = -1.
Mhb . R_NADTRHD = 1.
Mhb . R_Biomass_Ecoli_core_N__w_GAM_ = 18.225
Mhc . R_G6PDH2r = 1.
Mhc . R_G6PDH2r_Rev = -1.
Mhc . R_ICDHyr = 1.
Mhc . R_ICDHyr_Rev = -1.
Mhc . R_GND = 1.
Mhc . R_ME2 = 1.
Mhc . R_THD2 = 1.
Mhc . R_NADTRHD = -1.
Mhc . R_Biomass_Ecoli_core_N__w_GAM_ = -18.225
Mhe . R_O2t = 1.
Mhe . R_O2t_Rev = -1.
Mhe . R_CYTBD = -0.5
Micitc . R_EX_o2_e_ = -1.
Micitc . R_EX_o2_e__Rev = 1.
Micitc . R_O2t = -1.
Micitc . R_O2t_Rev = 1.
MlacDb . R_MDH = 1.
MlacDb . R_MDH_Rev = -1.
MlacDb . R_PPCK = -1.
MlacDb . R_CS = -1.
MlacDb . R_PPC = 1.
MlacDb . R_Biomass_Ecoli_core_N__w_GAM_ = -1.7867
MlacDc . R_ENO = 1.
MlacDc . R_ENO_Rev = -1.
MlacDc . R_PPCK = 1.
MlacDc . R_GLCpts = -1.
MlacDc . R_PPC = -1.
MlacDc . R_PYK = -1.
MlacDc . R_PPS = 1.
MlacDc . R_Biomass_Ecoli_core_N__w_GAM_ = -0.5191
MlacDe . R_PIt = -1.
MlacDe . R_PIt_Rev = 1.
MlacDe . R_PTAr = -1.
MlacDe . R_PTAr_Rev = 1.
MlacDe . R_ATPS4r = -1.
MlacDe . R_ATPS4r_Rev = 1.
MlacDe . R_GAPD = -1.
MlacDe . R_GAPD_Rev = 1.
MlacDe . R_SUCOAS = 1.
MlacDe . R_SUCOAS_Rev = -1.
MlacDe . R_ATPM = 1.
MlacDe . R_FBP = 1.
MlacDe . R_PPC = 1.
MlacDe . R_PPS = 1.
MlacDe . R_Biomass_Ecoli_core_N__w_GAM_ = 55.703
MmalLc . R_PIt = 1.
MmalLc . R_PIt_Rev = -1.
MmalLc . R_EX_pi_e_ = -1.
MmalLc . R_EX_pi_e__Rev = 1.
Mnadc . R_LDH_D = 1.
Mnadc . R_LDH_D_Rev = -1.
Mnadc . R_PYRt2r = 1.
Mnadc . R_PYRt2r_Rev = -1.
Mnadc . R_ME1 = 1.
Mnadc . R_ME2 = 1.
Mnadc . R_GLCpts = 1.
Mnadc . R_PYK = 1.
Mnadc . R_PFL = -1.
Mnadc . R_PPS = -1.
Mnadc . R_PDH = -1.
Mnadc . R_Biomass_Ecoli_core_N__w_GAM_ = -2.8328
Mnadhc . R_EX_pyr_e_ = -1.
Mnadhc . R_EX_pyr_e__Rev = 1.
Mnadhc . R_PYRt2r = -1.
Mnadhc . R_PYRt2r_Rev = 1.
Mnadpc . R_SUCD4 = -1.
Mnadpc . R_SUCD4_Rev = 1.
Mnadpc . R_NADH11 = -1.
Mnadpc . R_CYTBD = 1.
Mnadphc . R_SUCD4 = 1.
Mnadphc . R_SUCD4_Rev = -1.
Mnadphc . R_NADH11 = 1.
Mnadphc . R_CYTBD = -1.
Mo2b . R_RPI = -1.
Mo2b . R_RPI_Rev = 1.
Mo2b . R_TKT1 = -1.
Mo2b . R_TKT1_Rev = 1.
Mo2b . R_Biomass_Ecoli_core_N__w_GAM_ = -0.8977
Mo2c . R_RPI = 1.
Mo2c . R_RPI_Rev = -1.
Mo2c . R_RPE = -1.
Mo2c . R_RPE_Rev = 1.
Mo2c . R_GND = 1.
Mo2e . R_TALA = -1.
Mo2e . R_TALA_Rev = 1.
Mo2e . R_TKT1 = 1.
Mo2e . R_TKT1_Rev = -1.
Moaac . R_SUCOAS = -1.
Moaac . R_SUCOAS_Rev = 1.
Moaac . R_FRD = 1.
Moaac . R_ICL = 1.
Moaac . R_SUCD1i = -1.
Moaac . R_SUCCt2b = -1.
Moaac . R_SUCCt2_2 = 1.
Mpepc . R_EX_succ_e_ = -1.
Mpepc . R_EX_succ_e__Rev = 1.
Mpepc . R_SUCCt2b = 1.
Mpepc . R_SUCCt2_2 = -1.
Mpib . R_SUCOAS = 1.
Mpib . R_SUCOAS_Rev = -1.
Mpib . R_AKGDH = 1.
Mpic . R_RPE = 1.
Mpic . R_RPE_Rev = -1.
Mpic . R_TKT2 = -1.
Mpic . R_TKT2_Rev = 1.
Mpic . R_TKT1 = -1.
Mpic . R_TKT1_Rev = 1.

    /
;

Variables
    Z objective function value
    v(j) flux vector
;
v.lo('R_PGM') = 0.;
v.up('R_PGM') = inf;
v.lo('R_PGM_Rev') = 0.;
v.up('R_PGM_Rev') = inf;
v.lo('R_ENO') = 0.;
v.up('R_ENO') = inf;
v.lo('R_ENO_Rev') = 0.;
v.up('R_ENO_Rev') = inf;
v.lo('R_EX_ac_e_') = -20.;
v.up('R_EX_ac_e_') = 20.;
v.lo('R_EX_ac_e__Rev') = -20.;
v.up('R_EX_ac_e__Rev') = 20.;
v.lo('R_EX_akg_e_') = -20.;
v.up('R_EX_akg_e_') = 20.;
v.lo('R_EX_akg_e__Rev') = -20.;
v.up('R_EX_akg_e__Rev') = 20.;
v.lo('R_PGK') = 0.;
v.up('R_PGK') = inf;
v.lo('R_PGK_Rev') = 0.;
v.up('R_PGK_Rev') = inf;
v.lo('R_ACKr') = 0.;
v.up('R_ACKr') = inf;
v.lo('R_ACKr_Rev') = 0.;
v.up('R_ACKr_Rev') = inf;
v.lo('R_ADK1') = 0.;
v.up('R_ADK1') = inf;
v.lo('R_ADK1_Rev') = 0.;
v.up('R_ADK1_Rev') = inf;
v.lo('R_ACONT') = 0.;
v.up('R_ACONT') = inf;
v.lo('R_ACONT_Rev') = 0.;
v.up('R_ACONT_Rev') = inf;
v.lo('R_EX_co2_e_') = -20.;
v.up('R_EX_co2_e_') = 20.;
v.lo('R_EX_co2_e__Rev') = -20.;
v.up('R_EX_co2_e__Rev') = 20.;
v.lo('R_CO2t') = 0.;
v.up('R_CO2t') = inf;
v.lo('R_CO2t_Rev') = 0.;
v.up('R_CO2t_Rev') = inf;
v.lo('R_TPI') = 0.;
v.up('R_TPI') = inf;
v.lo('R_TPI_Rev') = 0.;
v.up('R_TPI_Rev') = inf;
v.lo('R_EX_etoh_e_') = -20.;
v.up('R_EX_etoh_e_') = 20.;
v.lo('R_EX_etoh_e__Rev') = -20.;
v.up('R_EX_etoh_e__Rev') = 20.;
v.lo('R_FBA') = 0.;
v.up('R_FBA') = inf;
v.lo('R_FBA_Rev') = 0.;
v.up('R_FBA_Rev') = inf;
v.lo('R_EX_for_e_') = -20.;
v.up('R_EX_for_e_') = 20.;
v.lo('R_EX_for_e__Rev') = -20.;
v.up('R_EX_for_e__Rev') = 20.;
v.lo('R_FORt') = 0.;
v.up('R_FORt') = inf;
v.lo('R_FORt_Rev') = 0.;
v.up('R_FORt_Rev') = inf;
v.lo('R_EX_fum_e_') = -20.;
v.up('R_EX_fum_e_') = 20.;
v.lo('R_EX_fum_e__Rev') = -20.;
v.up('R_EX_fum_e__Rev') = 20.;
v.lo('R_PGI') = 0.;
v.up('R_PGI') = inf;
v.lo('R_PGI_Rev') = 0.;
v.up('R_PGI_Rev') = inf;
v.lo('R_EX_glc_e_') = -20.;
v.up('R_EX_glc_e_') = 20.;
v.lo('R_EX_glc_e__Rev') = -20.;
v.up('R_EX_glc_e__Rev') = 20.;
v.lo('R_FUM') = 0.;
v.up('R_FUM') = inf;
v.lo('R_FUM_Rev') = 0.;
v.up('R_FUM_Rev') = inf;
v.lo('R_EX_h2o_e_') = -20.;
v.up('R_EX_h2o_e_') = 20.;
v.lo('R_EX_h2o_e__Rev') = -20.;
v.up('R_EX_h2o_e__Rev') = 20.;
v.lo('R_H2Ot') = 0.;
v.up('R_H2Ot') = inf;
v.lo('R_H2Ot_Rev') = 0.;
v.up('R_H2Ot_Rev') = inf;
v.lo('R_EX_h_e_') = -20.;
v.up('R_EX_h_e_') = 20.;
v.lo('R_EX_h_e__Rev') = -20.;
v.up('R_EX_h_e__Rev') = 20.;
v.lo('R_ACt2r') = 0.;
v.up('R_ACt2r') = inf;
v.lo('R_ACt2r_Rev') = 0.;
v.up('R_ACt2r_Rev') = inf;
v.lo('R_AKGt2r') = 0.;
v.up('R_AKGt2r') = inf;
v.lo('R_AKGt2r_Rev') = 0.;
v.up('R_AKGt2r_Rev') = inf;
v.lo('R_ETOHt2r') = 0.;
v.up('R_ETOHt2r') = inf;
v.lo('R_ETOHt2r_Rev') = 0.;
v.up('R_ETOHt2r_Rev') = inf;
v.lo('R_EX_lac_D_e_') = -20.;
v.up('R_EX_lac_D_e_') = 20.;
v.lo('R_EX_lac_D_e__Rev') = -20.;
v.up('R_EX_lac_D_e__Rev') = 20.;
v.lo('R_D_LACt2') = 0.;
v.up('R_D_LACt2') = inf;
v.lo('R_D_LACt2_Rev') = 0.;
v.up('R_D_LACt2_Rev') = inf;
v.lo('R_LDH_D') = 0.;
v.up('R_LDH_D') = inf;
v.lo('R_LDH_D_Rev') = 0.;
v.up('R_LDH_D_Rev') = inf;
v.lo('R_MDH') = 0.;
v.up('R_MDH') = inf;
v.lo('R_MDH_Rev') = 0.;
v.up('R_MDH_Rev') = inf;
v.lo('R_ADHEr') = 0.;
v.up('R_ADHEr') = inf;
v.lo('R_ADHEr_Rev') = 0.;
v.up('R_ADHEr_Rev') = inf;
v.lo('R_G6PDH2r') = 0.;
v.up('R_G6PDH2r') = inf;
v.lo('R_G6PDH2r_Rev') = 0.;
v.up('R_G6PDH2r_Rev') = inf;
v.lo('R_ICDHyr') = 0.;
v.up('R_ICDHyr') = inf;
v.lo('R_ICDHyr_Rev') = 0.;
v.up('R_ICDHyr_Rev') = inf;
v.lo('R_EX_o2_e_') = -20.;
v.up('R_EX_o2_e_') = 20.;
v.lo('R_EX_o2_e__Rev') = -20.;
v.up('R_EX_o2_e__Rev') = 20.;
v.lo('R_O2t') = 0.;
v.up('R_O2t') = inf;
v.lo('R_O2t_Rev') = 0.;
v.up('R_O2t_Rev') = inf;
v.lo('R_PIt') = 0.;
v.up('R_PIt') = inf;
v.lo('R_PIt_Rev') = 0.;
v.up('R_PIt_Rev') = inf;
v.lo('R_PTAr') = 0.;
v.up('R_PTAr') = inf;
v.lo('R_PTAr_Rev') = 0.;
v.up('R_PTAr_Rev') = inf;
v.lo('R_ATPS4r') = 0.;
v.up('R_ATPS4r') = inf;
v.lo('R_ATPS4r_Rev') = 0.;
v.up('R_ATPS4r_Rev') = inf;
v.lo('R_GAPD') = 0.;
v.up('R_GAPD') = inf;
v.lo('R_GAPD_Rev') = 0.;
v.up('R_GAPD_Rev') = inf;
v.lo('R_EX_pi_e_') = -20.;
v.up('R_EX_pi_e_') = 20.;
v.lo('R_EX_pi_e__Rev') = -20.;
v.up('R_EX_pi_e__Rev') = 20.;
v.lo('R_EX_pyr_e_') = -20.;
v.up('R_EX_pyr_e_') = 20.;
v.lo('R_EX_pyr_e__Rev') = -20.;
v.up('R_EX_pyr_e__Rev') = 20.;
v.lo('R_PYRt2r') = 0.;
v.up('R_PYRt2r') = inf;
v.lo('R_PYRt2r_Rev') = 0.;
v.up('R_PYRt2r_Rev') = inf;
v.lo('R_SUCD4') = 0.;
v.up('R_SUCD4') = inf;
v.lo('R_SUCD4_Rev') = 0.;
v.up('R_SUCD4_Rev') = inf;
v.lo('R_RPI') = 0.;
v.up('R_RPI') = inf;
v.lo('R_RPI_Rev') = 0.;
v.up('R_RPI_Rev') = inf;
v.lo('R_RPE') = 0.;
v.up('R_RPE') = inf;
v.lo('R_RPE_Rev') = 0.;
v.up('R_RPE_Rev') = inf;
v.lo('R_TALA') = 0.;
v.up('R_TALA') = inf;
v.lo('R_TALA_Rev') = 0.;
v.up('R_TALA_Rev') = inf;
v.lo('R_SUCOAS') = 0.;
v.up('R_SUCOAS') = inf;
v.lo('R_SUCOAS_Rev') = 0.;
v.up('R_SUCOAS_Rev') = inf;
v.lo('R_EX_succ_e_') = -20.;
v.up('R_EX_succ_e_') = 20.;
v.lo('R_EX_succ_e__Rev') = -20.;
v.up('R_EX_succ_e__Rev') = 20.;
v.lo('R_TKT2') = 0.;
v.up('R_TKT2') = inf;
v.lo('R_TKT2_Rev') = 0.;
v.up('R_TKT2_Rev') = inf;
v.lo('R_TKT1') = 0.;
v.up('R_TKT1') = inf;
v.lo('R_TKT1_Rev') = 0.;
v.up('R_TKT1_Rev') = inf;
v.lo('R_PFK') = 0.;
v.up('R_PFK') = inf;
v.lo('R_FRD') = 0.;
v.up('R_FRD') = inf;
v.lo('R_PGL') = 0.;
v.up('R_PGL') = inf;
v.lo('R_ATPM') = 0.;
v.up('R_ATPM') = inf;
v.lo('R_FBP') = 0.;
v.up('R_FBP') = inf;
v.lo('R_MALS') = 0.;
v.up('R_MALS') = inf;
v.lo('R_FUMt2_2') = 0.;
v.up('R_FUMt2_2') = inf;
v.lo('R_ICL') = 0.;
v.up('R_ICL') = inf;
v.lo('R_AKGDH') = 0.;
v.up('R_AKGDH') = inf;
v.lo('R_ME1') = 0.;
v.up('R_ME1') = inf;
v.lo('R_GND') = 0.;
v.up('R_GND') = inf;
v.lo('R_ME2') = 0.;
v.up('R_ME2') = inf;
v.lo('R_THD2') = 0.;
v.up('R_THD2') = inf;
v.lo('R_NADTRHD') = 0.;
v.up('R_NADTRHD') = inf;
v.lo('R_PPCK') = 0.;
v.up('R_PPCK') = inf;
v.lo('R_CS') = 0.;
v.up('R_CS') = inf;
v.lo('R_GLCpts') = 0.;
v.up('R_GLCpts') = inf;
v.lo('R_PPC') = 0.;
v.up('R_PPC') = inf;
v.lo('R_PYK') = 0.;
v.up('R_PYK') = inf;
v.lo('R_PFL') = 0.;
v.up('R_PFL') = inf;
v.lo('R_PPS') = 0.;
v.up('R_PPS') = inf;
v.lo('R_PDH') = 0.;
v.up('R_PDH') = inf;
v.lo('R_NADH11') = 0.;
v.up('R_NADH11') = inf;
v.lo('R_CYTBD') = 0.;
v.up('R_CYTBD') = inf;
v.lo('R_Biomass_Ecoli_core_N__w_GAM_') = 0.;
v.up('R_Biomass_Ecoli_core_N__w_GAM_') = inf;
v.lo('R_SUCD1i') = 0.;
v.up('R_SUCD1i') = inf;
v.lo('R_SUCCt2b') = 0.;
v.up('R_SUCCt2b') = inf;
v.lo('R_SUCCt2_2') = 0.;
v.up('R_SUCCt2_2') = inf;



Equations
    obj objective function
    st_constr stoichiometric constraints;
    
obj.. Z =e= v('R_Biomass_Ecoli_core_N__w_GAM_');
st_constr(i).. sum(j, S(i,j)*v(j)) =e= 0;

Model fba /all/;

Solve fba using lp maximizing Z;