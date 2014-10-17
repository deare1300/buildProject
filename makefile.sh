#!/bin/sh

PWD=` pwd `
MKDIR=mkdir
TOUCH=touch

SRC=src
INCLUDE=include
BIN=bin
OBJ=obj

MAKEFILE=MAKEFILE

project=
if [ $# -lt 1 ];
then
	echo "error project name needed ***";
	exit -1;
fi

project=$1

if [  -e $project ];
then
	echo "$project exist **";
	exit -2
fi


$MKDIR $project
cd $project && $TOUCH  $MAKEFILE && $MKDIR $SRC $INCLUDE $BIN $OBJ || echo
"error mkdir or touch makefile**" && exit -3

cd $PWD

cat $MAKEFILE >> $project/$MAKFILE

