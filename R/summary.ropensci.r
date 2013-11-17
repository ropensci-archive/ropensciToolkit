#' @examples \dontrun{
#' library(httr)
#' url <- "http://api.plos.org/search?q=author:Ethan White&rows=1&wt=json"
#' out <- GET(url)
#' data <- content(out)
#' somedata <- data$response$docs[[1]]
#' dat <- as_ropenci(out, somedata)
#' summary(dat)
#' }
#' @export
#' @rdname ropensci
#' @S3method summary ropensci
summary.ropensci <- function(d, verbose = FALSE)
{
  parse_url(d$call)$query
}
# List the call (search terms)
# Then the data source
# Then a summary of records retrieved.
# If data source == Mendeley, do x.