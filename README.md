
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
#> Warning: package 'broom' was built under R version 4.3.3
#> Package loaded: broom
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Package loaded: dplyr
#> Package loaded: equatiomatic
#> Warning: package 'performance' was built under R version 4.3.3
#> Package loaded: performance
#> Warning: package 'see' was built under R version 4.3.3
#> Package loaded: see
#> 
#> Attaching package: 'gridExtra'
#> The following object is masked from 'package:dplyr':
#> 
#>     combine
#> Package loaded: gridExtra
#> Warning: package 'moderndive' was built under R version 4.3.3
#> Package loaded: moderndive
#> Registered S3 method overwritten by 'GGally':
#>   method from   
#>   +.gg   ggplot2
#> Package loaded: GGally
#> Package loaded: infer
#> Warning: package 'emmeans' was built under R version 4.3.3
#> Welcome to emmeans.
#> Caution: You lose important information if you filter this package's results.
#> See '? untidy'
#> 
#> Attaching package: 'emmeans'
#> The following object is masked from 'package:GGally':
#> 
#>     pigs
#> Package loaded: emmeans
```
