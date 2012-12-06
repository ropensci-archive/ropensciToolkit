# This is required for evalWithTimeout
suppressPackageStartupMessages(library(R.utils))

#'Function to test whether an API is down and if so, throw an error.
#'
#' @param test_fn The function call to test
#' @param  tlimit = 120 A timeout in seconds
#' @return logical
#' @examples \dontrun{
#' api_status(eol_search('Salix'))
#'}
api_status <- function(test_fn, tlimit = 120) {
 results <- tryCatch(expr = evalWithTimeout(test_fn, timeout = tlimit), TimeoutException = function(ex) "TimedOut")
    status <- ifelse(is(results, "TimedOut"), FALSE, TRUE)
    status
}
