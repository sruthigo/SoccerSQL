select count(distinct player_gk) from match_details md
join match_captain mc on 
player_gk = player_captain;