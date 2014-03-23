#' Summary of an ropensci class object
#' 
#' @param object Input
#' @import httr methods
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
summary.ropensci <- function(object, ...) 
{
  host <- parse_url(object$call)$hostname
  object$call <- ifelse(is.null(object$call), "undefined call", object$call)
  format <- class(object$data)
  host <- ifelse(is.null(host), "undefined call", host)
  query <- parse_url(object$call)$query
  
  cat("Call status  : ", object$status_message, "\n")
  cat("Results from : ", host, "\n")
  cat("Date/time    : ", object$meta$headers$date, "\n")
  cat("Data format  : ", format, "\n")
  cat("Queried      : ", "\n", foo(parse_url(object$call)$query), "\n")
  
  if(inherits(object$data, "data.frame")){
    if(dim(object$data)[1] > 10){
      cat(sprintf("Summary of data.frame:", dim(object$data)[1]), "\n")
    }
    summary( head(object$data) )
  }
}
# List the call (search terms)
# Then the data source
# Then a summary of records retrieved.
# If data source == Mendeley, do x.