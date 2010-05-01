\name{asserts}
\alias{assert.typeboolean}
\alias{assert.typefunction}
\alias{assert.typereal}
\alias{assert.typestring}
\alias{unknownValueForOption}
\title{
  Check of Variable Class
}
\description{
  Utility functions in \pkg{optimbase} meant to check variable class. Stop the
  algorithm if the  variable is not of the expected class.\describe{
    \item{\code{assert.typeboolean}}{for logical variables}
    \item{\code{assert.typefunction}}{for functions}
    \item{\code{assert.typereal}}{for numeric variables}
    \item{\code{assert.typestring}}{for character variables}
  }
  \code{unknownValueForOption} stops the algorithm and returns an error
  message, when some checks in \code{optimbase} are not successful.
}
\usage{
  assert.typeboolean(var = NULL, varname = NULL, ivar = NULL)
  assert.typefunction(var = NULL, varname = NULL, ivar = NULL)
  assert.typereal(var = NULL, varname = NULL, ivar = NULL)
  assert.typestring(var = NULL, varname = NULL, ivar = NULL)
  unknownValueForOption(value = NULL, optionname = NULL)
}
\arguments{
  \item{var}{The variable name.}
  \item{varname}{The name of a variable to which \code{var} should have been
    assigned to.}
  \item{ivar}{A integer, meant to provide additional info on \code{varname} in
    the error message.}
  \item{value}{A numeric or a string.}
  \item{optionname}{The name of a variable for which \code{value} is unknown.}
}
\value{
  Return an error message through the \code{stop} function.
}
\author{
  Author of Scilab optimbase module: Michael Baudin (INRIA - Digiteo)

  Author of R adaptation: Sebastien Bihorel (\email{sb.pmlab@gmail.com})
}
\keyword{ method }
