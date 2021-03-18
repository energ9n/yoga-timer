#!/bin/bash

count=1

echo -e "\a"
sleep 0.2
echo -e "\a"

case "$#" in
"1")
  echo "starting $1 second timer"
  while true
  do
    sleep $1
    echo -e "\a"
    sleep 0.2
    echo -e "\a"
    sleep 0.2
    echo -e "\a$count"
    ((count++))
  done
  ;;
"2")
  echo "starting $1 second timer with $2 second pauses"
  while true
  do
    sleep $1
    echo -e "\a"
    sleep 0.2
    echo -e "\a"
    sleep 0.2
    echo -e "\a$count"
    ((count++))
    sleep $2
    echo -e "\a"
    sleep 0.2
    echo -e "\a"
  done
  ;;
*)
  ;;
esac
