\name{optimbase.configure}
\alias{optimbase.configure}
\alias{optimbase.set}
\alias{optimbase.histset}
\title{
  Optimization Object Configuration
}
\description{
  This functions configures the current optimization object with the given
  \code{value} for the given \code{key}.
}
\usage{
  optimbase.configure(this = NULL, key = NULL, value = NULL)
  optimbase.set(this = NULL, key = NULL, value = NULL)
  optimbase.histset(this = NULL, iter = NULL, key = NULL, value = NULL)
}
\arguments{
  \item{this}{The current optimization object.}
  \item{key}{The key to configure. See details for the list of possible keys.}
  \item{value}{The value to assign to the key.}
  \item{iter}{The iteration at which the data must be stored.}
}
\details{
  \code{optimbase.configure} and \code{optimbase.set} set the content of the
  \code{key} element of the optimization object \code{this} to \code{value}.

  The only available keys in \code{optimbase.configure} are the following:
  \describe{
    \item{'-verbose'}{Set to 1 to enable verbose logging.}
    \item{'-verbosetermination'}{Set to 1 to enable verbose termination
      logging.}
    \item{'-x0'}{The initial guesses, as a n x 1 column vector, where n is the
      number of variables.}
    \item{'-maxfunevals'}{The maximum number of function evaluations. If this
      criteria is triggered during optimization, the status of the optimization
      is set to 'maxfuneval' (see
      \code{vignette('optimbase',package='optimbase')} for more details).}
    \item{'-maxiter'}{The maximum number of iterations. If this criteria is
      triggered during optimization, the status of the optimization is set to
      'maxiter' (see \code{vignette('optimbase',package='optimbase')}
      for more details).}
    \item{'-tolfunabsolute'}{The absolute tolerance for the function value.}
    \item{'-tolfunrelative'}{The relative tolerance for the function value.}
    \item{'-tolfunmethod'}{The method used for the tolerance on function value
      in the termination criteria. The following values are available: TRUE,
      FALSE. If this criteria is triggered, the status of the optimization is
      set to 'tolf'.}
    \item{'-tolxabsolute'}{The absolute tolerance on x.}
    \item{'-tolxrelative'}{The relative tolerance on x.}
    \item{'-tolxmethod'}{The method used for the tolerance on x in the
      termination criteria. The following values are available: TRUE, FALSE. If
      this criteria is triggered during optimization, the status of the
      optimization is set to 'tolx'.}
    \item{'-function'}{The objective function, which computes the value of the
      cost function and the non linear constraints, if any. See
      \code{vignette('optimbase',package='optimbase')} for the details of
      the communication between the optimization system and the cost function.}
    \item{'-costfargument'}{An additionnal argument, passed to the cost
      function.}
    \item{'-outputcommand'}{A command which is called back for output. Details
      of the communication between the optimization system and the output
      command function are provided in      
      \code{vignette('optimbase',package='optimbase')}.}
    \item{'-outputcommandarg'}{An additionnal argument, passed to the output
      command.}
    \item{'-numberofvariables'}{The number of variables to optimize.}
    \item{'-storehistory'}{Set to TRUE to enable the history storing.}
    \item{'-boundsmin'}{The minimum bounds for the parameters.}
    \item{'-boundsmax'}{The maximum bounds for the parameters.}
    \item{'-nbineqconst'}{The number of inequality constraints.}
    \item{'-logfile'}{The name of the log file.}
    \item{'-withderivatives'}{Set to TRUE if the algorithm uses derivatives.}
  }

  The only available keys in \code{optimbase.set} are the following:\describe{
    \item{'-iterations'}{the number of iterations.}
    \item{'-xopt'}{the optimum point estimate.}
    \item{'-fopt'}{the value of the cost function at the optimum point 
      estimate.}
    \item{'-historyxopt'}{a list, with nbiter element, containing the history
      of x during the iterations. This list is available after optimization if
      the history storing was enabled with the \code{storehistory}
      element.}
    \item{'-historyfopt'}{an vector, with nbiter values, containing the history
      of the function value during the iterations. This vector is available
      after optimization if the history storing was enabled with the
      \code{storehistory} element.}
    \item{'-fx0'}{the value of the cost function at the initial point
      estimate.}
    \item{'-status'}{a string containing the status of the optimization.}
  }

  The only available keys in \code{optimbase.histset} are '-historyxopt' and
  '-historyfopt'. Contrary to \code{optimbase.set}, this function only alters
  the value of \code{historyxopt} and \code{historyfopt} at the specific
  iteration \code{iter}.
}
\value{
  An updated optimization object.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.new}}
}
\keyword{ method }
