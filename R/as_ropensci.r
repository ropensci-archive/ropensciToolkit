#' Handler for rOpenSci API calls
#' 
#' @import httr
#' @param httr_res httr response object
#' @param data Data object from parsing, if any, defaults to NULL if none passed.
#' @examples \dontrun{
#' library(httr)
#' url <- "http://api.plos.org/search?q=author:Ethan White&rows=1&wt=json"
#' out <- GET(url)
#' data <- content(out)
#' somedata <- data$response$docs[[1]]
#' as_ropenci(out, somedata)
#' 
#' # or assign output object to some class
#' class(somedata) <- "newobj"
#' as_ropenci(out, somedata)
#' 
#' # get information on a call
#' dat <- as_ropenci(out, somedata)
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
#' pint(dat)
#' dat
#' }
as_ropenci <- function(httr_res, data=NULL)
{
  tmp <- list(data = data, 
              status_code = httr_res$status_code,
              status_message = http_status(httr_res)$message,
              call = httr_res$url, 
              meta = httr_res[c('handle','headers','cookies','config')])
  class(tmp) <- 'ropensci'
  tmp
}