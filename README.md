
<!-- README.md is generated from README.Rmd. Please edit that file -->

# faker

<!-- badges: start -->

[![R-CMD-check](https://github.com/judith-bourque/faker/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/judith-bourque/faker/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

A [Faker API](https://fakerapi.it/en) wrapper package in R.

Based on [`httr2`](https://httr2.r-lib.org) and built using the workflow
outlined in [R Packages](https://r-pkgs.org).

## Installation

You can install the development version of faker from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("judith-bourque/faker")
```

## Example

This is a basic example which shows you how to get a person using the
Faker API:

``` r
library(faker)

str(faker_person("male"))
#> List of 4
#>  $ status: chr "OK"
#>  $ code  : int 200
#>  $ total : int 1
#>  $ data  :List of 1
#>   ..$ :List of 10
#>   .. ..$ id       : int 1
#>   .. ..$ firstname: chr "Justyn"
#>   .. ..$ lastname : chr "Daniel"
#>   .. ..$ email    : chr "prohaska.ruthe@hotmail.com"
#>   .. ..$ phone    : chr "+1109087410639"
#>   .. ..$ birthday : chr "2012-08-30"
#>   .. ..$ gender   : chr "male"
#>   .. ..$ address  :List of 10
#>   .. .. ..$ id            : int 0
#>   .. .. ..$ street        : chr "7741 Makenzie Field Apt. 460"
#>   .. .. ..$ streetName    : chr "Hilpert Inlet"
#>   .. .. ..$ buildingNumber: chr "9772"
#>   .. .. ..$ city          : chr "West Kiana"
#>   .. .. ..$ zipcode       : chr "57001"
#>   .. .. ..$ country       : chr "Togo"
#>   .. .. ..$ county_code   : chr "MK"
#>   .. .. ..$ latitude      : num 25.3
#>   .. .. ..$ longitude     : num -72.8
#>   .. ..$ website  : chr "http://olson.com"
#>   .. ..$ image    : chr "http://placeimg.com/640/480/people"
```

This package includes a ggplot2 theme inspired by the Faker API:

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
