# 611 Project
Hi, this is the 611 Data Science Project
Author: Shilin Yu


# Data Description

1. Overview of the Data
This project utilizes a dataset that includes RNA-seq data, demographic, and clinical information from the Parkinson’s Disease Biomarker Program (PDBP), collected across multiple U.S. medical centers from November 2012 to August 2018. The dataset is split into two main parts:

Cell Type Proportions: Contains columns representing the proportions of various cell types such as B cells, CD4 and CD8 T cells, Monocytes, NK cells, and other miscellaneous cell types.
Metadata: Includes participant and sample identifiers, along with several demographic and clinical variables like visit month, case/control status, age at baseline, sex, ethnicity, race, education level, tobacco/alcohol use, and caffeine consumption.
2. Key Points of Interest
Here are five interesting aspects of the dataset:

a) The PDBP data were collected longitudinally over time for each subject, allowing for the tracking of changes in cell type composition and disease progression across multiple visits.

b) Different classification models can be applied to the data to analyze performance, particularly when case-control status is masked.

c) Visualizations are included that show the correlation between cell type proportions, providing insights into immune cell dynamics in the context of Parkinson’s disease.

d) Another set of visualizations illustrates the relationship between demographic factors (such as age, sex, and ethnicity) and case/control status.

e) A Makefile is used to integrate the results of all analyses, ensuring efficient and reproducible workflows.

3. Data Origin
The original bulk transcriptome and associated clinical data are part of the PDBP and are publicly available upon request through the AMP-PD website: https://amp-pd.org. This data can be accessed for research purposes with the proper application and approval.

4. Data Uploaded to GitHub
While the full RNA-seq data cannot be included due to size limitations, the repository will contain the following:

Metadata file: This includes the demographic and clinical information of participants.
Propdata file: This includes the cell type proportion data for each participant.
Both files are sufficient for analysis in this project, excluding the raw RNA sequence data.


--Shilin