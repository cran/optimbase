\name{optimbase.get}
\alias{optimbase.get}
\alias{optimbase.histget}
\title{
  Get the value for the given element
}
\description{
  Get the value for the given element in an optimization object. 
}
\usage{
  optimbase.get(this = NULL, key = NULL)
  optimbase.histget(this = NULL, iter = NULL, key = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{key}{The name of the key to quiery. The list of available keys for
    query with \code{optimbase.get} is: 'verbose', 'x0', 'fx0', 'xopt', 'fopt',
    'tolfunabsolute', 'tolfunrelative', 'tolfunmethod', 'tolxabsolute',
    'tolxrelative', 'tolxmethod', 'maxfunevals', 'maxiter', 'iterations',
    'function', 'status', 'historyfopt', 'historyxopt', 'verbosetermination',
    'outputcommand', 'outputcommandarg', 'numberofvariables', 'storehistory',
    'costfargument', 'boundsmin', 'boundsmax', 'nbineqconst', 'logfile',
    'logfilehandle', 'logstartup', and'withderivatives'.

    The list of available keys for query with \code{optimbase.histget} is:
    'historyxopt' and 'historyfopt'.
    }
  \item{iter}{The iteration at which the data is stored.}
}
\details{
  While \code{optimbase.get} extracts the entire content of the object element,
  including \code{historyxopt} and \code{historyfopt}, \code{optimbase.histget}
  only extracts the content of the history at the iteration \code{iter}.
}
\value{
  Return the value of the list element \code{key}, or an error message if
  \code{key} does not exist.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase}},
  \code{\link[optimbase]{optimbase.set}}
}
\keyword{ method }