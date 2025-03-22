# indian-marriage-system
1. Counting Love and Arranged Marriages

    This query retrieves the total number of love and arranged marriages recorded in the dataset. It groups the data by marriage_type and counts the occurrences of each type.

2. Percentage of Love and Arranged Marriages by Religion

   This query calculates the percentage of love and arranged marriages across different religions. The percentage is computed using conditional aggregation, where:

        a.Love marriages are counted and divided by the total number of marriages for that religion.

        b.Arranged marriages are counted similarly.

        c.Results are grouped by religion and age_at_marriage, then sorted by religion.

3. Love and Arranged Marriage Percentage by Age and Region
   
   This query extends the previous one by incorporating age_at_marriage to analyze the percentage of love and arranged marriages across different age groups and regions. The 
   results are grouped by religion and age_at_marriage, then sorted by age.

4. Identifying Marriage Success and Failure Factors
   
   This query analyzes the factors influencing marriage success or failure. It considers attributes such as education_level, caste_match, religion, marital_satisfaction, and 
   children_count, among others. The query assigns a label:

       "Successful marriage life" if divorce_status = 'no'

       "Failure marriage life" if divorce_status = 'yes'
   The filter focuses on love marriages, males aged 30 or 35, and only cases where the marriage ended in divorce.

5. Divorce Rate for Love and Arranged Marriage
   
   This query calculates the divorce rate for love and arranged marriages. It determines:

   --The total number of each marriage type.

   --The percentage of marriages that ended in divorce.

   --The calculation ensures precision using ROUND to get the percentage rate with two decimal places.

6. Divorce Rate by Religion, Gender, and Parental Approval
   
  This query examines divorce rates based on religion, gender, caste match, and parental approval. It focuses on specific religions (hindu, muslim, others) and only 
  considers male respondents who had parental approval. The results are grouped by marriage_type, gender, caste_match, religion, and parental_approval, and sorted in 
  descending order of divorce percentage.






