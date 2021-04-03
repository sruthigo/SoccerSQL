SELECT distinct player_name,jersey_no,match_no
FROM player_in_out p
JOIN player_mast m ON p.player_id=m.player_id
WHERE p.in_out='I'
AND p.play_schedule='NT'
AND p.play_half=1;