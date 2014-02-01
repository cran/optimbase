\name{transpose}
\alias{transpose}
\title{
  Vector and Matrix Transpose
}
\description{
  \code{transpose} is a wrapper function around the \code{t} function, which
  tranposes matrices. Contrary to \code{t}, \code{transpose} processes vectors
  as if they were row matrices.
}
\usage{
  transpose(object = NULL)
}
\arguments{
  \item{object}{A vector or a matrix.}
}
\value{
  Return a matrix which is the exact transpose of the vector or matrix \code{x}
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link{t}}
}
\examples{
  1:6
  t(1:6)
  transpose(1:6)
  mat <- matrix(1:15,nrow=5,ncol=3)
  mat
  transpose(mat)
}
\keyword{ method }
