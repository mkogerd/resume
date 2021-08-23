\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass{article}

\usepackage{enumitem}
\usepackage{fontspec}
\usepackage[margin=.75in]{geometry}
\usepackage{hyperref}
\usepackage{titlesec}

% Formatting
\setmainfont{Carlito}
\setlength{\parindent}{0em} % Remove indentation
\setlist[itemize]{noitemsep} % Remove bullet-point separation
\titleformat{\section}{\Large}{}{0em}{\bfseries\uppercase}[\titlerule] % format sections
\hypersetup{
    colorlinks=true,
    urlcolor=blue,
}

% Setup commands
\newcommand*{\setname}[1]{\newcommand{\@name}{#1}}
\newcommand*{\setemail}[1]{\newcommand{\@email}{#1}}
\newcommand*{\setphone}[1]{\newcommand{\@phone}{#1}}
\newcommand*{\setwebsite}[2]{\newcommand{\@websiteurl}{#1}\newcommand{\@websitename}{#2}}

% View Commands
\newcommand{\websiteview}{\href{\@websiteurl}{\@websitename}}

\newcommand{\resumetitle}{
    \begin{center}
        \textbf{\huge{\@name}} \\
        {\@email} {\textbar} {\@phone} \\
        {\websiteview} \\
    \end{center}
}

\newcommand{\experience}[2]{ % Title, Date
    \textbf{#1\hfill}#2\vspace{-.5em}
}

\newcommand{\accomplishment}[2]{ % Title, Date
    #1 \hfill #2
    
}