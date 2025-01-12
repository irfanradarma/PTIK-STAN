SELECT writer, COUNT(*) C
FROM books
GROUP BY writer
ORDER BY C 