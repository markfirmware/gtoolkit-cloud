#!/bin/bash

NEW_LIB=newer-libstdc++.so.6
LIB_FOLDER=/usr/lib/x86_64-linux-gnu
sudo cp docker/$NEW_LIB $LIB_FOLDER
sudo ln -sf $LIB_FOLDER/$NEW_LIB $LIB_FOLDER/libstdc++.so.6

cd Glamorous*/
./glamoroustoolkit GlamorousToolkit.image --no-quit --interactive
