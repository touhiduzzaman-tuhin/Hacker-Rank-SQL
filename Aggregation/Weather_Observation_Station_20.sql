-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

SELECT ROUND(LAT_N, 4) FROM 
(SELECT ROW_NUMBER() OVER(ORDER BY LAT_N ASC) AS RN, LAT_N FROM STATION) AS X
WHERE RN = (SELECT ROUND(COUNT(*)/2) FROM STATION);
