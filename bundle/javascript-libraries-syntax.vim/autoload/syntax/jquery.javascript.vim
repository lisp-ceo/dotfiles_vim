" Vim syntax file
" Language:    jQuery for javascript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/05
" Version:     1.9
" URL:         http://api.jquery.com/

syntax keyword javascriptjQuery          containedin=ALLBUT,javascriptComment jQuery $
syntax match   javascriptjQuerydot       containedin=ALLBUT,javascriptComment /\(\<\(jQuery\|\$\)\.\)\@<=\h\w*/ contains=@javascriptQGlobals
syntax match   javascriptjQuerydot       containedin=ALLBUT,javascriptComment /\(\<\(jQuery\|\$\)([^)]*)\.\)\@<=\h\w*/ contains=@javascriptQFunctions

" jQuery.*
syntax cluster javascriptQGlobals        contains=javascriptQCore,javascriptQCoreObj,javascriptQCoreData,javascriptQUtilities,javascriptQProperties
syntax keyword javascriptQCore           contained holdReady noConflict when
syntax keyword javascriptQCoreObj        contained Callback Deferred
syntax keyword javascriptQCoreData       contained data dequeue hasData queue removeData
syntax keyword javascriptQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword javascriptQProperties     contained context fx.interval fx.off length selector support cssHooks
syntax keyword javascriptQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   javascriptQUtilities      contained /contains/

" jqobj.*
syntax cluster javascriptQFunctions      contains=javascriptQAjax,javascriptQAttributes,javascriptQCallbacks,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQTraversing,javascriptQUtilities
syntax keyword javascriptQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword javascriptQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword javascriptQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword javascriptQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword javascriptQCSS            contained css
syntax keyword javascriptQData           contained clearQueue data dequeue queue removeData
syntax keyword javascriptQDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword javascriptQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword javascriptQEffects        contained hide show toggle
syntax keyword javascriptQEffects        contained animate delay stop
syntax keyword javascriptQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword javascriptQEffects        contained slideDown slideToggle slideUp
syntax keyword javascriptQEvents         contained error resize scroll
syntax keyword javascriptQEvents         contained ready unload
syntax keyword javascriptQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword javascriptQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword javascriptQEvents         contained blur change focus select submit
syntax keyword javascriptQEvents         contained focusin focusout keydown keypress keyup
syntax keyword javascriptQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword javascriptQManipulation   contained clone
syntax keyword javascriptQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword javascriptQManipulation   contained append appendTo html preprend prependTo text
syntax keyword javascriptQManipulation   contained after before insertAfter insertBefore
syntax keyword javascriptQManipulation   contained detach empty remove
syntax keyword javascriptQManipulation   contained replaceAll replaceWith
syntax keyword javascriptQMiscellaneous  contained index size toArray
syntax keyword javascriptQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword javascriptQTraversing     contained eq filter first has is last map not slice
syntax keyword javascriptQTraversing     contained add andSelf contents end
syntax keyword javascriptQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
syntax region  javascriptStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javascriptSpecial,@htmlPreproc,@jSelectors
syntax region  javascriptStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javascriptSpecial,@htmlPreproc,@jSelectors

syntax cluster jSelectors      contains=jId,jClass,jOperators,jBasicFilters,jContentFilters,jVisibility,jChildFilters,jForms,jFormFilters
syntax match   jId             contained /#[0-9A-Za-z_\-]\+/
syntax match   jClass          contained /\.[0-9A-Za-z_\-]\+/
syntax match   jOperators      contained /*\|>\|+\|-\|\~/
syntax match   jBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lt\|not\|odd\|root\|target\)/
syntax match   jChildFilters   contained /:\(first\|last\|nth\|only\)-child/
syntax match   jChildFilters   contained /:\(first\|last\|nth\|only\)-of-type/
syntax match   jContentFilters contained /:\(contains\|empty\|has\|parent\)/
syntax match   jForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syntax match   jVisibility     contained /:\(hidden\|visible\)/

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptjQuery          Constant

  HiLink javascriptQCore           PreProc
  HiLink javascriptQCoreObj        PreProc
  HiLink javascriptQCoreData       PreProc

  HiLink javascriptQAjax           PreProc
  HiLink javascriptQAttributes     PreProc
  HiLink javascriptQCallbacks      PreProc
  HiLink javascriptQCSS            PreProc
  HiLink javascriptQData           PreProc
  HiLink javascriptQDeferred       PreProc
  HiLink javascriptQDimensions     PreProc
  HiLink javascriptQEffects        PreProc
  HiLink javascriptQEvents         PreProc
  HiLink javascriptQManipulation   PreProc
  HiLink javascriptQMiscellaneous  PreProc
  HiLink javascriptQOffset         PreProc
  HiLink javascriptQProperties     PreProc
  HiLink javascriptQTraversing     PreProc
  HiLink javascriptQUtilities      PreProc

  HiLink jId             Identifier
  HiLink jClass          Constant
  HiLink jOperators      Special
  HiLink jBasicFilters   Statement
  HiLink jContentFilters Statement
  HiLink jVisibility     Statement
  HiLink jChildFilters   Statement
  HiLink jForms          Statement
  HiLink jFormFilters    Statement


  delcommand HiLink
endif
