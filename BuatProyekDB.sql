CREATE DATABASE IF NOT EXISTS book1;

USE book1;

CREATE TABLE IF NOT EXISTS sheet1 (
		saklar_lampu VARCHAR(3)
		
);



DELETE	FROM sheet1;

ALTER TABLE sheet1

DROP PRIMARY KEY;

ALTER TABLE	sheet1
ADD CONSTRAINT PRIMARY KEY (saklar_lampu);

INSERT INTO sheet1 (saklar_lampu) VALUES
('ON'),	/*memasukkan data sekaligus*/
('OFF'); 


/*Debug untuk jumlan record*/
SELECT 		saklar_lampu as 'Nama Saklar Lampu',

			COUNT(saklar_lampu) as Status_Saklar_Lampu
FROM	 	sheet1
GROUP BY 	saklar_lampu 
ORDER BY 	saklar_lampu ASC; 
	

SELECT	saklar_lampu AS 'SAKLAR LAMPU', 
		IF(saklar_lampu='ON','Nyala','Mati') AS STATUS_LAMPU
FROM 	sheet1;



CREATE TABLE IF NOT EXISTS sheet2 (
		lampumerah VARCHAR(6)
);

DELETE	FROM sheet2;

INSERT INTO sheet2 (lampumerah) VALUES
('Merah'),	/*memasukkan data sekaligus*/
('Kuning'),
('Hijau'); 

SELECT	lampumerah AS 'LAMPU LALU LINTAS', 
		IF(lampumerah='Merah','Berhenti',IF(lampumerah='Kuning','HatiHati','Jalan')) AS STATUS
FROM 	sheet2;