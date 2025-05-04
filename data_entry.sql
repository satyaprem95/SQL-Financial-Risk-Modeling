USE credit_risk;

-- Populating the 'Users' table with synthetic data for 20 members
INSERT INTO Users (user_id, age, employment_status, education_level)
VALUES
(1, 25, 'Salaried', 'Graduate'),
(2, 30, 'Self-employed', 'Postgraduate'),
(3, 22, 'Unemployed', 'School'),
(4, 35, 'Salaried', 'Postgraduate'),
(5, 28, 'Salaried', 'Graduate'),
(6, 40, 'Self-employed', 'Postgraduate'),
(7, 26, 'Salaried', 'Graduate'),
(8, 33, 'Unemployed', 'Postgraduate'),
(9, 24, 'Salaried', 'Graduate'),
(10, 31, 'Self-employed', 'Postgraduate'),
(11, 29, 'Salaried', 'Graduate'),
(12, 27, 'Self-employed', 'Postgraduate'),
(13, 32, 'Salaried', 'Postgraduate'),
(14, 34, 'Unemployed', 'School'),
(15, 25, 'Salaried', 'Graduate'),
(16, 26, 'Salaried', 'Graduate'),
(17, 38, 'Self-employed', 'Postgraduate'),
(18, 27, 'Salaried', 'Graduate'),
(19, 23, 'Unemployed', 'School'),
(20, 28, 'Salaried', 'Postgraduate');


-- Populating the 'Income' table with synthetic data for 20 members
INSERT INTO Income (user_id, monthly_income, income_stability_score)
VALUES
(1, 40000.00, 0.9), 
(2, 70000.00, 0.8),
(3, 18000.00, 0.4),
(4, 65000.00, 0.95),
(5, 50000.00, 0.85),
(6, 75000.00, 0.7),
(7, 42000.00, 0.88),
(8, 22000.00, 0.3),
(9, 45000.00, 0.9),
(10, 55000.00, 0.75),
(11, 48000.00, 0.8),
(12, 67000.00, 0.85),
(13, 62000.00, 0.7),
(14, 25000.00, 0.6),
(15, 49000.00, 0.77),
(16, 52000.00, 0.78),
(17, 80000.00, 0.95),
(18, 47000.00, 0.82),
(19, 20000.00, 0.5),
(20, 55000.00, 0.79);

-- Populating the 'CreditCards' table with synthetic data for 20 members
INSERT INTO CreditCards (user_id, credit_limit, utilization_ratio)
VALUES
(1, 120000.00, 0.65),
(2, 150000.00, 0.4),
(3, 50000.00, 0.9),
(4, 100000.00, 0.35),
(5, 80000.00, 0.6),
(6, 120000.00, 0.5),
(7, 90000.00, 0.7),
(8, 60000.00, 0.8),
(9, 110000.00, 0.45),
(10, 95000.00, 0.55),
(11, 100000.00, 0.5),
(12, 85000.00, 0.6),
(13, 130000.00, 0.35),
(14, 75000.00, 0.7),
(15, 105000.00, 0.55),
(16, 95000.00, 0.65),
(17, 140000.00, 0.3),
(18, 90000.00, 0.5),
(19, 70000.00, 0.85),
(20, 120000.00, 0.4);

-- Populating the 'LoanHistory' table with synthetic data for 20 members
INSERT INTO LoanHistory (user_id, loan_amount, paid_on_time_ratio)
VALUES
(1, 500000.00, 0.92),
(2, 600000.00, 0.85),
(3, 250000.00, 0.65),
(4, 700000.00, 0.9),
(5, 400000.00, 0.8),
(6, 750000.00, 0.95),
(7, 450000.00, 0.85),
(8, 350000.00, 0.6),
(9, 500000.00, 0.95),
(10, 600000.00, 0.8),
(11, 550000.00, 0.85),
(12, 700000.00, 0.88),
(13, 650000.00, 0.9),
(14, 300000.00, 0.5),
(15, 400000.00, 0.75),
(16, 500000.00, 0.8),
(17, 800000.00, 0.92),
(18, 450000.00, 0.85),
(19, 200000.00, 0.7),
(20, 550000.00, 0.78);

-- Populating the 'Spending' table with synthetic data for 20 members
INSERT INTO Spending (user_id, category, monthly_spend)
VALUES
(1, 'Food', 10000.00),
(2, 'Health', 8000.00),
(3, 'Shopping', 15000.00),
(4, 'Utilities', 6000.00),
(5, 'Travel', 7000.00),
(6, 'Food', 11000.00),
(7, 'Health', 4000.00),
(8, 'Utilities', 5000.00),
(9, 'Shopping', 12000.00),
(10, 'Travel', 6000.00),
(11, 'Food', 9500.00),
(12, 'Health', 5000.00),
(13, 'Utilities', 4000.00),
(14, 'Food', 7000.00),
(15, 'Travel', 8000.00),
(16, 'Shopping', 13000.00),
(17, 'Food', 10000.00),
(18, 'Health', 6000.00),
(19, 'Utilities', 5500.00),
(20, 'Shopping', 14000.00);

-- Populating the 'Labels' table with synthetic data for 20 members
INSERT INTO Labels (user_id, risk_level)
VALUES
(1, 'Low-Risk'),
(2, 'Medium-Risk'),
(3, 'High-Risk'),
(4, 'Low-Risk'),
(5, 'Medium-Risk'),
(6, 'Low-Risk'),
(7, 'Medium-Risk'),
(8, 'High-Risk'),
(9, 'Low-Risk'),
(10, 'Medium-Risk'),
(11, 'Low-Risk'),
(12, 'Low-Risk'),
(13, 'Medium-Risk'),
(14, 'High-Risk'),
(15, 'Low-Risk'),
(16, 'Low-Risk'),
(17, 'Low-Risk'),
(18, 'Medium-Risk'),
(19, 'High-Risk'),
(20, 'Medium-Risk');

ALTER TABLE LoanHistory
ADD COLUMN defaulted BOOLEAN DEFAULT 0;
-- Mark 6 users as defaulted (1)
UPDATE LoanHistory SET defaulted = 1 WHERE user_id IN (3, 8, 14, 15, 19, 20);

-- Mark the remaining 14 users as not defaulted (0)
UPDATE LoanHistory SET defaulted = 0 WHERE user_id NOT IN (3, 8, 14, 15, 19, 20);



-- For verification purposes
SELECT * FROM Users;



