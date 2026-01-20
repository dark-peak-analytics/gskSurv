#' Generate a Greeting
#'
#' This function creates a standardized greeting string. It is useful for
#' demonstrating package structure and unit testing.
#'
#' @param name A character string. The name of the person or entity to greet.
#'   Defaults to "World".
#'
#' @return A character string of the form "Hello, [name]!".
#' @export
#'
#' @examples
#' hello_world()
#' hello_world("User")
#'
#' \dontrun{
#'   # This will trigger an error due to invalid input type
#'   hello_world(123)
#' }
hello_world <- function(name = "World") {
  # 1. Input Validation: Ensure 'name' is a single string
  if (!is.character(name) || length(name) != 1) {
    stop("`name` must be a single character string.", call. = FALSE)
  }

  # 2. logical core
  paste0("Hello, ", name, "!")
}
