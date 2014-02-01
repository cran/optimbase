\name{Bounds & constraints}
\alias{optimbase.hasbounds}
\alias{optimbase.hasnlcons}
\alias{optimbase.hasconstraints}
\title{
  Query for Bounds and Constraints
}
\description{
  \code{optimbase.hasbounds} and \code{optimbase.hascons} query an
  optimization object and determine whether bounds and nonlinear constraints
  have been specified. Bounds are defined in the \code{boundsmin} and
  \code{boundsmax} elements of the optimization object. The number of
  nonlinear constraints is defined in the \code{nbineqconst} element.

  \code{optimbase.hasconstraints} determine whether any bound or constraint
  has been specified.
}
\usage{
  optimbase.hasbounds(this = NULL)
  optimbase.hasnlcons(this = NULL)
  optimbase.hasconstraints(this = NULL)
}
\arguments{
  \item{this}{An optimization object.}
}
\value{
  Return TRUE if bounds or constraints are found, FALSE otherwise.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
