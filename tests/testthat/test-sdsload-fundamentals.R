test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("load_sds runs without error for valid class", {
  expect_invisible(suppressMessages(load_sds("sds_100", install_missing = FALSE)))
})

test_that("load_sds throws error for unquoted class name", {
  expect_error(load_sds(sds_100), "Class names must be in quotes")
})

test_that("load_sds throws error for invalid class name", {
  expect_error(load_sds("sds_999"), "Oops! Class not found.")
})
