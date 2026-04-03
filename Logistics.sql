SELECT * FROM Logistics.logistics;

-- Total shipments
SELECT COUNT(*) AS total_shipments
FROM logistics;

-- On-time vs delayed
SELECT On_Time, COUNT(*) AS total
FROM logistics
GROUP BY On_Time;

-- On-time rate
SELECT 
    ROUND(AVG(On_Time) * 100, 2) AS on_time_rate
FROM logistics;



-- Shipment Type Analysis
	-- Question: Which shipping method performs best?

SELECT Shipment_Type,
	ROUND(AVG(On_Time) *100, 2) AS on_time_rate
 FROM logistics
 GROUP BY Shipment_Type
 ORDER BY on_time_rate DESC;



-- Distance Impact (VERY IMPORTANT)

	-- Question: Does distance affect delays?

SELECT Distance_Bucket, ROUND(AVG(On_Time) * 100,2) AS on_time_rate 
FROM logistics
GROUP BY Distance_Bucket
ORDER BY on_time_rate DESC
;

-- What is the overall on-time delivery rate?
SELECT ROUND(AVG(On_Time) *100,2) AS ON_TIME_RATE FROM logistics;

-- How many shipments were delivered on time vs delayed?
SELECT Delay_Status,COUNT(*)
FROM logistics
GROUP BY Delay_Status;

-- Which shipment type has the highest on-time delivery rate?
SELECT Shipment_Type, ROUND(AVG(on_time)*100,2)AS on_time_rate
FROM logistics
GROUP BY Shipment_Type
ORDER BY on_time_rate DESC;

-- Which customer segment has better delivery performance?
select * from logistics;

SELECT Customer_Segment, ROUND(AVG(On_Time) *100,2) AS on_time_rate 
FROM logistics
GROUP BY Customer_Segment
ORDER BY On_time_rate DESC
;

-- Does shipment distance affect on-time delivery?
SELECT 
Distance_Bucket, 
ROUND(AVG(On_Time) *100,2) AS on_time_rate
FROM logistics
GROUP BY Distance_Bucket
ORDER BY on_time_rate DESC;

-- Does shipment weight impact delivery performance?
SELECT 
Weight_Bucket, 
ROUND(AVG(On_Time) *100,2) AS on_time_rate
FROM logistics
GROUP BY Weight_Bucket
ORDER BY on_time_rate DESC;

-- Which origin cities have the highest delay rates?
SELECT 
Origin_City, 
ROUND(AVG(1 - On_Time) *100,2) AS on_time_rate
FROM logistics
GROUP BY Origin_City
ORDER BY on_time_rate DESC;

-- Which destination cities receive the most delays?
SELECT Destination_City, SUM(on_time) AS most_delays
FROM logistics
GROUP BY Destination_City
ORDER BY most_delays DESC
;

-- Which routes are the least reliable?
SELECT Route, 
SUM(on_time) AS least_on_time 
FROM logistics
GROUP BY Route
ORDER BY least_on_time DESC
LIMIT 10;


-- Which shipment type performs best for long-distance deliveries?

SELECT Shipment_Type,ROUND(AVG(on_time)*100,2) AS on_time_rate
FROM logistics
where Distance_Bucket = "long"
GROUP BY Shipment_Type
ORDER BY on_time_rate DESC;