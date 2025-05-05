SELECT * FROM Player LIMIT 100;
SELECT * FROM Nationality LIMIT 100;
SELECT * FROM Position LIMIT 100;
SELECT * FROM Club LIMIT 100;
SELECT * FROM PlayerClub LIMIT 100;

SELECT
p.PlayerID, p.Name, n.CountryName, p.OverallRating
FROM
Player p
JOIN
Nationality n ON p.NationalityID = n.NationalityID
LIMIT 100;

SELECT
n.CountryName, COUNT(*) AS NumPlayers
FROM
Player p
JOIN
Nationality n ON p.NationalityID = n.NationalityID
GROUP BY
n.CountryName
ORDER BY
NumPlayers DESC;