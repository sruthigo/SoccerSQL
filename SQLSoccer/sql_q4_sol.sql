select match_no,play_schedule,play_half,count(*) 
from player_in_out 
where In_out = 'I'
group by match_no,play_schedule,play_half 
order by match_no,play_schedule,play_half