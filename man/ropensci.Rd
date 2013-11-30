\name{plot.ropensci}
\alias{plot.ropensci}
\alias{print.ropensci}
\alias{summary.ropensci}
\title{Print brief summary of output}
\usage{
  plot.ropensci(ro_object, verbose = FALSE)

  print.ropensci(d, verbose = FALSE)

  summary.ropensci(d, verbose = FALSE)
}
\value{
  \code{NULL}
}
\description{
  Print brief summary of output

  Summary of an ropensci class object
}
\examples{
\dontrun{
library(httr)
url <- "http://api.plos.org/search?q=author:Ethan White&rows=1&wt=json"
out <- GET(url)
somedata <- content(out)$response$docs[[1]]
dat <- as_ropensci(out, somedata)
print(dat)
}
\dontrun{
library(httr)
url <- "http://api.plos.org/search?q=author:Ethan White&rows=1&wt=json"
out <- GET(url)
data <- content(out)
somedata <- data$response$docs[[1]]
dat <- as_ropenci(out, somedata)
summary(dat)
}
}

