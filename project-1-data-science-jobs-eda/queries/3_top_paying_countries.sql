-- Which countries pay the most for data roles?




SELECT 
    company_location,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary,
    COUNT(*) AS job_count
FROM data_science_jobs
GROUP BY company_location
HAVING COUNT(*) > 20
ORDER BY avg_salary DESC
LIMIT 10;




-- Insights:
-- US dominates both in volume (8132 jobs. 87% of the dataset) and pay. Key insights:

-- US vs UK gap: ~$54k, massive difference
-- Canada is the closest to US pay at $143k
-- European salaries drop off significantly Spain and Portugal under $56k
-- Australia surprisingly strong at $132k with decent sample size



