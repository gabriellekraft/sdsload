class_packages <- list(
  sds_291 = c("Stat2Data", "ggplot2", "broom", "dplyr", "equatiomatic", "performance", "see", "gridExtra", "moderndive", "GGally", "infer", "emmeans", "tidyverse"),
  sds_100 = c("openintro", "moderndive", "ggplot2", "dplyr", "tidyverse", "usethis", "mosaicData", "palmerpenguins", "fivethirtyeight", "janitor", "readr", "knitr" ),
  sds_192 = c("dplyr", "leaflet", "ggplot2", "ggpubr", "tidyverse", "lubridate", "openintro", "infer", "moderndive", "knitr", "readr", "tidyr"),
  sds_220 = c("ggplot2", "tidyverse", "dplyr", "moderndive", "infer", "readr", "tidyr", "gapminder", "skimr", "purrr", "tibble", "forcats")
)
usethis::use_data(class_packages, overwrite = TRUE)
