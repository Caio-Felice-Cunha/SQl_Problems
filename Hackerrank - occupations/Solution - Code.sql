## Problem: https://github.com/Caio-Felice-Cunha/SQl_Problems/blob/main/Hackerrank%20-%20occupations/Problem.md
## My Solution

select
    min(
        if(occupation = 'Doctor',name,null)) as Doctor,
    min(
        if(occupation = 'Professor',name,null)) as Professor,
    min(
        if(occupation = 'Singer',name,null)) as Singer,
    min(
        if(occupation = 'Actor',name,null)) as Actor
from
    (select 
        name,
        occupation,
        Row_number() 
            Over (
                partition by occupation 
                order by name) as row_num 
     from 
        occupations) as ord 
group by row_num;
