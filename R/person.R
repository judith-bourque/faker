#' Get person
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param gender gender
#' @param birthday_start birthday start
#' @param birthday_end birthday end
#' @param quantity quantity
#' @param locale locale
#' @param seed seed
#'
#' @return JSON data
#' @export
#'
#' @examples
#' str(faker_person("male"))
#'
faker_person <- function(gender = NULL, birthday_start = NULL, birthday_end = NULL, quantity = 1, locale = "en_US", seed = NULL) {
  faker_request(
    "persons",
    gender = gender,
    birthday_start = birthday_start,
    birthday_end = birthday_end,
    quantity = quantity,
    locale = locale,
    seed = seed
  )
}
