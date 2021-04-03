select m. match_no, sc.country_id, sc.country_name 
from soccer_country as sc join 
(select match_no,team_id from match_details where match_no in (select match_no from match_details where penalty_Score>0order by penalty_score desc limit 1))as m
on m.team_id = sc.country_id