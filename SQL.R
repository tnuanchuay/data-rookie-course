install.packages("sqldf")
library(sqldf)

query <- "SELECT * FROM mtcars LIMIT 10;"; sqldf(query)
query2 <- "SELECT * FROM mtcars WHERE hp < 100 LIMIT 10;"; sqldf(query2)
query3 <- "SELECT * FROM mtcars WHERE hp < 100 ORDER BY hp DESC LIMIT 10;"; sqldf(query3)
query4 <- "
SELECT 
  cyl, 
  AVG(hp) AS average_hp,
  MAX(hp) AS max_hp,
  MIN(hp) AS min_hp
FROM
  mtcars 
GROUP BY cyl
HAVING cyl > 4
";  sqldf(query4)
