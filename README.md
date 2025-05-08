
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sdsload

<!-- badges: start -->

[![R-CMD-check](https://github.com/gabriellekraft/sdsload/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/gabriellekraft/sdsload/actions/workflows/R-CMD-check.yaml)
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
load_sds("sds_192", install_missing = TRUE)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Package loaded: dplyr
#> Package loaded: leaflet
#> Package loaded: ggplot2
#> Package loaded: ggpubr
#> Warning: package 'purrr' was built under R version 4.3.3
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ lubridate 1.9.3     ✔ tibble    3.2.1
#> ✔ purrr     1.0.4     ✔ tidyr     1.3.1
#> ✔ readr     2.1.5
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
#> Package loaded: tidyverse
#> 
#> Package loaded: lubridate
#> Warning: package 'openintro' was built under R version 4.3.3
#> Package loaded: openintro
#> Package loaded: infer
#> Warning: package 'moderndive' was built under R version 4.3.3
#> 
#> Attaching package: 'moderndive'
#> 
#> The following objects are masked from 'package:openintro':
#> 
#>     babies, evals
#> 
#> Package loaded: moderndive
#> Warning: package 'knitr' was built under R version 4.3.3
#> Package loaded: knitr
#> Package loaded: readr
#> Package loaded: tidyr
```
