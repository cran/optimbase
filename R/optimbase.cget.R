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

optimbase.cget <- function(this=NULL,key=NULL){

  if(!any(key==c('-verbose','-verbosetermination','-function','-method','-x0',
                 '-maxfunevals','-maxiter','-tolfunabsolute','-tolfunrelative',
                 '-tolxabsolute','-tolxrelative','-tolxmethod','-tolfunmethod',
                 '-outputcommand','-outputcommandarg','-numberofvariables',
                 '-storehistory','-costfargument','-boundsmin','-boundsmax',
                 '-nbineqconst','-logfile','-withderivatives'))){
    stop(sprintf('optimbase.cget: Unknown key %s',key),
         call.=FALSE)
  }

  if (key=='-verbose')
    value <- this$verbose
  if (key=='-verbosetermination')
    value <- this$verbosetermination
  if (key=='-function')
    value <- this$fun
  if (key=='-method')
    value <- this$method
  if (key=='-x0')
    value <- this$x0
  if (key=='-maxfunevals')
    value <- this$maxfunevals
  if (key=='-maxiter')
    value <- this$maxiter
  if (key=='-tolfunabsolute')
    value <- this$tolfunabsolute
  if (key=='-tolfunrelative')
    value <- this$tolfunrelative
  if (key=='-tolxabsolute')
    value <- this$tolxabsolute
  if (key=='-tolxrelative')
    value <- this$tolxrelative
  if (key=='-tolxmethod')
    value <- this$tolxmethod
  if (key=='-tolfunmethod')
    value <- this$tolfunmethod
  if (key=='-outputcommand')
    value <- this$outputcommand
  if (key=='-outputcommandarg')
    value <- this$outputcommandarg
  if (key=='-numberofvariables')
    value <- this$numberofvariables
  if (key=='-storehistory')
    value <- this$storehistory
  if (key=='-costfargument')
    value <- this$costfargument
  if (key=='-boundsmin')
    value <- this$boundsmin
  if (key=='-boundsmax')
    value <- this$boundsmax
  if (key=='-nbineqconst')
    value <- this$nbineqconst
  if (key=='-logfile')
    value <- this$logfile
  if (key=='-withderivatives')
    value <- this$withderivatives

  return(value)
  
}

