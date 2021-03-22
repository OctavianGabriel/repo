#!/bin/bash

args=""

# ciclează până când există parametri
while [[ $# > 0 ]] ; do
  args=`echo $1 ; echo "$args"`
  shift
done

echo "$args"