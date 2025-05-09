
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Welcome to SDSLOAD! A Package Designed for Students

<!-- badges: start -->
[![Codecov test
coverage](https://codecov.io/gh/gabriellekraft/sdsload/graph/badge.svg)](https://app.codecov.io/gh/gabriellekraft/sdsload)
[![Codecov test
coverage](https://codecov.io/gh/gabriellekraft/sdsload/graph/badge.svg)](https://app.codecov.io/gh/gabriellekraft/sdsload)

<!-- badges: end -->

The goal of sdsload is to provide a fast and simple way to load all
necessary packages at once for specified Statistical and Data Sciences
courses at Smith College.

## Installation

You can install the development version of sdsload from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github"gabriellekraft/sdsload")
```

## Usage

Given a specified Smith SDS course number, the load_sds() function loads
all packages associated with the course. It can optionally install any
associated packages that are not already available in a user’s R
environment.

``` r
library(sdsload)
load_sds("sds_220", install_missing = TRUE)
#> Package loaded: ggplot2
#> Warning: package 'purrr' was built under R version 4.3.3
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.4     ✔ readr     2.1.5
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ lubridate 1.9.3     ✔ tibble    3.2.1
#> ✔ purrr     1.0.4     ✔ tidyr     1.3.1
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
#> Package loaded: tidyverse
#> 
#> Package loaded: dplyr
#> Warning: package 'moderndive' was built under R version 4.3.3
#> Package loaded: moderndive
#> Package loaded: infer
#> Package loaded: readr
#> Package loaded: tidyr
#> Package loaded: gapminder
#> Package loaded: skimr
#> Package loaded: purrr
#> Package loaded: tibble
#> Package loaded: forcats
```
