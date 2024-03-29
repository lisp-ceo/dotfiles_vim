" Vim syntax file
" Language:    jQuery for coffee
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/05
" Version:     1.9
" URL:         http://api.jquery.com/

syntax keyword coffeejQuery          containedin=ALLBUT,coffeeComment jQuery $
syntax match   coffeejQuerydot       containedin=ALLBUT,coffeeComment /\(\<\(jQuery\|\$\)\.\)\@<=\h\w*/ contains=@coffeeQGlobals
syntax match   coffeejQuerydot       containedin=ALLBUT,coffeeComment /\(\<\(jQuery\|\$\)([^)]*)\.\)\@<=\h\w*/ contains=@coffeeQFunctions

" jQuery.*
syntax cluster coffeeQGlobals        contains=coffeeQCore,coffeeQCoreObj,coffeeQCoreData,coffeeQUtilities,coffeeQProperties
syntax keyword coffeeQCore           contained holdReady noConflict when
syntax keyword coffeeQCoreObj        contained Callback Deferred
syntax keyword coffeeQCoreData       contained data dequeue hasData queue removeData
syntax keyword coffeeQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword coffeeQProperties     contained context fx.interval fx.off length selector support cssHooks
syntax keyword coffeeQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   coffeeQUtilities      contained /contains/

" jqobj.*
syntax cluster coffeeQFunctions      contains=coffeeQAjax,coffeeQAttributes,coffeeQCallbacks,coffeeQCore,coffeeQCSS,coffeeQData,coffeeQDeferred,coffeeQDimensions,coffeeQEffects,coffeeQEvents,coffeeQManipulation,coffeeQMiscellaneous,coffeeQOffset,coffeeQTraversing,coffeeQUtilities
syntax keyword coffeeQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword coffeeQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword coffeeQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword coffeeQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword coffeeQCSS            contained css
syntax keyword coffeeQData           contained clearQueue data dequeue queue removeData
syntax keyword coffeeQDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword coffeeQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword coffeeQEffects        contained hide show toggle
syntax keyword coffeeQEffects        contained animate delay stop
syntax keyword coffeeQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword coffeeQEffects        contained slideDown slideToggle slideUp
syntax keyword coffeeQEvents         contained error resize scroll
syntax keyword coffeeQEvents         contained ready unload
syntax keyword coffeeQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword coffeeQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword coffeeQEvents         contained blur change focus select submit
syntax keyword coffeeQEvents         contained focusin focusout keydown keypress keyup
syntax keyword coffeeQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword coffeeQManipulation   contained clone
syntax keyword coffeeQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword coffeeQManipulation   contained append appendTo html preprend prependTo text
syntax keyword coffeeQManipulation   contained after before insertAfter insertBefore
syntax keyword coffeeQManipulation   contained detach empty remove
syntax keyword coffeeQManipulation   contained replaceAll replaceWith
syntax keyword coffeeQMiscellaneous  contained index size toArray
syntax keyword coffeeQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword coffeeQTraversing     contained eq filter first has is last map not slice
syntax keyword coffeeQTraversing     contained add andSelf contents end
syntax keyword coffeeQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
syntax region  coffeeStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=coffeeSpecial,@htmlPreproc,@jSelectors
syntax region  coffeeStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=coffeeSpecial,@htmlPreproc,@jSelectors

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

  HiLink coffeejQuery          Constant

  HiLink coffeeQCore           PreProc
  HiLink coffeeQCoreObj        PreProc
  HiLink coffeeQCoreData       PreProc

  HiLink coffeeQAjax           PreProc
  HiLink coffeeQAttributes     PreProc
  HiLink coffeeQCallbacks      PreProc
  HiLink coffeeQCSS            PreProc
  HiLink coffeeQData           PreProc
  HiLink coffeeQDeferred       PreProc
  HiLink coffeeQDimensions     PreProc
  HiLink coffeeQEffects        PreProc
  HiLink coffeeQEvents         PreProc
  HiLink coffeeQManipulation   PreProc
  HiLink coffeeQMiscellaneous  PreProc
  HiLink coffeeQOffset         PreProc
  HiLink coffeeQProperties     PreProc
  HiLink coffeeQTraversing     PreProc
  HiLink coffeeQUtilities      PreProc

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
