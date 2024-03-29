" Vim syntax file
" Language:    underscore.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     1.4.4
" URL:         http://underscorejs.org/

syntax match   javascriptunderscore containedin=ALLBUT,javascriptComment /\<_\>/
syntax match   javascriptunderscoredot containedin=ALLBUT,javascriptComment /\(\<_\.\)\@<=\h\w*/ contains=@javascript_Functions
syntax match   javascriptunderscoredot containedin=ALLBUT,javascriptComment /\(\<_([^)]*)\.\)\@<=\h\w*/ contains=@javascript_Functions

syntax cluster javascript_Functions contains=javascript_collections,javascript_arrays,javascript_functions,javascript_objects,javascript_chaining

syntax match   javascript_collections contained /contains/
syntax keyword javascript_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword javascript_collections contained reject every some invoke pluck max min sortBy
syntax keyword javascript_collections contained groupBy countBy shuffle toArray size
syntax keyword javascript_arrays contained first initial last rest compact flatten without union
syntax keyword javascript_arrays contained intersection difference uniq zip object indextOf
syntax keyword javascript_arrays contained lastIndexOf sortedIndex range
syntax keyword javascript_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword javascript_functions contained once after wrap compose
syntax keyword javascript_objects contained keys values pairs invert functions extend pick omit
syntax keyword javascript_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword javascript_objects contained isObject isArguments isFunction isString isNumber
syntax keyword javascript_objects contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword javascript_objects contained isUndefined
syntax keyword javascript_utility contained noConflict identify times random mixin uniqueId
syntax keyword javascript_utility contained escape unescape result template
syntax keyword javascript_chaining contained chain value


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

  HiLink javascriptunderscore      Constant

  HiLink javascript_collections    PreProc
  HiLink javascript_arrays         PreProc
  HiLink javascript_functions      PreProc
  HiLink javascript_objects        PreProc
  HiLink javascript_utility        PreProc
  HiLink javascript_chaining       PreProc


  delcommand HiLink
endif
