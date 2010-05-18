# Copyright (C) 2008-2009 - INRIA - Michael Baudin
# Copyright (C) 2009-2010 - DIGITEO - Michael Baudin
# Copyright (C) 2010 - Sebastien Bihorel
#
# This file must be used under the terms of the CeCILL.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
#
# This source code is a R port of the optimbase component
# originally written by Michael Baudin for Scilab.

optimbase.checkcostfun <- function(this=NULL){

  if (length(this$x0)==0)
    stop('optimbase.checkcostfun: Cannot check cost function when x0 is empty',
         call.=FALSE)

  #
  # If there are nonlinear constraints and no derivatives, check that the index is correctly managed.
  #
  if ((this$nbineqconst>0) & (!this$withderivatives)){
    cmd <- paste('tmp <- optimbase.function(this=this,x=this$x0,index=index)',
                 '  this <- tmp$this',
                 '  f <- tmp$f',
                 '  c <- tmp$c',
                 '  index <- tmp$index',
                 'rm(tmp)',
                 sep='\n')
    #    
    index <- 1
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,1)',
         call.=FALSE)
    #
    index <- 2
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,2)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='f',data=f,
                                 index=index,expectednrows=1,expectedncols=1)
    #
    index <- 5
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,5)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='c',data=c,
                                 index=index,expectednrows=1,
                                 expectedncols=this$nbineqconst)
    #
    index = 6
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,6)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='f',data=f,
                                 index=index,expectednrows=1,expectedncols=1)
    this <- optimbase.checkshape(this=this,varname='c',data=c,
                                 index=index,expectednrows=1,
                                 expectedncols=this$nbineqconst)
  }
  #
  # If there are no nonlinear constraints and no derivatives, check that the index is correctly managed.
  #
  if ((this$nbineqconst==0) & (!this$withderivatives)){
    cmd <- paste('tmp <- optimbase.function(this=this,x=this$x0,index=index)',
                 '  this <- tmp$this',
                 '  f <- tmp$f',
                 '  index <- tmp$index',
                 'rm(tmp)',
                 sep='\n')
    #
    index <- 1
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,1)',
         call.=FALSE)
    #
    index <- 2
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,2)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='f',data=f,
                                 index=index,expectednrows=1,expectedncols=1)
  }
  #
  # If there are no nonlinear constraints and derivatives, check that the index is correctly managed.
  #
  if ((this$nbineqconst==0) & (this$withderivatives)){
    cmd <- paste('tmp <- optimbase.function(this=this,x=this$x0,index=index)',
                 '  this <- tmp$this',
                 '  f <- tmp$f',
                 '  g <- tmp$g',
                 '  index <- tmp$index',
                 'rm(tmp)',
                 sep='\n')
    #
    index <- 1
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,1)',
         call.=FALSE)
    #
    index <- 2
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,2)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='f',data=f,
                                 index=index,expectednrows=1,expectedncols=1)
    #
    index <- 3
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,3)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='g',data=g,
                                 index=index,expectednrows=1,
                                 expectedncols=this$numberofvariables)
    #
    index <- 4
    ierr <- try(eval(parse(text=cmd)))
    if (class(ierr)=='try-error')
      stop('optimbase.checkcostfun: Cannot evaluate cost function from costf(x0,4)',
         call.=FALSE)
    this <- optimbase.checkshape(this=this,varname='f',data=f,
                                 index=index,expectednrows=1,expectedncols=1)
    this <- optimbase.checkshape(this=this,varname='g',data=g,
                                 index=index,expectednrows=1,
                                 expectedncols=this$numberofvariables)
  }    

  return(this)
}

