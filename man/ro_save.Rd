\name{ro_save}
\alias{ro_save}
\title{Save an ropensci object in one of many formats}
\usage{
  ro_save(filename = default_name(obj), path = NULL,
    format, ...)
}
\arguments{
  \item{filename}{File name for object to be saved to
  disk.}

  \item{path}{Location where file needs to get saved. If a
  path is missing, file will be saved in the working
  directory.}

  \item{format}{format in which data needs to be saved.
  Currently only flat text but in future there will be
  support for databases}

  \item{...}{Internal use}
}
\value{
  nothing
}
\description{
  Save an ropensci object in one of many formats
}
\examples{
\dontrun{

}
}
\keyword{save}

