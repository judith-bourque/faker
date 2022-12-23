#' Custom ggplot theme
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param ... Parameters to pass onto the base theme.
#'
#' @return ggplot theme
#' @export
#'
#' @importFrom ggplot2 %+replace%
#'
#' @examples
#' \dontrun{
#' library("ggplot2")
#' mtcars2 <- within(mtcars, {
#' vs <- factor(vs, labels = c("V-shaped", "Straight"))
#' am <- factor(am, labels = c("Automatic", "Manual"))
#' cyl  <- factor(cyl)
#' gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#' geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(
#'     title = "Fuel economy declines as weight increases",
#'     subtitle = "(1973-74)",
#'     caption = "Data from the 1974 Motor Trend US magazine.",
#'     tag = "Figure 1",
#'     x = "Weight (1000 lbs)",
#'     y = "Fuel economy (mpg)",
#'     colour = "Gears"
#'   )
#'
#' p1 + theme_custom()
#' }
theme_custom <- function(...){
  ggplot2::theme_minimal(...) %+replace%
    ggplot2::theme(
      text = ggplot2::element_text(colour = "lightgreen"),
      axis.text = ggplot2::element_text(colour = "lightgreen"),
      panel.grid = ggplot2::element_line(colour = "lightgreen"),
      plot.background = ggplot2::element_rect(fill = "black")
    )
}

#' Calculate theme after the package is loaded
#'
#' `r lifecycle::badge("experimental")`
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' \dontrun{
#' library("ggplot2")
#'
#' mtcars2 <- within(mtcars, {
#' vs <- factor(vs, labels = c("V-shaped", "Straight"))
#' am <- factor(am, labels = c("Automatic", "Manual"))
#' cyl  <- factor(cyl)
#' gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#' geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(
#'     title = "Fuel economy declines as weight increases",
#'     subtitle = "(1973-74)",
#'     caption = "Data from the 1974 Motor Trend US magazine.",
#'     tag = "Figure 1",
#'     x = "Weight (1000 lbs)",
#'     y = "Fuel economy (mpg)",
#'     colour = "Gears"
#'   )
#'
#' p1 + default_theme()
#' }
default_theme <- function() {
  theme_custom()
}

# TODO:
# - Add test based on ggplot2 theme vignette in package