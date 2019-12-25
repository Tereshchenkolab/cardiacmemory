***STATA code by Larisa Tereshchenko <tereshch@ohsu.edu>
***developed for CAMI data analysis July 7, 2019
***use STATA MP 16 (can be run on older versions of STATA)


cd "C:location of your data/folder of your choice on your computer"

***Transformation of azimuth variables 
gen trSVGaz = (SVGazV1*2)+360
gen trpSVGaz = (pSVGazV1*2)+360



***unadjusted paired comparison of day 1 and day 7 measurements

ttest a1_sai == a7_sai
ttest a1_psvgmag == d1_psvgmag
ttest a7_psvgmag == d7_psvgmag
ttest d1_svg == d7_svg
ttest a1_svg == d1_svg
ttest a7_svg == d7_svg
ttest d1_sai == d7_sai
ttest a1_sai == d1_sai
ttest a7_sai == d7_sai
ttest d1_qti == d7_qti
ttest a1_qti == a7_qti
ttest a1_qti == d1_qti
ttest a7_qti == d7_qti
circcomp a1_pqrst a7_pqrst , det
circcomp d1_pqrst d7_pqrst , det
circcomp a1_aqrst a7_aqrst , det
circcomp d1_aqrst d7_aqrst , det
circcomp a1_pqrsel a7_pqrsel , det
circcomp d1_pqrsel d7_pqrsel , det
circcomp a1_aqrsel a7_aqrsel , det
circcomp d1_aqrsel d7_aqrsel , det
circcomp a1_ptel a7_ptel , det
circcomp d1_ptel d7_ptel , det
circcomp d1_atel d7_atel , det
circcomp a1_psvgel a7_psvgel , det
circcomp d1_psvgel d7_psvgel , det
circcomp a1_asvgel a7_asvgel , det
circcomp d1_asvgel d7_asvgel , det
circcomp d1_ptaz d7_ptaz , det

*****regression analysis in a WIDE file format
regress qrsddd2_taai2_mean  age  gender   mi lvef sustained   acearb
regress qrsddd2_taai2_mean  age  gender   mi lvef sustained   acearb
regress CMpeak age gender lvef  mi qrsaai1_qrsddd2 a1areatelevation_deg
regress CMpeak age gender lvef  mi qrsaai1_qrsddd2 a1tpeaktotend_ms
regress CMpeak age gender lvef  mi qrsaai1_qrsddd2 a1qrsduration_ms a1areat_mvms
regress CMpeak age gender lvef  mi  a1qrsduration_ms a1areat_mvms
regress CMpeak age gender lvef  mi  a1qrsduration_ms a1areat_mvms qrsaai1_qrsaai2



***data files MUST be in the LONG file format for longitudinal mixed models (all code below)
***mixed models development and comparison; 
***selection of the best model type by using Hausman specification test 
mixed areaTAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id:
predict randint
mixed areaTAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRSAzimuth_deg
predict randsl
lrtest randint randsl



***use the long data file with AAI data

***model 1 for AAI T azimuth
mixed areaTAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi  i.vt  || id: day areaQRSAzimuth_deg
***model 2 for AAI T azimuth
mixed areaTAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRSAzimuth_deg

***model 1 for AAI T elevation
mixed areaTElevation_deg areaQRSElevation_deg i.day age i.gender i.mi  i.vt  || id: day areaQRSElevation_deg
***model 2 for AAI T elevation
mixed areaTElevation_deg areaQRSElevation_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRSElevation_deg

***model 1 for AAI T area
mixed areaT_uVms areaQRS_uVms i.day age i.gender i.mi  i.vt  || id: day areaQRS_uVms
***model 2 for AAI T area
mixed areaT_uVms areaQRS_uVms i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRS_uVms



***use the long data file with DDD data

***model 1 for DDD T area
mixed areaT_uVms areaQRS_uVms i.day age i.gender i.mi  i.vt  || id: day areaQRS_uVms
***model 2 for DDD T area
mixed areaT_uVms areaQRS_uVms i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRS_uVms

***model 1 for DDD SVG azimuth
mixed areaSVGAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi  i.vt  || id: day areaQRSAzimuth_deg
***model 2 for DDD SVG azimuth
mixed areaSVGAzimuth_deg areaQRSAzimuth_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRSAzimuth_deg

***model 1 for DDD SVG elevation
mixed areaSVGElevation_deg areaQRSElevation_deg i.day age i.gender i.mi  i.vt  || id: day areaQRSElevation_deg
***model 2 for DDD SVG elevation
mixed areaSVGElevation_deg areaQRSElevation_deg i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaQRSElevation_deg

***model 1 for DDD SVG elevation
mixed areaQRSAzimuth_deg areaTAzimuth_deg i.day age i.gender i.mi  i.vt  || id: day areaTAzimuth_deg
***model 1 for DDD SVG elevation
mixed areaQRSAzimuth_deg areaTAzimuth_deg i.day age i.gender i.mi  i.vt lvef i.dm i.htn i.acearb i.AA3  || id: day areaTAzimuth_deg

***model 1  for DDD QRS area
mixed areaQRS_uVms areaT_uV*ms i.day age i.gender i.mi  i.vt  || id: day areaT_uV*ms
***model 2  for DDD QRS area
mixed areaQRS_uVms areaT_uVms i.day age i.gender i.mi lvef i.dm i.htn i.vt i.acearb i.AA3 || id: day areaT_uVms

***model 1 for DDD QRS elevation
mixed areaQRSElevation_deg areaTElevation_deg i.day age i.gender i.mi  i.vt  || id: day areaTElevation_deg
***model 2 for DDD QRS elevation
mixed areaQRSElevation_deg areaTElevation_deg i.day age i.gender i.mi  i.vt lvef i.dm i.htn i.acearb i.AA3  || id: day areaTElevation_deg




