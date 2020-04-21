-- 4. Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database.
  INSERT INTO book(title)
  VALUES ("The Pragmatic Programmer");

  INSERT INTO member(name)
  VALUES("Cenxi Zhang");

  INSERT INTO checkout_item(book_id, member_id)
  VALUES((SELECT id FROM book WHERE title = "The Pragmatic Programmer"),
   (SELECT id FROM member WHERE name = "Cenxi Zhang"));

-- Check out
SELECT member.name
  FROM member, book, checkout_item
  WHERE book.title = "The Pragmatic Programmer"
  AND book.id = checkout_item.book_id
  AND member.id = checkout_item.member_id;