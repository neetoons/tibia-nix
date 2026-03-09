# Tibia NixOS Client

A NixOS flake and derivation for the Tibia game client. This package automates the downloading, patching (via `autoPatchelfHook`), and environment wrapping required to run the client on NixOS systems (supporting both X11 and Wayland).

## Features
- **Nix Flake Support**: Easy integration into NixOS configurations.
- **Auto-Patching**: Automatically links necessary ELF binaries to the Nix store.
- **Intelligent Wrapper**: Handles SSL certificates, Qt plugins, and library paths.
- **Desktop Integration**: Generates `.desktop` entries for both the installer and the client.
- **Wayland Ready**: Configured with a fallback mechanism (`wayland;xcb`) for modern desktop environments.

## How to use

### Build
To build the package and create a `result` symlink:
```bash
nix build .

```

### Run

To run the client directly without installing:

```bash
nix run .

```

### Development Shell

If you need to debug or explore the environment:

```bash
nix develop

```

## Disclaimer (Important)

**This package is provided "as is" without any guarantees or official support.**

Please be aware of the following:

1. **Amateur Project**: This is a personal, non-professional project created for experimental purposes.
2. **AI-Assisted**: Parts of the Nix expressions and configurations were generated or refined using Artificial Intelligence. While tested, they may contain bugs or non-standard implementations.
3. **Use at Your Own Risk**: The author is not responsible for any issues, account bans, or system instability caused by using this derivation.
4. **Unfree Software**: Tibia is a proprietary game. By using this package, you acknowledge that you are handling "unfree" software and must comply with CipSoft GmbH's terms of service.

## License

The Nix expressions in this repository are available under the MIT License. The Tibia client itself remains the property of Cipsoft GmbH.
