# Heart Attack Analysis Project  
This project analyzes global heart attack data, focusing on risk factors like alcohol consumption, diabetes, and medication status.  

GLOBAL DATASET :
It contain the more than 5 million rows.
The python notebook give the clear view of the data cleaning .
In the data cleaning process , I need to handle the missing value , changing the column name , changing the appropriate value in the particular column , changing the datatype int to object 
then finally saving the file into CSV format.


NORTH AMERICA DATASET:
In this dataset , we don't have a north america dataset to analysis for the north america continent.
so we want to create these dataset , that's we use the global dataset .
In global dataset have asia , africa, north america , south america , europe . we separate the north america region category to form the new dataset called north america dataset.
After separate the north america region from the global dataset , we need to check all the elements are correctly updated , in case any missing value or NAN values we need to handle it and fill that value.
Then we need to change the region category north america into united state, canada , mexico..... according to the medical research there are large number of heart attack rate is come from north america (united state . so we need to categorize the region value into 75% of region should be united state , 13% of region should be canada , finally 12% of region should be mexico for the analysis.
Next saved the updated dataset into north america dataset for the final work.


CHINA DATASET:
This repository documents the data cleaning process for the China dataset, which is part of the Heart Attack Analysis Project.
The focus is on preparing the data for further analysis and visualization.
Imported the dataset using pandas and checked the structure.
The 'Blood Pressure' column was in float format.
Converted it into integer values for consistency.
The 'Alcohol Consumption' column had NaN values.
Filled missing values proportionally based on the existing distribution of 'moderate' and 'high' values.
After theat process , saved the updated dataset into cleaned china dataset for the final work
