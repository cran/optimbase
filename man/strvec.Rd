\name{strvec}
\alias{strvec}
\title{
  Auto-collapse of Vectors
}
\description{
  \code{strvec} is a utility function which collapses all elements of a vector
  into a character scalar.
}
\usage{
  strvec(x = NULL)
}
\arguments{
  \item{x}{A string of characters.}
}
\value{
  A character scalar consisting of all the elements of \code{x} separated by a
  single white space.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\examples{
  strvec(letters[1:10])
  strvec(1:10)
}
\keyword{ method }
