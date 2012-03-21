#' @return \code{NULL}
#' @export
#' @rdname ropensci
#' @S3method print ropensci
print.ropensci <- function(ro_object, verbose = FALSE) {
    ro_object$call <- ifelse(is.null(ro_object$call), "undefined call", 
        ro_object$call)
    ro_object$source <- ifelse(is.null(ro_object$source), "undefined call", 
        ro_object$source)
    cat("Results from ", ro_object$call, "to", ro_object$source, 
        "\n")
    if (is.null(ro_object$format)) {
        ro_object$format <- "Undefined"
    }
    cat("Format:", ro_object$format, "\n")
    if (!empty(ro_object$data)) {
        head(data)
        if (dim(data)[1] > 10) 
            cat("Printed first 10 rows of", dim(data)[1], "\n")
    }
    if (empty(ro_object$data)) {
        cat("No data in object", "\n")
    }
} 
