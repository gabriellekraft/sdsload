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

test_that("load_sds loads a given existing package in a valid class, first combination", {
  expect_message(
    load_sds("sds_100"),
    "Package loaded: openintro"
  )
})

test_that("load_sds loads a given existing package in a valid class, second combination", {
  expect_message(
    load_sds("sds_291"),
    "Package loaded: broom"
  )
})

test_that("load_sds loads a given existing package in a valid class, third combination", {
  expect_message(
    load_sds("sds_192"),
    "Package loaded: tidyverse"
  )
})

test_that("load_sds loads a given existing package in a valid class, fourth combination", {
  expect_message(
    load_sds("sds_220"),
    "Package loaded: dplyr"
  )
})
