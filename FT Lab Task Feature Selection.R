library(dplyr)
library(MASS)   
library(stats)   


data <- read.csv('E:/AIUB/Student Mental health.csv') %>%
  na.omit() %>%
  mutate(across(where(is.character), as.factor)) %>%
  dplyr::select(-matches("Timestamp")) %>%
  dplyr::mutate(`What.is.your.CGPA.` = factor(`What.is.your.CGPA.`))


target_depression <- data$`Do.you.have.Depression.`
target_anxiety <- data$`Do.you.have.Anxiety.`  
target_panic <- data$`Do.you.have.Panic.attack.`  


categorical_features_depression <-  dplyr::select(data, -`Do.you.have.Depression.`, -`Age`) 
categorical_features_anxiety <-  dplyr::select(data, -`Do.you.have.Anxiety.`, -`Age`)
categorical_features_panic <-  dplyr::select(data, -`Do.you.have.Panic.attack.`, -`Age`)

chi2_results_depression <- sapply(categorical_features_depression, function(x) 
  {chisq.test(table(x, target_depression))})

chi2_results_anxiety <- sapply(categorical_features_anxiety, function(x) 
  {chisq.test(table(x, target_anxiety))})

chi2_results_panic <- sapply(categorical_features_panic, function(x) 
  {chisq.test(table(x, target_panic))})

 
anova_age_depression <- aov(Age ~ `Do.you.have.Depression.`, data = data)
anova_summary_depression <- summary(anova_age_depression) 

anova_age_anxiety <- aov(Age ~ `Do.you.have.Anxiety.`, data = data)
anova_summary_anxiety <- summary(anova_age_anxiety) 

anova_age_panic_attack <- aov(Age ~ `Do.you.have.Panic.attack.`, data = data)
anova_summary_panic_attack <- summary(anova_age_anxiety) 


# Combining the results 
combined_results <- list(
  Chi2_Depression = chi2_results_depression,
  Chi2_Anxiety = chi2_results_anxiety,
  Chi2_Panic = chi2_results_panic,
  ANOVA_Age_Depression = anova_summary_depression,
  ANOVA_Age_Anxiety = anova_summary_anxiety,
  ANOVA_Age_panic_attack = anova_summary_panic_attack) 

extract_anova_summary <- function(anova_result) 
{
  summary_df <- summary(anova_result)[[1]]
  
  data.frame(
    Df = summary_df$Df,
    SumSq = summary_df$`Sum Sq`,
    MeanSq = summary_df$`Mean Sq`,
    FValue = summary_df$`F value`,
    PValue = summary_df$`Pr(>F)`
  )
}

 
anova_df_depression <- extract_anova_summary(anova_age_depression)
anova_df_anxiety <- extract_anova_summary(anova_age_anxiety)
anova_df_panic_attack <- extract_anova_summary(anova_age_panic_attack)

write.csv(combined_results$Chi2_Depression, 'E:/AIUB/csv/chi2_depression_results.csv')
write.csv(combined_results$Chi2_Anxiety, 'E:/AIUB/csv/chi2_anxiety_results.csv')
write.csv(combined_results$Chi2_Panic, 'E:/AIUB/csv/chi2_panic_results.csv')
 
write.csv(anova_df_depression, 'E:/AIUB/csv/anova_age_depression_results.csv')
write.csv(anova_df_anxiety, 'E:/AIUB/csv/anova_age_anxiety_results.csv')
write.csv(anova_df_panic_attack, 'E:/AIUB/csv/anova_age_panic_attack.csv')




