\name{optimbase}
\alias{optimbase}
\alias{optimbase.outputargs}
\alias{optimbase.functionargs}
\alias{print.optimbase}
\alias{summary.optimbase}
\alias{is.optimbase}
\alias{is.optimbase.outputargs}
\alias{is.optimbase.functionargs}
\alias{as.optimbase.outputargs}
\alias{as.optimbase.functionargs}
\title{
  S3 optimbase classes
}
\description{
  These functions support the S3 class 'optimbase' and related S3 classes 
  'optimbase.outputargs' and 'optimbase.functionargs'. They are intended to 
  either create objects of these classes, check if an object is of these classes, 
  or coerce it to one of these classes.
}
\usage{
  optimbase(verbose, x0, fx0, xopt, fopt, tolfunabsolute, 
    tolfunrelative, tolfunmethod, tolxabsolute, tolxrelative, tolxmethod, 
    maxfunevals, funevals, maxiter, iterations, fun, status, historyxopt,
    historyfopt, verbosetermination, outputcommand, outputcommandarg,
    numberofvariables, storehistory, costfargument, boundsmin, boundsmax,
    nbineqconst, logfile, logfilehandle, logstartup, withderivatives)
  
  optimbase.outputargs(...)
  
  optimbase.functionargs(...)
  
  \method{print}{optimbase}(x,verbose=FALSE,...)
  
  \method{is}{optimbase}(x=NULL)
  
  \method{summary}{optimbase}(object,showhistory,...)
  
  \method{is}{optimbase.outputargs}(x=NULL)
  
  \method{as}{optimbase.outputargs}(x=NULL)
  
  \method{is}{optimbase.functionargs}(x=NULL)
  
  \method{as}{optimbase.functionargs}(x=NULL)
  
}
\arguments{
  \item{verbose}{The verbose option, controlling the amount of messages.}
  \item{x0}{The initial guess.}
  \item{fx0}{The value of the function for the initial guess.}
  \item{xopt}{The optimum parameter.}
  \item{fopt}{The optimum function value.}
  \item{tolfunabsolute}{The absolute tolerance on function value.}
  \item{tolfunrelative}{The relative tolerance on function value.}
  \item{tolfunmethod}{Logical flag for the tolerance on function value in
    the termination criteria. This criteria is suitable for functions which
    minimum is associated with a function value equal to 0.}
  \item{tolxabsolute}{The absolute tolerance on x..}
  \item{tolxrelative}{The relative tolerance on x.}
  \item{tolxmethod}{Possible values: FALSE, TRUE.}
  \item{maxfunevals}{The maximum number of function evaluations.}
  \item{funevals}{The number of function evaluations.}
  \item{maxiter}{The maximum number of iterations.}
  \item{iterations}{The number of iterations.}
  \item{fun}{The cost function.}
  \item{status}{The status of the optimization.}
  \item{historyxopt}{The list to store the history for xopt. The vectors of
    estimates will be stored on separated levels of the list, so the length of
    \code{historyfopt} at the end of the optimization should be the number of
    iterations.}
  \item{historyfopt}{The vector to store the history for fopt. The values of
    the cost function will be stored at each iteration in a new element, so
    the length of \code{historyfopt} at the end of the optimization should be
    the number of iterations.}
  \item{verbosetermination}{The verbose option for termination criteria.}
  \item{outputcommand}{The command called back for output. This must be a 
    valid R function accepting the following arguments: \describe{
      \item{state}{A character string, typically indicating the status of the
        algorithm.}
      \item{data}{A list containing at least the following elements:
        \describe{
          \item{x}{the current point estimate,}
          \item{fval}{the value of the cost function at the current point
            estimate,}
          \item{iteration}{the current iteration index,}
          \item{funccount}{the number of function evaluations.}
        }
      }
      \item{fmsdata}{An optional object of class 'optimbase.outputargs'.}
    }}
  \item{outputcommandarg}{The outputcommand argument is initialized as an empty
    object of class 'optimbase.outputargs' passed to the command defined in 
    the outputcommand element of the optimbase object. This object has no 
    required structure or content but is typically a list which may be used to
    provide some extra information to the output command.}
  \item{numberofvariables}{The number of variables to optimize.}
  \item{storehistory}{The flag which enables/disables the storing of the
    history.}
  \item{costfargument}{The costf argument is initialized as an empty object of 
    class 'optimbase.functionargs'. This object has no required structure or
    content but is typically a list which may be used to provide some 
    information to the cost function'.}
  \item{boundsmin}{Minimum bounds for the parameters.}
  \item{boundsmax}{Maximum bounds for the parameters.}
  \item{nbineqconst}{The number of nonlinear inequality constraints. }
  \item{logfile}{The name of the log file.}
  \item{logfilehandle}{The handle for the log file.}
  \item{logstartup}{Set to TRUE when the logging is started up.}
  \item{withderivatives}{Set to TRUE when the method uses derivatives.}
  \item{...}{optional arguments to 'print' or 'plot' methods.}
  \item{x}{An object of class 'optimbase'.}
  \item{object}{An object of class 'optimbase'.}
  \item{showhistory}{Optional logical flag, to define whether optimization 
    history must be summarized or not.}
}
\value{
  The \code{optimbase} function returns a new object of class 'optimbase', i.e. 
  a list containing the following elements:\describe{
    \item{verbose}{Default is FALSE.}
    \item{x0}{Default is NULL.}
    \item{fx0}{Default is NULL.}
    \item{xopt}{Default is 0.}
    \item{fopt}{Default is 0.}
    \item{tolfunabsolute}{Default is 0.}
    \item{tolfunrelative}{Default is .Machine$double.eps.}
    \item{tolfunmethod}{Default is FALSE.}
    \item{tolxabsolute}{Default is 0.}
    \item{tolxrelative}{Default is .Machine$double.eps.}
    \item{tolxmethod}{Default is TRUE.}
    \item{maxfunevals}{Default is 100.}
    \item{funevals}{Default is 0.}
    \item{maxiter}{Default is 100.}
    \item{iterations}{Default is 0.}
    \item{fun}{Default is ''.}
    \item{status}{Default is ''.}
    \item{historyfopt}{Default is NULL.}
    \item{historyxopt}{Default is NULL.}
    \item{verbosetermination}{Default is FALSE.}
    \item{outputcommand}{Default is ''.}
    \item{outputcommandarg}{Default is ''. If the user configures this element, 
      it is expected to be an object of class 'optimbase.outputargs' or will be
      coerced to an object of class 'optimbase.outputargs'.}
    \item{numberofvariables}{Default is 0.}
    \item{storehistory}{Default is FALSE.}
    \item{costfargument}{Default is ''. If the user configures this element, 
      it is expected to be an object of class 'optimbase.functionargs' or will 
      be coerced to an object of class 'optimbase.functionargs'.}
    \item{boundsmin}{Default is NULL.}
    \item{boundsmax}{Default is NULL.}
    \item{nbineqconst}{Default is 0.}
    \item{logfile}{Default is ''.}
    \item{logfilehandle}{Default is 0.}
    \item{logstartup}{Default is FALSE.}
    \item{withderivatives}{Default is FALSE.}
    }
    
  The \code{print.optimbase} and \code{is.optimbase} functions are S3 method for 
  objects of class 'optimbase'. The \code{showhistory} argument can be provided 
  to the \code{print.optimbase} function to indicate whether or not the history 
  of optimization should be printed.
  
  The \code{optimbase.outputargs} function returns a new object of class
  'optimbase.outputargs', i.e. a list of all arguments provided by the user. The 
  \code{is.optimbase.outputargs} functions are S3 method for objects of class 
  'optimbase.outputargs'.
  
  The \code{optimbase.functionargs} function returns a new object of class
  'optimbase.functionargs', i.e. a list of all arguments provided by the user.
  The \code{is.optimbase.functionargs} functions are S3 method for objects of 
  class 'optimbase.functionargs'.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
