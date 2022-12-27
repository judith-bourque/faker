
<!-- README.md is generated from README.Rmd. Please edit that file -->

# faker

<!-- badges: start -->
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
#>   .. ..$ firstname: chr "Gage"
#>   .. ..$ lastname : chr "Berge"
#>   .. ..$ email    : chr "deangelo68@ratke.net"
#>   .. ..$ phone    : chr "+4889658450064"
#>   .. ..$ birthday : chr "1942-06-10"
#>   .. ..$ gender   : chr "male"
#>   .. ..$ address  :List of 10
#>   .. .. ..$ id            : int 0
#>   .. .. ..$ street        : chr "984 Stokes Greens"
#>   .. .. ..$ streetName    : chr "Olson Spur"
#>   .. .. ..$ buildingNumber: chr "44016"
#>   .. .. ..$ city          : chr "Vergieberg"
#>   .. .. ..$ zipcode       : chr "59920"
#>   .. .. ..$ country       : chr "Tuvalu"
#>   .. .. ..$ county_code   : chr "AU"
#>   .. .. ..$ latitude      : num 81.8
#>   .. .. ..$ longitude     : num 171
#>   .. ..$ website  : chr "http://wolf.info"
#>   .. ..$ image    : chr "http://placeimg.com/640/480/people"
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

This package includes a ggplot2 theme inspired by the Faker API:

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
