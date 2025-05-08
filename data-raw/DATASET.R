class_packages <- list(
  sds_291 = c("Stat2Data", "ggplot2", "broom", "dplyr", "equatiomatic", "performance", "see", "gridExtra", "moderndive", "GGally", "infer", "emmeans", "tidyverse"),
  sds_100 = c("openintro", "moderndive", "ggplot2", "dplyr", "tidyverse"),
  sds_192 = c("dplyr", "leaflet", "ggplot2", "ggpubr", "tidyverse", "lubridate"),
  sds_220 = c("tidyverse", "lubridate", "stringr", "readxl")
)
usethis::use_data(class_packages, overwrite = TRUE)
