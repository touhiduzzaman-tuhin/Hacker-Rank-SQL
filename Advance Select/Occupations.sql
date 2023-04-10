-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

-- Note: Print NULL when there are no more names corresponding to an occupation.

SELECT MAX(Doctor), MAX(Professor), MAX(Singer), MAX(Actor) FROM
(SELECT
    CASE WHEN OCCUPATION = 'Doctor' THEN NAME END AS Doctor,
    CASE WHEN OCCUPATION = 'Professor' THEN NAME END AS Professor,
    CASE WHEN OCCUPATION = 'Singer' THEN NAME END AS Singer,
    CASE WHEN OCCUPATION = 'Actor' THEN NAME END AS Actor,
    ROW_NUMBER() OVER(PARTITION BY OCCUPATION ORDER BY NAME) AS RN
FROM OCCUPATIONS) AS X
GROUP BY X.RN;