PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL
);

-- Sample users because the scenario's users table data was not provided.
INSERT INTO users (id, name, country) VALUES
(1, 'Amara', 'Qatar'),
(2, 'Ali', 'Iraq'),
(3, 'Sara', 'UAE');

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL
);

INSERT INTO products (id, name, category, price) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.00),
(2, 'Desk Lamp', 'Home', 18.50),
(3, 'Mechanical KB', 'Electronics', 65.00),
(4, 'Water Bottle', 'Home', 12.00);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    status TEXT NOT NULL,
    order_date TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO orders (id, user_id, product_id, amount, status, order_date) VALUES
(1, 1, 1, 25.00, 'completed', '2024-04-01'),
(2, 1, 3, 65.00, 'completed', '2024-04-10'),
(3, 2, 2, 18.50, 'pending',   '2024-04-12'),
(4, 3, 4, 12.00, 'completed', '2024-04-15');
