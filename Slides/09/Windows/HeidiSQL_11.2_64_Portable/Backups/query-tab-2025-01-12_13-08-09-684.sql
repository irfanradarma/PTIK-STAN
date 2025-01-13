SELECT * FROM books
WHERE Id IN (SELECT books
FROM questions
WHERE q_id=3)