" Vim syntax file
" Language: SetlX
" Maintainer: Arwed Mett

if exists("b:current_syntax")
    finish
endif

syntax match shebang "^#!.*"
hi link shebang Comment

" Keywords
syntax keyword SetlXBoolean true false
syntax keyword SetlXConditional if else switch
syntax keyword SetlXRepeat do while for in
syntax keyword SetlXBranch break continue
syntax keyword SetlXLabel case default
syntax keyword SetlXStatement return
syntax keyword SetlXError try catch catchLng catchUsr assert
syntax keyword SetlX check afterBacktrack backtrack 
syntax keyword SetlXExit exit
syntax keyword SetlXClass class
syntax keyword SetlX static match scan using regex as rw


" Comments
syntax keyword SetlXCommentTodo TODO
syntax match SetlXLineComment "\/\/.*" contains=@Spell,SetlXCommentTodo
syntax region SetlXMultilineComment start="/\*" end="\*/" contains=@Spell,SetlXCommentTodo

" String, Number and Regex
syntax region SetlXString start=+"+ skip=+\\\\\|\\"+ end=+"\|$+
syntax region SetlXString start=+'+ skip=+\\\\\|\\'+ end=+'\|$+

syntax match SetlXNumber "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syntax match SetlXFloat /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/

syntax keyword SetlXFuncKeyword procedure cachedProcedure closure
syntax region SetlXFuncExp start=/\w\+\s\==\s\=procedure\>/ end="\([^)]*\)"

hi link SetlXBoolean Boolean
hi link SetlXConditional Conditional
hi link SetlXRepeat Repeat
hi link SetlXBranch Conditional
hi link SetlXLabel Label
hi link SetlXStatement Statement
hi link SetlXLineComment Comment
hi link SetlXMultilineComment Comment
hi link SetlXString String
hi link SetlXNumber Number
hi link SetlXFloat Number
hi link SetlX Keyword
let b:current_syntax = "setlx"
