#!/bin/sh

# which python version do you use ?
PIP=pip3
PYTHON=python3

# the packages
PKGs=( etoro-discovery etoro-metadata etoro-rates etoro-system etoro-trading etoro-user )

# install all
for p in "${PKGs[@]}"
do
    cd $p
    $PYTHON setup.py build
    sudo $PYTHON setup.py install
    cd ..
done

