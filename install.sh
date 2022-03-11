#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install -y bzip2 gcc git
apt-get install -y screen htop vim wget
apt-get upgrade -y bash
apt-get clean

wget -c https://repo.anaconda.com/miniconda/Miniconda3-py39_4.11.0-Linux-x86_64.sh
bash Miniconda3-py39_4.11.0-Linux-x86_64.sh -b
rm -rf Miniconda3-py39_4.11.0-Linux-x86_64.sh

export PATH=/root/miniconda3/bin:$PATH
cat >> ~/.profile <<EOF
export PATH=/root/miniconda3/bin:$PATH
EOF


conda install -y jupyter
conda install -y jupyterlab
conda install -y numpy
conda install -y pandas
conda install -y matplotlib

mkdir -p /root/.jupyter/custom
wget http://hilpisch.com/custom.css
mv custom.css /root/.jupyter/custom
mkdir /root/notebook
