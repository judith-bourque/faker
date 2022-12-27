
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

This is a basic example which shows you how to solve a common problem:

``` r
library(faker)
## basic example code
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
