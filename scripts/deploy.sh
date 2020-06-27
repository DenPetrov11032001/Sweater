#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa_drucoder \
    target/Sweater-1.0-SNAPSHOT.jar\
    denis@192.168.0.107:/home/denis/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa_drucoder denis@192.168.0.107 << EOF

pgrep java | xargs kill -9
nohup java -jar Sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'
