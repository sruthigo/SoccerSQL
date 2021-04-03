SELECT venue_name,city_id,aud_capicity FROM soccer_venue
WHERE venue_id in   (SELECT venue_id
  FROM match_mast  WHERE match_no in
   (SELECT  match_no FROM penalty_shootout));