" Jay Fields
" https://github.com/jaycfields/unplugged-pack/blob/f7ba9f033cfed38f2c39da7855568c46c1a1874e/init.el#L105-L115
" http://blog.jayfields.com/2013/06/coding-increase-your-reading-and.html
"
" (true т)
" (false ғ)
" (:keys ӄ)
" (nil Ø)
" (partial ∂)
" (comp º)
" (interaction ι)
" (a-fn1 α)
" (a-fn2 β)
" (a-fn3 γ)
" (no-op ε)))
"
" vim-colure-conceal:
" https://github.com/fwolanski/vim-clojure-conceal/blob/master/after/syn/clojure.vim


" Matching word boundaries:
" http://stackoverflow.com/questions/10477857/vim-syntax-conceal-in-context

" Vim cute python:
" https://github.com/ehamberg/vim-cute-python/blob/master/after/syntax/python.vim

if !has('conceal') || &enc != 'utf-8'
  finish
endif

syn keyword clojureConcealLambda defn fn conceal cchar=λ
syn keyword clojureConcealLambdaPriv defn- conceal cchar=Λ
"syn match   clojureConcealLambda /\v#\(/me=e-1 conceal cchar=λ
syn keyword clojureConcealTrue true conceal cchar=т

syn keyword clojureConcealFalse false conceal cchar=ғ

syn keyword clojureConcealKeys      :keys conceal   cchar=ӄ
syn match clojureConcealNil       /\vnil\?*/ conceal     cchar=Ø
"syn keyword clojureConcealNil       nil conceal     cchar=Ø
syn keyword clojureConcealPartial   partial conceal cchar=∂
syn keyword clojureConcealComp      comp conceal    cchar=∘
syn keyword clojureConcealJuxt      juxt conceal    cchar=×
syn keyword clojureConcealCond      cond conceal    cchar=¿
syn keyword clojureConcealFn1       alpha conceal   cchar=α
syn keyword clojureConcealApply     apply conceal   cchar=$
" http://en.wikipedia.org/wiki/Function_application
syn keyword clojureConcealMap       map conceal   cchar=μ
syn keyword clojureConcealReduce    reduce conceal   cchar=ρ  " same as rename
syn keyword clojureConcealFilter    filter conceal   cchar=φ

syn match clojureConcealParam    /%/ conceal   cchar=ⅰ
syn match clojureConcealParam    /%2/ conceal   cchar=ⅱ
syn match clojureConcealParam    "%3" conceal   cchar=ⅲ

"syn keyword clojureConcealCons    cons conceal   cchar=

syn keyword clojureConcealFn2       beta conceal   cchar=β
syn keyword clojureConcealFn3       delta conceal   cchar=γ
syn keyword clojureConcealNoOp      no-op conceal   cchar=ε

syn keyword clojureConcealThread2   ->> conceal   cchar=⇒
syn keyword clojureConcealThread1   -> conceal   cchar=→
syn keyword clojureConcealNotEqual  not= conceal   cchar=≠
syn keyword clojureConcealNot       not conceal   cchar=¬
syn keyword clojureConcealInto      into conceal   cchar=←
syn keyword clojureConcealFor       for conceal   cchar=∀
syn keyword clojureConcealInc       inc upper-case conceal   cchar=↑
syn keyword clojureConcealDec       dec lower-case conceal   cchar=↓
"syn keyword clojureConcealContain   contains? conceal   cchar=∋
syn keyword clojureConcealContain   contains? conceal   cchar=∈
syn keyword clojureConcealSqrt      sqrt conceal   cchar=√
"syn keyword clojureConcealSquare    square conceal   cchar=²
syn keyword clojureConcealSquare    expt conceal   cchar=²
syn keyword clojureConcealOr        or conceal   cchar=∨
syn keyword clojureConcealAnd       and conceal   cchar=∧
syn keyword clojureConcealLessEq    <= conceal   cchar=≤
syn keyword clojureConcealGreaterEq >= conceal   cchar=≥
syn keyword clojureConcealDivision  / conceal   cchar=÷
syn keyword clojureConcealBitXor    bit-xor conceal   cchar=⊕
syn keyword clojureConcealFloor     floor conceal   cchar=⌊
syn keyword clojureConcealCeil      ceil conceal   cchar=⌈

" Sets
syn keyword clojureConcealProject      project       conceal cchar=π
syn keyword clojureConcealSelect       select        conceal cchar=σ
syn keyword clojureConcealRename       join          conceal cchar=⋈
syn keyword clojureConcealUnion        union         conceal cchar=∪
syn keyword clojureConcealIntersection intersection  conceal cchar=∩
syn keyword clojureConcealDifference   difference    conceal cchar=∖
syn keyword clojureConcealRename       rename        conceal cchar=ρ
syn keyword clojureConcealIndex        index         conceal cchar=☞
  " or :
syn keyword clojureConcealSubset       subset?       conceal cchar=⊂
syn keyword clojureConcealSuperset     superset?     conceal cchar=⊃

syn keyword clojureConcealAtom     atom     conceal cchar=⚛

hi link clojureConcealLambda Define
hi! link Conceal Define
"hi! link Conceal Operator

setlocal conceallevel=2
