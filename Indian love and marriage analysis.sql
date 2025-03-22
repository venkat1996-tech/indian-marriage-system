SELECT * FROM indian_marriage_statios.marriage_data_india;
use indian_marriage_statios;
select*from marriage_data_india;
-- Queries 1: retrieve  love and arriange marriages counting

select
marriage_type,
count(marriage_type) as count_marriage_type
from indian_marriage_statios.marriage_data_india
group by marriage_type;

-- Queries 2: retrieve percentage of love and arriange marriages in india/regions

select
religion,
sum(
case
when marriage_type = 'love' then 1 
else 0
end) *100/count(marriage_type) as love_marriage_percentage,
sum(
case
when marriage_type = 'arranged' then 1
else 0
end) *100/count(marriage_type) as arrange_marriage_percentage
from marriage_data_india
group by religion, age_at_marriage
order by religion;

-- Queries 3: love and arranged marriges age and region percentage

select
religion, age_at_marriage,
sum(
case
when marriage_type = 'love' then 1 
else 0
end) *100/count(marriage_type) as love_marriage_percentage,
sum(
case
when marriage_type = 'arranged' then 1
else 0
end) *100/count(marriage_type) as arrange_marriage_percentage
from marriage_data_india
group by religion, age_at_marriage
order by age_at_marriage;


-- Queries 4 : Retrieve the marriage stateus to identify the influnce factors either succuses or failure marriage
-- here the besade on the eductions, childrens, marital_satisfaction with of divorce_status
select
marriage_type,age_at_marriage,gender,education_level,caste_match, religion, marital_satisfaction, children_count,years_since_marriage, divorce_status,
case
when divorce_status = 'no' then 'Succusefull marriage life'
else 'failure_marriage_life'
 end as marriage_life_stateus
from marriage_data_india
where marriage_type = 'love' and divorce_status = 'yes' and age_at_marriage in (30,35) and gender = 'male';

-- Queries 5 : The divorce rate for love and arriange marriages

select
marriage_type,
count(marriage_type) as num_of_marriage_type,
round(
sum(
case
when divorce_status = 'yes' then 1 
else 0
end)*100/ count(divorce_status),2) as percentage_rate_divorced
from marriage_data_india
group by marriage_type;

-- Queries 6 : look at divorced marriage religion wise percentage rate

select
marriage_type, gender, caste_match,religion, parental_approval,
count(marriage_type) as num_of_marriage_type,
round(
sum(
case
when divorce_status = 'yes' then 1 
else 0
end)*100/ count(divorce_status),2) as percentage_rate_divorced
from marriage_data_india
where religion in ('hindu', 'others', 'muslim') and gender in('male') and parental_approval = 'yes'
group by marriage_type,gender, caste_match, religion, parental_approval
order by percentage_rate_divorced desc;

