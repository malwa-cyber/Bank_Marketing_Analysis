USE Bank_Marketing;

SELECT *  
FROM bank_mkt;

SELECT 
      COUNT(*)-COUNT(age) AS age_with_nulls,
      COUNT(*)-COUNT(job) AS job_with_nulls,
      COUNT(*)-COUNT(marital) AS marital_with_nulls,
      COUNT(*)-COUNT(education) AS education_with_nulls,
      COUNT(*)-COUNT([default]) AS default_with_nulls,
      COUNT(*)-COUNT(balance) AS balance_with_nulls,
      COUNT(*)-COUNT(housing) AS housing_with_nulls,
      COUNT(*)-COUNT(loan) AS loan_with_nulls,
      COUNT(*)-COUNT(contact) AS contact_with_nulls,
      COUNT(*)-COUNT(day) AS day_with_nulls,
      COUNT(*)-COUNT(pdays) AS pdays_with_nulls,
      COUNT(*)-COUNT(month) AS month_with_nulls,
      COUNT(*)-COUNT(duration) AS duration_with_nulls,
      COUNT(*)-COUNT(campaign) AS campaign_with_nulls,
      COUNT(*)-COUNT(previous) AS previous_with_nulls,
      COUNT(*)-COUNT(poutcome) AS poutcome_with_nulls,
      COUNT(*)-COUNT(y) AS age_with_nulls
FROM bank_mkt
WHERE age IS NULL
   OR job IS NULL
   OR marital IS NULL
   OR education IS NULL
   OR [default] IS NULL
   OR balance IS NULL
   OR housing IS NULL
   OR loan IS NULL
   OR contact IS NULL
   OR day IS NULL
   OR month IS NULL
   OR duration IS NULL
   OR campaign IS NULL
   OR pdays IS NULL
   OR previous IS NULL
   OR poutcome IS NULL
   OR y IS NULL;

SELECT COUNT(*) AS Clients,
       y   AS SubscriptionStatus 
FROM bank_mkt
WHERE job='unknown'
      AND education='unknown'
      AND contact='unknown'
      AND poutcome='unknown'
GROUP BY y;

SELECT COUNT(*) AS Clients, 
       y AS SubscriptionStatus
FROM bank_mkt
 WHERE loan=1   
 GROUP BY y; -- grouping the number of clients who have taken a loan by subscription status

 SELECT COUNT(*) AS Clients,
       y AS SubscriptionStatus
FROM bank_mkt
 WHERE loan=0
 GROUP BY y;  -- grouping the number of clients who have not taken a loan by subscription status

 SELECT COUNT(*) AS Clients,
        loan,
        SUM(CASE WHEN y=1 THEN 1 ELSE 0 END) AS Subscribed,
        ROUND(100.00 * SUM(CASE WHEN y=1 THEN 1 ELSE 0 END)/COUNT(*),2) AS SubscriptionRate
FROM bank_mkt
GROUP BY loan;


 SELECT job,
        COUNT(*) AS NumClients,
        SUM(CASE WHEN y=1 THEN 1 ELSE 0 END) AS Subscribed,
        loan,
        contact,
        poutcome
 FROM bank_mkt
GROUP BY job,poutcome,loan,contact
ORDER BY job,poutcome,loan,contact;    --checking if the job column has inconsistencies and then grouping them

SELECT COUNT(*) AS NumClients,
       SUM(CASE WHEN y=1 THEN 1 ELSE 0 END) AS Subscribed,
       ROUND(100.00*SUM(CASE WHEN y=1 THEN 1 ELSE 0 END)/COUNT(*),2) AS SubscriptionRate,
       poutcome
FROM bank_mkt
GROUP BY poutcome;




