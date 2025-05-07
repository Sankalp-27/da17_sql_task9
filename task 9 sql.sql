select * from orders

select DISTINCT dish ,cusine from orders

CREATE OR REPLACE FUNCTION orders_cheak(orders VARCHAR)
RETURNS VARCHAR AS $$
BEGIN
    RETURN CASE

           when dish = 'butter chiken' then cusine  'indian'
           when dish = 'fried rice' then cusine  'chinese'
           when dish = 'spring rolls' then cusine  'chinese'
           when dish = 'pasta' then cusine  'italian'   
		   when dish = 'Tacos' then cusine 'Mexican'
		   when dish = 'Green curry'then cusine 'Thai'
		   when dish = 'Grilled Salmon'then cusine  'Seafood'
		   when dish = 'Chocolate Cake'then cusine  'Dessert'
		   when dish = 'BBQ Ribs'then cusine 'Barbecue'
		   when dish = 'Pizza' then cusine 'italian'
		   when dish = 'Dal Makhani'then cusine  'indian'
		   when dish = 'Manchurian' then cusine  'Chinese'
		   when dish = 'Nachos'then  cusine 'Mexican'
		   when dish = 'Biryani'then cusine  'Indian'
		   when dish = 'Lasagna' then cusine  'italian'
		   when dish = 'Lobster'then cusine  'seafood'
		   when dish = 'Grilled Chicken'then cusine  'Barbecue'
		   when dish = 'Ice cream'then cusine  'Dessert'
		   when dish = 'Kofta curry'then cusine  'Indian'
		   when dish = 'pa%sta'then cusine  'indian'
		   when dish = 'Paneer Tikka'then cusine  'indian' 
		    ELSE 'Unknown'
    END;
	
END;
$$ LANGUAGE plpgsql;

		 

insert into orders (id , cust_id ,chief , waiter ,tableno, dish qty , restaurentid , cusine)
values (id , cust_id ,chief , waiter ,tableno, dish qty , restaurentid , cusine);

select orders_cheak(butter chiken)



