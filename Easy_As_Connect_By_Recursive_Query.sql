/* This query is written in DB2 SQL. */
/* It demonstrates the CONNECT BY ability, a type of recursive query, specific to DB2.
CONNECT BY allows the stringing together of a series of unique identifiers,
which can be used to either establish their relation to one another OR
to identify the very first instance (unique identifier). 
This can be really helpful when data is structured in such a way that records
do not contain all the pieces necessary
to readily associate that record to preceding records. */

SELECT
CONNECT_BY_ROOT t1.unique_key AS first_key /* Earliest connected object. */
, t1.prior_unique_key /* Previous unique identifier or key of an object. */
, t1.unique_key /* Unique identifier or key of an object. */
, LEVEL AS place_in_series /* The place of the object in a series of connected objects. */
FROM FILE.TABLE t1
START WITH t1.prior_unique_key IS NOT NULL
CONNECT BY PRIOR t1.unique_key = t1.prior_unique_key
;