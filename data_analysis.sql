USE credit_risk;
-- Classifying Users into Risk Categories
SELECT
    u.user_id,
    CASE 
        WHEN l.loan_amount > 1000000 AND c.utilization_ratio > 0.8 THEN 'High-Risk'
        WHEN l.loan_amount <= 1000000 AND c.utilization_ratio BETWEEN 0.4 AND 0.8 THEN 'Medium-Risk'
        WHEN l.loan_amount <= 1000000 AND c.utilization_ratio < 0.4 THEN 'Low-Risk'
        ELSE 'Medium-Risk'
    END AS risk_category
FROM Users u
JOIN LoanHistory l ON u.user_id = l.user_id
JOIN CreditCards c ON u.user_id = c.user_id;

-- Finding average loan amount grouped by employment status
SELECT 
    u.employment_status,
    ROUND(AVG(l.loan_amount), 2) AS avg_loan_amount
FROM Users u
JOIN LoanHistory l ON u.user_id = l.user_id
GROUP BY u.employment_status;

-- Users showing overuse of credit cards but haven't taken high loans
SELECT 
    u.user_id,
    c.utilization_ratio,
    l.loan_amount
FROM Users u
JOIN CreditCards c ON u.user_id = c.user_id
JOIN LoanHistory l ON u.user_id = l.user_id
WHERE c.utilization_ratio > 0.9 AND l.loan_amount < 500000;

-- Checking which education levels correlate more with loan defaults
SELECT 
    u.education_level,
    COUNT(*) AS total_users,
    SUM(CASE WHEN l.defaulted = 1 THEN 1 ELSE 0 END) AS total_defaults,
    ROUND(SUM(CASE WHEN l.defaulted = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM Users u
JOIN LoanHistory l ON u.user_id = l.user_id
GROUP BY u.education_level;

-- Top risky profiles based on loan + utilization
SELECT 
    u.user_id,
    u.age,
    l.loan_amount,
    c.utilization_ratio,
    (l.loan_amount * c.utilization_ratio) AS risk_score
FROM Users u
JOIN LoanHistory l ON u.user_id = l.user_id
JOIN CreditCards c ON u.user_id = c.user_id
ORDER BY risk_score DESC
LIMIT 5;


