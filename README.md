# Call_Center_Service_Request_Analysis

## Scope of work

1. Creating visualizations using Tableau and Power BI based on the business requirements provided. 

2. Perform data profiling, understanding the data, and making keen observations on inconsistencies.

3. Understand the process of performing data staging for ad-hoc analysis using SQL and Visualizations.

## Data Connection and Preparation:
- Connect Power BI and Tableau to the Azure SQL database / SQL Server database / MySQL
- Utilize the staging table loaded in these databases to build your visualizations.



For reference the link to open data website to an external site: https://data.kcmo.org/311/311-Call-Center-Service-Requests-2007-March-2021/7at3-sxhp/about_data

The dataset is modified to blend towards course content, hence use the one drive zip file.

Once you unzip the file there will be a TSV file which you will be using. 

1. Use Alteryx to profile your TSV data
2. Make observations and write down the problems that you see with the data like missing values, duplicates, date formats, data conversions, special characters (if any to be identified) and inconsistencies. (For this implementation you can skip the cleaning part as its not covered)
3. Using Alteryx populate data into Microsoft SQL database OR Azure SQL database OR local MySQL database. (If you have any issues connecting to MySQL ask in the slack for help)

Input CSV dataset -> Identify data issues and document it (ignore the methods to clean data as its not covered) -> Stage Table in Azure or Local SQL server, and MySQL

## Business questions to build visualization.

# (1)  Service Requests Over Time:
• What is the overall trend in Service Requests over the years 2018-2021?
• How have Service Requests changed on a monthly basis?

 

# (2) Volume of service requests received from different sources:

• What is the overall trend in Service Requests over Sources?

 

# (3) Volume of service requests received by Department:

• What is the overall trend in Service Requests received by Departments?

 

# (4) Top 10 Performance Metrics (Response Time) per CATEGORY and Type of Request:

• What are the top 10 cases whose response time was fastest? Categorize it with Category1 and Type of Request.

 

# (5) Geographical Visualization:

• What are the Top 10 areas where most number of request were raised?

 

# (6) Departmental Workload Comparison:

• How does the workload vary among different departments and work groups? Create a visual representation to highlight the distribution.

• Hint: Generate a stacked bar chart or tree map to illustrate the distribution of service requests among different departments and work groups. This can help identify which departments are handling a larger share of the workload.

 

# (7) Response Time Analysis:

• Visualize the distribution of response times for each department. Are there any outliers or patterns in response times?

 

# (8) Service Request Status Composition:

• Create a visualization to show the composition of service request statuses (open, closed, in progress). How has this composition changed over the years 2018-2021?

 

# (9) Time to Closure Analysis:

• Visualize the average days to close service requests for each category1. Are there categories with consistently longer closure times?

• Show top 10 (If you need help on how to restrict top 10 contact us and we can guide / help you)

 

# (10) Workload Efficiency:

• Create a visualization to show the relationship between workload (number of service requests) and efficiency (days to close) for each department?

