#!/bin/bash
awk '{
n11 = split($11, t11, ",")
n12 = split($12, t12, ",")
for (i = 0; ++i < n11;) {
s12 = $2 + t12[i]
print $1, s12, s12 + t11[i], $6=="+" ? $4 "_E" i : $4 "_E" n11-i, $6
}
}' $1 | awk '{print $1"\t"$2"\t"$3"\t"$4"\t""0""\t"$5}'