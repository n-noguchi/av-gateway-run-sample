#!/bin/bash

openssl req -new -newkey rsa:2048 -sha256 -days 3650 -nodes -x509 -keyout squid/privateca.pem  -out squid/privateca.pem -subj "/C=JP/ST=Fukuoka/L=Fukuoka/O=My Company/OU=IT Department/CN=privatehost"
openssl x509 -in squid/privateca.pem -outform DER -out web/privateca.der

