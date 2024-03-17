CREATE TABLE tbl (id int PRIMARY KEY, data int);
CREATE INDEX tbl_data_idx ON tbl (data);
INSERT INTO tbl SELECT generate_series(1,10000),generate_series(1,10000);
ANALYZE;