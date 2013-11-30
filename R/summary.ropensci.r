#' Summary of an ropensci class object
#' 
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
  host <- parse_url(d$call)$hostname
  d$call <- ifelse(is.null(d$call), "undefined call", d$call)
  format <- class(d$data)
  host <- ifelse(is.null(host), "undefined call", host)
  query <- parse_url(d$call)$query
  
  cat("Call status  : ", d$status_message, "\n")
  cat("Results from : ", host, "\n")
  cat("Date/time    : ", d$meta$headers$date, "\n")
  cat("Data format  : ", format, "\n")
  cat("Queried      : ", "\n", foo(parse_url(d$call)$query), "\n")
  
  if(inherits(d$data, "data.frame")){
    if(dim(d$data)[1] > 10){
      cat(sprintf("Summary of data.frame:", dim(d$data)[1]), "\n")
    }
    summary( head(d$data) )
  }
}
# List the call (search terms)
# Then the data source
# Then a summary of records retrieved.
# If data source == Mendeley, do x.