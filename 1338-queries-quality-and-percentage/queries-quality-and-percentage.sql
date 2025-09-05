# Write your MySQL query statement below
SELECT  q.query_name,
        ROUND(AVG(q.rating*1.0/q.position),2) AS quality,
        ROUND(SUM(q.rating<3)*100/COUNT(q.rating),2) AS poor_query_percentage

FROM Queries AS q
GROUP BY q.query_name
