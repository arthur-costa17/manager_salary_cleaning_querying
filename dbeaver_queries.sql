-- seeing if there's any outliers.

SELECT MAX(annual_salary), race
FROM manager_entries
GROUP BY race

-- seeing the average, getting rid of obvious outliers (misentries). Some race groups have too few members
-- so those race groups do not get represented through this query.

SELECT COUNT(annual_salary) AS race_size,race, ROUND(AVG(annual_salary),2) AS average_annual_salary 
FROM manager_entries 
WHERE annual_salary BETWEEN 1000 AND 1000000000
GROUP BY race
HAVING COUNT(race) > 10
ORDER BY average_annual_salary DESC;

-- let's see USA states.

SELECT ROUND(AVG(annual_salary),2) AS average_annual_salary,usa_state
FROM manager_entries
WHERE usa_state IS NOT NULL AND annual_salary > 1000
GROUP BY usa_state 
ORDER BY usa_state;




