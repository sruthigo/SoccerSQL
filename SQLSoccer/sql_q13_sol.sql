SELECT player_name,  jersey_no, country_name, playing_club
FROM goal_details gd
JOIN player_mast pm ON gd.player_id=pm.player_id
JOIN soccer_country sc ON gd.team_id=sc.country_id
WHERE posi_to_play='DF'
ORDER BY player_name;