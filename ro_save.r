#' Save an ropensci object in one of many formats
#'
#'@param filename = default_name(obj) <what param does>
#'@param path=NULL <what param does>
#'@param format <what param does>
#'@param ... <what param does>
#'@keywords
#'@seealso
#'@return
#'@alias
#'@export
#'@examples \dontrun{
#'
#'}
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