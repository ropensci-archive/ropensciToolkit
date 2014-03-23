#' Handler for rOpenSci API calls
#' 
#' @import httr
#' @param httr_res httr response object
#' @param data Data object from parsing, if any, defaults to NULL if none passed.
#' @export
#' @examples \dontrun{
#' library(httr)
#' url <- "http://api.plos.org/search?q=ecology&rows=1&wt=json"
#' out <- GET(url)
#' data <- content(out)
#' somedata <- data$response$docs[[1]]
#' as_ropensci(out, somedata)
#' 
#' # or assign output object to some class
#' class(somedata) <- "newobj"
#' res <- as_ropensci(out, somedata)
#' 
#' print.newobj <- function(x, ...){
#'    cat(sprintf("Hello %s", length(x)))
#' }
#' 
#' # get information on a call
#' dat <- as_ropensci(out, somedata)
#' attributes(res)
#' dat$data # the data ouput  
#' dat$status_code # the HTTP status
#' dat$status_message # a more meaningful HTTP status message
#' dat$call # the url that was called
#' dat$meta$handle # the url handle
#' dat$meta$headers # headers
#' dat$meta$cookies # cookies
#' dat$meta$config # any configuration settings passed
#' 
#' # Pass output to print command, same as not using print
#' print(dat)
#' dat
#' 
#' ## data.frame
#' 
#' }

as_ropensci <- function(httr_res, data=NULL)
{
  tmp <- list(data = data,
              status_code = httr_res$status_code,
              status_message = http_status(httr_res)$message,
              call = httr_res$url, 
              meta = httr_res[c('handle','headers','cookies','config')])
  currentclass <- class(data)
  class(tmp) <- c('ropensci', currentclass)
  return( tmp )
}