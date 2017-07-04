#!/usr/bin/env bash
set -x;
mkdir tempdir || true;
echo $1
latexmk -jobname=./tempdir/mainbuild -pdf $1.tex;
cp ./tempdir/mainbuild.pdf ./$1.pdf;
