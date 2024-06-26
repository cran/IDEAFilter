context("test_filter_log")
skip_on_cran()

test_that("testing that filter log produces messages", {
  expect_message(IDEAFilter:::filter_log("test"))
  expect_message(IDEAFilter:::filter_log("test"), "[filters]")
})

test_that("testing that filter log captures namespace", {
  expect_message(
    IDEAFilter:::filter_log("test", ns = function(i) paste0("testing-", i)), 
    "testing")
})

test_that("testing that filter log captures multiline object statements", {
  expect_message(IDEAFilter:::filter_log(list(1, 2, 3)))
})

test_that("testing that filter log prints with ns = NULL", {
  expect_message(IDEAFilter:::filter_log("test", ns = NULL))
})
