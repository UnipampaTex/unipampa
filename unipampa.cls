%%
%% Customização do abnTex2 (http://abnTex2.googlecode.com) 
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is: 
%%      Patrick Rogger Garcia, patrick_rooger@hotmail.com
%%      Vinicius Abreu de Oliveira, viniciusoliveira@unipampa.edu.br
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

%%  Classe customizada para trabalhos acadêmicos da UNIVERSIDADE FEDERAL DO PAMPA
%%
%%  A classe usa como base a 4ª edição (2016) da norma da UNIPAMPA
%%  disponivel em: <http://porteiras.r.unipampa.edu.br/portais/sisbi/files/2017/09/manual-de-normalizacao-2016.pdf>
%%
%%  Releases:
%%  v1.0 - 18/10/2018:
%%          Criação da classe unipampa.cls
%%          Modificações do Original:
%%              Capa, Contra capa, folha de rosto, ficha catalografia, folha de aprovação
%%              estaçamento do primeiro paragrafo, sumario, listas (figura, abreviaturas, tabelas),
%%              estilo dos capitulos, dedicatiria, agradecimentos, resumo, abstract
%%          Criado de novo:
%%              \autortrabalho{Sobrenome}{Nome}; \curso{curso}, \imprimircurso; \cutter{cutter}; \defesa{texto},
%%              \areadeconcentracao{area}; \chaveA-J{chave}, \keywordA-J{keyword}; \imprimirpalavraschavesR,
%%              \imprimirpalavraschavesA, \imprimirchaves; \titulacaoorientador{titulo};
%%              \membroA-B{titulo}{NOME}{INstituicao};


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unipampa}[2018/09/17 v1.0 Modelo Modificado da Universidade Federal do Pampa baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

\usepackage{lastpage}
\usepackage{hyperref}
\usepackage[utf8]{inputenc} 


% Edicao dos capitulos ================================================================
\renewcommand{\ABNTEXchapterfont}{\fontseries{b}}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXsectionfont}{\fontseries{b}}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\fontseries{b}}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\fontseries{b}}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\fontseries{b}}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

\addto\captionsbrazil{
\renewcommand{\listfigurename}{Lista de Figuras}
}

\setlength{\parindent}{1.3cm}
\setlength\afterchapskip{\baselineskip}
\setlength{\parskip}{0.0cm}
\setlength{\onelineskip}{0.2cm}






\usepackage{indentfirst}          % primeira paragrafo identado
\hypersetup{colorlinks=false,     % Retira o retangulo vermelho nos hyperlinks
pdfborder={0 0 0},}               %
\setlength{\ABNTEXsignwidth}{12cm}
% =================================================================================


% novos comando para o preambulo
% \autortrabalho{Sobrenome}{Nome}
\newcommand{\autortrabalho}[2]{\gdef\@autorlast{#1} \gdef\@autorname{#2}}
\newcommand{\curso}[1]{\gdef\@curso{#1}}        % Curso
\newcommand{\imprimircurso}{\@curso}
\newcommand{\cutter}[1]{\gdef\@cutter{#1}}     % Cutter
\newcommand{\areadeconcentracao}[1]{\gdef\@areadeconcentracao{#1}}
\newcommand{\defesa}[1]{\gdef\@defesa{#1}}

\instituicao{UNIVERSIDADE FEDERAL DO PAMPA}

% Criação de variaveis =================================================================
% ======================================================================================

% Palavras chaves (portugues)
\newcommand{\chaveA}[1]{\gdef\@chaveA{#1}} \chaveA{}
\newcommand{\chaveB}[1]{\gdef\@chaveB{#1}} \chaveB{}
\newcommand{\chaveC}[1]{\gdef\@chaveC{#1}} \chaveC{}
\newcommand{\chaveD}[1]{\gdef\@chaveD{#1}} \chaveD{}
\newcommand{\chaveE}[1]{\gdef\@chaveE{#1}} \chaveE{}
\newcommand{\chaveF}[1]{\gdef\@chaveF{#1}} \chaveF{}
\newcommand{\chaveG}[1]{\gdef\@chaveG{#1}} \chaveG{}
\newcommand{\chaveH}[1]{\gdef\@chaveH{#1}} \chaveH{}
\newcommand{\chaveI}[1]{\gdef\@chaveI{#1}} \chaveI{}
\newcommand{\chaveJ}[1]{\gdef\@chaveJ{#1}} \chaveJ{}

% Imprime as palavras chaves
\newcommand{\imprimirpalavraschaves}{%
        \abntex@ifnotempty{\@chaveA}{1. \@chaveA. }%
        \abntex@ifnotempty{\@chaveB}{2. \@chaveB. }%
        \abntex@ifnotempty{\@chaveC}{3. \@chaveC. }
        \abntex@ifnotempty{\@chaveD}{4. \@chaveD. }%
        \abntex@ifnotempty{\@chaveE}{5. \@chaveE. }%
        \abntex@ifnotempty{\@chaveF}{6. \@chaveF. }%
        \abntex@ifnotempty{\@chaveG}{7. \@chaveG. }%
        \abntex@ifnotempty{\@chaveH}{8. \@chaveH. }%
        \abntex@ifnotempty{\@chaveI}{9. \@chaveI. }%
        \abntex@ifnotempty{\@chaveJ}{10. \@chaveJ. }}
% Imprime as palavras chaves
\newcommand{\imprimirpalavraschavesR}{%
        \abntex@ifnotempty{\@chaveA}{\@chaveA. }%
        \abntex@ifnotempty{\@chaveB}{\@chaveB. }%
        \abntex@ifnotempty{\@chaveC}{\@chaveC. }
        \abntex@ifnotempty{\@chaveD}{\@chaveD. }%
        \abntex@ifnotempty{\@chaveE}{\@chaveE. }%
        \abntex@ifnotempty{\@chaveF}{\@chaveF. }%
        \abntex@ifnotempty{\@chaveG}{\@chaveG. }%
        \abntex@ifnotempty{\@chaveH}{\@chaveH. }%
        \abntex@ifnotempty{\@chaveI}{\@chaveI. }%
        \abntex@ifnotempty{\@chaveJ}{\@chaveJ. }}

% Palavras chaves (portugues)
\newcommand{\keywordA}[1]{\gdef\@keywordA{#1}} \keywordA{}
\newcommand{\keywordB}[1]{\gdef\@keywordB{#1}} \keywordB{}
\newcommand{\keywordC}[1]{\gdef\@keywordC{#1}} \keywordC{}
\newcommand{\keywordD}[1]{\gdef\@keywordD{#1}} \keywordD{}
\newcommand{\keywordE}[1]{\gdef\@keywordE{#1}} \keywordE{}
\newcommand{\keywordF}[1]{\gdef\@keywordF{#1}} \keywordF{}
\newcommand{\keywordG}[1]{\gdef\@keywordG{#1}} \keywordG{}
\newcommand{\keywordH}[1]{\gdef\@keywordH{#1}} \keywordH{}
\newcommand{\keywordI}[1]{\gdef\@keywordI{#1}} \keywordI{}
\newcommand{\keywordJ}[1]{\gdef\@keywordJ{#1}} \keywordJ{}

\newcommand{\imprimirpalavraschavesA}{%
        \abntex@ifnotempty{\@keywordA}{\@keywordA. }%
        \abntex@ifnotempty{\@keywordB}{\@keywordB. }%
        \abntex@ifnotempty{\@keywordC}{\@keywordC. }
        \abntex@ifnotempty{\@keywordD}{\@keywordD. }%
        \abntex@ifnotempty{\@keywordE}{\@keywordE. }%
        \abntex@ifnotempty{\@keywordF}{\@keywordF. }%
        \abntex@ifnotempty{\@keywordG}{\@keywordG. }%
        \abntex@ifnotempty{\@keywordH}{\@keywordH. }%
        \abntex@ifnotempty{\@keywordI}{\@keywordI. }%
        \abntex@ifnotempty{\@keywordJ}{\@keywordJ. }}
      
% ========================================================================================       
        
% Banca
\newcommand{\titulacaoorientador}[1]{\gdef\@titulacaoorientador{#1}}
\titulacaoorientador{}
\newcommand{\membroA}[3]{\gdef\@tituloA{#1} \gdef\@nomeA{#2} \gdef\@instituicaoA{#3}}
\membroA{}{}{}
\newcommand{\membroB}[3]{\gdef\@tituloB{#1} \gdef\@nomeB{#2} \gdef\@instituicaoB{#3}}
\membroB{}{}{}
% ========================================================================================



% Configuração da Capa
% ======================================================================
\renewcommand{\imprimircapa}{%
    \begin{capa}%
            \center
            \textbf{UNIVERSIDADE FEDERAL DO PAMPA   % Imprime o nome da unipampa
            \\
            \vspace*{6cm}                           % Distancia entre o nome da faculdade e o nome do autor
            \MakeUppercase{\@author}                % Imprime o nome do AUTOR
            \\
            \vspace*{4cm}                           % Distancia entre o nome e o titulo
            \MakeUppercase{\imprimirtitulo}         % Imprime o TÍTULO
            \\
            \vfill
            \imprimirlocal                          % Imprime o LOCAL
            \\
            \the\year}                              % Imprime o ANO
            \vspace*{1cm}                           % Distancia do ano e margem inferior
    \end{capa}
} % FIM DAS CONFIGURAÇÕES DA CAPA
% ======================================================================



% Configuração folha de rosto
% ======================================================================
\renewcommand{\folhaderostocontent}{%
    \begin{center}
        \vspace*{1cm}                            % Distancia entre a margem e o nome do autor
        \textbf{\MakeUppercase{\@author}}        % Imprime o nome do autor
        \\
        \vspace*{4cm}                            % Distancia entre o nome e o titulo       
        \textbf{\MakeUppercase{\imprimirtitulo}} % Imprime o titulo
        \vspace*{2cm}                            % Distancia entre o titulo e o preambulo
        \\  
        {\hspace{.45\textwidth}                  % Tamanho do preambulo em porcentagem
        \begin{minipage}{.50\textwidth}          %        ____________________________________________________
                                                 %  margem|<------------------45%----------------->|preambulo| |margem
                                                 %  margem|         |preambulo <--50%--> do tamanho da pagina| |margem
                                                 
         \imprimirpreambulo                      % Imprime o preambulo
         \SingleSpacing
         \imprimirorientadorRotulo: \imprimirorientador % Imprime o orientador
         \SingleSpacing
         \abntex@ifnotempty{\imprimircoorientadorRotulo}{\imprimircoorientadorRotulo: \imprimircoorientador} % Coorentador
        \end{minipage}}
        \vfill
        \textbf{\imprimirlocal              % Imprime o LOCAL
        \\
        \the\year}                          % Imprime o ANO
        \vspace*{1cm}                       % Distancia entre o ano e a margem inferior
    \end{center}
} % FIM DAS CONFIGURAÇÕES DA FOLHA DE ROSTO 
%============================================================================================


% Ficha Catalografica
%============================================================================================
\newcommand{\imprimirfichacatalografica}{%
\begin{fichacatalografica}
\begin{center}
\vspace*{16cm}                                      % Distancia da ficha catolografica e a margem superior
\framebox[12.5cm]{\begin{minipage}[c]{12.5cm}
\begin{tabular}{p{1cm}p{10.5cm}}
         &                                                         \\
\@cutter & \@autorlast, \@autorname                                \\
         & \qquad \imprimirtitulo{} / \imprimirautor. -- \the\year.\\
         & \qquad \pageref{LastPage}p. : il.                       \\
         &                                                         \\
         & \qquad \imprimirtipotrabalho{} -- Universidade Federal do Pampa, \MakeUppercase{\@curso}, \the\year. \\
         & \qquad ``Orientação: \imprimirorientador \abntex@ifnotempty{\imprimircoorientador}{; Coorientação: \imprimircoorientador}''.                                 \\
         &                                                         \\
         & \qquad \imprimirpalavraschaves I. Título.               \\
         &
\end{tabular}              
\end{minipage}}
\vspace*{1cm}
\end{center}
\end{fichacatalografica}
\newpage
} % FIM FICHA CATALOGRAFICA
% ================================================================================================


% Folha de Aprovação
% ================================================================================================
\newcommand{\imprimirfolhadeaprovacao}{%
    \begin{folhadeaprovacao}
        \begin{center}
            \textbf{\MakeUppercase{\@author}}                   % Imprime o Nome do Autor
            \\
            \vspace*{4cm}                                       % Distancia do Nome do Autor e o titulo
            \textbf{\MakeUppercase{\imprimirtitulo}}            % Imprime o titulo
            \vspace*{2cm}                                       % Distancia do titulo e o preambulo
            \\
            {\hspace{.45\textwidth}                             % Tamanho do prembulo
            \begin{minipage}{.50\textwidth}                     %
                \imprimirpreambulo
                \SingleSpacing
                Área de concentração: \@areadeconcentracao
            \end{minipage}}
            \vspace*{2cm}                                       % Distancia do preambulo e o texto de defesa
            \\
            \@defesa
            
            Banca Examinadora:
            
            \assinatura{\@titulacaoorientador{} \imprimirorientador \\ \imprimirorientadorRotulo \\ UNIPAMPA}
            
            \assinatura{\@tituloA{} \@nomeA \\ \@instituicaoA}
            
            \assinatura{\@tituloB{} \@nomeB \\ \@instituicaoB}
        \end{center}
    \end{folhadeaprovacao}
} % FIM FOLHA DE APROVAÇÃO
% ================================================================================================

% Dedicatoria 
% ===============================================================================================
\renewenvironment{dedicatoria}{%
    \cleardoublepage\begin{flushright}\ \vfill\begin{minipage}{.5\textwidth}}
    {\end{minipage}\end{flushright} \vspace*{2cm}\newpage\ \clearpage}
% FIM DEDICATORIA
% ===============================================================================================

% Agradecimentos
% ===============================================================================================
\renewenvironment{agradecimentos}{%
    \newpage
    \begin{center}
        \textbf{AGRADECIMENTO}
        \SingleSpacing
    \end{center}
}{\newpage\ \clearpage} % FIM AGRADECIMENTOS
% ===============================================================================================

% Epigrafe
% ===============================================================================================
\renewenvironment{epigrafe}{%
    \cleardoublepage\begin{flushright}\ \vfill\begin{minipage}{.5\textwidth}\begin{flushright}}
    {\end{flushright} \end{minipage}\end{flushright} \vspace*{2cm}\newpage\ \clearpage}
% FIM EPIGRAFE
% ===============================================================================================

% Resumo Portugues
% ===============================================================================================
\renewenvironment{resumo}{%
    \newpage
    \noindent
    \begin{center}
        \textbf{RESUMO}
        \SingleSpacing
    \end{center}
}{%
    \SingleSpacing
    \noindent Palavras-chave: \imprimirpalavraschavesR
\newpage\ \clearpage} % FIM AGRADECIMENTOS
% ===============================================================================================

% Resumo Ingles
% ===============================================================================================
\newenvironment{resumoingles}{%
    \newpage
    \noindent
    \begin{center}
        \textbf{ABSTRACT}
        \SingleSpacing
    \end{center}
}{%
    \SingleSpacing
    \noindent Keywords: \imprimirpalavraschavesA
\newpage\ \clearpage} % FIM AGRADECIMENTOS
% ===============================================================================================

% Lista de Figuras ==============================================================================
% ===============================================================================================
\usepackage{caption}
\captionsetup{justification=raggedright, singlelinecheck=false}
\renewcommand{\listoffigures}{%
    \cleardoublepage
    \chapter*{\MakeUppercase{\listfigurename}}
    \SingleSpacing
    \@starttoc{lof}
    \newpage\ \clearpage %\setlinespacing
}

\renewcommand{\listoftables}{%
    \cleardoublepage
    \chapter*{\MakeUppercase{\listtablename}}
    \SingleSpacing
    \@starttoc{lot}
    \newpage\ \clearpage %\setlinespacing
}


\newcommand{\Fonte}[1]{\footnotesize Fonte: #1}
\newcommand{\oautor}{O autor, \the\year}

% Lista de Abreviaturas e Siglas ================================================================
\renewenvironment{siglas}{%
    \cleardoublepage
    \begin{center}
     \textbf{LISTA DE ABREVIATURAS E SIGLAS}
     
     \DoubleSpacing
    \end{center}
    \SingleSpacing
    \begin{description}[font=\textnormal]
}{\end{description} \newpage\ \clearpage} %FIM LISTA DE ABREVIATURAS
% ===============================================================================================

\newcommand{\simbol}[2]{#1 & -- & #2 \\}
% Lista de Simbolos ================================================================
\renewenvironment{simbolos}{%
    \cleardoublepage
    \begin{center}
     \textbf{LISTA DE SÍMBOLOS}
     
     \DoubleSpacing
    \end{center}
    \SingleSpacing
    \begin{enumerate}[labelsep=1cm]%[font=\textnormal]
    
}{\end{enumerate}\newpage\ \clearpage} %FIM LISTA DE Simbolos
% ===============================================================================================

% SUMARIO ==========================================

\newcommand\samepagechapter{
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}%

\setcounter{tocdepth}{3}
\newif\if@aftertoc
\@aftertocfalse
\renewcommand{\tableofcontents}{%
  \chapter*{\contentsname}
  \thispagestyle{empty}
  \vspace{0.4\baselineskip}
  \@starttoc{toc}\@aftertoctrue%
  \newpage\
  \thispagestyle{empty}
}

\renewcommand{\cftdot}{.}
\renewcommand\cftchapterfont{\textbf}
\renewcommand*{\cftchapterleader}{\bfseries\cftdotfill{\cftchapterdotsep}}
\renewcommand\cftsectionfont{\bfseries}
\renewcommand*{\cftsectionleader}{\bfseries\cftdotfill{\cftsectiondotsep}}
\renewcommand\cftsubsectionfont{\bfseries}
\renewcommand*{\cftsubsectionleader}{\bfseries\cftdotfill{\cftsubsectiondotsep}}
\renewcommand\cftsubsubsectionfont{\bfseries}
\renewcommand*{\cftsubsubsectionleader}{\bfseries\cftdotfill{\cftsubsubsectiondotsep}}
\renewcommand\cftsubsubsubsectionfont{\bfseries}
\newcommand*{\cftsubsubsubsectionleader}{\bfseries\cftdotfill{\cftsubsubsubsectiondotsep}}
\renewcommand\cftchapterformatpnum{\bfseries}
% FIM SUMARIO ================================================================================

%\setlength{\cftchapternumwidth}{1.5cm}
%\setlength{\cftsectionnumwidth}{1.5cm}
%\setlength{\cftsubsectionnumwidth}{1.5cm}
%\setlength{\cftsubsubsectionnumwidth}{1.5cm}

%\setlength{\cftchapterindent}{1.3cm}
%\setlength{\cftsectionindent}{1.3cm}
%\setlength{\cftsubsectionindent}{1.3cm}
%\setlength{\cftsubsubsectionindent}{1.3cm}

\renewcommand{\cftsectionformatpnum}[1]{\textbf{#1}}
\renewcommand{\cftsubsectionformatpnum}[1]{\textbf{#1}}
\renewcommand{\cftsubsubsectionformatpnum}[1]{\textbf{#1}}



% AJUSTE DE REFERENCIAS ======================================================================
\renewenvironment{quote}{%
\SingleSpacing
\hspace{.2\textwidth}\begin{minipage}{.7\textwidth}
\footnotesize
}{%
\end{minipage}
\\}

% ============================================================================================ 
