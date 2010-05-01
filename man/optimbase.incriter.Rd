\name{optimbase.incriter}
\alias{optimbase.incriter}
\title{
  Iteration Log Incrementation
}
\description{
  This function increments the number of iterations stored in the
  \code{iterations} element of the optimization object.
}
\usage{
  optimbase.incriter(this = NULL)
}
\arguments{
  \item{this}{An optimization object.}
}
\value{
  Return the optimization object after increasing the content of the
  \code{iterations} element by 1 unit.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
