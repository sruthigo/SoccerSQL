SELECT rm.referee_name,sc.country_name,sv.venue_name,count(mm.match_no)
FROM match_mast mm
JOIN referee_mast rm ON mm.referee_id=rm.referee_id
JOIN soccer_country sc ON rm.country_id=sc.country_id
JOIN soccer_venue sv ON mm.venue_id=sv.venue_id
GROUP BY rm.referee_name,sc.country_name,sv.venue_name
ORDER BY rm.referee_name,sc.country_name,sv.venue_name;