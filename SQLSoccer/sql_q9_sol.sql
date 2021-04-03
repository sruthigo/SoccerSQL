select g.player_name,g.jersey_no  from player_mast as g where g.player_id in 
(
select distinct m.player_gk from match_details as m where m.play_stage = 'G'and m.team_id in 
(select sc.country_id from soccer_country as sc 
where country_name = 'Germany'
) 
)