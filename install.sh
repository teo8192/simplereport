#!/bin/sh

TEXHOME=texmf/tex/latex/base

[ -d ${HOME}/${TEXHOME} ] ||
mkdir -p ${HOME}/${TEXHOME}

install ./simplereport.cls ${HOME}/${TEXHOME}
