\name{optimbase.gridsearch}
\alias{optimbase.gridsearch}
\title{
  Grid evaluation of a constrained or unconstrained cost function
}
\description{
  Evaluate a constrained or unconstrained cost function on a grid of points 
  around a given initial point estimate.
}
\usage{
  optimbase.gridsearch(fun = NULL, x0 = NULL, xmin = NULL, 
                       xmax = NULL, npts = 3, alpha = 10)
}
\arguments{
  \item{fun}{A constrained or unconstrained cost function defined as described 
    in the vignette (\code{vignette('optimbase',package='optimbase')}).}
  \item{x0}{The initial point estimate, provided as a numeric vector.}
  \item{xmin}{Optional: a vector of lower bounds.}
  \item{xmax}{Optional: a vector of upper bounds.}
  \item{npts}{A integer scalar greater than 2, indicating the number of 
    evaluation points will be used on each dimension to build the search grid.}
  \item{alpha}{A vector of numbers greater than 1, which give the factor(s) used 
    to calculate the evaluation range of each dimension of the search grid (see 
    Details). If \code{alpha} length is lower than that of \code{x0}, elements 
    of \code{alpha} are recycled. If its length is higher than that of 
    \code{x0}, \code{alpha} is truncated.}
}
\details{
  \code{optimbase.gridsearch} evaluates the cost function at each point 
  of a grid of \code{npts^length(x0)} points. If lower (\code{xmin}) and upper 
  (\code{xmax}) bounds are provided, the range of evaluation points is limited 
  by those bounds and \code{alpha} is not used. Otherwise, the range of 
  evaluation points is defined as \code{[x0/alpha,x0*alpha]}.
  
  \code{optimbase.gridsearch} also determines if the cost function is
  feasible at each evaluation point by calling \code{optimbase.isfeasible}.
}
\value{
  Return a data.frame with the coordinates of the evaluation point, the value of
  the cost function and its feasibility. The data.frame is ordered by 
  feasibility and increasing value of the cost function.
}
\author{
  Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\seealso{
  \code{\link[optimbase]{optimbase.isfeasible}}
}
\examples{

# Problem: find x and y that maximize 3.6*x - 0.4*x^2 + 1.6*y - 0.2*y^2 and
#          satisfy the constrains:
#            2*x - y <= 10
#            x >= 0
#            y >= 0
#

gridfun <- function(x=NULL,index=NULL,fmsfundata=NULL,...){

  f <- c()
  c <- c()
  if (index == 2 | index == 6)
    f <- -(3.6*x[1] - 0.4*x[1]*x[1] + 1.6*x[2] - 0.2*x[2]*x[2])
  if (index == 5 | index == 6)
    c <- c(10 - 2*x[1] - x[2],
           x[1],
           x[2])
  varargout <- list(f = f, g = c(), c = c, gc = c(), index = index,
                    this = list(costfargument = fmsfundata))

  return(varargout)
}


x0 <- c(0.35,0.3)
npts <- 6
alpha <- 10

optimbase.gridsearch(fun=gridfun,x0=x0,xmin=NULL,xmax=NULL,
                     npts=npts,alpha=alpha)

# 3.5 and 3 is the actual solution of the optimization problem
}

\keyword{ method }