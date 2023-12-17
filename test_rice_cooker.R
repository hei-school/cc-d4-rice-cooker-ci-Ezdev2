if (!requireNamespace("testthat", quietly = TRUE)) {
  install.packages("testthat")
}
library(testthat)

source("path/to/your/script.R")

test_that("rice_cooker cooks rice", {
  capture_output <- capture.output(rice_cooker())
  
  expect_match(capture_output, "Ajouter le riz")
  expect_match(capture_output, "Ajouter l'eau")
  expect_match(capture_output, "Tourner ON le rice cooker")
  expect_match(capture_output, "Riz cuit. Rice cooker OFF")
  expect_match(capture_output, "Signal OFF")
})

# Run the tests
test_file("test_rice_cooker.R")
