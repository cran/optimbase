\name{vec2matrix}
\alias{vec2matrix}
\title{
  Vector to Matrix Conversion
}
\description{
  This function converts a vector into a row matrix.
}
\usage{
  vec2matrix(object = NULL)
}
\arguments{
  \item{object}{A vector or a matrix.}
}
\details{
  If \code{object} is already a matrix, \code{object} is not modified. If
  \code{object} is not a matrix or a vector, the algorithm is stopped.
}
\value{
  Return a row matrix.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
