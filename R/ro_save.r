#' Save an ropensci object in one of many formats
#'
#' @param filename File name for object to be saved to disk.
#' @param path Location where file needs to get saved. If a path is missing, file will be saved in the working directory.
#' @param format format in which data needs to be saved. Currently only flat text but in future there will be support for databases, JSON, among others.
#' @param ... Internal use
#' @keywords save
#' @return nothing
#' @export
#' @examples \dontrun{
#'
#'}
ro_save <- function(filename = default_name(obj),
    path = NULL, format, ...) {
    if (!inherits(obj, "ropensci"))
        stop("Object should be of class ropensci")
    if (!missing(format)) {
        if (format == "JSON") {
        }
        if (format == "df") {
        }
        if (format == "sql") {
            stop("This method has not yet been implemented")
        }
    }
    if (!is.null(path)) {
        filename <- file.path(path, filename)
    }
    invisible()
}
