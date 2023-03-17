INSERT INTO users (username, password, email, first_name, last_name) VALUES
  ('john_doe', 'password123', 'john_doe@example.com', 'John', 'Doe'),
  ('jane_doe', 'secret456', 'jane_doe@example.com', 'Jane', 'Doe');

INSERT INTO roles (name) VALUES
  ('user'),
  ('admin');

INSERT INTO user_roles (user_id, role_id) VALUES
  (1, 1),
  (2, 1),
  (2, 2);

INSERT INTO books (title, author, genre, price, description) VALUES
  ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.99, 'A classic novel set in the Deep South during the 1930s.'),
  ('1984', 'George Orwell', 'Fiction', 9.99, 'A dystopian novel set in a totalitarian society ruled by a party that controls every aspect of citizens'' lives.');

INSERT INTO orders (user_id, order_date, total_price) VALUES
  (1, NOW(), 12.99),
  (2, NOW(), 22.98);

INSERT INTO order_items (order_id, book_id, quantity) VALUES
  (1, 1, 1),
  (2, 1, 2),
  (2, 2, 1);
INSERT INTO books (title, author, description, price, published_date) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'A classic novel about the decadent lifestyle of wealthy Americans in the 1920s', 9.99, '1925-04-10', 'https://images-na.ssl-images-amazon.com/images/I/81XelKjGxoL.jpg'),
('To Kill a Mockingbird', 'Harper Lee', 'A story about racial injustice in the South during the 1930s', 11.99, '1960-07-11', 'https://images-na.ssl-images-amazon.com/images/I/81f3u2AhEtL.jpg'),
('1984', 'George Orwell', 'A dystopian novel about a totalitarian government that controls every aspect of citizens'' lives', 13.99, '1949-06-08', 'https://images-na.ssl-images-amazon.com/images/I/91SZSW8qSsL.jpg'),
('Animal Farm', 'George Orwell', 'A satirical allegory about the Russian Revolution and the rise of Stalin', 9.99, '1945-08-17', 'https://images-na.ssl-images-amazon.com/images/I/91DAJ-K8c9L.jpg'),
('The Catcher in the Rye', 'J.D. Salinger', 'A coming-of-age story about a teenager''s mental breakdown and rebellion against the phoniness of the adult world', 8.99, '1951-07-16', 'https://images-na.ssl-images-amazon.com/images/I/81Kmzv+8nQL.jpg'),
('The Color Purple', 'Alice Walker', 'A novel about the struggles of African American women in the South during the early 20th century', 10.99, '1982-03-23', 'https://images-na.ssl-images-amazon.com/images/I/81rJJiKtZ3L.jpg'),
('Pride and Prejudice', 'Jane Austen', 'A classic novel about the relationships and social norms of the British upper class in the early 19th century', 7.99, '1813-01-28', 'https://images-na.ssl-images-amazon.com/images/I/71iXI3GjbXL.jpg'),
('Jane Eyre', 'Charlotte Bronte', 'A gothic romance novel about the struggles of a young governess in love with her employer', 9.99, '1847-10-16', 'https://images-na.ssl-images-amazon.com/images/I/81vxK13R4LL.jpg'),
('Wuthering Heights', 'Emily Bronte', 'A tragic love story set in the bleak Yorkshire moors', 8.99, '1847-12-29', 'https://images-na.ssl-images-amazon.com/images/I/81l8nzm+81L.jpg'),
('The Hobbit', 'J.R.R. Tolkien', 'A fantasy novel about the adventures of hobbit Bilbo Baggins and his companions on a quest to reclaim a treasure from a dragon', 12.99, '1937-09-21', 'https://images-na.ssl-images-amazon.com/images/I/71A4n4+g1AL.jpg'))

