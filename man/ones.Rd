\name{zeros & ones}
\alias{ones}
\alias{zeros}
\title{
  Matrix of zeros or ones.
}
\description{
  Creates a matrix of zeros or ones.
}
\usage{
  zeros(nx = 1, ny = nx)
  ones(nx = 1, ny = nx)
}
\arguments{
  \item{nx}{The number of rows. Default is 1.}
  \item{ny}{The number of columns. Default is \code{nx}.}
}
\details{
  \code{zeros} and \code{ones} create full matrices of zeros and ones. If the
  user only provides an input for \code{nx}, the produced matrices are nx x nx
  square matrices.
}
\value{
  Return of nx x ny matrix of zeros of ones.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\examples{
  zeros()
  zeros(3)
  ones(4,5)
  \dontrun{ones('3','3')}
}
\keyword{ method }
