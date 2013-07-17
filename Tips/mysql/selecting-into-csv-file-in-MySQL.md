$ sudo chown mysql:mysql /tmp/result1.csv

CREATE DATABASE export_tmp;
CREATE TABLE mail_tmp (address CHAR(40), t1 char(10), t2 char(1), t3 char(1), t4 char(1)) ENGINE=MYISAM;

LOAD DATA INFILE '/home/vagrant/www/export/result1.csv' INTO TABLE mail_tmp FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (address,t1,t2,t3,t4);
LOAD DATA INFILE '/home/vagrant/www/export/result2.csv' INTO TABLE mail_tmp FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (address,t1,t2,t3,t4);
LOAD DATA INFILE '/home/vagrant/www/export/result3.csv' INTO TABLE mail_tmp FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (address,t1,t2,t3,t4);


SET NAMES utf8;
SELECT lfc.id_lfcustomer, lfc.email FROM lfcustomer lfc LEFT JOIN mail_tmp mt ON mt.address=lfc.email \
INTO OUTFILE '/home/vagrant/www/export/output.csv' \ 
FIELDS TERMINATED BY ';' \ 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';



