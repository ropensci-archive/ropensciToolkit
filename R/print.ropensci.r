#' @return \code{NULL}
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