-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
-- P1(A, B) P2(C, D)   =>SQRT((C-A)^2 + (D-B)^2)

SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+ POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;