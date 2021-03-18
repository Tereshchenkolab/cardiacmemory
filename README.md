# cardiacmemory
Cardiac Memory measurement

## Table of Content
  - CM MATLAB Code
  - fully de-identified digital ECG signal data (median beat with identified time-coherent origin point) for 20 participants are provided within .fig files: QRS and T loops after 7 days of pacing in AAI and DDD mode. AAI-7 to DDD-7 angles and vectors are plotted. See folder "QRS_T_DDD2_AAI2". 
  
### Authors
CM calculation code V.1
Kazi Haq, PhD, <haqk@ohsu.edu>
Larisa Tereshchenko, MD, PhD, <tereshch@ohsu.edu>
Last update: 10-7-19
  

### Cardiac Memory MATLAB Code
- memory_angle_all_plot.m     
- CAMI_qrst_angle.m    
- CAMI_plots2.m

### STATA code for statistical analyses of the data
- STATA_code_CAMI_GitHub.do

### Manuscripts to reference:
K. T. Haq, J. Cao and L. G. Tereshchenko. Characteristics of Cardiac Memory in Patients with Implanted Cardioverter-defibrillators: The Cardiac Memory with Implantable Cardioverter-defibrillator (CAMI) Study. J Innov Card Rhythm Manag 2021 Vol. 12 Issue 2 Pages 4395-4408. https://pubmed.ncbi.nlm.nih.gov/33654571/ PMID: 33654571 PMCID: PMC7909362 DOI: 10.19102/icrm.2021.120204

medRxiv 19005181; doi: https://doi.org/10.1101/19005181. under peer review

### Data analyzed in the manuscript
See folder "QRS_T_DDD2_AAI2". Fully de-identified digital ECG signal (median beat with identified time-coherent origin point) is provided within MATLAB .fig files. Fig files contain data matrix, and represent three-dimensional vectorcardiographic loops: QRS and T loops after 7 days of pacing, in AAI and DDD mode. AAI-7 and DDD-7 angles and vectors are plotted. Fig files are compressed. Use openfig.m file to open Fig files. Place openfig.m file in the same folder with Fig files to make it convenient.
