#!/bin/sh

PWD=` pwd `

echo "$PWD"

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
	#exit -2
else
	MKDIR $project
fi


$TOUCH  $project/$MAKEFILE && $MKDIR $project/$SRC $project/$INCLUDE $project/$BIN $project/$OBJ


echo "$PWD"
cat ${PWD}/${MAKEFILE} > ${project}/${MAKEFILE}

