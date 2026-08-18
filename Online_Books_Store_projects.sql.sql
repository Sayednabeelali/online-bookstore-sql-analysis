--creating database
create database Onlinebookstore;

--switch to the database
\c Onlinebookstore;

--create table
drop table if exists Books;
create table Books(
	Book_ID serial primary key,
	Title varchar(100),
	Author varchar(100),
	Genre varchar(100),
	Published_Year int,
	Price numeric(10,2),
	Stock int
);

drop table if exists Customers;
create table Customers(
	Customer_ID serial primary key,
	Name varchar(100),
	Email varchar(100),
	Phone varchar(100),
	City varchar(100),
	Country varchar(100)
);

drop table if exists Orders;
create table Orders(
	Order_ID serial primary key,
	Customer_ID int references Customers (Customer_id),
	Book_ID int references Books (Book_id),
	Order_Date date,
	Quantity int,
	Total_Amount numeric(10,2)
);

select * from Books;
select * from Customers;
select * from Orders;

--import data into books table
	--directly imported using (import/export)
--import data into customers table
	--directly imported using (import/export)
--import data into orders table
	--directly imported using (import/export)

--1) retrive all books in the (fiction) genre:
	select * from Books
	where Genre ='Fiction';
	
--2) find books published after the year 1950:
	select * from Books
	where Published_year>1950;
	
--3) list all customer from the canada:
 	select * from customers
	 where country='Canada';

--4) show order placed in november 2023:
	select * from Orders 
	where order_date
	between '2023-11-01' and '2023-11-30';

--5) retrive the total stock of books avalable:
	select sum(Stock) as total_stock
	from Books;
	
--6) find the detail of the most expensive book:
	select * from books 
	order by price desc
	limit 1;

--7) show all customer who order more then 1 quantity of books:
	select * from orders
	where quantity>1;

--8) retrive all the order where the total amount exceeds $20:
	select * from orders
	where total_amount>20;

--9) list all the genres avalable in the book table:
	select distinct genre
	from books;

--10) find the book with lowest stock:
 	select * from books 
	 order by stock
	 limit 1;

--11) calculate the total revanue generated form all orders:
	select sum(total_amount) as revanue
	from orders;

--12) retrive the total number of book sold for each genre:
	 select b.genre, sum(o.quantity) as total_book_sold
 	 from Orders o
	 join books b on o.book_id=b.book_id 
	 group by b.genre;


--13) find the average price of book in the fantasy genre:
	 select avg(price) as average_price
	 from Books
	 where Genre = 'Fantasy';

--14) list customers who have placed at least 2 orders:
	select o.customer_id, c.name, count(o.order_id) as order_count
	from orders o
	join Customers c on o.customer_id=c.customer_id
	group by o.customer_id, c.name
	having count (order_id)>=2;

--15) find the most frequntly ordered book:
	select o.book_id, b.title, count(o.order_id) as frequently_ordered_book
	from orders o
	join books b on o.book_id=b.book_id
	group by o.book_id, b.title
	order by frequently_ordered_book desc limit 1;


--16) show the top 3 most expensive books of fantasy genre:
	select * from books
	where genre='Fantasy'
	order by price desc limit 3


--17) retrive the total quantity of books sold by each author:
	select b.author, sum(o.quantity) as sold_book_by_authors
	from books b
	join orders o on b.book_id=o.book_id
	group by b.author;


--18) list the cities where customers who spends over $30 are located:
	select distinct  c.city, total_amount
	from orders o
	join customers c  on o.customer_id=c.customer_id
	where o.total_amount>30;


--19) find the customers who spend the most on orders:
	select c.customer_id, c.name, sum(o.total_amount) as total_spend
	from orders o
	join customers c on c.customer_id=o.customer_id
	group by c.customer_id , c.name
	order by total_spend  desc limit 1;

--20) calculate the stock remaining after fullfilling all orders:
	select b.book_id, b.title,b.stock,coalesce(sum(o.quantity),0) as order_quantity,
	b.stock-coalesce(sum(o.quantity),0) as remaining_quantity	
	from books b
	left join orders o on b.book_id=o.book_id
	group by b.book_id
	order by b.book_id;