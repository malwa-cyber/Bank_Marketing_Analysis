# Bank_Marketing_Analysis
-Market analysis of a Portuguese bank's marketing campaign data :does previous campaigns outcome affect term deposit prediction? Using  SQL, EXCEL and R.

I do not own this dataset.

[Moro et al., 2011] S. Moro, R. Laureano and P. Cortez. Using Data Mining for Bank Direct Marketing: An Application of the CRISP-DM Methodology.

## Hypothesis
H0: Subscription  is independent of previous  campaign outcome.

H1: Subscription  is dependent of previous campaign outcome.

-Basically, we are testing the association between Subscription and previous campaign outcome.

# Data Cleaning
-Checked for null values, missing values and inconsistent values using SQL.

-No NULL values were found. I didn't find missing values'' but  I found 'unknown' values across job, education ,contact, and poutcome and decided to leave them there because it might alter our data.

-Since the data had no unique values or columns I didn't check for duplicates.

### Cleaned Bank Market file.

![Cleaned bank market file](bank_mkt_cleaned.png)

## Finding :Previous Campaign Outcome
|Previous Outcome | Subscription_Rate| Lift vs Overall|
|---|---|---|
|success|64.73|5.54x|
|failure|12.61|1.08x|
|other|16.68|1.43x|
|unknown|9.16|0.78x|

Overall subscription rate:11.69%

χ²(3)=4391.5, p-value<0.001, Cramer's V=0.31




## Analysis







