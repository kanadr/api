# MCP client configurations

Replace `portal.example` with your portal's address. With an API key, keep the key in the `PHONE_KEY` environment variable rather than in a file or a conversation.

| File | Client |
|---|---|
| `claude-code.sh` | Claude Code (OAuth or API key) |
| `codex-config.toml` | OpenAI Codex CLI and editor extension |
| `vibe-config.toml` | Mistral Vibe |
| `openai-responses.json` | OpenAI Responses API, for your own integrations |
| `mcp.json` | Any client that sends a fixed header |

For claude.ai, Claude Desktop, ChatGPT and Le Chat, add a custom connector with the server address and no key. The portal then asks you to sign in and approve. See the [MCP guide](https://docs.kanadr.com/guide/operateur/en/operateur/mcp.html).
