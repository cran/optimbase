\name{optimbase.function}
\alias{optimbase.function}
\title{
  Call Cost Function
}
\description{
  This function calls the cost function defined in the \code{fun} element of
  the current object and returns the required results. If an additionnal
  argument for the cost function is defined in current object, it is passed to
  the function as the last argument. See 
  \code{vignette('optimbase',package='optimbase')} for more details.
}
\usage{
  optimbase.function(this = NULL, x = NULL, index = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{x}{The point estimate where the cost function should be evaluated, i.e.
    a column vector.}
  \item{index}{An integer between 1 and 6 (see
    \code{vignette('omptimbase',package='optimbase')} for more details).}
}
\value{
  Return a list with the following elements: \describe{
    \item{this}{The updated optimization object.}
    \item{f}{The value of the cost function.}
    \item{g}{The gradient of the cost function.}
    \item{c}{The nonlinear, positive, inequality constraints.}
    \item{gc}{The gradient of the nonlinear, positive, inequality constraints.}
    \item{index}{An integer: \itemize{
      \item if index > 0, everything went fine,
      \item if index == 0, interrupts the optimization,
      \item if index < 0, one of the function could not be evaluated.}
    }
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
