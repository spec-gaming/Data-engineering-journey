-- How does experience level affect salary?

SELECT 
    experience_level,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary,
    COUNT(*) AS job_count
FROM data_science_jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;

--- insights:

--Executive → Senior gap: ~$27k
--Senior - Mid gap: ~$45k  biggest jump, going senior is the most valuable move
--Mid - Entry gap: ~$29k

--Senior roles dominate the dataset with 6709 jobs that's where most of the market is.