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
#' @S3method print ropensci
print.ropensci <- function(d, verbose = FALSE) 
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
      cat(sprintf("First 6 rows of %s:", dim(d$data)[1]), "\n")
    }
    print( head(d$data) )
  }
}

foo <- function(x){
  out <- list()
  for(i in seq_along(x)){
    out[[i]] <- paste0(names(x[i]), " = ", x[[i]], collapse="")
  }
  paste(out, collapse=" \n ")
}