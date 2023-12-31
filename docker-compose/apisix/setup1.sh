#!/bin/bash

curl --location --request PUT 'http://localhost:9180/apisix/admin/routes/1' \
--header 'X-API-KEY: edd1c9f034335f136f87ad84b625c8f1' \
--header 'Content-Type: application/json' \
--data '{
    "uris": [
      "/repos/:owner/:repo/pages/health"
    ],
    "upstream": {
        "type": "roundrobin",
        "nodes": {
            "host.docker.internal:8080": 1
        }
    }
}'
