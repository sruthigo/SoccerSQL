select * from soccer_country sc join
(select country_id, count(*) as sc from asst_referee_mast 
group by country_id
order by sc desc limit 1) cnt
on sc.country_id = cnt.country_id;