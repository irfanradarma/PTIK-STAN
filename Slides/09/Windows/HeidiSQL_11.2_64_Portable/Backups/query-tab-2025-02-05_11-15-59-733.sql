SELECT 
	B.General_topics,
	A.age,
	COUNT(*) C
FROM ads A
	JOIN books B
GROUP BY general_topics, age
