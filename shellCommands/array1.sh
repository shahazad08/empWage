#!/bin/bash -x
counter=10
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"
echo ${Fruits[@]}

