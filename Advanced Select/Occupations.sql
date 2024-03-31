SELECT 
MAX(
case when occupation = 'Doctor' then Name end )as Doctor,MAX(
case when occupation = 'Professor' then Name end) as Professor,MAX(
case when occupation = 'Singer' then Name end) as Singer,MAX(
case when occupation = 'Actor' then Name end) as Actor
from 
(SELECT *,row_number()over(partition by Occupation order by Name asc) as id from occupations ) jk
GROUP BY ID
ORDER BY ID ASC;