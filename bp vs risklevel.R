library('dplyr')
library('ggplot2')

# Load the dataset
data_unchanged <- read.csv("E:/AIUB/Dataset_midterm_Section(C).csv")

# Subtract 40 from SystolicBP to recover DiastolicBP for missing values
data_modified <- data_unchanged %>%
  mutate(DiastolicBP = ifelse(is.na(DiastolicBP), SystolicBP - 40, DiastolicBP))

# Define the ranges for the blood pressure values
sysBP_ranges <- c(0, 90, 120, 140, 160, 180, Inf)
DastolBP_ranges <- c(0, 60, 80, 90, 100, 110, Inf)

# Define the corresponding comments for each range
sysBP_comments <- c("Low",
                    "Normal",
                    "Elevated",
                    "Stage 1",
                    "Stage 2",
                    "Crisis")

DastolBP_comments <- c("Low",
                       "Normal",
                       "Elevated",
                       "Stage 1 (DBP)",
                       "Stage 2 (DBP)",
                       "Crisis (DBP)")

# Create BP_comment column based on both SystolicBP and DiastolicBP
data_modified <- data_modified %>%
  mutate(BP_comment = paste(
    cut(SystolicBP, breaks = sysBP_ranges, labels = sysBP_comments, include.lowest = TRUE),
    "/",
    cut(DiastolicBP, breaks = DastolBP_ranges, labels = DastolBP_comments, include.lowest = TRUE)
  ))

# Create a bar plot
ggplot(data_modified, aes(x = BP_comment, fill = RiskLevel)) +
  geom_bar(position = "dodge") +
  labs(title = "Blood Pressure Comment vs Risk Level",
       x = "Blood Pressure Comment",
       y = "Count") +
  theme_minimal()

