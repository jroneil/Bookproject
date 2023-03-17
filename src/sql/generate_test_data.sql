-- Generate 100 users
INSERT INTO users (username, password, email, first_name, last_name)
SELECT
  'user' || id,
  'password' || id,
  'user' || id || '@example.com',
  'User',
  'Number' || id
FROM generate_series(1, 100) AS id;

-- Generate 2 roles (user and admin)
INSERT INTO roles (name)
VALUES
  ('user'),
  ('admin');

-- Assign each user the user role
INSERT INTO user_roles (user_id, role_id)
SELECT id, 1
FROM users;

-- Give the last user the admin role
UPDATE user_roles SET role_id = 2
WHERE user_id = 100;

-- Generate 100 books
INSERT INTO books (title, author, genre, price, description)
SELECT
  'Book ' || id,
  'Author ' || id,
  'Genre ' || id,
  ROUND(RANDOM() * 100, 2),
  'Description of book ' || id
FROM generate_series(1, 100) AS id;

-- Generate 100 orders for each user
INSERT INTO orders (user_id, order_date, total_price)
SELECT
  user_id,
  NOW() - (interval '1 day' * (101 - id)),
  ROUND(RANDOM() * 100, 2)
FROM generate_series(1, 100) AS id
CROSS JOIN users;

-- Generate between 1 and 5 order items for each order
INSERT INTO order_items (order_id, book_id, quantity)
SELECT
  orders.id,
  books.id,
  FLOOR(RANDOM() * 5) + 1
FROM orders
CROSS JOIN LATERAL (
  SELECT id FROM books ORDER BY RANDOM() LIMIT (FLOOR(RANDOM() * 3) + 1)
) AS books;
