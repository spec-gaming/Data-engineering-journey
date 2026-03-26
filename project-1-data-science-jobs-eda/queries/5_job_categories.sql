-- Which job categories are most in demand and highest paying?

SELECT 
    job_category,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary,
    COUNT(*) AS job_count
FROM data_science_jobs
GROUP BY job_category
ORDER BY job_count DESC;



-- final result. Key insights:

--Machine Learning and AI pays the most at $178k highest salary category
--Data Science and Research dominates in volume with 3014 jobs
--Data Engineering is strong 2nd in volume and solid $146k avg. Good validation for your career pivot
--Data Analysis has lots of jobs but lower pay at $108k
--Cloud and Database only 5 records ignore that average

