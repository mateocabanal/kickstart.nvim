" Vim syntax file for Ryu
" Maintainer: Your Name
" Last Change: 2024-12-10

if exists("b:current_syntax")
  finish
endif

" =========================
" Syntax Highlighting Definitions
" =========================

" 1. Keywords
syntax keyword ryuKeyword import fn class let if else return while println

" 2. Types
syntax keyword ryuType int float string bool char

" 3. Built-in Functions
syntax keyword ryuBuiltin println

" 4. Constants (Add as needed)
" syntax keyword ryuConstant TRUE FALSE NULL

" 5. Numbers
syntax match ryuNumber /\<\d\+\>/

" 6. Strings (Non-Greedy Matching)
syntax match ryuString /".\{-}"/

" 7. Characters
syntax match ryuChar /'.'/

" 8. Comments
" Single-line comments
syntax match ryuComment /\/\/.\+$/
" Multi-line comments
syntax match ryuComment /\/\*\_.\{-}\*\//

" 9. Function Definitions
syntax match ryuFunction /\<\w\+\ze\s*(/

" 10. Class Definitions
syntax keyword ryuClass class

" 11. Variables (Optional)
" To highlight variables, uncomment the following lines:
" syntax match ryuVariable /\<[a-zA-Z_]\w*\>/
" highlight link ryuVariable Identifier

" 12. Operators
syntax match ryuOperator /[+\-*/=<>!&|]+/

" 13. Brackets and Braces
syntax match ryuBracket /[{}\[\]()]/

" 14. Class Names
syntax match ryuClassName /\<class\s\+\zs\w\+/
highlight link ryuClassName Identifier

" =========================
" Highlighting Groups Linking
" =========================

highlight link ryuKeyword Keyword
highlight link ryuType Type
highlight link ryuBuiltin Function
highlight link ryuNumber Number
highlight link ryuString String
highlight link ryuChar Character
highlight link ryuComment Comment
highlight link ryuFunction Function
highlight link ryuClass Type
highlight link ryuOperator Operator
highlight link ryuBracket Delimiter
" highlight link ryuVariable Identifier

" =========================
" Finalize Syntax
" =========================

let b:current_syntax = "ryu"

