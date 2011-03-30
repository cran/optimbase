\name{optimbase-package}
\alias{optimbase-package}
\alias{optimbase}
\docType{package}
\title{
  R port of the Scilab optimbase module
}
\description{
  The goal of this package is to provide a building block for a large class of
  specialized optimization methods. This packages manages: \itemize{
    \item the number of variables,
    \item the minimum and maximum bounds,
    \item the number of non linear inequality constraints,
    \item the cost function,
    \item the logging system,
    \item various termination criteria,
    \item etc...
  }

  \strong{Features}
  The following is a list of features the optimbase toolbox currently provided:
  \itemize{
    \item Manage cost function \itemize{
      \item optionnal additionnal argument
      \item direct communication of the task to perform: cost function or
        inequality  constraints
    }
    \item Manage various termination criteria, including: \itemize{
      \item maximum number of iterations,
      \item tolerance on function value (relative or absolute),
      \item tolerance on the vector of estimated parameter \code{x} (relative or
        absolute),
      \item maximum number of evaluations of the cost function,
    }
    \item Manage the history of the convergence, including: \itemize{
      \item history of function values,
      \item history of optimum point.
    }
    \item Provide query features for \itemize{
      \item the status of the optimization process,
      \item the number of iterations,
      \item the number of function evaluations,
      \item function value at initial point,
      \item function value at optimal point,
      \item the optimum parameters,
      \item etc...
    }
  }
}
\details{
  \tabular{ll}{
  Package: \tab optimbase\cr
  Type: \tab Package\cr
  Version: \tab 1.0-7\cr
  Date: \tab 2011-03-30\cr
  License: \tab CeCILL-2\cr
  LazyLoad: \tab yes
  }
  See \code{vignette('optimbase',package='optimbase')} for more information.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ package }

