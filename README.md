# Kanadr API and MCP examples

This repository holds the OpenAPI specification of the [Kanadr](https://www.kanadr.com/en) API and ready-to-use configurations for connecting AI assistants to a Kanadr portal through its MCP server.

Kanadr is a white-label hosted PBX for telecom operators. Every portal action goes through this API: customers, numbers, trunks, call flows, devices, call logs, rating, webhooks and diagnostics. The specification lists more than 200 paths, documented in English and French.

## Contents

| Path | What it is |
|---|---|
| `openapi/openapi.en.json` | OpenAPI specification, English descriptions |
| `openapi/openapi.json` | Same specification, French descriptions |
| `mcp/` | MCP client configurations: Claude Code, Codex, Mistral Vibe, OpenAI Responses API, generic JSON |
| `examples/` | Plain HTTP calls with `curl` |

The browsable reference is at [docs.kanadr.com/api/en](https://docs.kanadr.com/api/en/). A plain [list of every operation](https://docs.kanadr.com/api/en/operations.html) is also available.

## Authentication

- **API key**: create one in the portal under **API**, then **API keys**. Send it as `Authorization: Bearer cx_…`. The key has exactly the rights of the role you give it, so start with a read-only role.
- **OAuth**: web assistants such as claude.ai, ChatGPT and Le Chat use OAuth instead. You add the server address without a key, sign in to the portal and approve the access.

Each Kanadr portal has its own address. In the examples, replace `portal.example` with yours.

## MCP server

Each portal exposes an MCP server at `https://portal.example/api/v1/mcp` (streamable HTTP). Each API operation is a tool with the same name, for example `listerClients` or `reglerRenvois`. Send `Accept-Language: en` to get the tool descriptions in English. The `monCompte` tool returns the connected account and its organization. Before any change, the assistant asks the user to confirm. Every write is recorded in the audit log under the user's or the key's name.

Quick start with Claude Code:

```bash
claude mcp add --transport http phone https://portal.example/api/v1/mcp
```

Then run `/mcp` in Claude Code and choose **Authenticate**. The other clients are in [`mcp/`](mcp/). The full guide is in the [MCP documentation](https://docs.kanadr.com/guide/operateur/en/operateur/mcp.html).

Example requests:

- "Which trunks are failing, and since when?"
- "List the clients of reseller Example with their number of extensions."
- "Why isn't extension 100 of client Example registering?"

## Licence

The configuration files and examples in `mcp/` and `examples/` are under the MIT licence. The OpenAPI specification describes Kanadr, a commercial product. It is published so that you can build integrations against it.

## Contact

Kanadr is a brand of Archel SAS, France. To ask for a demo instance, go to [kanadr.com/en/contact](https://www.kanadr.com/en/contact). You can also write to contact@kanadr.com.
