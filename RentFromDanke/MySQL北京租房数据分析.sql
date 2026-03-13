-- 1.平均租金
SELECT AVG(价格)
FROM bj_rent;

-- 2.各区平均租金
SELECT 位置1, AVG(价格) AS avg_rent
FROM bj_rent
GROUP BY 位置1
ORDER BY avg_rent DESC;

-- 3.单位面积租金
SELECT 位置1,AVG(价格/面积) as price_per_m2
from bj_rent
GROUP BY 位置1
ORDER BY price_per_m2 DESC;

-- 4.各区房源数量
SELECT 位置1,count(*) AS listing_count
FROM bj_rent
GROUP BY 位置1
ORDER BY listing_count DESC;
SELECT 位置1,count(*) AS listing_count
FROM bj_rent
GROUP BY 位置1
ORDER BY listing_count DESC;

