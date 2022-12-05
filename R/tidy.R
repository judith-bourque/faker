#' Get person data in tidy format
#'
#' @param gender gender
#' @param birthday_start birthday start
#' @param birthday_end birthday end
#' @param quantity quantity
#' @param locale locale
#' @param seed seed
#'
#' @return Tibble
#' @export
#'
#' @examples
#' faker_person("male", quantity = 5)
faker_person_tidy <- function(gender = NULL, birthday_start = NULL, birthday_end = NULL, quantity = 1, locale = "en_US", seed = NULL) {
  if (!is.null(gender)) {
    gender <- match.arg(gender, c("male", "female"))
  }
  if (!is.null(birthday_start)) {
    if (!inherits(birthday_start, "Date")) {
      stop("`birthday_start` must be a date")
    }
    birthday_start <- format(birthday_start, "%Y-%m-%d")
  }
  if (!is.null(birthday_end)) {
    if (!inherits(birthday_end, "Date")) {
      stop("`birthday_end` must be a date")
    }
    birthday_end <- format(birthday_end, "%Y-%m-%d")
  }

  json <- faker_request(
    "persons",
    gender = gender,
    birthday_start = birthday_start,
    birthday_end = birthday_end,
    quantity = quantity,
    locale = locale,
    seed = seed
  )

  tibble::tibble(
    firstname = purrr::map_chr(json$data, "firstname"),
    lastname = purrr::map_chr(json$data, "lastname"),
    email = purrr::map_chr(json$data, "email"),
    gender = purrr::map_chr(json$data, "gender")
  )
}
