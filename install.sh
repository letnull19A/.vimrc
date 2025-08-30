#!/bin/bash

echo "Installation .vimrc"

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

VIMDIR="${HOME}/.vim"
VIMRCDIR="${HOME}/.vimrc"
VIMPLUGINS="${VIMDIR}/plugins"

if [ -e $VIMRCDIR ]; then
  echo "${VIMRCDIR} already exists, need re-install"
  rm $VIMRCDIR
  echo "${VIMRCDIR} deleted successfully"
fi

if [ ! -d $VIMDIR ]; then
  mkdir $VIMDIR
  echo ".vim directory not exist, but i created it!\ncreated in ${VIMDIR}"
else
  echo "plugins dir removed"
  echo "${VIMDIR} already exists, clear plugins now"
  rm -rf $VIMPLUGINS
fi

cp .vimrc $VIMRCDIR
echo ".vimrc successfully installed in ${VIMRCDIR}"

mkdir $VIMPLUGINS
echo "${VIMPLUGINS} is created now"

cp plugins/ $VIMPLUGINS
echo "plugins successfully installed"

echo "Installation successfully"
