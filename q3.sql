-- 3. What books and movies aren't checked out?
-- Fellowship of the Ring
-- 1984
-- Tom Sawyer
-- Catcher in the Rye
-- To Kill a Mockingbird
-- Domain Driven Design
-- Thin Red Line
-- Crouching Tiger, Hidden Dragon
-- Lawrence of Arabia
-- Office Space
  SELECT book.title
  FROM book
  WHERE book.id NOT IN (SELECT book_id FROM checkout_item WHERE book_id IS NOT NULL)
  UNION ALL
  SELECT movie.title
  FROM movie
  WHERE movie.id NOT IN (SELECT movie_id FROM checkout_item WHERE movie_id IS NOT NULL)