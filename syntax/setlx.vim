" Vim syntax file
" Language: Setlx
" Maintainer: Arwed Mett
" Latest Revision: 28.02.2017

syn keyword conditional if else switch
syn keyword label case default
syn keyword boolean true false
syn keyword constant om
syn keyword repeat for while in notin exists do
syn keyword storageClass static
syn keyword exception throw catch try catchLng catchUsr assert
syn keyword statement procedure closure cachedProcedure
syn keyword operator + - * ** / << && \|\| >>
syn keyword structure class
syn keyword keyword regex match rw
syn keyword statement return exit continue break afterBacktrack backtrack check scan

syn match number '\d\+'
syn match number '[-+]\d\+'
syn match float '\d\+\.\d*'
syn match float '[-+]\d\+\.\d*'
syn match comment '//.*$'
syn match function '[a-zA-Z0-9_]\+\s*:=\s*procedure' 
syn region comment start="/\*" end="\*/"


syn region string start='"' end='"'
syn region string start="'" end="'"

hi def link comment Comment
hi def link conditional Conditional
hi def link number Number
hi def link float Float
hi def link string String
hi def link boolean Boolean
hi def link constant Constant
hi def link repeat Repeat
hi def link storageClass StorageClass
hi def link exception Exception
hi def link function Funktion
hi def link label Label
hi def link structure Structure
