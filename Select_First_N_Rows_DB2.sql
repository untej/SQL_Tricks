/* This query is written in DB2 SQL. */
/* It demonstrates the FETCH statement specific to DB2 SQL,
which can be used to limit the number of rows to be fetched. */

SELECT *
FROM FILE.TABLE t1
FETCH FIRST n ROWS ONLY
/* Where n is the number of rows to be fetched. */
;