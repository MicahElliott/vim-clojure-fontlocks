if has("autocmd")
  au  BufNewFile,BufRead *.clj set filetype=clojure syntax=clojure | runtime! ftplugin/clojure.vim
endif
