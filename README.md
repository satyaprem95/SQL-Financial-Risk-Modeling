# SQL-Financial-Risk-Modeling

## Problem Statement
The project aims to analyze and predict financial risk based on users' loan and credit card data. The goal is to categorize users into different risk categories (High, Medium, Low) based on their financial profiles, including their loan amounts, credit scores, and credit utilization ratios. Additionally, the project aims to assess loan default rates based on factors like education, employment status, and past loan history.

## Objectives
1.  Analyze the relationship between loan amounts, credit scores, and default risks.
2.  Classify users into risk categories (High, Medium, Low) based on loan and credit behavior.
3.  Investigate the correlation between education level and loan defaults.
4.  Implement a structured database to store, process, and analyze users' financial data.
5.  Use SQL queries to perform data manipulation and analysis.

## Work Done

### 1. **Database Design & Table Creation**
I designed a relational database that consists of several tables to store the necessary data for the analysis. The following tables were created:

- **Users Table**: This table contains user information such as ID, age, employment status, and education level.
  
- **LoanHistory Table**: This table holds data related to users' loans, including loan amounts, repayment behavior, and whether the user defaulted on any loans.

- **CreditCards Table**: This table records users' credit card behavior, such as credit limit and utilization ratio.


### 2. **Data Entry**
Sample data was entered into the tables for 20 users, including their age, education level, loan details, and credit card information. The data includes loan amounts, repayment behaviors, credit scores, and utilization ratios.

### 3. **Data Analysis Steps**
SQL queries were written to perform the following analyses:
- **Risk Classification Based on Loan Amount and Credit Score**: Users were classified into different risk categories (High, Medium, Low) based on loan amounts and credit scores.
- **Loan Default Rate Based on Education Level**: The default rate was analyzed based on the education level of the users.
- **Top Risky Profiles Based on Loan Amount + Credit Utilization**: The most risky profiles were identified based on a combination of loan amounts and credit card utilization ratios.

## Conclusion
In this project, a relational database system was created to store and analyze financial risk data. SQL queries were implemented to classify users into risk categories, assess loan defaults, and identify the most risky financial profiles based on a combination of loan and credit card data. This analysis can be extended for future real-world applications such as credit scoring, loan approvals, and financial forecasting.

## Future Work
- Extend the analysis by incorporating more features, such as income, debt-to-income ratio, and transaction history.
- Integrate machine learning models to predict loan defaults based on historical data.
- Further optimize queries for large-scale data processing and performance enhancement.
