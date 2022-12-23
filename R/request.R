#' Create a fake core request function
#'
#' `r lifecycle::badge("experimental")`
#'
#' @param resource resource
#' @param ... other
#' @param quantity quantity
#' @param locale locale
#' @param seed seed
#'
#' @return JSON data
#' @export
#'
#' @examples
#' str(faker_request("images", width = 300))
faker_request <- function(resource, ..., quantity = 1, locale = "en_US", seed = NULL) {
  params <- list(
    ...,
    quantity = quantity,
    locale = locale,
    seed = seed
  )
  names(params) <- paste0("_", names(params))

  httr2::request("https://fakerapi.it/api/v1") %>%
    httr2::req_url_path_append(resource) %>%
    httr2::req_url_query(!!!params) %>%
    httr2::req_user_agent("faker (https://github.com/judith-bourque/faker)") %>%
    httr2::req_perform() %>%
    httr2::resp_body_json()
}
