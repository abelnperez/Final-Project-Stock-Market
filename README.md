#  | Final Project: Stock Market ETL and Visualization 📊📈

![](https://github.com/abelnperez/Final-Project-Stock-Market/blob/main/images/project_images/shutterstock_1917266012-750x406.jpg)

## Project Description  

We have received a request from one of our biggest clients, Capital Stone Ventures & Co, to create a product that can satisfy the needs of their shareholders. The main idea is to create a dashboard that can gather and visualize the financial data from all the stock companies in the USA. Although the task is not easy, we first need to conduct an extensive market analysis to find the main source from which we can extract the data. After that, the next step is the extraction of the data and its cleaning. Once cleaned and prepared, we need to gather all the data and store it in a database, creating relationships between the data. Once the data is extracted, cleaned, and gathered, we enter the last step: visualization. The objective of this final step is to create an interactive dashboard where clients can, at first glance, see all the important metrics so they can make informed decisions regarding their investments.

![](https://github.com/abelnperez/Final-Project-Stock-Market/blob/main/images/project_images/stock_market_update.jpeg.jpg)

## Steps

- **Data Extraction and EDA**

To achieve this milestone, we had to investigate many web pages and websites to find the best and most complete data available on the web. After a thorough analysis, we decided that the best option for our project was the website gurufocus.com, which provides exhaustive financial data for investing. The way to obtain the data was through the **Guru Focus API** (https://www.gurufocus.com/api/overview), or Application Programming Interface. We obtained the token and then explored it to gather the relevant information we were looking for. We created a Python function to extract all the relevant information for a list of companies we had selected beforehand. We were able to retrieve the following information from the last 30 years for 86 companies up to the present day. All the information was collected in JSON files, with one file for each company, resulting in a total of 602 JSON files."

   - **Per Share Data**
   - **Ratios**
   - **Income Statement**
   - **Balance Sheet**
   - **Cashflow Statement**
   - **Valuation Ratios**
   - **Valuation and Quality**                             
   - **Ratios**
                   

- **Data Cleaning**

"Once we gathered all the data and completed a rigorous Exploratory Data Analysis, we concluded that the best approach was to consolidate all the information from each company and each field into a single CSV file. To achieve this, we developed a sophisticated Python function capable of processing all the files (remember, we had 602 JSON files after extracting the data from the API). Testing the function took some time, but we successfully made it work. With the functioning function, we were able to condense the JSON files into just 7 files."

- **Data Load**

"Now, with our files cleaned and the data structured, we decided to create two new tables: one for the companies' names and IDs, and the second one for the years and the year IDs. By doing this, we were able to establish relationships among all our data files and create the Entity-Relationship Diagram (ERD) in MySQL. We created the database and the tables from Python using code."

- **Data Visualization**

Finally, we entered the last, but not least, step of our project—to make it visual! In this case, we decided to create the dashboard using Power BI, a powerful visualization tool. We selected the most relevant metrics and the best ratios, and after overcoming several challenges, we successfully had our dashboard working. We opted for a gray background and contrasting colors to enhance the bars and charts. We applied some filters, and the result can be seen below. We are very proud of our product, which is currently undergoing testing by the client. The next step is to make it available to the public. We hope you like it!


![](https://github.com/abelnperez/Final-Project-Stock-Market/blob/main/images/project_images/dashboard.PNG)



## Information  🎞🕹

The repository is divided in the following files:

- **data:**

   - **raw data**: raw JSON files.
   - **clean data**: seven subfolders which are: balance, cashflow, data, companies, income, quality, ratios, valuation and years. Each of it contains the CSV files created from the JSON files after cleaning.

- **notebooks:**

   - **API_extraction.ipynb**: this file contains the code to get the files from the GuruFocus API .
   - **cleaning.ipynb**: the file where the cleaning process is stored.
   - **companies.ipynb**: this is the file where the XLSX file with the companies list was transformed to a dataframe, cleaned and converted to CSV. 
   - **csv_creation_and_clean.ipynb**: this file contains the functions to transform the JSON files to CSV. 
   - **function_concat.ipynb**: this file gathers the process where we concated all the CSV files to their respective financial categories
   - **old HDD.ipynb**: an old hard disk with valuable information 
   - **test_extractio.ipynb**: a file with the testing code for the extraction
   - **SQL folder**: contains the file 'MySQL Connector', that has the code to transfer the final CSV files to SQL Database


- **sql:**

    - **ERD_creation_sql_good.mwb**: it contains the ERD diagram explaining the relationaship, the primary keys and the foreign keys of the data base 
    - **script_creation_sql_good-sql**: the file with the script written for this project 


- **src:**

    - **extract_from_json.py**: it contains the function to extract the data from the JSON files and convert them to CSV format
    - **read_contact_csv.py**: the file with the code to read and concat the CSV files


- **Folder images:**
   - the folder to save memes and graphs.


- **visualization:**

    - **dashboard_stock**: the jewel crown, the dashboard to see all the metrics and financial information in one single place
   
## Next Steps

The next step in the project is to extend the dashboard to have the whole world companies in the dashboard and to optimize its visualization once we get the clients approval.

## Links & Resources 📂 📂 📂 

[Pandas](https://pandas.pydata.org/docs/)

[Numpy](https://numpy.org/doc/1.18/)

[Python](https://docs.python.org/3/library/functions.html)

[Matplotlib](https://matplotlib.org/)

[Seaborn](https://seaborn.pydata.org/)

[Data Cleaning Tutorial](https://www.tutorialspoint.com/python/python_data_cleansing.html)

[Data Cleaning with Numpy and Pandas](https://realpython.com/python-data-cleaning-numpy-pandas/#python-data-cleaning-recap-and-resources)

[Power BI](https://powerbi.microsoft.com/es-es/)


