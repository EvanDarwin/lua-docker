# Lua Docker

<img src="docs/lua.png" alt="Lua for Docker" style="zoom:33%;" />

A simple `alpine` docker image that includes the Lua runtime as well as [LuaRocks](https://luarocks.org/).

## Features

- Lua 5.4.7 runtime
- LuaRocks 3.9.2 package manager
- Based on Alpine Linux for a minimal footprint
- Container attestation and SBOM support

## Available Tags

Several version tags are available for flexibility:

- `evandarwin/lua:5.4.7` - Specific version (e.g., 5.4.7)
- `evandarwin/lua:5.4` - Major.Minor version (e.g., 5.4)
- `evandarwin/lua:5` - Major version only (e.g., 5)
- `evandarwin/lua:latest` - Latest stable release

We recommend using the specific version tag for production environments to ensure stability, while the less specific tags can be used for development or when you want to automatically get updates.

## Docker Image Security

This image includes supply chain security features:

### Attestations

The image build process includes:
- Docker provenance attestation
- Software Bill of Materials (SBOM)

## Usage

```bash
# Pull a specific version
docker pull evandarwin/lua:5.4.7

# Or use the major.minor version
docker pull evandarwin/lua:5.4

# Run a Lua command
docker run -it evandarwin/lua:5.4.7 lua -e "print('Hello from Lua!')"
```

Have fun!

### License

This code is licensed under the MIT license, see the **LICENSE** file for details.