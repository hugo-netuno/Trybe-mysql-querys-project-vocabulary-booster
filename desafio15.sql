USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
JOIN hr.jobs AS j
ON j.JOB_TITLE = title AND j.JOB_ID = e.JOB_ID;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
