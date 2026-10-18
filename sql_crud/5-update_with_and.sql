UPDATE books
SET price = price * 0.9
WHERE genre = 'Tech' and stock > 5