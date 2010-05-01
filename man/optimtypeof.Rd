\name{optimtypeof}
\alias{optimtypeof}
\title{
  Object Type or Class
}
\description{
  This functions extracts the \code{type} attribute of lists commonly created
  by \code{optimbase.new}.
}
\usage{
  optimtypeof(object = NULL)
}
\arguments{
  \item{object}{Any object but usually a optimization, simplex or neldermead
    list object.}
}
\details{
  If \code{object} is not a list or if \code{type} is not an attribute of
  \code{object}, \code{optimtypeof} returns the class of \code{object}.
}
\value{
  Returns a single character string which is either the content of the
  \code{type} attribute of \code{object} or its class.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.new}}
}
\examples{
  obj1 <- optimbase.new()
  optimtypeof(obj1)
  optimtypeof(obj1$optbase)
  optimtypeof(obj1$simplex0)

  obj2 <- list(1)
  attr(obj2, 'type') <- 'newtype'
  optimtypeof(obj2)
}
\keyword{ method }
