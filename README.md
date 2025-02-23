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



INDIA DATASET:

Handled Missing Values:
Issue: Missing values in the Physical Activity column.
Solution: Imputed missing values using proportional distribution based on existing categories (Good, Moderate, Bad).
Method Used: fillna() with weighted random sampling to maintain dataset balance.

Standardized Column Names:
Issue: Inconsistent column names (spaces, uppercase/lowercase mix).
Solution: Renamed columns using df.columns = df.columns.str.replace(" ", "_").str.lower().
Outcome: Improved readability and consistency.

Categorized Numerical Variables:
Triglyceride Levels: Converted numerical values into Good, Moderate, and Bad categories using defined thresholds.
Blood Oxygen Levels (SpO2%): Classified into Good (>95%), Moderate (90-95%), and Bad (<90%).

Checked for Duplicates:
Issue: Potential duplicate records in the dataset.
Solution: Used df.duplicated().sum() to check for duplicates and removed them using df.drop_duplicates(inplace=True).

Fixed Data Type Issues:
Issue: Columns stored as incorrect data types (e.g., Int64 instead of int64).
Solution: Converted using astype(int).

Detected and Handled Outliers:
Issue: Extreme values in columns like Cholesterol, Blood Pressure, and Heart Rate.
Solution: Used Boxplot to visualize outliers and handled them using IQR method (removed or capped extreme values).


Ensured Logical Consistency:
Issue: Some unrealistic values (e.g., extremely low or high heart rates).
Solution: Applied domain-specific rules to filter out incorrect values.


INDONESIA DATASET

During the data cleaning process for the Indonesia dataset, the following steps were performed to ensure data accuracy, consistency, and completeness:

Handling Missing Values
Checked for missing values using .isnull().sum().
Visualized missing data patterns using msno.matrix().
Used appropriate strategies such as:
Mean/Median Imputation for numerical columns.
Mode Imputation for categorical columns.
Dropping highly null columns if necessary.

Data Type Corrections
Ensured numerical columns were in the correct format (int64 or float64).
Converted categorical columns (e.g., Gender, Diet_Quality, Physical_Activity) to object type if needed.

Handling Duplicates
Checked for duplicate rows using .duplicated().sum().
Removed any duplicate records to maintain data integrity.

Standardizing Categorical Values
Ensured categorical values had a consistent format (e.g., Male vs. M, Female vs. F).
Used .str.lower().str.strip() to standardize text-based categories.

Outlier Detection & Treatment
Used boxplots and histograms to identify potential outliers in key variables (BMI, Blood_Pressure, etc.).
Treated outliers using:
Winsorization (Capping extreme values).
Transformation techniques (Log, Square Root) if required.

Normalization & Scaling (if needed)
Applied Min-Max Scaling or Standardization for numerical variables if analysis required it.

Final Validation & Export
Rechecked dataset using .info() and .describe() to ensure correctness.
Exported the cleaned dataset as cleaned_Indonesia_dataset.csv for further analysis.

Outcome:
🔹 The dataset is now clean, structured, and ready for EDA & visualization. 
🔹 Ensured data integrity, consistency, and accuracy for meaningful insights.


**North America Dataset Splitting & BigQuery Usage**

*Reason for Splitting the North America Dataset*

The North America dataset was split due to the following reasons:

Data Volume & Complexity: The dataset contained a massive amount of records, making it difficult to process efficiently in a single file. Splitting it into smaller subsets improved manageability.

Region-Specific Analysis: North America consists of multiple countries with distinct healthcare systems, demographics, and risk factors. Splitting the dataset allowed for granular analysis per country (e.g., USA, Canada, Mexico).

Faster Data Processing: Handling smaller datasets reduced the computational load on Pandas, NumPy, and SQL queries, leading to faster execution times.

Better Data Visualization: Separate datasets allowed the creation of focused Power BI dashboards with country-specific insights rather than an overloaded visualization.

Error Handling & Debugging: Smaller datasets made it easier to identify and fix missing values, inconsistencies, and outliers before merging them for a comparative analysis.

**Why Upload to BigQuery for Large Datasets?**

BigQuery was chosen for handling the large dataset due to:

Scalability & Performance: BigQuery is optimized for handling terabytes of data, providing fast query execution compared to traditional databases.

Cloud Storage Efficiency: Instead of managing large local CSV/Excel files, BigQuery allows cloud-based storage, making it accessible anytime, anywhere.

SQL-Based Data Analysis: Using Google’s BigQuery SQL engine, complex queries can be executed efficiently without performance bottlenecks.

Integration with Other Tools: BigQuery seamlessly integrates with Power BI, Python, and AI/ML tools, enabling advanced analytics and visualization.

Cost-Effective Solution: Instead of running queries on local machines (which may require high-end hardware), BigQuery’s pay-per-query model is more efficient for large datasets.

Conclusion:

By splitting the North America dataset, I ensured efficient data handling, improved analysis, and better visualization. Additionally, uploading large datasets to BigQuery optimized query performance, eliminated storage issues, and enabled seamless integration with other analytical tools. This approach significantly enhanced the efficiency and accuracy of my heart attack analysis project.



# Global Dataset Split - BigQuery Processing

## 📌 Why Split the Global Dataset?
The original **Global Dataset** was **716MB**, exceeding the **100MB** upload limit in BigQuery.  
To efficiently upload and analyze the data, I split the dataset into **smaller parts** (≤100MB each).  

This ensures:
- **Efficient Uploading**: Each split file fits within BigQuery’s upload limit.
- **Faster Processing**: Handling smaller files improves query performance.
- **Structured Data Handling**: Allows parallel processing of different dataset parts.

---

## How Many Datasets Were Created?
The **Global Dataset** was split into **8 separate files**:  
- `global_dataset_part_1.csv` (≈89MB)  
- `global_dataset_part_2.csv` (≈89MB)  
- `global_dataset_part_3.csv` (≈89MB)  
- `global_dataset_part_4.csv` (≈89MB)  
- `global_dataset_part_5.csv` (≈89MB)  
- `global_dataset_part_6.csv` (≈89MB)  
- `global_dataset_part_7.csv` (≈89MB)  
- `global_dataset_part_8.csv` (≈89MB)  

Each file contains a proportional number of rows to maintain data integrity.

---

## Next Steps
### ** Upload to Google BigQuery**
- Upload each split dataset to **BigQuery**.
- Store them in a designated **dataset table**.

### ** Merge Data in BigQuery (if needed)**
After uploading, the datasets can be **combined** using SQL:
```sql
SELECT * FROM `your_project.your_dataset.global_dataset_part_*`



-------------------------------------------------------------------------

**Big Query :**
1) North america :
Summary of North America Dataset – BigQuery Results
The North America dataset analysis in BigQuery provides key insights into heart attack cases based on various demographic, lifestyle, and medical factors. Below is a summary of findings based on the queries executed:

1. Age Group & Heart Attack Cases
Adults (599,520 cases) have a higher occurrence of heart attacks compared to Youth (400,894 cases).
2. Gender Distribution
Males (480,527 cases) and Females (480,154 cases) have nearly equal heart attack cases.
A small number of cases belong to Other gender category (39,733 cases).
3. Regional Distribution
United States: 750,310 cases (Highest)
Canada: 130,053 cases
Mexico: 120,051 cases
4. Smoking Status & Heart Attack Risk
Non-smokers (599,642 cases) had the highest heart attack cases.
Former smokers (250,826 cases) had significant cases.
Current smokers (149,946 cases) had the lowest reported cases.
5. Cholesterol Levels & Case Count
Cholesterol levels ranging from 295 to 299 mg/dL had a high number of heart attack cases.
Highest cases were observed at 299 mg/dL (5,548 cases).
6. BMI & Heart Attack Risk
BMI values between 18.6, 21.3, and 24.5 showed almost equal case counts (4,700–4,722 cases).
7. Physical Activity & Heart Attack Cases
Good activity level (497,170 cases) had the highest count.
Moderate activity level (333,652 cases) had a lower count.
Poor physical activity (169,592 cases) had the least number of cases.
8. Mortality Rate by Age Group
Youth: 400,894 total cases → 40,431 deaths → 10.09% mortality rate
Adults: 599,520 total cases → 59,906 deaths → 9.99% mortality rate
Insight: Youth had a slightly higher mortality rate despite fewer total cases.
9. Stress Levels & Heart Attack Cases
Moderate stress (50,260 cases) → Highest cases
Low stress (29,944 cases)
High stress (20,133 cases) → Lowest cases
10. Medication Status
Not on medication (849,840 cases) had significantly more heart attack cases.
On medication (150,574 cases) had fewer cases.
Key Takeaways
✅ Adults are more affected than youth.
✅ Males and females show nearly equal heart attack cases.
✅ United States has the highest reported cases.
✅ Non-smokers and those not on medication had the highest heart attack cases, indicating other risk factors.
✅ Moderate stress and poor physical activity contribute to increased heart attack cases.


**Global Dataset (BigQuery) - Summary & Key Takeaways**

Summary:
The Global dataset provides insights into heart disease trends worldwide, covering various risk factors such as age, cholesterol levels, blood pressure, smoking, obesity, and physical activity.
It includes data from multiple countries, allowing comparisons between regions.
The dataset is large, so BigQuery is used for faster processing.

Key Takeaways:

✔ Global Heart Disease Trends
The prevalence of heart disease is higher in older age groups (above 50 years).
Men have a slightly higher risk than women across most countries.

✔ Lifestyle & Risk Factors
Smoking & Obesity are strongly correlated with heart disease.
High cholesterol and high blood pressure are the top medical risk factors.
Countries with higher physical activity levels report lower heart disease rates.

✔ Geographical Insights
Western countries (USA, UK, France, Germany) have a higher prevalence of heart disease.
Asian countries (India, China, Japan) show lower but rising heart disease cases due to urbanization and diet changes.
Developed nations have better access to healthcare but also higher obesity rates, leading to more cases.

✔ Healthcare Impact
Countries with advanced healthcare systems show lower mortality rates despite high heart disease cases.
Preventive measures (like diet and exercise) significantly impact reducing risks.

**Country-Specific Datasets (SQL Workbench) - Summary & Key Takeaways**
China Dataset
Summary:
Focuses on heart disease cases and risk factors in China.
Includes data on lifestyle habits, cholesterol levels, and medical history.

Key Takeaways:
✔ Lower smoking rates compared to Western countries, but increasing among younger populations.
✔ Traditional diet (high in vegetables, low in processed foods) reduces risk, but urbanization is increasing fast food consumption.
✔ Hypertension is a growing concern, especially in urban areas.

India Dataset
Summary:
Examines heart disease risk factors among different age groups and demographics in India.

Key Takeaways:
✔ High prevalence of diabetes and high blood pressure, increasing heart disease risk.
✔ Sedentary lifestyle in urban areas is leading to a rise in cases.
✔ Vegetarian diet may help reduce cholesterol levels, but high-carb intake is a concern.

Indonesia Dataset
Summary:
Covers heart disease trends and lifestyle habits in Indonesia.

Key Takeaways:
✔ Smoking rates are among the highest in Asia, significantly increasing heart disease risk.
✔ Obesity is on the rise, particularly in cities.
✔ Limited healthcare access in rural areas leads to underreporting of cases.

Russia Dataset
Summary:
Analyzes heart disease cases in Russia based on lifestyle, diet, and medical conditions.

Key Takeaways:
✔ Highest alcohol consumption rate, leading to heart disease complications.
✔ Harsh climate contributes to a sedentary lifestyle.
✔ Higher cholesterol and obesity rates compared to Asian countries.

France Dataset
Summary:
Studies heart disease trends in France, known for its Mediterranean diet.

Key Takeaways:
✔ Lower heart disease rates despite high-fat diets, due to Mediterranean eating habits (olive oil, wine, fresh vegetables).
✔ Active lifestyle and healthcare awareness contribute to lower cases.
✔ Smoking remains a concern, particularly among young adults.
