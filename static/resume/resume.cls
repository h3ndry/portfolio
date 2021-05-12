\LoadClass[14pt]{extreport}

\usepackage{ifthen}
\usepackage[english]{babel}
\usepackage[utf8x]{inputenc}
\usepackage{geometry}
\usepackage{array}
\usepackage{enumitem}
\usepackage{hyperref}
\usepackage{xltabular}
\usepackage{graphicx}
\usepackage{outlines}

\setlist[itemize]{leftmargin=*}
\linespread{1.15}
\geometry{a4paper,
    left={0.5in},
    top={0.4in}, 
    right={0.5in},
    bottom={0.4in}
}
\newcommand\clink[1]{{\usefont{T1}{cmtt}{m}{n} #1 }}
\pagenumbering{gobble}
\newenvironment{csection}[2]{
    {\fontfamily{pcr}\selectfont \textbf{#1} }
    \vspace{0.15cm} 
    \hrule 
    {#2}
}{}

\newenvironment{frcontent}[4]{
    {
        \textbf{#1} \leavevmode\newline
         	{#2} \leavevmode\newline
        {\textit{#3} } 
        \vspace{0.2cm} \leavevmode\newline 
        {#4} 
    }
}{}
