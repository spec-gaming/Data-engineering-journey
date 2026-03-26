-- Remote vs Hybrid vs In-person. which pays more?

SELECT 
    work_setting,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary,
    COUNT(*) AS job_count
FROM data_science_jobs
GROUP BY work_setting
ORDER BY avg_salary DESC;


-- key Insights
-- In-person beats remote by ~$10k  contradicts the common assumption that remote roles pay a premium
-- Hybrid is significantly lower at $88k  almost $67k less than in-person
-- Remote has decent volume at 3434 jobs  it's a real market not a niche
