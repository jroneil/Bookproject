-- Create unique constraint on user_roles
ALTER TABLE user_roles ADD CONSTRAINT user_roles_unique UNIQUE(user_id, role_id);

-- Create unique constraint on books title
ALTER TABLE books ADD CONSTRAINT books_title_unique UNIQUE(title);

-- Create check constraint on books price
ALTER TABLE books ADD CONSTRAINT books_price_check CHECK(price >= 0);

-- Create trigger to update order total price when items are added or removed
CREATE OR REPLACE FUNCTION update_order_total_price()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE orders SET total_price = (
        SELECT SUM(books.price * order_items.quantity)
        FROM order_items
        JOIN books ON books.id = order_items.book_id
        WHERE order_items.order_id = NEW.order_id
    )
    WHERE orders.id = NEW.order_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_order_total_price
AFTER INSERT OR UPDATE OR DELETE ON order_items
FOR EACH ROW
EXECUTE FUNCTION update_order_total_price();

-- Create trigger to prevent adding duplicate books to order
CREATE OR REPLACE FUNCTION prevent_duplicate_books()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM order_items
        WHERE order_items.order_id = NEW.order_id
        AND order_items.book_id = NEW.book_id
    ) THEN
        RAISE EXCEPTION 'Book already exists in order';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_duplicate_books
BEFORE INSERT ON order_items
FOR EACH ROW
EXECUTE FUNCTION prevent_duplicate_books();

-- Create trigger to prevent deleting books that are in an order
CREATE OR REPLACE FUNCTION prevent_deleting_books()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM order_items
        WHERE order_items.book_id = OLD.id
    ) THEN
        RAISE EXCEPTION 'Book is in an order';
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_deleting_books
BEFORE DELETE ON books
FOR EACH ROW
EXECUTE FUNCTION prevent_deleting_books();
