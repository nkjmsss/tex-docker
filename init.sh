#!/bin/sh

cat <<EOF > main.tex
\documentclass[uplatex, dvipdfmx]{jsarticle}
\usepackage[top=25truemm,bottom=25truemm,left=25truemm,right=25truemm]{geometry}
\usepackage[dvipdfmx]{color}
\usepackage[dvipdfmx]{graphicx}
\graphicspath{{./img/}}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{nccmath}
\usepackage{ascmac}
\usepackage{tikz}
\usepackage{here}
% コードの表示
\usepackage{listings}
\lstset{
    basicstyle = {\ttfamily\scriptsize},
    breaklines = true,
    columns=[l]{fullflexible},
    commentstyle = {\itshape \color[cmyk]{1,0.4,1,0}},
    frame={tb},
    keywordstyle = {\bfseries \color[cmyk]{0,1,0,0}},
    numbers=left,
    numbersep=1zw,
    numberstyle = {\tiny},
    stepnumber=1,
    stringstyle = {\ttfamily \color[cmyk]{0,0.6,1,0}},
    tabsize = 4,
    xleftmargin=3zw,
    xrightmargin=0zw,
}
\renewcommand{\lstlistingname}{プログラム}
\title{\huge title}
\author{author}
\date{date}

\begin{document}
\maketitle
\end{document}
EOF