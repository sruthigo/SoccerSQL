
select country_name,pm.team_id,pm.posi_to_play,count(gd.goal_id) 
from goal_details gd 
join player_mast pm on gd.team_id = pm.team_id
join soccer_country sc on sc.country_id = pm.team_id
and gd.player_id = gd.player_id
group by country_name,pm.team_id,pm.posi_to_play
order by country_name;