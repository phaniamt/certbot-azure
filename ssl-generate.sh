#!/bin/bash
DOMAIN=example.com
DNS_RG=myrg
EMAIL=test@example.com
certbot certonly  -d *.${DOMAIN} -d ${DOMAIN} \
-a dns-azure --dns-azure-credentials /tmp/mycredentials.json \
--dns-azure-resource-group {DNS_RG} \
--email ${EMAIL}
--non-interactive  \
--agree-tos
