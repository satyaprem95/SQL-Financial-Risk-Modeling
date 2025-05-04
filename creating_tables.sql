CREATE DATABASE credit_risk;
USE credit_risk;

-- Users table: stores basic demographic information
CREATE TABLE Users (
    user_id INT PRIMARY KEY,                         -- Unique user ID
    age INT,                                          -- Age of the user in years
    employment_status VARCHAR(50),                   -- Type of employment: salaried, self-employed, unemployed
    education_level VARCHAR(50)                      -- Education level: school, graduate, postgraduate, etc.
);

-- Income table: represents user's income profile
CREATE TABLE Income (
    user_id INT,                                      -- Foreign key to Users
    monthly_income DECIMAL(10, 2),                    -- Monthly income in INR
    income_stability_score DECIMAL(3, 2),             -- Score (0.0 - 1.0) indicating income regularity
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- CreditCards table: represents credit card behavior
CREATE TABLE CreditCards (
    user_id INT,                                      -- Foreign key to Users
    credit_limit DECIMAL(10, 2),                      -- Total credit limit (INR)
    utilization_ratio DECIMAL(3, 2),                  -- Ratio of used credit to total limit (0.0 - 1.0)
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- LoanHistory table: repayment history of user
CREATE TABLE LoanHistory (
    user_id INT,                                      -- Foreign key to Users
    loan_amount DECIMAL(10, 2),                       -- Total loan taken (INR)
    paid_on_time_ratio DECIMAL(3, 2),                 -- Ratio of EMIs paid on time (0.0 - 1.0)
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Spending table: captures monthly spending habits
CREATE TABLE Spending (
    user_id INT,                                      -- Foreign key to Users
    category VARCHAR(50),                             -- Spending category: food, health, shopping, etc.
    monthly_spend DECIMAL(10, 2),                     -- Amount spent monthly in that category (INR)
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Labels table: target labels for machine learning
CREATE TABLE Labels (
    user_id INT,                                      -- Foreign key to Users
    risk_level VARCHAR(20),                           -- Credit risk level: Low-Risk, Medium-Risk, High-Risk
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

