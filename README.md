
# Logistics On-Time Delivery Analysis

## Project Overview

This project analyzes shipment data to evaluate delivery performance and identify key factors contributing to delays. Timely delivery is critical in logistics operations, as delays can increase costs and negatively impact customer satisfaction.

The objective of this analysis is to uncover patterns in delivery performance and provide actionable insights to improve on-time delivery rates.

---

## Dataset Description

The dataset includes shipment-level data with the following features:

* **Shipment_ID** – Unique shipment identifier
* **Origin City / Destination City** – Shipment route
* **Shipment Type** – Transportation mode (Air, Land, Sea)
* **Weight (kg)** – Shipment weight
* **Distance (km)** – Travel distance
* **Customer Segment** – Corporate or Individual
* **On_Time** – Delivery status (1 = On-Time, 0 = Delayed)

---

##  Data Cleaning

* Standardized city names and removed inconsistencies
* Converted numeric fields (distance, weight) into proper formats
* Validated categorical variables (shipment type, segments)
* Created derived fields:

  * **Distance Buckets (Short / Medium / Long)**
  * **Weight Categories (Light / Medium / Heavy)**

---

##  Tools & Methodology

* **Excel**

  * Data cleaning and preprocessing
  * Bucket creation (distance & weight)

* **Tableau**

  * KPI development
  * Interactive dashboard design
  * Data visualization and filtering

---



## Key Analysis & Insights

### Shipment Type Performance

* All shipment types perform similarly, with slight variation
* Indicates operational consistency across transport modes

### Distance Impact

* On-time delivery slightly decreases as distance increases
* Long-distance shipments present higher delay risk

### Weight Impact

* Heavier shipments show slightly lower on-time performance
* Suggests handling or logistics complexity impacts delivery

### Route Performance

* Certain routes consistently show lower reliability
* Example: Some routes average around ~82% on-time rate

### City-Level Insights

* Performance varies by origin and destination cities
* Some cities consistently outperform others in delivery reliability

---

##  Business Recommendations

* Prioritize optimization of long-distance shipment processes
* Investigate underperforming routes to identify bottlenecks
* Improve handling strategies for heavier shipments
* Allocate resources to cities/routes with lower performance
* Implement monitoring systems for high-risk shipments

---

## Limitations

* Dataset does not include external factors (weather, traffic, etc.)
* Time dimension not included for trend analysis
* Assumes all delays have equal business impact

---

##  Future Improvements

* Add time-based analysis (monthly/seasonal trends)
* Incorporate external data (weather, traffic conditions)
* Build predictive model for delay probability
* Include cost analysis for operational optimization





