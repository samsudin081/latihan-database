DROP DATABASE fungsi_sp;
CREATE DATABASE fungsi_sp;
USE fungsi_sp;


DELIMITER ;;
CREATE FUNCTION sp_kalkulator(
m_luas SMALLINT,
m_operator VARCHAR(6),
m_bil_b SMALLINT
) RETURNS SMALLINT DETERMINISTIC
BEGIN 
RETURN 
	CASE  m_operator 
		WHEN 'tambah' THEN m_bil_a + m_bil_b
		WHEN 'kurang' THEN m_bil_a - m_bil_b
		WHEN 'kali' THEN m_bil_a * m_bil_b
		ELSE  m_bil_a / m_bil_b

	END;

END
;;
DELIMITER ;

SELECT sp_kalkulator(10,'tambah',5);
SELECT sp_kalkulator(10,'kurang',5);
SELECT sp_kalkulator(10,'kali',5);
SELECT sp_kalkulator(10,'bagi',5)


