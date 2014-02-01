\name{optimbase.checkshape}
\alias{optimbase.checkshape}
\title{
  Check the Dimensions of the Cost Function Output
}
\description{
  This function is called by \code{optimbase.checkcostfun} to check whether the
  dimensions of a cost function output match the expectations.
}
\usage{
  optimbase.checkshape(this = NULL, varname = NULL, data = NULL, index = NULL,
                       expectednrows = NULL, expectedncols = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{varname}{The name of the output being checked, either 'f', 'c', or 'g'.}
  \item{data}{A content of the output.}
  \item{index}{The index (see \code{vignette('optimbase',package='optimbase')}
    for more details).}
  \item{expectednrows}{Number of expected rows.}
  \item{expectedncols}{Number of expected columns.}
}
\value{
  Return the optimization object or an error message if the dimensions are
  inconsistent.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.checkcostfun}}
}
\keyword{ method }