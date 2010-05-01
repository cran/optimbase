\name{Get}
\alias{optimbase.get}
\alias{optimbase.cget}
\alias{optimbase.histget}
\title{
  Get the value for the given key
}
\description{
  Get the value for the given key in an optimization object. 
}
\usage{
  optimbase.get(this = NULL, key = NULL)
  optimbase.cget(this = NULL, key = NULL)
  optimbase.histget(this = NULL, iter = NULL, key = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{key}{The name of the key to quiery. The list of available keys for
    query with \code{optimbase.get} is: '-funevals', '-iterations', '-xopt',
    '-fopt', '-historyxopt', '-historyfopt', '-fx0', '-status', and
    '-logstartup'.

    The list of available keys for query with \code{optimbase.cget} is:
    '-verbose', '-verbosetermination', '-function', '-method', '-x0',
    '-maxfunevals', '-maxiter', '-tolfunabsolute', '-tolfunrelative',
    '-tolxabsolute', '-tolxrelative', '-tolxmethod', '-tolfunmethod',
    '-outputcommand', '-outputcommandarg', '-numberofvariables',
    '-storehistory', '-costfargument', '-boundsmin', '-boundsmax',
    '-nbineqconst', '-logfile', and '-withderivatives'.

    The list of available keys for query with \code{optimbase.histget} is:
    '-historyxopt' and '-historyfopt'.
    }
  \item{iter}{The iteration at which the data is stored.}
}
\details{
  \code{optimbase.get} extracts the value of elements which are not available
  directly to the user interface, but are computed internally, while
  \code{optimbase.cget} extracts the value of elements which are available to
  the user interface. While \code{optimbase.get} extracts the entire content of
  \code{historyxopt} and \code{historyfopt}, \code{optimbase.histget} only
  extracts the content of the history at the iteration \code{iter}.
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
  \code{\link[optimbase]{optimbase.new}},
  \code{\link[optimbase]{optimbase.configure}}
}
\keyword{ method }