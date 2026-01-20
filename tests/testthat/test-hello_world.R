test_that("hello_world returns the default greeting", {
  result <- hello_world()
  expect_equal(result, "Hello, World!")
})

test_that("hello_world greets a specific name correctly", {
  result <- hello_world("Alice")
  expect_equal(result, "Hello, Alice!")
})

test_that("hello_world throws error on invalid types", {
  # Test numeric input
  expect_error(
    hello_world(123),
    regexp = "`name` must be a single character string"
  )

  # Test vector input (length > 1)
  expect_error(
    hello_world(c("Alice", "Bob")),
    regexp = "`name` must be a single character string"
  )
})
