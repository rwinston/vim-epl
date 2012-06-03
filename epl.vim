" MonitorScript/EPL Syntax File
" Rory Winston <rory@theresearchkitchen.com>
 
if exists("b:current_syntax")
    finish
endif
 
" Keywords
syn keyword eplDataType boolean float string integer 
syn keyword eplDataType action chunk context dictionary event listener location sequence stream
syn keyword eplKeyword all at spawn emit to log new return returns die route break
syn keyword eplClassifier wildcard
syn keyword eplBlock monitor event action on
syn keyword eplControl import using package
syn keyword eplConstant true false
syn keyword eplConditional if then not and else xor or
syn keyword eplRepeat for in
syn keyword eplOperator ":=" "+" "*" "-" "<" ">" 
 
" Regions
syn region eplBlock start="{" end="}" fold transparent
syn region eplString start=+"+ end=+"+ end=+$+ 
 
" Matches
syn match eplLineComment    "//.*$" contains=NONE
syn match eplBlockComment   "\/\*\_.\{-}\*\/" contains=NONE
 
let b:current_syntax="epl"
 
hi def link eplDataType     Type
hi def link eplBlock        Statement
hi def link eplControl      PreProc
hi def link eplLineComment  Comment
hi def link eplBlockComment Comment
hi def link eplConstant     Constant
hi def link eplConditional  Conditional
hi def link eplRepeat       Repeat
hi def link eplOperator     Operator
hi def link eplKeyword      Keyword
hi def link eplString       String
hi def link eplClassifier   StorageClass
hi def link eplOperator     Operator
