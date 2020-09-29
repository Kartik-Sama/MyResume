% Intro Options
\ProvidesClass{rahulworld-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{blindtext}
\usepackage{lipsum}
\usepackage{amsmath}


% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{000002}
% \definecolor{headings}{HTML}{0000ff}
\definecolor{subheadings}{HTML}{333333}
\definecolor{smcolor}{HTML}{333333}
\definecolor{hr}{RGB}{51, 204, 204}
\definecolor{main}{RGB}{15,163,208}
\definecolor{subs}{RGB}{105,111,112}
\usepackage{fontspec}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/calibri/]{Calibri}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 \normalfont}

\newcommand{\lat}{\selectlanguage{english}}

% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{main}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{24pt}{12pt}\selectfont\vspace{10pt}\raggedright {#1} \normalfont}

\newcommand{\sublines}[1]{\color{liners} \textit{#1}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{15pt}{8pt}\selectfont\vspace{8pt}\raggedright {#1}
    \normalfont
}

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{main}
\fontspec{Comic Sans MS}\fontsize{14pt}{20pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% % Small font
% \titleformat{\smallsection}{\color{subs}
% \fontspec[Path = fonts/calibri/]{CALIBRIB}]{\fontsize{8pt}{8pt}\selectfont\bfseries {#1}}{}{0em}{}
% \titlespacing{\smallsubsection}{0pt}{\parskip}{-\parskip}

% Subeadings command
\titleformat{\subsection}{\color{hr}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{13pt}{13pt}\selectfont\bfseries }{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{hr}\raggedright\scshape\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
