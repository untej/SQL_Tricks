/* This query is written in DB2 SQL. */
/* It demonstrates the WITH statement, used to define and organize sub-queries.
This method creates cleaner, less-repetitive code than to define and join the sub-query
at the same time within the body of the main query. */

WITH

SubQuery AS
(
SELECT *
FROM FILE.TABLE t1
/* JOIN statement is optional. */
/* WHERE statement is optional. */
/* GROUP BY statement is optional. */
/* HAVING statement is optional. */
/* ORDER BY statement is optional. */
/* LIMIT statement is optional. */
)

SELECT *
FROM SubQuery
/* JOIN statement is optional. */
/* WHERE statement is optional. */
/* GROUP BY statement is optional. */
/* HAVING statement is optional. */
/* ORDER BY statement is optional. */
/* LIMIT statement is optional. */
;