(defvar ls-js-keywords
  '("case" "catch" "const" "continue" "debugger" "default" "delete" "do" "else" "enum" "false" "finally" "for" "function" "if" "in" "instanceof" "import" "let" "new" "null" "return" "switch" "this" "throw" "true" "try" "typeof" "var" "void" "while" "with" "yield")
  "Javascript keywords.")

(defvar ls-js-reserved-keywords
  '("abstract" "boolean" "byte" "char" "class" "double" "enum" "export" "extends" "final" "float" "goto" "implements" "import" "int" "interface" "long" "native" "package" "private" "protected" "public" "short" "static" "super" "synchronized" "throws" "transient" "volatile")
  "Javascript reserved keywords.")

(defvar ls-js-symbols
  '("Array" "Boolean" "Date" "Error" "EvalError" "Function" "Infinity" "JSON" "Math" "NaN" "Number" "Object" "RangeError" "ReferenceError" "RegExp" "String" "SyntaxError" "TypeError" "URIError" "arguments" "decodeURI" "decodeURIComponent" "encodeURI" "encodeURIComponent" "escape" "eval" "isFinite" "isNaN" "parseFloat" "parseInt" "undefined" "unescape")
  "Javascript symbols")

(defvar ls-js-keywords-regexp
  (regexp-opt ls-js-keywords 'words))

(defvar ls-js-reserved-keywords-regexp
  (regexp-opt ls-js-reserved-keywords 'words))

(defvar ls-js-symbols-regexp
  (regexp-opt ls-js-symbols 'words))

;; (setq ls-js-keyword nil)
;; (setq ls-js-reserved-keyword nil)
;; (setq ls-js-symbols nil)

(setq ls-font-lock-keywords
      `((,ls-js-keywords-regexp . font-lock-keyword-face)
        (,ls-js-reserved-keywords-regexp . font-lock-keyword-face)
        (,ls-js-symbols . font-lock-builtin-face)))

(define-derived-mode lispyscript-mode lisp-mode
  "LispScript mode"
  "Major mode for editing Lispscript (Linden Scripting Language)…"

  (setq font-lock-defaults '((ls-font-lock-keywords)))

  ;; (setq ls-js-keywords-regexp nil)
  ;; (setq ls-js-reserved-keywords-regexp nil)
  ;; (setq ls-js-symbols-regexp nil))
)

(provide 'lispyscript-mode)
