class_packages <- list(
  sds_291 = c("Stat2Data", "ggplot2", "broom", "dplyr", "equatiomatic", "performance", "see", "gridExtra", "moderndive", "GGally", "infer", "emmeans"),
  sds_100 = c("caret", "randomForest", "glmnet", "skimr"),
  sds_192 = c("BiocManager", "DESeq2", "janitor", "ggpubr"),
  sds_220 = c("tidyverse", "lubridate", "stringr", "readxl")
)
usethis::use_data(class_packages, overwrite = TRUE)
