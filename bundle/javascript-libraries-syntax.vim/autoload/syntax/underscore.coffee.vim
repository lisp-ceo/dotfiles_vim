" Vim syntax file
" Language:    underscore.js for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     1.4.4
" URL:         http://underscorejs.org/

syntax match   coffeeunderscore containedin=ALLBUT,coffeeComment /\<_\>/
syntax match   coffeeunderscoredot containedin=ALLBUT,coffeeComment /\(\<_\.\)\@<=\h\w*/ contains=@coffee_Functions
syntax match   coffeeunderscoredot containedin=ALLBUT,coffeeComment /\(\<_([^)]*)\.\)\@<=\h\w*/ contains=@coffee_Functions

syntax cluster coffee_Functions contains=coffee_collections,coffee_arrays,coffee_functions,coffee_objects,coffee_chaining

syntax match   coffee_collections contained /contains/
syntax keyword coffee_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword coffee_collections contained reject every some invoke pluck max min sortBy
syntax keyword coffee_collections contained groupBy countBy shuffle toArray size
syntax keyword coffee_arrays contained first initial last rest compact flatten without union
syntax keyword coffee_arrays contained intersection difference uniq zip object indextOf
syntax keyword coffee_arrays contained lastIndexOf sortedIndex range
syntax keyword coffee_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword coffee_functions contained once after wrap compose
syntax keyword coffee_objects contained keys values pairs invert functions extend pick omit
syntax keyword coffee_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword coffee_objects contained isObject isArguments isFunction isString isNumber
syntax keyword coffee_objects contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword coffee_objects contained isUndefined
syntax keyword coffee_utility contained noConflict identify times random mixin uniqueId
syntax keyword coffee_utility contained escape unescape result template
syntax keyword coffee_chaining contained chain value


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

  HiLink coffeeunderscore      Constant

  HiLink coffee_collections    PreProc
  HiLink coffee_arrays         PreProc
  HiLink coffee_functions      PreProc
  HiLink coffee_objects        PreProc
  HiLink coffee_utility        PreProc
  HiLink coffee_chaining       PreProc


  delcommand HiLink
endif
