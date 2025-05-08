
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sdsload

<!-- badges: start -->
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
load_sds("sds_291", install_missing = TRUE)
#> Package loaded: Stat2Data
#> Package loaded: ggplot2
#> Package loaded: broom
#> Package loaded: dplyr
#> Package loaded: equatiomatic
#> Package loaded: performance
#> Package loaded: see
#> Package loaded: gridExtra
#> Package loaded: moderndive
#> Package loaded: GGally
#> Package loaded: infer
#> Package loaded: emmeans
```
