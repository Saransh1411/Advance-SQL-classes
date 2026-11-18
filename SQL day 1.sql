--The case of ITC--
--Create the data table for distributers to supply products across different cities and regions (id, name, city, region, phone)
Create table distributers(
  distributer_id Integer primary key,
  name           Text not null,
  city           text,
  region         text,
  phone          text
  );
  
  drop table distributers;
  
  ---create a table named products with the column- product_id, product_name, brand, category, price, stock (product_id should be integer and unique, brand text, categery text and non null, price real value and price > 0, stock whole number. if missing then 0, name text and non null) 
  create table products(
    product_id   integer primary key,
    product_name text not NULL UNIQUE,
    brand        text,
    category     text not null,
    price        real CHECK (price > 0),
    stock        integer DEFAULT 0
    );
    
    --create a table named- Sales- containing sales_id (unique), product_id (integer), distributer_id (integer), sale_date (integer), quantity (integer >0 and amount real), (we'll use foreign key function to avoid duplicacy, we'll use in product_id and distributer_id)
    
    create table sales (
      sale_id        integer PRIMARY key,
      product_id      integer,
      distributer_id  integer, 
      Sale_date       text,
      quantity        integer check (quantity > 0 ),
      amount          real,
      foreign key (product_id) REFERENCES products(product_id),
      foreign key (distributer_id) REFERENCES distributers(distributer_id)
      );
      
   -- checking the columns of all the three tables--
   
   PRAGMA TABLE_info (distributers);
   PRAGMA TABLE_info (products);
   PRAGMA Table_info (sales);
      
 -- Inserting the data according to variables --  
 
 insert into products values (1, 'Aashirvaad atta 5kg', 'Aashirvaad', 'staple', 265, 120);
 insert into products values (2, 'Aashirvaad salt', 'Aashirvaad', 'staple', 28, 300);
 insert into products values (3, 'Sunfeast dark fantasy', 'Sunfeast', 'Buiscuits', 40, 500);
 insert into products values (4, 'Sunfeast Marie light', 'Sunfeast', 'Buiscuits', 30, 450);
 