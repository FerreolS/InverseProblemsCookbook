%% Inspired by Martin Helsø uioposter theme
%% https://github.com/martinhelso/uioposter
%% 
%      Copyright (C) Ferréol Soulez, 2020 
%      ferreol.soulez@univ-lyon1.fr
%
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
%
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
%
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
%% Ferréol Soulez, 2020


\NeedsTeXFormat{LaTeX2e}


\ProvidesClass{cookbook}


\DeclareOption{english}{\def\cookbook@lang{english}}
\DeclareOption{french}
{
    \def\cookbook@lang{french}
    \pretolerance = 2000
    \tolerance    = 6000
    \hbadness     = 6000
}


\DeclareOption{portrait}
{
    \PassOptionsToPackage{orientation = portrait}{beamerposter}
    \def\cookbook@orientation{}
}
\DeclareOption{landscape}
{
    \PassOptionsToPackage{orientation = landscape}{beamerposter}
    \def\cookbook@orientation{landscape}
}


\DeclareOption{a0paper}{\def\cookbook@size{a0paper}}
\DeclareOption{a1paper}{\def\cookbook@size{a1paper}}
\DeclareOption{a2paper}{\def\cookbook@size{a2paper}}
\DeclareOption{a3paper}{\def\cookbook@size{a3paper}}
\DeclareOption{a4paper}{\def\cookbook@size{a4paper}}
\DeclareOption{a5paper}{\def\cookbook@size{a5paper}}
\DeclareOption{a6paper}{\def\cookbook@size{a6paper}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}


\ExecuteOptions{a0paper}
\ExecuteOptions{english}
\ExecuteOptions{portrait}
\ProcessOptions
\relax


\LoadClass[t]{beamer}


\RequirePackage[size = a0, scale = 1.5]{beamerposter}
\RequirePackage{etoolbox}
\RequirePackage{pgfpages}
\RequirePackage[T1]{fontenc}
\RequirePackage{calc}
\RequirePackage[final]{microtype}
\RequirePackage{lmodern}
\RequirePackage[scaled]{beramono}

%\RequirePackage[utf8]{inputenx}


\hypersetup{colorlinks,
            urlcolor  = link,
            linkcolor =,
            citecolor =,
            filecolor =}
\renewcommand{\sfdefault}{phv}
\DeclareFontShape{OMX}{cmex}{m}{n}
{
    <-7.5>    cmex7
    <7.5-8.5> cmex8
    <8.5-9.5> cmex9
    <9.5->    cmex10
}{}
\SetSymbolFont{largesymbols}{normal}{OMX}{cmex}{m}{n}
\SetSymbolFont{largesymbols}{bold}  {OMX}{cmex}{m}{n}
\setlength{\marginparwidth}{2cm}
\setlength{\emergencystretch}{1em}
\frenchspacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usefonttheme{serif}
\useinnertheme{rectangles}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption label separator}{: }
\setbeamertemplate{qed symbol}{\(\blacksquare\)}
\setbeamertemplate{itemize items}{\color{itemize item.fg}\(\blacksquare\)}


\setlength{\labelsep}{3ex}
\setlength{\leftmargini}{18ex}
\setbeamersize{text margin left = 3cm, text margin right = 3cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{red}{cmyk}{0, 1, 1, 0}
\definecolor{white}{cmyk}{0, 0, 0, 0}
\definecolor{black}{cmyk}{0, 0, 0, 1}
\definecolor{header}{cmyk}{0, 0, 0, 0.6}
\definecolor{background}{cmyk}{0, 0, 0, 0.1}
\definecolor{link}{HTML}{0B5A9D}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamercolor{structure}{fg = header}
\setbeamercolor{alerted text}{fg = red}
\setbeamercolor{background canvas}{fg = black, bg = background}
\setbeamercolor{headline}{fg = white, bg = black}
\setbeamercolor{title in headline}{fg = white}
\setbeamercolor{author in headline}{fg = white}
\setbeamercolor{footline}{fg = white, bg = black}


\setbeamercolor{block title}{fg = white, bg = structure}
\setbeamercolor{block title example}{fg = white, bg = black}
\setbeamercolor{block title alerted}{fg = white, bg = red}


\setbeamercolor{block body} {fg = black, bg = white}
\setbeamercolor{block body example} {fg = black, bg = white}
\setbeamercolor{block body alerted} {fg = black, bg = white}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamerfont{title in headline}{family = \sffamily,
                                  series = \bfseries,
                                  size   = \veryHuge}
\setbeamerfont{author in headline}{family = \sffamily,
                                   series = \bfseries,
                                   size   = \Large}
\setbeamerfont{institute}{family = \sffamily,
                          series = \mdseries,
                          size   = \normalsize}


\setbeamerfont{block title}{family = \sffamily,
                            series = \bfseries,
                            size   = \large}
\setbeamerfont{block title alerted}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}
\setbeamerfont{block title example}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}


\setbeamerfont{block body}{family = \rmfamily,
                           series = \normalfont,
                           size   = \normalsize}
\setbeamerfont{block body example}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}
\setbeamerfont{block body alerted}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}


\setbeamerfont{item projected}{family = \sffamily,
                               series = \bfseries,
                               size   = \small}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{headline}
{
    \begin{beamercolorbox}[wd = \paperwidth,
                           leftskip  = 3cm,
                           rightskip = 3cm plus 20cm]{headline}
        \vskip-0.5cm
        \usebeamerfont{title in headline}
        \usebeamercolor{title in headline}
        \color{fg}
        \vskip0ex
        \hskip-0.05ex
        \inserttitle
        \vskip0.5ex
        \usebeamerfont{author in headline}
        \usebeamercolor{author in headline}
        \color{fg}
        \hskip-0.05ex
        \insertauthor
        \ifdefempty{\insertinstitute}{}
        {
            \vskip1ex
            \usebeamerfont{institute}
            \def\beamer@andinst{\quad}
            \insertinstitute
        }
    \vskip1ex
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{footline}
{
    \leavevmode
    \begin{beamercolorbox}[wd = \paperwidth]{footline}
        \vskip1ex
        \hskip4.1cm
        \vskip1ex
    \end{beamercolorbox}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block begin}
{
    \setbeamercolor{itemize item}  {fg = block title.bg}
    \setbeamercolor{item projected}{fg = block title.fg,
                                    bg = block title.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title}

        \usebeamerfont*{block title}
        \insertblocktitle
        
    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body}

        \usebeamerfont{block body}
        \vskip1ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block end}
{
        \end{minipage}
    \vskip0.ex
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block example begin}
{
    \setbeamercolor{itemize item}  {fg = block title example.bg}
    \setbeamercolor{item projected}{fg = block title example.fg,
                                    bg = block title example.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title example}

        \usebeamerfont*{block title example}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body example}

        \usebeamerfont{block example body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block example end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block alerted begin}
{
    \setbeamercolor{itemize item}  {fg = block title alerted.bg}
    \setbeamercolor{item projected}{fg = block title alerted.fg,
                                    bg = block title alerted.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title alerted}

        \usebeamerfont*{block title alerted}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body alerted}

        \usebeamerfont{block body alerted}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block alerted end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\enumitem}[1]
{
    \leavevmode\unskip
    \hbox
    {%
        \usebeamerfont*{item projected}%
        \usebeamercolor[bg]{item projected}%
        \vrule width2.25ex height1.85ex depth.4ex%
        \hskip-2.25ex%
        \hbox to2.25ex
        {%
            \hfil%
            \color{fg}#1%
            \hfil
        }%
    }%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pgfpagesdeclarelayout{resize and center}
{
    \def\pgfpageoptionborder{0pt}
}
{
    \pgfpagesphysicalpageoptions
    {
        logical pages   = 1,
        physical height = \pgfpageoptionheight,
        physical width  = \pgfpageoptionwidth
    }
    \pgfpageslogicalpageoptions{1}
    {
        resized width  = \pgfphysicalwidth,
        resized height = \pgfphysicalheight,
        border shrink  = \pgfpageoptionborder,
        center         = \pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}
    }
}


\ifdefstring{\cookbook@size}{a0paper}{}
{
   \pgfpagesuselayout{resize and center}[\cookbook@orientation,\cookbook@size]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput