#!/bin/bash

numero=$(ls -l | grep ^- | wc -l)
valorVerdad=1

function findNumber {

if [[ $numeroIn -eq numero ]]
  then
    echo "¡Congratulations!, it's the correct number"
    let  valorVerdad=false
  elif [[ $numeroIn -lt numero ]]
  then
    echo "¡Too low response!"
  elif [[ $numeroIn -gt numero ]]
  then
    echo "too high response"
fi
}


while [[ $valorVerdad -ne 0 ]]
do
  echo "Enter a number"
  read numeroIn

  findNumber
done
