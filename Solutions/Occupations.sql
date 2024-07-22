WITH Data AS (
    SELECT name, occupation,
        COUNT(*) OVER (PARTITION BY Occupation ORDER BY Name) AS occupation_num
    FROM OCCUPATIONS
)

SELECT 
    MAX(IF (Occupation = 'Doctor', Name, NULL)),
    MAX(IF (Occupation = 'Professor', Name, NULL)),
    MAX(IF (Occupation = 'Singer', Name, NULL)),
    MAX(IF (Occupation = 'Actor', Name, NULL))
FROM Data
GROUP BY occupation_num

-- each IF condition in `SELECT` clause creates a new column in the result
