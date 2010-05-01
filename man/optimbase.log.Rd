\name{Log functions}
\alias{optimbase.logstartup}
\alias{optimbase.log}
\alias{optimbase.stoplog}
\alias{optimbase.logshutdown}
\title{
  Optimbase Log functions
}
\description{
  \code{optimbase.logstartup} initializes logging if verbose logging is enabled
  (via the \code{verbose} element of the optimization object). If the logging
  has already been initialized, it generates an error and stops the
  optimization.
  
  If verbose logging is enabled, \code{optimbase.log} prints the given message
  in the console. If  verbose logging is disabled, it does nothing. If the
  \code{logfile} element of the optimization object has been  set, it writes the
  message into the file instead of writing to the console.

  \code{optimbase.stoplog} prints the given stopping rule message if verbose
  termination is enabled (via the \code{verbosetermination} element of the
  optimization object). If verbose termination is disabled, it does nothing.

  \code{optimbase.logshutdown} turns verbose logging off.
}
\usage{
  optimbase.logstartup(this = NULL)
  optimbase.log(this = NULL, msg = NULL)
  optimbase.stoplog(this = NULL, msg = NULL)
  optimbase.logshutdown(this = NULL)
}
\arguments{
  \item{this}{The optimization object.}
  \item{msg}{The message to print.}
}
\value{
  All functions return the unchanged optimization object.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
