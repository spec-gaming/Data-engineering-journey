-- What are the top 10 highest paying job titles on average?
SELECT
	job_title,
	ROUND(AVG(salary_in_usd), 2) AS avg_salary,
	COUNT(*) AS job_count
FROM
	data_science_jobs
GROUP BY
	job_title
ORDER BY
	avg_salary DESC
LIMIT
	10;
