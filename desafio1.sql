SELECT c.COUNTRY_NAME as 'País',
CASE WHEN re.REGION_NAME = 'Europe' THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão'
FROM hr.regions AS re
INNER JOIN countries AS c
ON re.REGION_ID = c.REGION_ID
ORDER BY c.COUNTRY_NAME;
