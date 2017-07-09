#!/bin/bash

. $1
if [ "$2" == "identifier" ]; then
  echo $DISTRIB_ID
fi

if [ "$2" == "codename" ]; then
  echo $DISTRIB_CODENAME
fi
