\name{size}
\alias{size}
\title{
  Vector, Matrix or Data.Frame Size
}
\description{
  \code{size} is a utility function which determines the dimensions of vectors
  (coerced to matrices), matrices, arrays, data.frames, and list elements.
}
\usage{
  size(x = NULL, n = NULL)
}
\arguments{
  \item{x}{A R object.}
  \item{n}{A integer indicating the dimension of interest.}
}
\details{
  \code{size} is a wrapper function around \code{dim}. It returns the n^th
  dimension of \code{x} if \code{n} is provided. If \code{n} is not provide,
  all dimensions will be determined. If \code{x} is a list, \code{n} is ignored
  and the dimensions of all elements of \code{x} are recursively determined.
}
\value{
  Returns a vector or list of dimensions.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link{dim}}
}
\examples{
  a <- 1
  b <- letters[1:6]
  c <- matrix(1:20,nrow=4,ncol=5)
  d <- array(1:40, dim=c(2,5,2,2))
  e <- data.frame(a,b)
  f <- list(a,b,c,d,e)

  size(NULL) # 0 0
  size(NA)   # 1 1
  size(a)    # 1 1
  size(b,2)  # 6
  size(c)    # 4 5
  size(d)    # 2 5 2 2
  size(e,3)  # NA
  size(f)
}
\keyword{ method }
