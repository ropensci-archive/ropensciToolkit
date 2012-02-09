

#' Handles API key checks for ropensci packages
#`
#' <full description>
#' @param source Name of package in the correct case
#` @keywords auth
#` @return string
#` @alias
#` @export ro_auth
#` @name
#` @namespace ggplot2
#` @examples
#`
ro_auth<-function(source)
{
key=getOption(paste(source,"Key",sep=""))
			if(length(key)==0) {
				return(stop("Key not found"))
			}
		else {
		return(key)
		}

}