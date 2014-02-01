\name{optimbase.destroy}
\alias{optimbase.destroy}
\title{
  Erase an optimization history.
}
\description{
  Erase the optimization history in an optimization object.
}
\usage{
  optimbase.destroy(this = NULL)
}
\arguments{
  \item{this}{An optimization object.}
}
\details{
  This function erases the content of the \code{historyfopt} and
  \code{historyxopt} elements in \code{this} and call the 
  \code{optimbase.logshutdown} function if the \code{logstartup} element in
  \code{this} is set to TRUE.
}
\value{
  Return an updated optimization object.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.logshutdown}}
}
\keyword{ method }
