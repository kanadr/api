#!/bin/sh
# Claude Code: OAuth (sign in to the portal, then run /mcp > Authenticate)
claude mcp add --transport http phone https://portal.example/api/v1/mcp

# Claude Code with an API key instead (export PHONE_KEY first)
# claude mcp add --transport http phone https://portal.example/api/v1/mcp \
#   --header "Authorization: Bearer $PHONE_KEY"
