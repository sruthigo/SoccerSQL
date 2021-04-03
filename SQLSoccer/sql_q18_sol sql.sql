#/*Not sure what this means.. Couldn’t find any card kind of field in the tables:*/

SELECT match_no,COUNT(*) as noofbooked
FROM player_booked  
group by match_no 
order by COUNT(*) desc limit 1;