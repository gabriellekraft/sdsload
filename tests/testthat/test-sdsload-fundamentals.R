library(testthat)

test_that("load_sds runs without error for valid class", {
  expect_invisible(suppressMessages(load_sds("sds_100", install_missing = FALSE)))
})

test_that("load_sds throws error for unquoted string", {
  expect_error(load_sds(sds_100), "Class names must be in quotes")
})

test_that("load_sds throws error for invalid quoted string", {
  expect_error(load_sds("sds_999"), "Oops! Class not found.")
})

test_that("load_sds throws error for integer", {
  expect_error(load_sds(192), "Oops! Class not found.")
})

test_that("load_sds throws error for float", {
  expect_error(load_sds(99.9999), "Oops! Class not found.")
})

test_that("load_sds throws error for boolean argument", {
  expect_error(load_sds(TRUE), "Oops! Class not found.")
})
