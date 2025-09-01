#!/bin/bash

# author:   letnull19a
# github:   @letnull19a
# telegram: @letnull19a
# my mail:  letnull19a@gmail.com

clear

echo "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"
echo "⬜⬜    ⬜⬜⬜⬜⬜⬜    ⬜⬜"
echo "⬜⬜    ⬜⬜⬜⬜⬜⬜    ⬜⬜"
echo "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"
echo "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"
echo "⬜⬜        ⬜⬜        ⬜⬜"
echo "⬜⬜        ⬜⬜        ⬜⬜"
echo "⬜⬜⬜⬜⬜⬜    ⬜⬜⬜⬜⬜⬜"
echo "⬜⬜⬜⬜⬜⬜    ⬜⬜⬜⬜⬜⬜"
echo "⬜⬜                    ⬜⬜"
echo "⬜⬜                    ⬜⬜"
echo "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"

echo "*** Start installation ***"
echo "[LOG] installation .vimrc"

VIMDIR="${HOME}/.vim"
VIMRCDIR="${HOME}/.vimrc"
VIMPLUGINS="${VIMDIR}/plugged"
VIMAUTOLOAD="${VIMDIR}/autoload"

if [ -e $VIMRCDIR ]; then
  echo "[LOG] ${VIMRCDIR} already exists, need re-install"
  rm $VIMRCDIR
  echo "[LOG] ${VIMRCDIR} deleted successfully"
fi

if [ ! -d $VIMDIR ]; then
  mkdir $VIMDIR
  echo "[LOG] .vim directory not exist, but i create it in ${VIMDIR}"
else
  echo "[LOG] plugins dir removed"
  echo "[LOG] ${VIMDIR} already exists, clear plugins now"
  rm -rf $VIMPLUGINS
  rm -rf $VIMAUTOLOAD
fi

cp .vimrc $VIMRCDIR
echo "[LOG] .vimrc successfully installed in ${VIMRCDIR}"

mkdir $VIMAUTOLOAD
echo "[LOG] ${VIMAUTOLOAD} is created now"
cp -r autoload/* $VIMAUTOLOAD
echo "[LOG] autoload successfully installed"

mkdir $VIMPLUGINS
echo "[LOG] ${VIMPLUGINS} is created now"
cp -r plugged $VIMPLUGINS
echo "[LOG] plugins successfully installed"

echo "[LOG] prepare installing color scheme"
cp -r colors $VIMDIR

echo "[LOG] installation successfully ended!"
echo "*** Put: vi for opening vim ***"
