-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
-- P1(X1, Y1) P2(X2, Y2)  => |X1-X2|+|Y1-Y2|

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)), 4)
FROM STATION;