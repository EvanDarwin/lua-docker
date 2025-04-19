# Lua Docker

<img src="docs/lua.png" alt="Lua for Docker" style="zoom:33%;" />

A simple `alpine` docker image that includes the Lua runtime as well as [LuaRocks](https://luarocks.org/).

## Features

- Multiple Lua versions (5.1.4, 5.2.3, 5.3.4, 5.4.7)
- LuaRocks 3.11.1 package manager
- Based on Alpine Linux for a minimal footprint
- Container attestation and SBOM support
- Available on both Docker Hub and GitHub Container Registry (ghcr.io)

## Available Tags

Several version tags are available for flexibility on both Docker Hub and GitHub Container Registry:

### Docker Hub

### Lua 5.4.7 (Latest)
- `evandarwin/lua:5.4.7` - Specific version
- `evandarwin/lua:5.4` - Major.Minor version
- `evandarwin/lua:5` - Major version only
- `evandarwin/lua:latest` - Latest stable release

### Lua 5.3.4
- `evandarwin/lua:5.3.4` - Specific version
- `evandarwin/lua:5.3` - Major.Minor version

### Lua 5.2.3
- `evandarwin/lua:5.2.3` - Specific version 
- `evandarwin/lua:5.2` - Major.Minor version

### Lua 5.1.4
- `evandarwin/lua:5.1.4` - Specific version
- `evandarwin/lua:5.1` - Major.Minor version

### GitHub Container Registry

The same version tags are available on GitHub Container Registry with the `ghcr.io/evandarwin` prefix:

### Lua 5.4.7 (Latest)
- `ghcr.io/evandarwin/lua:5.4.7` - Specific version
- `ghcr.io/evandarwin/lua:5.4` - Major.Minor version
- `ghcr.io/evandarwin/lua:5` - Major version only
- `ghcr.io/evandarwin/lua:latest` - Latest stable release

We recommend using the specific version tag for production environments to ensure stability, while the less specific tags can be used for development or when you want to automatically get updates.

## Docker Image Security

This image includes supply chain security features:

### Attestations

The image build process includes:
- Docker provenance attestation (for both Docker Hub and GitHub Container Registry images)
- Software Bill of Materials (SBOM)

## Usage

```bash
# Pull a specific version from Docker Hub
docker pull evandarwin/lua:5.4.7

# Or use the major.minor version
docker pull evandarwin/lua:5.4

# From GitHub Container Registry
docker pull ghcr.io/evandarwin/lua:5.4.7

# Run a Lua command
docker run -it evandarwin/lua:5.4.7 lua -e "print('Hello from Lua!')"

# Or use the GitHub Container Registry version
docker run -it ghcr.io/evandarwin/lua:5.4.7 lua -e "print('Hello from Lua!')"
```

Have fun!

### License

This code is licensed under the MIT license, see the **LICENSE** file for details.