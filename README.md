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
After that process , saved the updated dataset into cleaned china dataset for the final work


FRANCE DATASET:
In the France dataset, I performed a comprehensive data cleaning process to ensure accuracy and consistency for heart attack analysis. Below is a detailed breakdown of the steps I took:

1. Handling Missing Values
Identified and filled missing values in key columns like Alcohol Consumption using proportional imputation based on existing distributions.
Ensured no NaN values remained after processing.

2. Data Type Standardization
Converted categorical values stored as numbers (e.g., Alcohol Consumption) into meaningful labels (Moderate, Heavy).
  
3. Feature Engineering & Categorization
Alcohol Consumption: Defined thresholds (0-14 as Moderate, 15+ as Heavy).
Stress Levels: Binned numerical values into Good, Moderate, and Bad categories.
Air Pollution Levels: Removed the "Bad" category since it contained zero values, keeping only Good and Moderate levels.

4. Column Standardization & Renaming
Renamed columns for clarity (e.g., "Deit_Type" → "Diet_Quality").
Merged Blood Pressure Systolic & Diastolic into a single Blood Pressure column to match the format of the global and China datasets.
Standardized Region Category values from North, South, West, East, Central to:
France (North)
France (South)
France (West)
France (East)
France (Central)

5. Ensuring Data Integrity
Verified all changes using value_counts() and info().
Ensured no unintended NaN values were introduced during transformations.
After that process , saved the updated dataset into cleaned france dataset for the final work


RUSSIA DATASET:

Renaming Columns for Better Readability:
Renamed the "Region" column to "Region_Category" to clarify its purpose.

Standardizing Region Names:
Updated values in the "Region_Category" column to provide better context:
"Rural" → "Russia (Rural)"
"Urban" → "Russia (Urban)"
"Suburban" → "Russia (Suburban)"

Handling Missing Values:
Checked for missing values across all columns.
Decided on appropriate methods to fill or drop missing values based on the column type and impact on analysis.

Converting Categorical Variables to Meaningful Labels:
Converted the "Physical Activity" column from numerical values to categorical labels:
Low → "Bad"
Moderate → "Moderate"
High → "Good"
Converted the "Alcohol Consumption" column:
"Often" → "Moderate"
"Rarely" → "Good"
Converted the "Health Awareness" column (which had numeric values) into meaningful categories.

Dropping Unnecessary Columns:
Removed "Air Pollution Level" as it was not needed for further analysis.

Ensuring Data Type Consistency:
Converted categorical columns (e.g., "Stress Level," "Mental Health," "Physical Activity") to object dtype.
Converted "Daily Water Intake" values into categorical bins for better interpretation.

Final Data Quality Check:
Verified that all transformations were successfully applied.
Ensured there were no remaining NaN values in critical columns.

Outcome:
The Russia dataset is now cleaned, standardized, and ready for analysis.
The cleaned dataset ensures accurate insights for visualizations and comparisons in the final dashboard.
