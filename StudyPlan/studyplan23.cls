\ProvidesClass{studyplan23}[2023/02/25 研究計画書]
\LoadClass[10pt,a4j]{ujarticle}
\unitlength1mm
\pagestyle{empty}
\oddsidemargin -8mm
\marginparwidth 0mm 
\topmargin -12.4mm
\headheight 0mm
\headsep 0mm
%\footheight 0mm
\footskip 0mm 
\textheight 287mm
\textwidth 188mm
\columnsep 8.7mm
\columnseprule 0pt 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcount\Numa
\newcount\Numb
\def\Numempty{}%文字列「-0」が与えられると空白を出力する
\def\Number#1{\edef\Numpar{#1}\ifx\Numempty\Numpar\else%
\Numa=#1\relax
\ifnum\Numa>999999\divide\Numa by 1000000
\number\Numa,%
\multiply\Numa by -1000000\advance\Numa by #1\relax
\Numb=\Numa\divide\Numa by 1000
\ifnum\Numa<100 \ifnum\Numa<10 0\fi0\fi\number\Numa,%
\multiply\Numa by -1000\advance\Numa by \Numb
\ifnum\Numa<100 \ifnum\Numa<10 0\fi0\fi\number\Numa%
\else\ifnum\Numa>999\divide\Numa by 1000
\number\Numa,%
\multiply\Numa by -1000\advance\Numa by #1\relax
\ifnum\Numa<100 \ifnum\Numa<10 0\fi0\fi\number\Numa%
\else\number\Numa\fi\fi\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\ルビ#1#2{\ifx \ruby \undefined
  \shortstack{{\scriptsize #2}\\{#1}}\else
 \ruby{#1}{#2}\fi\hskip3mm}
\let\姓\ルビ
\let\名\ルビ

\def\丸数字#1{{\ooalign
	{\hfill$\scriptstyle#1$\hfill\crcr$\bigcirc$}}}

\newif\if教員
\教員true
\def\教員{\教員true}
\def\助手{\教員false}

\newif\if個人研究
\個人研究true
\def\個人研究{\個人研究true}
\def\共同研究{\個人研究false}

\newif\if研究費Ａ
\研究費Ａfalse
\def\研究費Ａ{\研究費Ａtrue}
\newif\if研究費Ｂ
\研究費Ｂfalse
\def\研究費Ｂ{\研究費Ｂtrue}
\newif\if研究費Ｃ
\研究費Ｃfalse
\def\研究費Ｃ{\研究費Ｃtrue}

\newif\if科研費応募
\科研費応募false
\def\科研費応募{\科研費応募true}
\newif\if科研費採択
\科研費採択false
\def\科研費採択{\科研費採択true}
\newif\if科研費継続
\科研費継続false
\def\科研費継続{\科研費継続true}
\def\他採択機関#1{\def\@他採択機関{#1}}
\def\@他採択機関{}
\def\他採択課題#1{\def\@他採択課題{#1}}
\def\@他採択課題{}
\def\他採択金額#1{\def\@他採択金額{#1}}
\def\@他採択金額{}

\newif\if@基盤的研究
\newif\if@採択型研究
\newcounter{基盤的研究費}
\c@基盤的研究費=0
\newcounter{採択型研究費}
\c@採択型研究費=0
\newcounter{研究調査費}
\c@研究調査費=0
\newcounter{科研費加算}
\c@科研費加算=0
\newcounter{縦位置}
\newcounter{横位置}

\def\研究者氏名#1{\def\@氏名{#1}}
\def\学部#1{\def\@学部{#1}}
\def\学科#1{\def\@学科{#1}}
\def\職#1{\def\@職{#1}}
\def\学位#1{\def\@学位{#1}}
\def\最終学校名#1{\def\@最終学校名{#1}}
\def\卒業年次#1{\def\@卒業年次{#1}}
\def\専門分野#1{\def\@専門分野{#1}}
\def\研究課題#1{\def\@研究課題{#1}}
\学科{情報工学科}

\def\研究費目#1{\put(\c@横位置,\c@縦位置){\makebox(22,6)[l]{#1}}
\advance\c@縦位置 by -5}
\def\研究品目#1#2#3{%
\if@基盤的研究\addtocounter{基盤的研究費}{#3}\fi
\if@採択型研究\addtocounter{採択型研究費}{#3}\fi
\addtocounter{研究調査費}{#3}
\put(\c@横位置,\c@縦位置){\makebox(20,6)[r]{\scriptsize #1}}
\advance\c@横位置 by 22
\put(\c@横位置,\c@縦位置){\makebox(9,6)[r]{\scriptsize #2}}
\advance\c@横位置 by 11
\put(\c@横位置,\c@縦位置){\makebox(13,6)[r]{#3}}
\advance\c@縦位置 by -5
\ifnum\value{縦位置} < 74
\advance\c@縦位置 by 75
\advance\c@横位置 by 17
\else
\advance\c@横位置 by -33
\fi}

\long\def\基盤的研究費#1{\def\@基盤的研究費{\@基盤的研究true
\c@縦位置=139 \c@横位置=29 #1 \@基盤的研究false}}

\long\def\採択型研究費#1{\def\@採択型研究費{\@採択型研究true
%\c@縦位置=139 \c@横位置=78 #1 \@採択型研究false}}
\c@縦位置=139 \c@横位置=79 #1 \@採択型研究false}}

\def\研究業績#1{\def\@研究業績{\c@縦位置=51 #1}}
\def\業績#1#2#3#4{%
\put(0,\c@縦位置){\makebox(37,0){#1}}
\put(37,\c@縦位置){\begin{tabular}[t]{p{130mm}}``#2''・#3・#4\end{tabular}}
\advance\c@縦位置 by -10}
\def\行送り{\advance\c@縦位置 by -6}

\long\def\研究目的#1{%
  \def\@研究目的{\begin{minipage}[t]{170mm}%
\parindent=1zw
#1\end{minipage}}}

\long\def\研究計画#1{%
  \def\@研究計画{\begin{minipage}[t]{170mm}%
\parindent=1zw
#1\end{minipage}}}

\def\研究計画１頁{%
\noindent
\begin{picture}(176,270)
\@基盤的研究費
\@採択型研究費

\put(0,267){\makebox(40,3){\small\bf 工学部研究費 様式1--1}}
\put(20,259){\makebox(0,6)[l]{\Large 拓殖大学工学部}}
%\put(74,259){\makebox(0,6){\large (}}
%\put(85,259){\makebox(0,6){\large 教員}}
%\put(98,259){\makebox(0,6){\large ・}}
%\put(111,259){\makebox(0,6){\large 助手}}
%\put(122,259){\makebox(0,6){\large )}}
%\if教員
%\put(85,262){\oval(16,6){}}\else
%\put(111,262){\oval(16,6){}}
%\fi


\put(153,0){\makebox(0,6)[l]{裏面に続く}}
\thinlines
\put(0,229){\makebox(28,7){研 究 者 氏 名}}
\put(0,229){\line(1,0){176}}
\put(28,216){\line(0,1){26}}
\put(0,235){\makebox(28,6){\small フリガナ}}
%\put(79,230){\makebox(0,13){
%   \includegraphics[width=13mm,bb=0 0 283 283]{stamp.jpg}}}
\put(79,234.5){\makebox(0,0){印}}
\put(28,229){\makebox(57,13){\LARGE\@氏名}}
\put(85,229){\line(0,1){13}}
\put(111,229){\line(0,1){13}}
\put(85,229){\makebox(26,13){所属学科等}}
\put(111,229){\makebox(65,13){\large\@学科}}

\put(0,216){\makebox(28,13){研 究 課 題}}
\put(28,216){\makebox(148,13){\@研究課題}}

\put(0,208){\makebox(28,7){研 究 経 費}}
\put(28,208){\makebox(148,7){申 請 お よ び 使 用 の 内 訳}}
\put(0,208){\line(1,0){176}}

\put(0,202){\makebox(28,6){基盤的研究費}}
\put(81,202){\makebox(0,6)[r]{\the基盤的研究費 千円 : a}}
\put(0,202){\line(1,0){176}}

\put(0,155){\makebox(28,47){採択型研究費}}
\put(0,155){\line(1,0){176}}
\put(0,154.5){\line(1,0){176}}
\put(28,155){\line(0,1){60}}

\put(28,195){\line(1,0){148}}
\put(28,189){\line(1,0){148}}
\put(28,183){\line(1,0){148}}
\put(28,177){\line(1,0){148}}
\put(28,176){\line(1,0){148}}
\put(28,170){\line(1,0){148}}

\put(28,195){\makebox(37,7){科研費加算}}
\put(65,195){\makebox(111,7){採択型申請タイプ(A・B・Cから1つ選択)}}
\put(39,177){\line(0,1){18}}
\put(46,170){\line(0,1){25}}
\put(65,155){\line(0,1){47}}
\put(79,170){\line(0,1){25}}
\put(109,177){\line(0,1){18}}

\put(28,189){\makebox(11,6){応募}}
\put(28,183){\makebox(11,6){採択}}
\put(28,177){\makebox(11,6){継続}}
\if科研費応募
\put(42.5,192){\circle{5}}
\advance\c@科研費加算 by 100
\fi
\if科研費採択\put(42.5,186){\circle{5}}
\advance\c@科研費加算 by 150
\fi
\if科研費継続\put(42.5,180){\circle{5}}
\advance\c@科研費加算 by 150
\fi
\put(39,189){\makebox(26,6)[r]{100 千円\ }}
\put(39,183){\makebox(26,6)[r]{150 千円\ }}
\put(39,177){\makebox(26,6)[r]{150 千円\ }}
\put(39,170){\makebox(26,6)[r]{\Number\the科研費加算 千円\ }}

\put(65,189){\makebox(14,6){A}}
\put(65,183){\makebox(14,6){B}}
\put(65,177){\makebox(14,6){C}}

\put(28,170){\makebox(18,6)[r]{\丸数字{1} : }}
\put(65,170){\makebox(14,6)[r]{\丸数字{2} : }}
\put(109,170){\makebox(41,6){\small 合計(\丸数字{1}+\丸数字{2}) :}}

\put(110,189){\makebox(0,6)[l]{\small (500千円以上1000千円未満)}}
\put(110,183){\makebox(0,6)[l]{\small (200千円以上500千円未満)}}
\put(110,177){\makebox(0,6)[l]{\small (200千円未満)}}

\put(67,164){\makebox(0,6)[l]{採択機関：\@他採択機関}}
\put(174,164){\makebox(0,6)[r]{(採択金額 \@他採択金額 千円)}}
\put(67,158){\makebox(0,6)[l]{研究課題： \@他採択課題}}
\put(28,155){\makebox(37,15){\shortstack{\丸数字{3}その他公的\\研究費等}}}


\put(28,74){\line(0,1){80.5}}
\put(76,74){\line(0,1){80.5}}
\put(78,74){\line(0,1){80.5}}
\put(126,74){\line(0,1){76}}
\put(128,74){\line(0,1){76}}
\put(28,150){\line(1,0){148}}
\put(28,145){\line(1,0){148}}
\put(28,79){\line(1,0){48}}

\put(28,150){\makebox(48,5){\small 基盤的研究費}}
\put(50,79){\line(0,1){71}}
\put(61,74){\line(0,1){76}}
\put(61,74){\makebox(15,5)[r]{\the基盤的研究費\ }}

\put(78,150){\makebox(96,5){\small 採択型研究費}}
\put(100,74){\line(0,1){76}}
\put(111,74){\line(0,1){76}}
\put(128,84.5){\line(1,0){48}}
\put(128,79){\line(1,0){48}}
\put(128,79.5){\line(1,0){48}}
\put(161,79.5){\makebox(15,5)[r]{\Number\the採択型研究費\ }}
\put(135,170){\makebox(41,6)[r]{\Number\the採択型研究費 千円 : b \ }}
\put(161,74){\makebox(15,5)[r]{\Number\the研究調査費\ }}
\put(150,84.5){\line(0,1){65.5}}
\put(161,74){\line(0,1){76}}

\put(28,74){\makebox(33,5)[r]{計:a\ }}
\put(128,79.5){\makebox(33,5)[r]{計:b\ }}
\put(128,74){\makebox(33,5)[r]{合計 (a+b) : }}

\put(28,145){\makebox(22,5){\footnotesize\hfill 品\hfill 名\hfill 等\hfill}}
\put(50,145){\makebox(11,5){\footnotesize 数量}}
\put(61,145){\makebox(15,5){\footnotesize\hfill 金\hfill 額\hfill}}
\put(78,145){\makebox(22,5){\footnotesize\hfill 品\hfill 名\hfill 等\hfill}}
\put(100,145){\makebox(11,5){\footnotesize 数量}}
\put(111,145){\makebox(15,5){\footnotesize\hfill 金\hfill 額\hfill}}
\put(128,145){\makebox(22,5){\footnotesize\hfill 品\hfill 名\hfill 等\hfill}}
\put(150,145){\makebox(11,5){\footnotesize 数量}}
\put(161,145){\makebox(15,5){\footnotesize\hfill 金\hfill 額\hfill}}

\put(0,117){\makebox(28,6){\hfill 使\hfill 用\hfill 内\hfill 訳\hfill }}
\put(0,108){\makebox(28,6){\scriptsize (金額の単位は千円)}}
\put(0,74){\line(1,0){176}}
\put(0,64){\line(1,0){176}}
\put(0,64){\makebox(32,10){\Large 研究目的}}
\put(32,64){\makebox(143,10){研究目的，研究(計画)の学術的な
特色について焦点を絞り，具体的かつ明確に記入}}

\put(25,247){\makebox(100,5){\huge\count0=\year\advance\count0
 -2018 令和\,\number\count0\,年度\ \  研究計画申請書}}
\put(148,246){\framebox(25,25){}}
\put(148,265){\line(1,0){25}}
\put(148,265){\makebox(25,6){工学部長}}
\put(3,59){\@研究目的}
\addtocounter{採択型研究費}{-\value{科研費加算}}
\ifnum\value{採択型研究費} < 200
%\if研究費Ａ
\put(72,180){\circle{5}}
\put(76,177){\makebox(33,6)[r]{\Number\the採択型研究費 千円\ }}
\put(76,183){\makebox(33,6)[r]{千円\ }}
\put(76,189){\makebox(33,6)[r]{千円\ }}
\else
\ifnum\value{採択型研究費} < 500
\put(72,186){\circle{5}}
\put(76,183){\makebox(33,6)[r]{\Number\the採択型研究費 千円\ }}
\put(76,189){\makebox(33,6)[r]{千円\ }}
\put(76,177){\makebox(33,6)[r]{千円\ }}
\else
\put(72,192){\circle{5}}
\put(76,189){\makebox(33,6)[r]{\Number\the採択型研究費 千円\ }}
\put(76,177){\makebox(33,6)[r]{千円\ }}
\put(76,183){\makebox(33,6)[r]{千円\ }}
\fi\fi
\put(76,170){\makebox(33,6)[r]{\Number\the採択型研究費 千円\ }}
\linethickness{1pt}
\put(0,6){\framebox(176,236){}}
\put(0,216){\line(1,0){176}}
\put(0,215){\line(1,0){176}}
\put(65,170){\linethickness{2pt}\framebox(44,6){}}
\end{picture}
%\protected@write\@auxout{}
%{\string\newlabel{採択分}{{\protect\Number{\the採択型研究費}}{\the科研費加算}}}
\newpage}

\def\研究計画２頁{
\noindent
\begin{picture}(175,264)
  \put(0,260){\makebox(40,4){\small\bf 工学部研究費 様式1--2}}
\thicklines
\linethickness{1pt}
\put(0,0){\framebox(175,258){}}
\thinlines
\put(0,249){\line(1,0){175}}
\put(0,70){\line(1,0){175}}
\put(0,61){\line(1,0){175}}
\put(0,57){\line(1,0){175}}
\put(37,0){\line(0,1){61}}
\put(0,249){\makebox(50,9){\Large 研究計画・方法}}
\put(50,253){\makebox(115,4)[l]{\small 別添『
\count0=\year\advance\count0
 -2018 令和\,\number\count0\,年度研究費申請に伴なう「研
    究計画書」等の提出について』の}}
  \put(50,249){\makebox(115,4)[l]{\small 「IV.申請書作成上の留意点」の(1)の
    \丸数字{6}を参照の上、記載してください}}
\put(0,61){\makebox(32,9){\Large 研究業績}}
\put(40,61){\makebox(133,9)[l]{前年度、学術誌・学会等に発表した論
文・作品等を記入。}}
\put(0,57){\makebox(37,4){\small 発表年月(西暦)}}
\put(37,57){\makebox(138,4){\small 論文・学会発表等・著者名・学協会誌名
(最初と最後のページ)}}
\@研究業績
\put(3,243){\@研究計画}
\end{picture}}

