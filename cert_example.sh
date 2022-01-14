#!/bin/bash
openssl req -x509 -out docker.loc.crt -keyout docker.loc.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=docker.loc' -extensions EXT -config <( \
   printf "[dn]\nCN=docker.loc\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:docker.loc\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
