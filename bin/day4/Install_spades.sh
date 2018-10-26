#!/bin/bash

mkdir -p $HOME/programs
cp /server_home/metagenomics_workshop/SPAdes-3.11.1-Linux.tar.gz $HOME/programs
tar -xzvf $HOME/programs/SPAdes-3.11.1-Linux.tar.gz -C $HOME/programs
export PATH="/home/user/programs/SPAdes-3.11.1-Linux/bin:$PATH"
echo "Spades Installed!"

