-- 2. How many people have not checked out anything?
-- 37
  SELECT COUNT(*)
  FROM member
  WHERE member.id NOT IN (SELECT member_id from checkout_item)
