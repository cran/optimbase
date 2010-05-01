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

optimbase.set <- function(this=NULL,key=NULL,value=NULL){

  if (!any(key==c('-iterations','-xopt','-fopt','-historyxopt','-historyfopt',
                  '-fx0','-status')))
    stop(sprintf('optimbase.set: Unknown key %s',key),
         call.=FALSE)

  if (key=='-iterations') this$iterations <- value
  if (key=='-xopt')       this$xopt <- value
  if (key=='-fopt')       this$fopt <- value
  if (key=='-historyxopt'){
    if (!this$storehistory){
      stop('optimbase.set: History disabled ; turn on -storehistory option.',
           call.=FALSE)
    } else {
      this$historyxopt <- value
    }
  }
  if (key=='-historyfopt'){
    if (!this$storehistory){
      stop('optimbase.set: History disabled ; turn on -storehistory option.',
           call.=FALSE)
    } else {
      this$historyfopt <- value
    }
  }
  if (key=='-fx0')    this$fx0 <- value
  if (key=='-status') this$status <- value

  return(this)
  
}

