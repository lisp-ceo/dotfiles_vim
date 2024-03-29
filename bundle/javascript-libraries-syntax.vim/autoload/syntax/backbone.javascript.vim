" Vim syntax file
" Language:    Backbone.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     0.9.10
" URL:         http://backbonejs.org/

syntax keyword javascriptBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,javascriptComment

syntax cluster javascriptBFunctions contains=javascriptBEvents,javascriptBModel,javascriptBCollection,javascriptBRouter,javascriptBHistory,javascriptBSync,javascriptBView,javascriptBUtility
syntax cluster javascriptBAttrs contains=javascriptBModelAttrs,javascriptBCollectionAttrs,javascriptBRouterAttrs,javascriptBSyncAttrs,javascriptBViewAttrs

syntax keyword javascriptBEvents contained on off trigger once listenTo stopListening
syntax keyword javascriptBModel contained extend constructor initialize get set escape has unset clear
syntax keyword javascriptBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword javascriptBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword javascriptBCollection contained extend constructor initialize toJSON sync add remove reset update get at 
syntax keyword javascriptBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
syntax keyword javascriptBRouter contained extend constructor initialize route navigate
syntax keyword javascriptBHistory contained start
syntax keyword javascriptBSync contained ajax 
syntax keyword javascriptBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword javascriptBUtility contained noConflict 

syntax keyword javascriptBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword javascriptBCollectionAttrs contained model models length comparator url
syntax keyword javascriptBRouterAttrs contained routes
syntax keyword javascriptBSyncAttrs contained emulateHTTP emulateJSON
syntax keyword javascriptBViewAttrs contained el attributes
syntax keyword javascriptBViewAttrs match /$el/


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

  HiLink javascriptBackbone         Constant

  HiLink javascriptBEvents          PreProc
  HiLink javascriptBModel           PreProc
  HiLink javascriptBCollection      PreProc
  HiLink javascriptBRouter          PreProc
  HiLink javascriptBHistory         PreProc
  HiLink javascriptBSync            PreProc
  HiLink javascriptBView            PreProc
  HiLink javascriptBUtility         PreProc

  HiLink javascriptBModelAttrs      PreProc
  HiLink javascriptBCollectionAttrs PreProc
  HiLink javascriptBRouterAttrs     PreProc
  HiLink javascriptBSyncAttrs       PreProc
  HiLink javascriptBViewAttrs       PreProc


  delcommand HiLink
endif
