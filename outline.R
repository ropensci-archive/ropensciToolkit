library(ggplot2)
library(stringr)
library(OHaiharvester)

# Usage
# result <-list(...)
# url
# source example: Dryad
# identifier:
# time_of_call: time when the all was made
# time_to_completion: how long it took to complete
# data - Was there data returned?
# format - format of the data. JSON or data.frame
# call - the search terms
# call - the function call. search terms
# search term
# url
# number of results returned
# time to return
# source - the database



result <- list(source="Dryad",URL="http://dryad.org",no="25")
class(result) <- "ropensci"
attributes(result)

# ropensci <- list()

#' @return \code{NULL}
#'
#' @export
#' @rdname ropensci
#' @S3method print ropensci
print.ropensci <- function(dset,verbose=FALSE) {
   dset$call <- ifelse(is.null(dset$call),"undefined call",dset$call)
   dset$source<-ifelse(is.null(dset$source),"undefined call",dset$source)
   cat("Results from ",dset$call,"to",dset$source,"\n")
   if(is.null(dset$format)) {dset$format="Undefined"}
   cat("Format:",dset$format,"\n")
   if(!empty(dset$data)) {
                           head(data)
                           if(dim(data)[1]>10)
                           cat("Printed first 10 rows of",dim(data)[1],"\n")
                         }
    if(empty(dset$data)) { cat("No data in object","\n")}
}

#' @return \code{NULL}
#'
#' @export
#' @rdname ropensci
#' @S3method plot ropensci
plot.ropensci <- function(dset,verbose=FALSE) {

}


#' @return \code{NULL}
#'
#' @export
#' @rdname ropensci
#' @S3method summary ropensci
summary.ropensci <- function(dset,verbose=FALSE) {

}


# Genric Save
ro_save <- function(filename = default_name(obj),path=NULL,format,...)
{
 if (!inherits(obj, "ropensci"))
        stop("Object should be of class ropensci")
        if(!missing(format))
        {
         if(format=="JSON") {}
         if(format=="df") {}
         if(format=="sql") { stop("This method has not yet been implemented")}
        }
         if (!is.null(path))
         {
          filename <- file.path(path, filename)
         }

    invisible()
}

# coerce

# Examples of things  that can be done with classes
#1.  Inheritence
# k <- list(name="Mendeley")
# class(k) <- c("mendeley","ropensci")


#2 . See all Methods in a class

showMethods(class="ropensci")

