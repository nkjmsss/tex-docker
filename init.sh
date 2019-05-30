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
    basicstyle={\ttfamily},
    identifierstyle={\small},
    commentstyle={\smallitshape},
    keywordstyle={\small\bfseries},
    ndkeywordstyle={\small},
    stringstyle={\small\ttfamily},
    frame={tb},
    breaklines=true,
    columns=[l]{fullflexible},
    numbers=left,
    xrightmargin=0zw,
    xleftmargin=3zw,
    numberstyle={\scriptsize},
    stepnumber=1,
    numbersep=1zw,
    lineskip=-0.5ex
}
\renewcommand{\lstlistingname}{プログラム}
\title{\huge title}
\author{author}
\date{date}

\begin{document}
\maketitle
\end{document}
EOF
