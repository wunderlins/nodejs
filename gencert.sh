#!/usr/bin/env bash

# http://stackoverflow.com/questions/440762/openssl-command-line-troubles

# self signed
# openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 900

#openssl req -new -nodes -out req.pem -keyout key.pem
#openssl req -new -nodes -out name-req.pem -keyout private/name-key.pem -config ./openssl.cnf
#openssl ca -out cert.pem -infiles req.pem

echo "====== GENERATE CA ======================================="
./CA.sh -newca
echo "====== GENERATE REQUEST =================================="
./CA.sh -newreq
echo "====== SIGN REQUEST ======================================"
./CA.sh -sign

mv newkey.pem key.pem
mv newcert.pem cert.pem
mv newreq.pem req.pem

echo "new files:"
echo "   key.pem"
echo "   req.pem"
echo "   cert.pem"
