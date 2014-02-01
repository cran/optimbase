\name{optimbase.checkx0}
\alias{optimbase.checkx0}
\title{
  Check Consistency of Initial Guesses
}
\description{
  This function checks that the initial guesses defined in the optimization
  object are consistent with the defined bounds and the non linear inequality
  constraints. The actual work is delegated to \code{optimbase.isfeasible}.
}
\usage{
  optimbase.checkx0(this = NULL)
}
\arguments{
  \item{this}{An optimization object}
}
\value{
  Return a list with the following elements: \describe{
    \item{this}{The optimization object.}
    \item{isok}{TRUE if the initial guesses are consistent with the settings,
                FALSE otherwise.}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.isfeasible}}
}
\keyword{ method }