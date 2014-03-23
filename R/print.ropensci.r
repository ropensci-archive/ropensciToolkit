#' Print brief summary of output
#' 
#' @examples \dontrun{
#' library(httr)
#' url <- "http://api.plos.org/search?q=author:Ethan White&rows=1&wt=json"
#' out <- GET(url)
#' somedata <- content(out)$response$docs[[1]]
#' dat <- as_ropensci(out, somedata)
#' print(dat)
#' }
#' @export
#' @rdname ropensci
print.ropensci <- function(x, ...) 
{
  host <- parse_url(x$call)$hostname
  x$call <- ifelse(is.null(x$call), "undefined call", x$call)
  format <- class(x$data)
  host <- ifelse(is.null(host), "undefined call", host)
  query <- parse_url(x$call)$query
  
  cat("Call status  : ", x$status_message, "\n")
  cat("Results from : ", host, "\n")
  cat("Date/time    : ", x$meta$headers$date, "\n")
  cat("Data format  : ", format, "\n")
  cat("Queried      : ", "\n", foo(parse_url(x$call)$query), "\n")
  
  if(inherits(x$data, "data.frame")){
    if(dim(x$data)[1] > 10){
      cat(sprintf("First 6 rows of %s:", dim(x$data)[1]), "\n")
    }
    print( head(x$data) )
  }
}

foo <- function(x){
  out <- list()
  for(i in seq_along(x)){
    out[[i]] <- paste0(names(x[i]), " = ", x[[i]], collapse="")
  }
  paste(out, collapse=" \n ")
}