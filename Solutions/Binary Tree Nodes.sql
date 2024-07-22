SELECT N,
    CASE
        WHEN P IS NOT NULL THEN
            CASE
                WHEN N IN (SELECT P FROM BST) THEN 'Inner'
                ELSE 'Leaf'
            END
        ELSE 'Root'
    END

FROM BST
ORDER BY N
