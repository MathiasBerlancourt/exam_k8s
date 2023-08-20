#!/bin/bash

cd /home/ubuntu/exam_k8s
current_time=$(date +"%Y-%m-%d %H:%M:%S")
commit_message="Automatic commit at ${current_time}"
git pull origin main
git add .
git commit -m "${commit_message}"
git push 
