#!/bin/bash

echo "Installation .vimrc"

VIMDIR="${HOME}/.vim"
VIMRCDIR="${HOME}/.vimrc"
VIMPLUGINS="${VIMDIR}/plugins"

if [ -e $VIMRCDIR ]; then
  echo "${VIMRCDIR} already exists, need re-install"
  rm $VIMRCDIR
  echo "${VIMRCDIR} deleted successfully"
fi

cp .vimrc $VIMRCDIR
echo ".vimrc successfully installed in ${VIMRCDIR}"

if [ ! -d $VIMDIR ]; then
  mkdir $VIMDIR
  echo ".vim directory not exist, but i created it!\ncreated in ${VIMDIR}"
else
  echo "${VIMDIR} already exists, clear plugins now"
  rm -rf $VIMPLUGINS
  echo "plugins removed"
fi

cp plugins/ $VIMPLUGINS
echo "plugins successfully installed"

echo "Installation successfully"
