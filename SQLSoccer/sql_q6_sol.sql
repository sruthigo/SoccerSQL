select count(match_no) 
from match_details 
where win_lose = 'W' 
and decided_by = 'N' 
and goal_score = 1