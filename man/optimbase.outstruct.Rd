\name{optimbase.outstruct}
\alias{optimbase.outstruct}
\title{
  Create Basic Optimization Data Object
}
\description{
  This function creates a basic optimization data object by extracting the
  content of specific fields of an optimization object.
}
\usage{
  optimbase.outstruct(this = NULL)
}
\arguments{
  \item{this}{An optimization object.}
}
\value{
  Return a list with a 'type' attribute set to 'T_OPTDATA' and with the
  following elements: \describe{
    \item{x}{The current optimum point estimate (extracted from
      \code{this$xopt}).}
    \item{fval}{The value of the cost function at the current optimum point
      estimate (extracted from \code{this$fopt}).}
    \item{iteration}{The current number of iteration (extracted
      from \code{this$iterations}).}
    \item{funccount}{The current number of function evaluations (extracted from
      \code{this$funevals}).}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }