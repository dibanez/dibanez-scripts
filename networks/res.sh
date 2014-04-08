#!/bin/bash
for i in {1..254}
do
dig @$1 -x $2.$i +short
done
