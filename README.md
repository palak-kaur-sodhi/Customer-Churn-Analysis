# Customer Churn Analysis
## Introduction:
CUSTOMER CHURN: customers discontinue to use a product/ service.
Retaining old customers is more important and profitable than gaining new customers. Hence, customer churn analysis has been performed on Telco (A Telecom Company) dataset using SQL Queries executed in MySQLWorkbench. There are numerous benefits of conducting customer churn analysis including increase in profits, improving customer experience, optimizing products & services and customer retention.

## Objectives:
1. What is churn rate?
1. Which customers are not using services anymore (based on their demographics)?
2. Which customers are likely to churn shortly?
3. How can we reduce churn rate?

## Data Sources and Pre-processing:
Customer data has been taken from Kaggle in CSV format and imported to My SQL Workbench. I ensured that datatypes were correctly assigned and null values for TotalCharges were replaced by 0.

## Analyzing data using SQL:
In-depth analysis has been perfomed using SQL to find out useful insights that may help in reducing the churn rate. You can find SQL queries in <b> <a href="https://github.com/palak-kaur-sodhi/Customer-Churn-Analysis/blob/main/Telco_customer_churn.sql"> Telco_customer_churn.sql </a></b> file.
<strong> SQL Concepts Used: DML statements, Aggregation Functions, Window Function, Subqueries, CTEs, Groups, Filters, Sorting & more. </strong>

## Insights:
### About Customers -
1. There were 7043 unique customers.
2. There were 11 customers whose Tenure is 0 months which means they just joined the service and hence their Total Charge is 0.
3. There were more Non-Senior users (~6000).
4. People prefer to pay using Electronic check or use automatic mode for payment.

### About Churn (answering questions) - 
1. There were 26.5% of users who stopped using service (people who churned). 88% of the those users had month-to-month Contract.
2. Most of the people (~1200 out of 1869) who left the services does not have a partner or a dependent.
3. 55.4% of the people discontinued the service within 1 year of joining. Most of them were not taking Technical Support and were only registered for Phone Service.
4. Refer to Suggestions.
   
## Suggestions:
1. Users may be provided with free Technical Support.

Note: Reasons for churn has not been mentioned in the given dataset. So, we can't clearly say why people are opting out of the services. Also, suggestions can be made if we would have known the reason behind people ceasing the services.

