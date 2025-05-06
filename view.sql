CREATE VIEW TopPlayersView AS
SELECT
p.Name AS PlayerName,
n.CountryName,
pos.PositionName,
c.ClubName,
p.OverallRating
FROM
Player p
JOIN
Nationality n ON p.NationalityID = n.NationalityID
JOIN
PlayerPosition pos ON p.PositionID = pos.PositionID
JOIN
PlayerClub pc ON p.PlayerID = pc.PlayerID
JOIN
Club c ON pc.ClubID = c.ClubID
WHERE
p.OverallRating >= 90;