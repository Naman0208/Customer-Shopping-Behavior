select * from customer limit 20 ;

select sum(purchase_amount) as total_revenue from customer group by gender

select customer_id from customer where discount_applied='Yes'and
purchase_amount>(select avg(purchase_amount) from customer)

select  item_purchased, avg(review_rating) as re 
from customer group by item_purchased order by  re desc limit 5

select shipping_type, round(avg(purchase_amount),2) from customer 
where shipping_type = 'Express' or shipping_type ='Standard'
group by shipping_type ;

select subscription_status , round(avg(purchase_amount),2) as avg_revenue, 
count(customer_id) as total_customers , 
round(sum(purchase_amount),2) as total_revenue 
from customer group by subscription_status;

select item_purchased , round(100* sum(case when discount_applied='Yes' then 1 else 0 end )/count(*),2) as discount_percent 
from customer group by item_purchased order by discount_percent desc
limit 5

with customer_type as (
select  customer_id, previous_purchases,
case
	when previous_purchases <=1 then 'NEW'
	when previous_purchases between 2 and 10 then 'Returning'
	else 'Loyal'
end as Customer_Segment
from customer
)

select count(customer_id),Customer_Segment from customer_type
group by Customer_Segment

with item_counts as(
select category,
item_purchased,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) desc )as item_rank 
from customer
group by category,item_purchased
)
select item_rank,category,item_purchased , total_orders 
from item_counts
where item_rank<=3;

select count(*) as customers, subscription_status from customer where previous_purchases >5 
group by subscription_status 

select age_group , sum(purchase_amount) as total_revenue from customer
group by age_group
order by total_revenue desc