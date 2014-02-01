\name{optimbase.terminate}
\alias{optimbase.terminate}
\title{
  Evaluation of Termation Status
}
\description{
  This function determines whether the optimization must continue or terminate.
  If the \code{verbosetermination} element of the optimization object is
  enabled, messages are printed detailing the termination intermediate steps.
  The \code{optimbase.terminate} function takes into account the number of
  iterations, the number of evaluations of the cost function, the tolerance on x
  and the tolerance on f. See the section "Termination" in
  \code{vignette('optimbase',package='optimbase')} for more details.
}
\usage{
  optimbase.terminate(this = NULL, previousfopt = NULL, currentfopt = NULL,
                      previousxopt = NULL, currentxopt = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{previousfopt}{The previous value of the objective function.}
  \item{currentfopt}{The current value of the objective function.}
  \item{previousxopt}{The previous value of the parameter estimate matrix.}
  \item{currentxopt}{The current value of the parameter estimate matrix.}
}
\value{
  Return a list with the following elements: \describe{
    \item{this}{The updated optimization object.}
    \item{terminate}{TRUE if the algorithm terminates, FALSE if the algorithm
      must continue.}
    \item{status}{The termination status could be 'maxiter', 'maxfuneval',
      'tolf' or 'tolx' if \code{terminate} is set to TRUE, 'continue'
      otherwise.}
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }