# 🏥 MediFlow Cloud - Hospital Resource Utilization Dashboard

## 📌 Project Overview

This project analyzes hospital patient data to track resource utilization and 30-day readmission rates using a cloud-native architecture.

## 🚀 Tech Stack

* AWS S3 (Data Storage)
* AWS Athena (Serverless Querying)
* AWS Glue (Data Catalog)
* Tableau (Dashboard Visualization)
* Pandas (Data Analysis)

## 📊 Key Features

* Patient distribution by department
* Average Length of Stay (ALOS)
* Readmission Rate Analysis
* Geospatial Hotspot Mapping (Zip Code)

## ☁️ AWS Architecture

Data is stored in S3 → Queried using Athena → Processed → Visualized in Tableau

## 📁 Files in Repository

* `mediflow_dashboard.twbx` → Tableau dashboard
* `mediflow_queries.sql` → Athena queries
* `sample_data.csv` → Sample dataset

## 🎯 Business Impact

* Helps reduce hospital readmission penalties
* Improves resource allocation
* Identifies high-risk patient groups

## 👤 Author

Your Name
