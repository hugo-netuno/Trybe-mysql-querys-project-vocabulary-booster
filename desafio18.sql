USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_contratada INT;
SELECT COUNT(*)
FROM hr.employees
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE) INTO quantidade_contratada;
RETURN quantidade_contratada;
END
$$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
