# Example provided in httptest vignette omitted `$data`, but it doesn't return
# a length of two.

test_that("We can get people", {
  expect_length(faker_person("female", quantity = 2)$data, 2)
})
