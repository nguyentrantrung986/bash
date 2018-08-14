#!/usr/bin/env bash
function plier {
 local m=1
 for e in $@
  do
  let m=$m\*$e
  done
 echo $m
}

function isiteven {
 local r=$(($1%2))
 if [[ r -eq 0 ]]
  then
  echo 1
  else
  echo 0
 fi
}

function nevens {
 local c=0
 for e in $@
 do
  if [[ $(isiteven $e) -eq 1 ]]
  then
   let c=$c+1
  fi
 done
 echo $c
}

function howodd {
 local o=$(($#-$(nevens $@)))
 local p=$(echo "scale=2; $o*100/$#" | bc)
 echo $p
}

function fib {
 local p=1
 local s=0
 local i=1
 local tmp=0
 
 if [[ $1 -le 0 ]]
 then
  return
 fi
 
 while [[ $i -le $1 ]]
 do
  echo -n "$s "
  let tmp=$s
  let s=$s+$p 
  let p=$tmp
  let i=$i+1
 done
}
