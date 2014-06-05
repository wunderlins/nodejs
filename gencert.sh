#!/usr/bin/env bash

# self signed
# openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 900

openssl req -new -nodes -out req.pem -keyout key.pem
#openssl req -new -nodes -out name-req.pem -keyout private/name-key.pem -config ./openssl.cnf
openssl ca -out cert.pem -infiles req.pem
