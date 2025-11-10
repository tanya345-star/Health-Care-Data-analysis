# --- Importing Libraries ---
library(ggplot2)
library(dplyr)
library(tidyverse)

# --- Load Dataset ---
health_data<-read.csv("C:/Users/Asus/Downloads/healthcare_dataset (1).csv")

# --- View Summary ---
summary(health_data)
str(health_data)

# =============================
# 🔹 HISTOGRAMS
# =============================

# Histogram of Age
ggplot(health_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Age Distribution of Patients", x = "Age", y = "Count")

# Histogram of BMI
ggplot(health_data, aes(x = BMI)) +
  geom_histogram(binwidth = 1, fill = "lightgreen", color = "black") +
  labs(title = "BMI Distribution", x = "BMI", y = "Count")

# Histogram of Blood Pressure
ggplot(health_data, aes(x = Blood_Pressure)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(title = "Blood Pressure Distribution", x = "Blood Pressure (mmHg)", y = "Count")

# =============================
# 🔹 BAR PLOTS
# =============================

# Gender Count
ggplot(health_data, aes(x = Gender, fill = Gender)) +
  geom_bar() +
  labs(title = "Gender Distribution", x = "Gender", y = "Count") +
  theme_minimal()

# Disease Type
ggplot(health_data, aes(x = Disease, fill = Disease)) +
  geom_bar() +
  labs(title = "Count of Each Disease Type", x = "Disease", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Physical Activity Level
ggplot(health_data, aes(x = Physical_Activity, fill = Physical_Activity)) +
  geom_bar() +
  labs(title = "Physical Activity Levels", x = "Activity Level", y = "Count") +
  theme_minimal()

# =============================
# 🔹 BOX PLOTS
# =============================

# Boxplot of BMI by Gender
ggplot(health_data, aes(x = Gender, y = BMI, fill = Gender)) +
  geom_boxplot() +
  labs(title = "BMI by Gender", x = "Gender", y = "BMI")

# Boxplot of Blood Pressure by Disease
ggplot(health_data, aes(x = Disease, y = Blood_Pressure, fill = Disease)) +
  geom_boxplot() +
  labs(title = "Blood Pressure by Disease Type", x = "Disease", y = "Blood Pressure") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Boxplot of Glucose by Disease
ggplot(health_data, aes(x = Disease, y = Glucose, fill = Disease)) +
  geom_boxplot() +
  labs(title = "Glucose Levels by Disease Type", x = "Disease", y = "Glucose (mg/dL)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
