;;; init-owncustomize.el --- 自己修改的一些latex的设置和快捷方式


(custom-set-variables
'(LaTeX-clean-intermediate-suffixes
   (quote
    ("\\.aux" "\\.bbl" "\\.blg" "\\.brf" "\\.fot" "\\.glo" "\\.gls" "\\.idx" "\\.ilg" "\\.ind" "\\.lof" "\\.log" "\\.lot" "\\.nav" "\\.out" "\\.snm" "\\.toc" "\\.url" "\\.bcf" "\\.run\\.xml" "\\.fls" "-blx\\.bib" "\\.acn" "\\.acr" "\\.alg" "\\.glg" "\\.ist" "\\.fdb_latexmk" "\\.aux.bak" "\\.fls" "\\.mw" "\\.tex#" "\\.xdv")))
'(cdlatex-command-alist
   (quote
    (("detnn" "insert n*n determint" "\\begin{vmatrix}
a_{11} & a_{12}& \\cdots &a_{1n}\\\\
a_{21} & a_{22}& \\cdots &a_{2n}\\\\
\\vdots & \\vdots & \\ddots & \\vdots\\\\
a_{n1}& a_{n2}& \\cdots & a_{nn}
\\end{vmatrix}" ignore nil nil t)
	("lineqnn" "insert n*n linear equation" "\\begin{cases}
a_{11}x_1+a_{12}x_2+\\cdots+a_{1n}x_n=b_1\\\\
a_{21}x_1+a_{22}x_2+\\cdots+a_{2n}x_n=b_2\\\\
\\qquad\\qquad\\cdots\\cdots\\cdots\\\\
a_{n1}x_1+a_{n2}x_2+\\cdots+a_{nn}x_n=b_n
\\end{cases}" ignore nil nil t)
	("lineqmn" "insert m*n linear equation" "\\begin{cases}
a_{11}x_1+a_{12}x_2+\\cdots+a_{1n}x_n=b_1\\\\
a_{21}x_1+a_{22}x_2+\\cdots+a_{2n}x_n=b_2\\\\
\\qquad\\qquad\\cdots\\cdots\\cdots\\\\
a_{m1}x_1+a_{m2}x_2+\\cdots+a_{mn}x_n=b_m
\\end{cases}" ignore nil nil t)
	("vp" "insert vskip ?pt" "\\vskip ? pt" cdlatex-position-cursor nil t t)
     ("ol" "insert overline evn" "\\overline{?}" cdlatex-position-cursor nil nil t)
     ("rk" "insert rank" "\\mathsf{rank}" ignore nil nil t)
     ("llra" "insert Longleftrightarrow evn" "\\Longleftrightarrow" ignore nil nil t)
     ("ii" "insert i" "\\mathsf{i}" ignore nil nil t)
     ("iso" "insert isomorphism env" "\\stackrel{_\\sim}{\\rightarrow}" ignore nil nil t)
     ("ra" "insert rightarrow" "\\rightarrow " ignore nil nil t)
     ("sf" "insert mathsf evn" "\\mathsf{?}" cdlatex-position-cursor nil nil t)
     ("ker" "insert Ker" "\\mathsf{Ker}" ignore nil nil t)
     ("im" "insert Im" "\\mathsf{Im}" ignore nil nil t)
     ("lr\\" "insert normal form" "\\|?\\|_{}" cdlatex-position-cursor nil nil t)
     ("lz" "insert \\lambda" "\\lambda" ignore nil nil t)
     ("gz" "insert \\gamma" "\\gamma" ignore nil nil t)
     ("dz" "insert \\delta" "\\delta" ignore nil nil t)
     ("bz" "insert \\beta" "\\beta" ignore nil nil t)
     ("az" "insert \\alpha" "\\alpha" ignore nil nil t)
     ("bbp" "insert mathbb{P}" "\\mathbb{P}" ignore nil nil t)
     ("bbf" "insert mathbb{F}" "\\mathbb{F}" ignore nil nil t)
     ("bbz" "insert mathbb{Z}" "\\mathbb{Z}" ignore nil nil t)
     ("bbr" "insert mathbb{R}" "\\mathbb{R}" ignore nil nil t)
     ("bbn" "insert mathbb{N}" "\\mathbb{N}" ignore nil nil t)
     ("bbc" "insert mathbb{C}" "\\mathbb{C}" ignore nil nil t)
     ("bbq" "insert mathbb{Q}" "\\mathbb{Q}" ignore nil nil t)
     ("bb" "insert mathbb env" "\\mathbb{?}" cdlatex-position-cursor nil nil t)
     ("con" "insert conclusion environment" "" cdlatex-environment
      ("conclusion")
      t nil)
     ("jd" "insert jd environment" "\\jd[?]{}" cdlatex-position-cursor nil t nil)
     ("eni" "insert enumerate envi" "\\begin{enumerate}[(i)]
\\item ?
\\end{enumerate}" cdlatex-position-cursor nil t t)
     ("en1" "inset enumerate env" "\\begin{enumerate}[(1)]
\\item ? 
\\end{enumerate}" cdlatex-position-cursor nil t t)
     ("aa" "insert \\[ \\]" "
\\vskip -10pt
\\[
? 
\\]
\\vskip -7pt
 " cdlatex-position-cursor nil t nil)
     ("prop" "insert proposition" "" cdlatex-environment
      ("proposition")
      t nil)
     ("te" "insert text" "\\text{?}" cdlatex-position-cursor nil nil t)
     ("st" "stackrel" "\\stackrel{?}{}" cdlatex-position-cursor nil nil t)
     ("fra" "insert frame (for beamer)" "" cdlatex-environment
      ("frame")
      t nil)
     ("spl" "insert split" "" cdlatex-environment
      ("split")
      nil t)
     ("eq" "insert equation" "" cdlatex-environment
      ("equaiton")
      t nil)
     ("eqs" "insert unlabel equation" "" cdlatex-environment
      ("equation*")
      t nil)
     ("lem" "insert lemma env" "" cdlatex-environment
      ("lemma")
      t nil)
     ("thm" "insert theorem env" "" cdlatex-environment
      ("theorem")
      t nil)
     ("pf" "insert proof env" "" cdlatex-environment
      ("proof")
      t nil)
     ("sol" "insert solution env" "" cdlatex-environment
      ("solution")
      t nil)
     ("cor" "insert corollary env" "" cdlatex-environment
      ("corollary")
      t nil)
     ("ques" "insert question env" "" cdlatex-environment
      ("question")
      t nil)
     ("rmk" "insert remark env" "" cdlatex-environment
      ("remark")
      t nil)
     ("exer" "insert exercise env" "" cdlatex-environment
      ("exercise")
      t nil)
     ("exam" "insert example env" "" cdlatex-environment
      ("example")
      t nil)
     ("defn" "insert definition env" "" cdlatex-environment
      ("definition")
      t nil)
     ("liml" "insert \\lim\\limits_{}" "\\lim\\limits_{?}" cdlatex-position-cursor nil nil t)
     ("prodl" "insert \\prod\\limits_{}^{}" " \\prod\\limits_{?}^{}" cdlatex-position-cursor nil nil t)
     ("cupl" "insert \\bigcup\\limits_{}^{}" "\\bigcup\\limits_{?}^{}" cdlatex-position-cursor nil nil t)
     ("capl" "insert \\bigcap\\limits_{}^{}" "\\bigcap\\limits_{?}^{}" cdlatex-position-cursor nil nil t)
     ("big(" "insert big ()" "\\big( ? \\big" cdlatex-position-cursor nil nil t)
     ("Big(" "insert Big ()" "\\Big( ? \\Big" cdlatex-position-cursor nil nil t)
     ("bigg(" "insert bigg()" "\\bigg( ? \\bigg" cdlatex-position-cursor nil nil t)
     ("big|" "insert big|" "\\big| ? \\big|" cdlatex-position-cursor nil nil t)
     ("Big|" "insert Big|" "\\Big| ? \\Big|" cdlatex-position-cursor nil nil t)
     ("bigg|" "insert bigg|" "\\bigg| ? \\bigg|" cdlatex-position-cursor nil nil t)
     ("Big\\|" "insert Big \\|" "\\Big\\| ? \\Big\\|" cdlatex-position-cursor nil nil t)
     ("bigg\\|" "insert bigg\\|" "\\bigg\\| ? \\bigg\\|" cdlatex-position-cursor nil nil t)
     ("cas" "insert cases" "" cdlatex-environment
      ("cases")
      nil t)
     ("big\\|" "insert big \\|" "\\big\\| ? \\big\\|" cdlatex-position-cursor nil nil t)
     ("big{" "insert big {}" "\\big\\{ ? \\big\\" cdlatex-position-cursor nil nil t)
     ("big[" "insert big []" "\\big[ ? \\big" cdlatex-position-cursor nil nil t)
     ("Big{" "insert Big{}" "\\Big\\{ ? \\Big\\" cdlatex-position-cursor nil nil t)
     ("bigg{" "insert bigg{}" "\\bigg\\{ ? \\bigg\\" cdlatex-position-cursor nil nil t)
     ("Big[" "insert Big[" "\\Big[ ? \\Big" cdlatex-position-cursor nil nil t)
     ("bigg[" "insert bigg[" "\\bigg[ ? \\bigg" cdlatex-position-cursor nil nil t)
     ("ct" "insert \\cite" "\\cite{?}" cdlatex-position-cursor nil t nil)
     ("se" "insert a section statement" "\\section{?}" cdlatex-position-cursor nil t nil)
     ("ss" "insert subsection statement" "\\subsection{?}" cdlatex-position-cursor nil t nil)
     ("sss" "insert subsubsection statement" "\\subsubsection{？}" cdlatex-position-cursor nil t nil)
     ("cl" "insert centerline" "\\centerline{?}" cdlatex-position-cursor nil t nil)
     ("df" "insert \\dfrac" "\\dfrac{?}{}" cdlatex-position-cursor nil t t)
     ("tf" "insert tfrac" "\\tfrac{?}{}" cdlatex-position-cursor nil t t)
     ("sq" "insert \\sqrt" "\\sqrt{?}" cdlatex-position-cursor nil t t)
     ("intl" "insert \\int\\limits_{}^{}" "\\int\\limits_{?}^{}" cdlatex-position-cursor nil t t)
     ("suml" "insert \\sum\\limits_{}^{}" "\\sum\\limits_{?}^{}" cdlatex-position-cursor nil t t)
     ("fn" "insert a footnote" "\\footnote{?}" cdlatex-position-cursor nil t t)
     ("lr(" "insert left( right)pair" "\\left( ?\\right" cdlatex-position-cursor nil t t)
     ("lr[" "insert left\\[ right\\]" "\\left\\[ ?\\right\\" cdlatex-position-cursor nil t t)
     ("lr{" "insert left\\{ right\\}" "\\left\\{?\\right\\" cdlatex-position-cursor nil t t)
     ("lr|" "insert left| right|" "\\left| ?\\right|" cdlatex-position-cursor nil t t)
     ("cd" "insert \\cdots" "\\cdots" ignore nil t t)
     ("vd" "insert \\vdots" "\\vdots" ignore nil t t)
     ("dd" "insert \\ddots" "\\ddots" ignore nil t t)
     ("leq" "insert \\leqslant" "\\leqslant" ignore nil t t)
     ("geq" "insert \\geqslant" "\\geqslant" ignore nil t t)
     ("qq" "insert \\quad" "\\quad" ignore nil t t)
     ("qqq" "insert \\qquad" "\\qquad" ignore nil t t))))
 '(cdlatex-env-alist
   (quote
    (("conclusion" "\\begin{con}
?
\\end{con}" nil)
     ("cases" "\\begin{cases}
? & \\\\

\\end{cases}" "? &  \\\\")
     ("frame" "\\begin{frame}{}
?
\\end{frame}" nil)
     ("enumerate" "\\begin{enumerate}[]
\\item ?
\\end{enumerate}" "\\item ?")
     ("theorem" "\\begin{thm}[]
?
\\end{thm}" nil)
     ("lemma" "\\begin{lem}
?
\\end{lem}" nil)
     ("proof" "\\begin{proof}
?
\\end{proof}" nil)
     ("solution" "\\begin{sol}
?
\\end{sol}" nil)
     ("definition" "\\begin{defn}
?
\\end{defn}" nil)
     ("proposition" "\\begin{prop}
?
\\end{prop}" nil)
     ("corollary" "\\begin{cor}
?
\\end{cor}" nil)
     ("remark" "\\begin{rmk}
?
\\end{rmk}" nil)
     ("example" "\\begin{exam}[]
?
\\end{exam}" nil)
     ("question" "\\begin{ques}
?
\\end{ques}" nil)
     ("exercise" "\\begin{exer}
?
\\end{exer}" nil))))	

'(cdlatex-paired-parens "$[{(|")

)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

(provide 'init-owncustomize)
;;; init-owncustomize.el ends here
