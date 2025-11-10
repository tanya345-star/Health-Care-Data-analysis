# 🩺 Healthcare Data Analysis using R

## 📖 Overview
This project performs **data analysis and visualization on a healthcare dataset** using R programming. It explores patient demographics, BMI, blood pressure, glucose levels, and disease types to identify key patterns and relationships in health metrics.

## 🧠 Objectives
- Understand the distribution of patient characteristics (age, gender, BMI, etc.).
- Visualize disease patterns and their correlation with health indicators.
- Identify trends in physical activity and health conditions.
- Support healthcare data-driven decision-making.

## 🧰 Technologies & Libraries Used
- **R Language**
- **ggplot2** – for high-quality data visualization  
- **dplyr** – for data manipulation and summarization  
- **tidyverse** – for integrated data analysis functions  

## 📂 Dataset
The dataset (`healthcare_dataset.csv`) includes columns such as:
- `Age`
- `Gender`
- `BMI`
- `Blood_Pressure`
- `Glucose`
- `Disease`
- `Physical_Activity`

Each variable represents patient health information collected from healthcare records.

## 📊 Visualizations
- **Histograms**: Age, BMI, Blood Pressure distributions  
- **Bar Plots**: Gender, Disease type, and Physical Activity levels  
- **Box Plots**: BMI, Blood Pressure, and Glucose levels by category  

These visualizations help reveal data patterns and differences between patient groups.

## 🧩 Code Example
```r
# Load Libraries
library(ggplot2)
library(dplyr)
library(tidyverse)

# Load Dataset
health_data <- read.csv("healthcare_dataset.csv")

# Example: Age Distribution
ggplot(health_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Age Distribution of Patients", x = "Age", y = "Count")
