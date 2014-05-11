<br>SQLite version 3.7.13 2012-07-17 17:46:21
<br>Enter ".help" for instructions
<br>Enter SQL statements terminated with a ";"
<br>sqlite> CREATE TABLE users(
<br>   ...> ID INTEGER PRIMARY KEY AUTOINCREMENT,
<br>   ...> first_name VARCHAR(64) NOT NULL,
<br>   ...> last_name VARCHAR(64) NOT NULL,
<br>   ...> email VARCHAR(128) UNIQUE NOT NULL,
<br>   ...> created_at DATETIME NOT NULL,
<br>   ...> updated_at DATETIME NOT NULL
<br>   ...> );
<br>sqlite> .schema
<br>CREATE TABLE users(
<br>ID INTEGER PRIMARY KEY AUTOINCREMENT,
<br>first_name VARCHAR(64) NOT NULL,
<br>last_name VARCHAR(64) NOT NULL,
<br>email VARCHAR(128) UNIQUE NOT NULL,
<br>created_at DATETIME NOT NULL,
<br>updated_at DATETIME NOT NULL
<br>);
<br>sqlite> CREATE TABLE store(
<br>   ...> customer_id VARCHAR(64) NOT NULL,
<br>   ...> first_name VARCHAR(64) NOT NULL,
<br>   ...> last_name VARCHAR(64) NOT NULL,
<br>   ...> email VARCHAR(128) NOT NULL);
<br>sqlite> store.delete
<br>   ...> ;
<br>Error: near "store": syntax error
<br>sqlite> CREATE TABLE store_2(
<br>   ...> customer_id VARCHAR(64) NOT NULL,
<br>   ...> order_number INTEGER NOT NULL,
<br>   ...> total INTEGER NOT NULL,
<br>   ...> shipping_address VARCHAR(64) NOT NULL,
<br>   ...> created_at DATETIME NOT NULL,
<br>   ...> updated_at DATETIME NOT NULL);
<br>sqlite> INSERT INTO users
<br>   ...>   (first_name, last_name, email, created_at, updated_at)
<br>   ...>   VALUES
<br>   ...>   ('Sam', 'Davis', 'sam9@cfu.net', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Hunter', 'Chapman', 'bootcoder@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Bob', 'Dole', 'bobdole@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Bill', 'Clinton', 'itwasntme@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('George', 'Bush', 'bushism@gmail.com', DATETIME('now'), DATETIME('now'));
<br>sqlite>  INSERT INTO users
<br>   ...>   (first_name, last_name, email, created_at, updated_at)
<br>   ...>   VALUES
<br>   ...>   ('Al', 'Gore', 'manbearpig@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Ronald', 'Regan', 'bestprezever@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Woodrow', 'Wilson', 'nointernet@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Dwight', 'Eisenhower', 'whatsmicrosoft@gmail.com', DATETIME('now'), DATETIME('now')),
<br>   ...>   ('Abe', 'Lincoln', 'honestabe@gmail.com', DATETIME('now'), DATETIME('now'));
<br>sqlite>   INSERT INTO store_2
<br>   ...>    (customer_id, order_number, total, shipping_address, created_at, updated_at)
<br>   ...>    VALUES
<br>   ...>    (1, 101, 105, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')),
<br>   ...>    (5, 203, 150, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')),
<br>   ...>    (3, 400, 125, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')),
<br>   ...>    (7, 600, 233, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')),
<br>   ...>    (8, 99, 215, '1600 West Penn AVE', DATETIME('now'), DATETIME('now'));
<br>sqlite>  
<br>sqlite> SELECT users.first_name, orders.order_number FROM users JOIN orders ON (orders.customer_id = users.id);
<br>Error: no such table: orders
<br>sqlite> SELECT users.first_name, store_2.order_number FROM users JOIN store_2 ON (store_2.customer_id = users.id);
<br>first_name  order_number
<br>----------  ------------
<br>Sam         101         
<br>George      203         
<br>Bob         400         
<br>Ronald      600         
<br>Woodrow     99          
<br>sqlite> 
<br><!-- ## Show the terminal output here.  -->