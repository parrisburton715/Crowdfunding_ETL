# Crowdfunding_ETL

Beatrik -- performed the steps of creating a Category DataFrame and Subcategory DataFrame. The output of these operations were exported as category.csv and subcategory..csv.

Jorge Torres -- performing several operations on a DataFrame to process contact information from an Excel file and then exporting it to a CSV file.
Reads data from an Excel file into a Pandas DataFrame.
Parses JSON-like strings in one column of the DataFrame, extracting contact information.
Splits the 'name' column into 'first_name' and 'last_name' columns.
Reorders the columns in the DataFrame.
Check the datatypes one before exporting as CSV file.
Exports the DataFrame to a CSV file.

Parris -- Steps Taken
1. **Creation of Campaign DataFrame**:
	- The DataFrame `campaign_df` is created as a copy of the existing DataFrame `crowdfunding_info_df`.
	- The desired columns are renamed, converted to appropriate data types, and formatted:
	- The "blurb" column is renamed to "description".
	- The "goal" column is converted to float data type.
	- The "pledged" column is converted to float data type.
	- The "launch_date" column is converted to datetime format.
	- The "end_date" column is converted to datetime format.
	- The "category_id" and "subcategory_id" columns are merged with respective unique numbers from category and subcategory DataFrames.
	- A new column containing the unique four-digit contact ID number from the `contact.xlsx` file is created. (Contributed by Parris)
2. **Exporting DataFrame**:
- The cleaned DataFrame is exported to a CSV file named `campaign.csv`.
3. **Reading Contact Information**:
- Contact information is read from the Excel file `contacts.xlsx` into a DataFrame named `contact_info_df`. The header is specified at row 3.

Nicole -- Created crowdfunding database using steps in Project 2 - Create the Crowdfunding Database
- Sources: Chat GPT, Ask BCS Learning Assistant

Dependencies
-Python 3.x
-Pandas
-NumPy

Collaborators
P. Burton
N. Cambron
J. Torres
B. Arimbi
