\name{optimbase.proj2bnds}
\alias{optimbase.proj2bnds}
\title{
  Projection of Point Estimate to Bounds
}
\description{
  This function determines if all elements of a point estimate are within the
  defined bounds. In the case one or more parameter estimates are not, the
  function projects those to their corresponding bounds.
}
\usage{
  optimbase.proj2bnds(this = NULL, x = NULL)
}
\arguments{
  \item{this}{An optimization object.}
  \item{x}{A point estimate.}
}
\value{
  Return a list with the following elements: \describe{
    \item{this}{The optimization object.}
    \item{p}{A vector of updated paremeter estimes. The ith element of the
      vector is: \itemize{
        \item \code{x[i]} if \code{this$boundsmin[i]} < \code{x[i]} <
          \code{this$boundsmax[i],}
        \item \code{this$boundsmin[i]} if x[i] <= \code{this$boundsmin[i],}
        \item \code{this$boundsmax[i]} if \code{this$boundsmax[i]} <= x[i].
      }
    }
  }
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }