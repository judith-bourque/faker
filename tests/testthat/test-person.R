# Example provided in httptest vignette omitted `$data`, but it doesn't return
# a length of two.

with_mock_dir("person", {
  test_that("We can get people", {
    expect_length(faker_person("female", quantity = 2)$data, 2)
  })
})
