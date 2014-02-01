# Copyright (C) 2008-2009 - INRIA - Michael Baudin
# Copyright (C) 2009-2010 - DIGITEO - Michael Baudin
# Copyright (C) 2010-2014 - Sebastien Bihorel
#
# This file must be used under the terms of the CeCILL.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
#
# This source code is a R port of the optimbase component
# originally written by Michael Baudin for Scilab.

optimbase.configure <- function(this=NULL,
                                key=NULL,
                                value=NULL){

  if (!any(key==c('-verbose','-verbosetermination','-logfile','-x0','-maxfunevals',
                  '-maxiter','-tolfunabsolute','-tolfunrelative','-tolxabsolute',
                  '-tolxrelative','-tolxmethod','-tolfunmethod','-function',
                  '-outputcommand','-outputcommandarg','-numberofvariables',
                  '-storehistory','-costfargument','-boundsmin','-boundsmax',
                  '-nbineqconst','-withderivatives'))){
    stop(sprintf('optimbase.configure: Unknown key %s',key),
         call.=FALSE)
  }

  if (key=='-verbose') {
    assert.classboolean(var=value,varname='value',ivar=3)
    this$verbose <- value
  }
  if (key=='-verbosetermination') {
    assert.classboolean(var=value,varname='value',ivar=3)
    this$verbosetermination <- value
  }
  if (key=='-logfile') {
    if (this$logstartup) this <- optimbase.logshutdown(this=this)
    this$logfile <- value
    this <- optimbase.logstartup(this=this)
  }
  if (key=='-x0') {
    assert.classreal(var=value,varname='value',ivar=3)
    if (size(value,2)!=1)
      stop(sprintf('optimbase.configure: The x0 vector is expected to be a column matrix, but current shape is %d x %d.',
                 size(value,1),size(value,2)),
           call.=FALSE)
    this$x0 <- value
  }
  if (key=='-maxfunevals') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$maxfunevals <- value
  }
  if (key=='-maxiter') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$maxiter <- value
  }
  if (key=='-tolfunabsolute') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$tolfunabsolute <- value
  }
  if (key=='-tolfunrelative') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$tolfunrelative <- value
  }
  if (key=='-tolxabsolute') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$tolxabsolute <- value
  }
  if (key=='-tolxrelative') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$tolxrelative <- value
  }
  if (key=='-tolxmethod') {
    assert.classboolean(var=value,varname='value',ivar=3)
    if(!is.logical(value)){
      unknownValueForOption(value=value,optionname='-tolxmethod')
    } else {
      this$tolxmethod <- value
    }
  }
  if (key=='-tolfunmethod') {
    assert.classboolean(var=value,varname='value',ivar=3)
    if(!is.logical(value)){
      unknownValueForOption(value=value,optionname='-tolfunmethod')
    } else {
      this$tolfunmethod <- value
    }
  }
  if (key=='-function') {
    assert.classfunction(var=value,varname='value',ivar=3)
    this$fun <- value
  }
  if (key=='-outputcommand') {
    assert.classfunction(var=value,varname='value',ivar=3)
    this$outputcommand <- value
  }
  if (key=='-outputcommandarg') {
    if (!is(value)=='optimbase.outputargs'){
      stop(paste('optimbase.configure: the outputcommandarg argument must be an',
          'optimbase.outputargs object.'),call.=FALSE)
    } else {
      this$outputcommandarg <- value
    }
  }
  if (key=='-numberofvariables') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$numberofvariables <- value
  }
  if (key=='-storehistory') {
    assert.classboolean(var=value,varname='value',ivar=3)
    this$storehistory <- value
  }
  if (key=='-costfargument') {
    if (!is(value)=='optimbase.functionargs'){
      stop(paste('optimbase.configure: the costargument argument must be an',
          'optimbase.functionargs object.'),call.=FALSE)
    } else {
      this$costfargument <- value
    }
  }
  if (key=='-boundsmin') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$boundsmin <- value
  }
  if (key=='-boundsmax') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$boundsmax <- value
  }
  if (key=='-nbineqconst') {
    assert.classreal(var=value,varname='value',ivar=3)
    this$nbineqconst <- value
  }
  if (key=='-withderivatives') {
    assert.classboolean(var=value,varname='value',ivar=3);
    this$withderivatives <- value
  }

  return(this)
  
}

