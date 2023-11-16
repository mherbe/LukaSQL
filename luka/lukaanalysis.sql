##Games where Luka shot >50% and the result
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE luka_fgpercent >= 0.50
GROUP BY result
ORDER BY RESULT DESC;

#Games where the rest of the team, excluding Luka, shot >50% and the results
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE team_fgpercent >= 0.50
GROUP BY result
ORDER BY RESULT DESC;

#Games where the rest of team, exluding Luka, shot >40and Luka himself shot >50%
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE team_fgpercent > 0.50 and luka_fgpercent >= 0.50
GROUP BY result
ORDER BY RESULT DESC;

#Games where Luka accounted for >= 30% of the teams shots
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE luka_percentofteamtotal >= .30
GROUP BY result
ORDER BY RESULT DESC;

## Games where Luka score 24 points or less
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE points <=24
GROUP BY result
ORDER BY RESULT DESC;


##Games where Luka scores 30 or more
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE points >=30
GROUP BY result
ORDER BY RESULT DESC;

##Games where Luka shoots over 50% and 20% of teams total
SELECT result, COUNT(game) as games_total
FROM BasketballStats
WHERE luka_fgpercent >= 0.50 AND luka_percentofteamtotal >= 0.25
GROUP BY result
ORDER BY RESULT DESC;
