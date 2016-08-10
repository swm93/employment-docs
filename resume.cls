\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
\LoadClass[10pt]{article}

\RequirePackage{array}
\RequirePackage{changepage}
\RequirePackage[margin={2cm}]{geometry}
\RequirePackage{hyperref}
\RequirePackage{xstring}



% ENVIRONMENTS
\renewenvironment{header}
{
	\noindent\hspace*{-0.275cm}
	\begin{tabular}{!{\hskip \tabcolsep \vrule width 0.35pt \hskip \tabcolsep} l}
	\\
}
{
  	\end{tabular}
    \vspace*{+0.25cm}
}

\renewenvironment{section}[1]
{
	\vspace*{+0.5cm}
	\Large{\textbf{#1}}
	\vspace*{+0.25cm}
	\begin{adjustwidth}{0.4cm}{0.0cm}
	\begin{normalsize}
}
{
	\end{normalsize}
	\end{adjustwidth}
}

\renewenvironment{subsection}[2]
{
	\begin{adjustwidth}{-0.4cm}{0.0cm}
	\large{#1} \hfill \normalsize{#2}
	\end{adjustwidth}
	\vspace*{+0.1cm}
}
{
	\vspace*{+0.15cm}
}


% COMMANDS
\newcommand{\divider}{\ \ \textbar\ \ }

\newcommand{\name}[1]{\LARGE{\textbf{\uppercase{#1}}}}
\newcommand{\address}[1]{\StrSubstitute{#1}{ }{+}[\temp]\href{http://maps.google.com/maps/place/\temp}{#1}}
\newcommand{\contact}[3]{#1\divider\href{mailto:#2}{#2}\divider\url{#3}}


% DOCUMENT SETUP
% disable auto indent
\newlength\tindent
\setlength{\tindent}{\parindent}
\setlength{\parindent}{0pt}
\renewcommand{\indent}{\hspace*{\tindent}}

