#!/bin/sh

source /home/earthcube/.bashrc

jupyter notebook --notebook-dir=/home/earthcube/geoedf --NotebookApp.token='' --NotebookApp.password='' --port=8888 --no-browser --ip=0.0.0.0 --allow-root
