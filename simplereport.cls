\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplereport}[2019/11/07 LaTeX class for simple reports]

\LoadClass[a4paper]{article}

\newif\if@defaultpackages\@defaultpackagesfalse
\DeclareOption{defaultpackages}{\@defaultpackagestrue}
\newif\if@defaultbibliography\@defaultbibliographyfalse
\DeclareOption{bib}{\@defaultbibliographytrue}
\DeclareOption{inf2200}{%
	\def\courseCode{INF-2200}
	\def\course{Computer Architecture and Organization}
}
\DeclareOption{inf1101}{%
	\def\courseCode{INF-1101}
	\def\course{Datastrukturer og Algoritmer}
}
\DeclareOption{inf1400}{%
	\def\courseCode{INF-1400}
	\def\course{Object Oriented Programming}
}
\DeclareOption{inf1100}{%
	\def\courseCode{INF-1100}
	\def\course{Introduction to Programming and Computer Behavior}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{etoolbox}

\ifdef{\course}{}{\ClassError{simplereport}{Course not added}{You need to add a course.
		This is a class option, add square bracets after documentclass, 
		and choose between inf1100, inf1101, inf1400 and inf2200}}

\pagenumbering{arabic}

\RequirePackage{sectsty} % This is to get section and title style
\RequirePackage{fancyhdr} % This should be set AFTER setting up the page geometry
% This is for pagestyle

\if@defaultpackages
\ClassInfo{simplereport}{Loading of default packages}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage{mathtools}
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage{array} % for better arrays (eg matrices) in maths
\RequirePackage{paralist} % very flexible & customisable lists (eg. enumerate/itemize, etc.)
\RequirePackage{verbatim} % adds environment for commenting out blocks of text & for better verbatim
\RequirePackage{subfig} % make it possible to include more than one captioned figure/table in a single float
\fi

\allsectionsfont{\sffamily\mdseries\upshape}

\setlength{\topmargin}{-3mm}
\setlength{\oddsidemargin}{0mm}
\setlength{\textwidth}{15.7cm}
\setlength{\textheight}{22.0cm}

\pagestyle{fancyplain}

\RequirePackage{lastpage} % to get the correct numbering of the last page

\renewcommand{\normalsize}{\fontsize{10}{12}\selectfont}

\renewcommand{\headrulewidth}{1pt} % customise the layout...
\renewcommand{\footrulewidth}{0pt}
\lhead{\fancyplain{}{\courseCode: \@title}}\chead{}\rhead{\fancyplain{}{\@author{}}}
\lfoot{}\cfoot{Page {\thepage} of~\pageref{LastPage}}\rfoot{}

\renewcommand{\maketitle}{%
	\begin{center}
	\textsc{\Large \courseCode: \course}\\[0.5cm]

	\textsc{\LARGE \@title}\\[1.0cm]

	\LARGE{\@author} \\[0.5cm]

	{\large \today}
\end{center}
}

\if@defaultbibliography
\RequirePackage[backend=biber]{biblatex}
\AtEndDocument{%
	\lfoot{}\cfoot{}\rfoot{}
	\printbibliography{}
	\ClassInfo{simplereport}{Remember to add a bibliography with addbibresource}
}
\fi

\endinput
