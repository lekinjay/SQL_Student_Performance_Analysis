# 🎓 Student Performance SQL Analysis

![Project Success Banner](school.jpeg)

## 📌 Project Overview
This project explores a dataset of student performance metrics to identify key drivers of academic success. As a Mechanical Engineering student at *Osun State University (UNIOSUN)*, I utilized PostgreSQL to analyze how study habits, tutoring, and teacher quality impact final exam results.

## 🚀 Key Insights
* *The "Sweet Spot":* My analysis revealed that students studying *6-10 hours* per week actually outperformed those studying 16+ hours, suggesting a peak in efficiency.
* *Handling Missing Data:* I implemented COALESCE to manage null values in tutoring and attendance columns, ensuring that missing data was treated as 0 to maintain calculation accuracy.
* *Balanced Lifestyle:* Students combining 10+ hours of study with extracurriculars maintained the highest performance stability.
* *Anonymous Ranking:* Used DENSE_RANK() to create a fair, anonymous leaderboard for classroom transparency.

## 🛠️ Skills Demonstrated
* *Data Integrity:* Using COALESCE to handle NULL values and prevent calculation errors.
* *Advanced Aggregation:* AVG, GROUP BY, and ROUND(::numeric, 2).
* *Logical Categorization:* Complex CASE WHEN statements for data bucketing.
* *Window Functions:* DENSE_RANK() OVER() for advanced ordering.

## 📂 How to Use
The analysis.sql file contains the full PostgreSQL queries used for this study. 

---
[Analyst: Agboola Mubarak | April 2026]
