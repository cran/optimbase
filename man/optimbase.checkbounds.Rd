\name{optimbase.checkbounds}
\alias{optimbase.checkbounds}
\title{
  Check bounds.
}
\description{
  This function checks if the bounds defined in the optimization object are
  consistent (same number of minimal and maximal bounds as the number of
  variables, minimal bounds lower than maximal bounds) and puts an error
  message in the returned object if not.
}
\usage{
  optimbase.checkbounds(this = NULL)
}
\arguments{
  \item{this}{An optimization object.}
}
\value{
  Return a list with the following list: \describe{
    \item{this}{The optimization object.}
    \item{isok}{TRUE if the bounds are consistent, FALSE otherwise.}
    \item{errmsg}{An error message if the bounds are not consistent.}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
