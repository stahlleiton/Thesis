%**************************************************************************************************************%
\RequirePackage[l2tabu]{nag}		% Warns for incorrect (obsolete) LaTeX usage
% The style is based on Memoir class which loads useful packages by default (see manual).
\LoadClass[a4paper,12pt,leqno,openbib]{memoir}
%---------------------------------------------------------------------------------------------------------------------------------%


%**************************************************************************************************************%
%%Used packages
\usepackage{datetime}
\usepackage{fouriernc}
\usepackage[T1]{fontenc}
\usepackage{slashbox}
\usepackage{rotating}
\usepackage{chngcntr}
\usepackage{epigraph}
\usepackage{calc,soul,fourier}
\usepackage{multirow}
\usepackage[table]{xcolor}
\usepackage{import}
\usepackage{wrapfig}
\usepackage{geometry}
\usepackage{lipsum}						%Needed to create dummy text
\usepackage{amsfonts} 					%Calls Amer. Math. Soc. (AMS) fonts
\usepackage[centertags]{amsmath}			%Writes maths centred down
\usepackage{stmaryrd}					%New AMS symbols
\usepackage{amssymb}					%Calls AMS symbols
\usepackage{amsthm}					%Calls AMS theorem environment
\usepackage{newlfont}					%Helpful package for fonts and symbols
\usepackage{layouts}					%Layout diagrams
\usepackage{graphicx}					%Calls figure environment
\usepackage{fontawesome}
\usepackage{longtable}					%Long tab environments including rotation.
\usepackage[applemac]{inputenc}			%Needed to encode non-english character				
\usepackage{wasysym}					%More math symbols
\usepackage{mathrsfs}					%Even more math symbols
\usepackage{verbatim}					%Permits pre-formated text insertion
\usepackage{upgreek }					%Calls other kind of greek alphabet
\usepackage{latexsym}					%Extra symbols
\usepackage[square,numbers,sort&compress]{natbib} %Calls bibliography commands
\usepackage{url}						%Supports url commands
\usepackage{etex}						%eTeXÃs extended support for counters
\usepackage{fixltx2e}					%Eliminates some in felicities of the
\usepackage[main=english]{babel}			%For languages characters and hyphenation
\usepackage{color}                    			%Creates coloured text and background
\usepackage[colorlinks=true,allcolors=black,pagebackref=true]{hyperref}    %Creates hyperlinks in cross references
\usepackage{memhfixc}					%Must be used on memoir document
\usepackage{enumerate}					%For enumeration counter
\usepackage{tocbibind}
\usepackage{minitoc}
\usepackage{footnote}					%For footnotes
\usepackage{microtype}					%Makes pdf look better.
\usepackage{booktabs} 
\usepackage{colortbl} 
\usepackage{xcolor} 
\usepackage{xfrac}
\usepackage{pdfpages}									%figures, etc.
\usepackage{alltt}						%LaTeX commands are not disabled in
									%verbatim-like environment
\usepackage[version=0.96]{pgf}			
\usepackage{tikz}						%geometric/algebraic description.
\usetikzlibrary{arrows,shapes,snakes,
		       automata,backgrounds,
		       petri,topaths}				%To use diverse features from tikz
%
\usepackage{lettrine}
%---------------------------------------------------------------------------------------------------------------------------------%


%**************************************************************************************************************%
%%Default geometry (assuming A4 paper)
\settrimmedsize{297mm}{210mm}{*}
\setlength{\trimtop}{0pt}
\setlength{\trimedge}{\stockwidth}
\addtolength{\trimedge}{-\paperwidth}
\settypeblocksize{634pt}{448.13pt}{*}
\setulmargins{4cm}{*}{*}
\setlrmargins{*}{*}{1.5}
\setmarginnotes{17pt}{51pt}{\onelineskip}
\setheadfoot{\onelineskip}{2\onelineskip}
\setheaderspaces{*}{2\onelineskip}{*}
\checkandfixthelayout
%Reduce widows  (the last line of a  at the start of a page) and orphans
% (the first line of paragraph at the end of a page)
\widowpenalty=1000
\clubpenalty=1000

%---------------------------------------------------------------------------------------------------------------------------------%

%**************************************************************************************************************%
%Fonts and other customisations
\frenchspacing
\OnehalfSpacing
\newcommand{\coloredBullet}[1]{\strut\textcolor{#1}{\large\rmfamily\textbullet}}
%Sets numbering division level
\setsecnumdepth{subsection}
\maxsecnumdepth{subsubsection}

% The pages are numbered consecutively at the bottom centre of the page.
\makepagestyle{myvf}
\makeoddfoot{myvf}{}{\thepage}{}
\makeevenfoot{myvf}{}{\thepage}{}
\makeheadrule{myvf}{\textwidth}{\normalrulethickness}
\makeevenhead{myvf}{\small\textsc{\leftmark}}{}{}
\makeoddhead{myvf}{}{}{\small\textsc{\rightmark}}
\pagestyle{myvf}
\newcommand{\clearemptydoublepage}{\newpage{\thispagestyle{empty}\cleardoublepage}}
%---------------------------------------------------------------------------------------------------------------------------------%


%**************************************************************************************************************%
%%Style for the chapter titles and numbers
\makeatletter
\newlength\dlf@normtxtw
\setlength\dlf@normtxtw{\textwidth}
\newsavebox{\feline@chapter}
\newcommand\feline@chapter@marker[1][4cm]{%
	\sbox\feline@chapter{%
		\resizebox{!}{#1}{\fboxsep=1pt%
			\colorbox{gray}{\color{white}\thechapter}%
		}}%
		\rotatebox{90}{%
			\resizebox{%
				\heightof{\usebox{\feline@chapter}}+\depthof{\usebox{\feline@chapter}}}%
			{!}{\scshape\so\@chapapp}}\quad%
		\raisebox{\depthof{\usebox{\feline@chapter}}}{\usebox{\feline@chapter}}%
}
\newcommand\feline@chm[1][4cm]{%
	\sbox\feline@chapter{\feline@chapter@marker[#1]}%
	\makebox[0pt][c]{% aka \rlap
		\makebox[1cm][r]{\usebox\feline@chapter}%
	}}
\makechapterstyle{daleifmodif}{
	\renewcommand\chapnamefont{\normalfont\Large\scshape\raggedleft\so}
	\renewcommand\chaptitlefont{\normalfont\Large\bfseries\scshape}
	\renewcommand\chapternamenum{} \renewcommand\printchaptername{}
	\renewcommand\printchapternum{\null\hfill\feline@chm[2.5cm]\par}
	\renewcommand\afterchapternum{\par\vskip\midchapskip}
	\renewcommand\printchaptertitle[1]{\color{gray}\chaptitlefont\raggedleft ##1\par}
}
\makeatother
\chapterstyle{daleifmodif}

%%%Large first letter in the chapter
\newcommand{\initial}[1]{%
	\lettrine[lines=3,lhang=0.33,nindent=0em]{
		\color{gray}
     		{\textsc{#1}}}{}}
%---------------------------------------------------------------------------------------------------------------------------------%


%**************************************************************************************************************%
% Creates indexes for Table of Contents, List of Figures, List of Tables and Index
\newcommand{\myparagraph}[1]{\paragraph{#1}\mbox{}\\}
\newcommand{\mysubparagraph}[1]{\subparagraph{#1}\mbox{}\\}
\makeindex
%---------------------------------------------------------------------------------------------------------------------------------%


%**************************************************************************************************************%
%%Create hyperlinks in cross references (get back to page) [pdflatex+bibtex+pdflatex+pdflatex+pdflatex compilations are resuired]
\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{[{\color{blue}%
    \ifcase #1 Not cited.%
          \or Cited on page~#2.%
          \else Cited on pages #2.%
    \fi%
    }]}
%---------------------------------------------------------------------------------------------------------------------------------%


\endinput



