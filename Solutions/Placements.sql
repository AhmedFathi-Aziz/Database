SELECT Name FROM Students S
INNER JOIN Friends F ON S.ID = F.ID
INNER JOIN Packages P ON P.ID = F.ID
INNER JOIN Packages OtherP ON OtherP.ID = F.Friend_ID

WHERE OtherP.Salary > P.Salary
ORDER BY OtherP.Salary, Name
