\name{optimbase.checkcostfun}
\alias{optimbase.checkcostfun}
\title{
  Check Cost Function
}
\description{
  This function checks that the cost function is correctly specified in the
  optimization object, including that the elements of \code{this} used by the
  cost function are consistent.
}
\usage{
  optimbase.checkcostfun(this = NULL)
}
\arguments{
  \item{this}{An optimization object}
}
\details{
  Depending on the definition of nonlinear constraints (\code{nbineqconst}
  element > 0) and the use of derivatives (\code{withderivatives} element set to
  TRUE), this function makes several cost function calls with different
  \code{index} value (see \code{vignette('optimbase',package='optimbase')} for
  more details about \code{index}). If  at least one call fails, the function
  stops the search algorithm.

  Following every successful cost function call, \code{optimbase.checkcostfun}
  calls \code{optimbase.checkshape} to check the dimensions of the matrix
  returned by the cost function against some expectations.
}
\value{
  Return the optimization object or an error message if one check is not
  successful.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.checkshape}}
}
\keyword{ method }
