/* This query is written in DB2 SQL. */
/* It demonstrates the ability to order columns by the order they appear in the select statement. */

SELECT
t1.column1
, t1.column2
, t1.column3
FROM FILE.TABLE t1 /* Where t1 is a name assigned by the programmer to the table. */
/* JOIN statement is optional. */
/* WHERE statement is optional. */
/* GROUP BY statement is optional.
If used, it must refer to columns by table name dot column.
It may not refer to columns by the order they appear in the select statement. */
GROUP BY
t1.column1
, t1.column2
, t1.column3
/* HAVING statement is optional. */
/* ORDER BY statement is optional.
If used, it may refer to columns by the order they appear in the select statement.
In this example, the query would return order by t1.column1, t1.column3, and finally t1.column2. */
ORDER BY
1
, 3
, 2
/* LIMIT statement is optional. */
;
