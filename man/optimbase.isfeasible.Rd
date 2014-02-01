\name{optimbase.isfeasible}
\alias{optimbase.isfeasible}
\title{
  Check Point Estimate
}
\description{
  This function checks that the point estimate is consistent with the bounds
  and the non linear inequality constraints. It is usually called by  
  \code{optimbase.checkx0} to check initial guesses.
}
\usage{
  optimbase.isfeasible(this = NULL, x = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{x}{The point estimate, i.e. a column vector of numerical values.}
}
\details{
  Returns 1 if the given point satisfies bounds constraints and inequality
  constraints.

  Returns 0 if the given point is not in the bounds.

  Returns -1 if the given point does not satisfies inequality constraints.
}
\value{
  Return a list with the following elements: \describe{
    \item{this}{The optimization object.}
    \item{isfeasible}{The feasibility flag, either -1, 0 or 1.}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.checkx0}}
}
\keyword{ method }