#Fetching Whole Datset
select * from telco_customer_churn;

#Number of Customers
select count(*) as Count from telco_customer_churn;

#Number of Unique Customers
select count(distinct(customerID)) as TotalCustomers from telco_customer_churn;

#Contract Type
select Contract, count(*) as Count from telco_customer_churn group by Contract;

#Monthly Charges
select avg(MonthlyCharges) as AvgCharge from telco_customer_churn;

#Payment Methods;
select distinct(PaymentMethod), Count(*) as Count from telco_customer_churn group by PaymentMethod order by count desc;

# Customers grouped by gender
select Gender, count(*) as Count from telco_customer_churn group by Gender;

# Senior vs Non-Seniors
select SeniorCitizen, count(*) as Count from telco_customer_churn group by SeniorCitizen;

#Average Tenure (in months)
select round(avg(tenure),1) as AverageTenure from telco_customer_churn;

#Customers with 0 or No Tenure Period
select * from telco_customer_churn where Tenure=0;

#Exporing more about Tenure
select Tenure, count(*) as Count from telco_customer_churn group by Tenure order by Tenure;
select Gender, round(avg(tenure),1) as AverageTenure from telco_customer_churn group by Gender;
select SeniorCitizen, round(avg(tenure),1) as AverageTenure from telco_customer_churn group by SeniorCitizen;

#Churn Rate and knowing more about customers who opted to discontinue the services
select Churn, count(*) as count from telco_customer_churn group by Churn;
select count(*) as CustomerChurnCount from telco_customer_churn where Churn="Yes";
select * from telco_customer_churn where churn="Yes";
select SeniorCitizen, count(*) as count from telco_customer_churn group by Churn, SeniorCitizen having Churn="Yes";
select Tenure, count(*) as count from telco_customer_churn group by Churn, Tenure having Churn="Yes" order by Tenure;
select round(((select count(*) as count from telco_customer_churn group by Churn having Churn="Yes") / count(*))*100,2) as churn_rate from telco_customer_churn;
select Contract, count(*) as Count, round(count(*)*100/ sum(count(*)) over (),1) as PercentageChurned from telco_customer_churn where churn="Yes" group by Contract;

with ChurnCustomers as (select * from telco_customer_churn where Churn="Yes")
(select round(((select count(*) from ChurnCustomers where Tenure<=12)/count(*))*100,2) as ChurnWithin1Year from ChurnCustomers);

with ChurnCustomers as (select * from telco_customer_churn where Churn="Yes")
(select Partner, count(*) as Count, count(*)/sum(count(*)) over() from ChurnCustomers group by Partner);

with ChurnCustomers as (select * from telco_customer_churn where Churn="Yes")
(select PaymentMethod, count(*) from ChurnCustomers group by PaymentMethod);

with ChurnCustomers as (select * from telco_customer_churn where Churn="Yes")
(select DeviceProtection, count(*) from ChurnCustomers group by DeviceProtection);

