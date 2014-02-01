\name{Bound and constraint checks}
\alias{optimbase.isinbounds}
\alias{optimbase.isinnonlincons}
\title{
  Point Estimate Comparison with Bounds and Constraints
}
\description{
  \code{optimbase.isinbounds} checks that given parameter estimates are within
  the defined minimum and maximum boundaries, while
  \code{optimbase.isinnonlincons} checks that the given point estimate satisfies
  the defined nonlinear constraints.
}
\usage{
  optimbase.isinbounds(this = NULL, x = NULL)
  optimbase.isinnonlincons(this=NULL,x=NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{x}{A column vector of parameter estimates.}
}
\value{
  Both functions return a list with the following elements: \describe{
    \item{this}{The optimization object.}
    \item{isfeasible}{TRUE if the parameter estimates satisfy the constraints,
      FALSE otherwise.}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
