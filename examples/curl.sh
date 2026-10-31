#!/bin/sh
# Plain HTTP calls to the Kanadr API. export KANADR_KEY=cx_... first.
P=https://portal.example/api/v1
H="Authorization: Bearer $KANADR_KEY"

# Customers visible from an organization (operator or reseller)
curl -s -H "$H" -H "Accept-Language: en" "$P/organisations/<org_id>/clients"

# Numbers visible from an organization
curl -s -H "$H" "$P/organisations/<org_id>/numeros"

# A customer's call log
curl -s -H "$H" "$P/clients/<client_id>/appels"

# A customer's SIP trunk
curl -s -H "$H" "$P/clients/<client_id>/trunk"
