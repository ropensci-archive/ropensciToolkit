\name{api_status}
\alias{api_status}
\title{Function to test whether an API is down and if so, throw an error.}
\usage{
  api_status(test_fn, tlimit = 120)
}
\arguments{
  \item{test_fn}{The function call to test}

  \item{tlimit}{= 120 A timeout in seconds}
}
\value{
  logical
}
\description{
  Function to test whether an API is down and if so, throw
  an error.
}
\examples{
\dontrun{
api_status(eol_search('Salix'))
}
}

