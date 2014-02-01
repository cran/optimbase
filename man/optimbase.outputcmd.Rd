\name{optimbase.outputcmd}
\alias{optimbase.outputcmd}
\title{
  Call user-defined output function
}
\description{
  Call user-defined output function.
}
\usage{
  optimbase.outputcmd(this = NULL, state = NULL, data = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{state}{The current state of the algorithm: either 'init', 'iter', or
    'done'.}
  \item{data}{A list containing at least the following elements:
    \describe{
      \item{x}{the current point estimate,}
      \item{fval}{the value of the cost function at the current point
        estimate,}
      \item{iteration}{the current iteration index,}
      \item{funccount}{the number of function evaluations.}
    }
  }
}
\details{
  The \code{data} list argument may contain more levels than those presented
  above. These additional levels may contain values which are specific to the
  specialized algorithm, such as the simplex in a Nelder-Mead method, the
  gradient of the cost function in a BFGS method, etc...
}
\value{
  Do not return any data, but execute the output function defined in the
  \code{outputcommand} element of \code{this}.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }