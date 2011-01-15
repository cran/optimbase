# Copyright (C) 2008-2009 - INRIA - Michael Baudin
# Copyright (C) 2009-2010 - DIGITEO - Michael Baudin
# Copyright (C) 2010-2011 - Sebastien Bihorel
#
# This file must be used under the terms of the CeCILL.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
#
# This source code is a R port of the optimbase component
# originally written by Michael Baudin for Scilab.

optimbase.new <- function(){

  newobj <- list(
    # The verbose option, controlling the amount of messages
    verbose = 0,
    # The initial guess
    x0=c(),
    # The value of the function for the initial guess
    fx0=c(),
    # The optimum parameter
    xopt = 0,
    # The optimum function value
    fopt = 0,
    # The absolute tolerance on function value
    tolfunabsolute = 0,
    # The relative tolerance on function value
    tolfunrelative = .Machine$double.eps,
    # Possible values : FALSE, TRUE
    # This criteria is suitable for functions which minimum is
    # associated with a function value equal to 0.
    tolfunmethod = FALSE,
    # The absolute tolerance on x
    tolxabsolute = 0,
    # The relative tolerance on x
    tolxrelative = .Machine$double.eps,
    # Possible values : FALSE, TRUE
    tolxmethod = TRUE,
    # The number of function evaluations
    funevals = 0,
    # The maximum number of function evaluations
    maxfunevals = 100,
    # The maximum number of iterations
    maxiter = 100,
    # The number of iterations
    iterations = 0,
    # The cost function
    fun = '',
    # The status of the optimization
    status = '',
    # The array to store the history for fopt
    historyfopt = c(),
    # The array to store the history for xopt
    historyxopt = c(),
    # The verbose option for termination criteria
    verbosetermination = 0,
    # The command called back for output
    outputcommand = '',
    # The outputcommand argument is initialized as a string.
    # If the user configure this option, it is expected
    # that a matrix of values or a list, tlist, mlist is
    # passed so that the argument is appended to the name of the
    # function.
    outputcommandarg = '',
    # The number of variables to optimize
    numberofvariables = 0,
    # The flag which enables/disables the storing of the history
    storehistory = FALSE,
    # The costf argument is initialized as a string.
    # If the user configure this option, it is expected
    # that a matrix of values or a list, tlist, mlist is
    # passed so that the argument is appended to the name of the
    # function.
    costfargument = '',
    # Minimum bounds for the parameters
    boundsmin = c(),
    # Maximum bounds for the parameters
    boundsmax = c(),
    # The number of nonlinear inequality constraints
    nbineqconst = 0,
    # The name of the log file
    logfile = '',
    # The handle for the log file
    logfilehandle = 0,
    # Set to TRUE when the logging is started up
    logstartup = FALSE,
    # Set to TRUE when the method uses derivatives
    withderivatives = FALSE)

  attr(newobj,'type') <- 'T_OPTIMIZATION'

  return(newobj)
  
}

