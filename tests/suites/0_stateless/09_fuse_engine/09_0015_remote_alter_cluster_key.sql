DROP DATABASE IF EXISTS db1;
CREATE DATABASE db1;
USE db1;

-- Create table t09_0015
CREATE TABLE IF NOT EXISTS t09_0015(a int, b int);

-- Alter table add cluster key.
ALTER TABLE t09_0015 CLUSTER BY(b,a);

INSERT INTO t09_0015 VALUES(0,3),(1,1);
INSERT INTO t09_0015 VALUES(1,3),(2,1);
INSERT INTO t09_0015 VALUES(4,4);

SELECT * FROM t09_0015 ORDER BY b,a;

select * from clustering_information('db1','t09_0015');

-- Drop table.
DROP TABLE t09_0015;
DROP DATABASE db1;
