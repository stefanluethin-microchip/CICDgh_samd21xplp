#!/bin/bash

#resultf_p=./dist/samd21xplp/production/*.elf
resultf_n=`find ./dist -name *.elf`

if [[ "${resultf_n}" != "" ]]; then
    echo "Resultfile ${resultf_n}"
else
    echo "no resultfile"
fi
