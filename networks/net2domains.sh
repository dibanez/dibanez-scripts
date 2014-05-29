#!/bin/bash
for i in {1..254}
do
  myhostname=`host $1.$i`
  if [ "$?" -eq 0 ]; then
  echo -ne $i
  echo -ne "\t"
  echo -ne "IN"
  echo -ne "\t"
  echo -ne "PTR"
  echo -ne "\t"
  echo `echo $myhostname | cut -d " " -f 5`
fi
done
