#  | Final Project: Stock Market ETL and Visualization 📊📈📉

![](https://github.com/abelnperez/Final-Project-Stock-Market/blob/main/images/project_images/shutterstock_1917266012-750x406.jpg)

## Project Description  

We have received a request from one of our biggest clients, Capital Stone Ventures & Co,  to create a product that can satisfy the necesity of their shareholders. The main idea is to create a dashboard than can gather and visualize the financial data from all the stock companies from de USA. The task instead is not easy, we have to do first an extensive market analisys to find the main source where we can extract the data. After that the follow step is the extraction of the data and the cleaning of it, once cleaned and prepared we need to gather all the data and storage it in a data base and create the relations between the data. Once the data is extracted, cleaned and gathered we enter in the last step, the visualization. The objective of this last step is to create an interactive dashboard where the clients can have at first shight all the important metric so they can take the proper decisions in order to invest their money wisely.

![](https://github.com/abelnperez/Final-Project-Stock-Market/blob/main/images/project_images/stock_market_update.jpeg.jpg)

## Steps

- **Data Extraction and EDA**

To achive this milestone we had to investigate many webapages and websites to find the best and more complete data from the web. After a strong analisys we decided tha the best option for our project was the website gurufocus.com which is a web with an exahustive financial data for investing. The way to get the data was trough the Guru Focus API or Application Programming Interface, we had to get the token and then explore it to get the relevant information we were looking for. We created a function with Python to extract all the relevant information for a list of companies we selected before. We were able to get the following information from the last 30 years from 86 companies until today, all the information was collected in JSON files, one of each for each company, having a total of 602 JSON files.

- Per Share Data
- Ratios
- Income Statement
- Balance Sheet
- Cashflow Statement 
- Valuation Ratios
- Valuation and Quality

- **Data Cleaning**

Once we got all the data and after a rigorous Exploratory Data Analisys we decided the best way to go was to group all the information from each company and from each field in one single CSV. To do that we created a complex function with Python to be able to work with all the files (remember we had 602 JSON files after the data extraction from the API). It took as some time to test the function but we were able to make it work succesfully. Once the function was working we were able to reduce the JSON files to 7 files. 

- **Data Load**

Now with our files cleaned and the data structured we decided to create 2 new tables, one for the companies name and id and the second one for the years and the year id, doing this we could relationate all our data files and create the ERD relation in MySQL. We created the data base from Python and the tables as well with coding. 

- **Data Visualization**

Finally we entered in the last, but not least, step of our project, to make it visual! In this case we decided to create the Dashboard with PowerBI which is a powerful visualization tool. We selected the most relevant metrics, the best ratios and after a lot of headaches we were able to have our dashboard working successfully. We selected a gray background and contract colors to create the bars and charts, we applied some filters and the result can be seen bellow. We are very proud with our product and it is being under testing by the client, the next step is to make it available for the public, we hope you like it!


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
   


## Links & Resources 📂 📂 📂 

[Pandas](https://pandas.pydata.org/docs/)

[Numpy](https://numpy.org/doc/1.18/)

[Python](https://docs.python.org/3/library/functions.html)

[Matplotlib](https://matplotlib.org/)

[Seaborn](https://seaborn.pydata.org/)

[Data Cleaning Tutorial](https://www.tutorialspoint.com/python/python_data_cleansing.html)

[Data Cleaning with Numpy and Pandas](https://realpython.com/python-data-cleaning-numpy-pandas/#python-data-cleaning-recap-and-resources)

[Power BI](https://powerbi.microsoft.com/es-es/)


