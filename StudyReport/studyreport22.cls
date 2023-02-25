\ProvidesClass{studyreport22}[2023/02/25 研究実績報告書]
\LoadClass{ujarticle}
\ExecuteOptions{a4paper,11pt}

\pagestyle{empty}
\textheight=265mm
\textwidth=175mm
\oddsidemargin=-5mm
\topmargin=-30mm
\unitlength=1mm
\parindent=0mm

\def\業績#1#2#3#4{
#1 & ``#2'' ・ #3 ・ #4\\
}

\def\内訳#1#2{
#1 & #2 \\
}

\def\氏名#1#2{
\def\@氏名{\shortstack{{\scriptsize #2}\\#1}}}
\def\学科#1{\def\@学科{#1}}
\def\研究課題#1{\def\@課題{#1}}

\氏名{}{}
\学科{情報工学科}
\研究課題{}

\long\gdef\実績報告書#1#2#3{
\begin{minipage}[b]{120mm}
\begin{flushleft}
  様式1--1
\end{flushleft}
\begin{center}
  {\large 拓殖大学 工学部 教員・助手}

  \vspace{2zh}
  {\huge\count0=\year\advance\count0
 -2019 令和\,\number\count0\,年度 研究実績報告書}
\end{center}
\end{minipage}
\begin{picture}(50,25)
  \put(0,0){\framebox(50,25){}}
  \put(0,19){\line(1,0){50}}
  \put(25,0){\line(0,1){25}}
  \put(0,19){\makebox(25,6){工学部長}}
  \put(25,19){\makebox(25,6){学科長等}}
\end{picture}

  \vspace{2mm} 
\begin{picture}(175,226)
  \thicklines
  \put(  0,  0){\framebox(175,226){}}
  \put(  0,199){\line(1,0){175}}
  \put(  0,200){\line(1,0){175}}
  \thinlines
  \put(  0,213){\line(1,0){175}}
  \put( 28,200){\line(0,1){26}}
  \put( 84,213){\line(0,1){13}}
  \put(110,213){\line(0,1){13}}
  \put(  0,213){\makebox(28,7){研\ 究\ 者\ 氏\ 名}}
  \put(  0,200){\makebox(28,13){研究課題}}
  \put(  0,220){\makebox(28,6){\scriptsize フリガナ}}
  \put( 28,213){\makebox(45,13){\Large \@氏名}}
%  \put( 79,215){\makebox(0,13){
%   \includegraphics[width=13mm,bb=0 0 283 283]{stamp.jpg}}}
  \put( 78,213){\makebox(0,13){印}}
  \put( 84,213){\makebox(26,13){所属学科等}}
  \put(110,213){\makebox(65,13){\large \@学科}}
  \put( 28,200){\makebox(142,13){\large \@課題}}

  \put(5,189){\makebox(100,9)[l]{研究実績の概要(800字以上)}}
  \multiput(0,10.5)(0,10.5){18}{\line(1,0){175}}

  \put(2,180){\parbox[t]{170mm}{\baselineskip=10.5mm
    \parindent=1zw #1}}
\end{picture}
\begin{flushright}
  裏面に続く
\end{flushright}
\newpage

\begin{flushleft}
  様式1--2
\end{flushleft}
\begin{picture}(175,96)
  \thicklines
  \put(0,0){\line(1,0){175}}
  \put(0,96){\line(1,0){175}}
  \put(0,0){\line(0,1){96}}
  \put(175,0){\line(0,1){96}}
  \thinlines
  \put(0,82){\line(1,0){175}}
  \put(0,87){\line(1,0){175}}
  \put(38,0){\line(0,1){87}}
  \put(0,87){\makebox(32,9){\large 研究業績}}
  \put(32,87){\makebox(143,9)
{今年度，学術誌等に発表した論文，著書等のうち本研究に関するものにつき記入。}}
  \put(0,82){\makebox(38,5){発表年月(西暦)}}
  \put(38,82){\makebox(137,5){発表論文名・著書名・学協会誌名(最初と最後のページ)}}
  \put(0,75){\begin{tabular}[t]{p{38mm}p{127mm}}
	    #2
	  \end{tabular}}
\end{picture}

\vspace{1zh}
\begin{picture}(175,80)
  \thicklines
  \put(0,0){\line(1,0){175}}
  \put(0,80){\line(1,0){175}}
  \put(0,0){\line(0,1){80}}
  \put(175,0){\line(0,1){80}}
  \thinlines
  \put(0,71){\line(1,0){175}}
  \put(0,66){\line(1,0){175}}
  \put(60,0){\line(0,1){71}}
  \put(90,0){\line(0,1){71}}
  \put(91,0){\line(0,1){71}}
  \put(148,0){\line(0,1){71}}
  \put(0,71){\makebox(32,9){\large 使用内訳}}
  \put(32,75){\makebox(143,5)
{今年度使用した研究費の主な用途・金額等を「基盤，採択型研究費」と共に記入。}}
  \put(32,71){\makebox(143,4)[r]{金額単位：千円}}
  \put(0,66){\makebox(60,5){用 \hfil 途}}
  \put(60,66){\makebox(30,5){金 \hfil 額}}
  \put(91,66){\makebox(57,5){用 \hfil 途}}
  \put(148,66){\makebox(27,5){金 \hfil 額}}
  \put(0,60){\makebox(61,0)[tl]{\begin{tabular}{p{56mm}@{　　　　　　}r} #3  \end{tabular}}}
\end{picture}

%\vspace{1zh}
※以下は記入不要

\vspace{2mm}
\begin{picture}(175,63)
  \thicklines
  \put(0,0){\line(1,0){175}}
  \put(0,63){\line(1,0){175}}
  \put(0,0){\line(0,1){63}}
  \put(175,0){\line(0,1){63}}
  \put(0,35){\line(1,0){175}}
  \thinlines
  \multiput(0,8.5)(0,8.5){3}{\line(1,0){175}}
  \put(2,31){所見}
  \put(2,57){研究調査費使用実績}
  \put(7,40){\framebox(159,14){}}
  \put(7,49){\line(1,0){159}}
  \put(7,49){\makebox(36,5){予\hfil 算}}
  \put(43,49){\makebox(36,5){決\hfil 算}}
  \put(79,49){\makebox(37,5){差\hfil 異}}
  \put(116,49){\makebox(50,5){摘\hfil 要}}
  \put(43,40){\line(0,1){14}}
  \put(79,40){\line(0,1){14}}
  \put(116,40){\line(0,1){14}}
\end{picture}
}
