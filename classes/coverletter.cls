\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}
\LoadClass[10pt]{article}

\RequirePackage{changepage}
\RequirePackage{graphicx}
\RequirePackage[margin={2cm}]{geometry}
\RequirePackage{hyperref}
\RequirePackage{xstring}



% ENVIRONMENTS
\renewenvironment{header}
{
	\begin{tabular*}{\textwidth}{@{}l@{} @{\extracolsep{\fill}} @{}r@{}}
}
{
    \\
  	\end{tabular*}
    \vspace*{+0.25cm}
}

\renewenvironment{body}
{
    \vspace*{+0.5cm}
	\begin{adjustwidth}{0.4cm}{0.4cm}
	\begin{normalsize}
}
{
	\end{normalsize}
	\end{adjustwidth}
}


% COMMANDS
\newcommand{\divider}{\ \ \textbar\ \ }
\newcommand{\multilinecell}[3][c]{\begin{tabular}[#1]{@{}#2@{}}#3\end{tabular}}

\newcommand{\name}[1]{\textbf{\uppercase{#1}}}
\newcommand{\company}[1]{\textbf{\uppercase{#1}}}
\newcommand{\address}[2]{#1\\#2}
\newcommand{\phone}[1]{#1}
\newcommand{\email}[1]{\href{mailto:#1}{#1}}
\newcommand{\position}[1]{RE: #1}
\newcommand{\signature}[1]{\includegraphics[scale=0.1]{#1}}


% DOCUMENT SETUP
% disable auto indent
\newlength\tindent
\setlength{\tindent}{\parindent}
\setlength{\parindent}{0pt}
\renewcommand{\indent}{\hspace*{\tindent}}

