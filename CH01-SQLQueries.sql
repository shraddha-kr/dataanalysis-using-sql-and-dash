/* Self-join
 * For each zipcode, how many zip codes in the same state have a larger population?
 */
SELECT zc1.zcta5,
SUM(CASE WHEN zc1.totpop < zc2.totpop THEN 1 ELSE 0 END) as numzip
FROM ZipCensus zc1 
JOIN ZipCensus zc2
ON zc1.stab = zc2.stab
GROUP BY zc1.zcta5


/* NonEquiJoins
 * How many orders are greater than the median rent where the customer resides?
 */
SELECT  zc.stab, 
		COUNT(*) as numrows
FROM Orders o 
JOIN ZipCensus zc
ON o.zipcode = zc.zcta5 
AND o.totalprice > zc.mediangrossrent
GROUP BY zc.stab