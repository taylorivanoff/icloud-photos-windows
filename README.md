# iCloud Photos for Windows

[![Release](https://img.shields.io/github/v/release/taylorivanoff/icloud-photos-windows)](https://github.com/taylorivanoff/icloud-photos-windows/releases)
[![Downloads](https://img.shields.io/github/downloads/taylorivanoff/icloud-photos-windows/total)](https://github.com/taylorivanoff/icloud-photos-windows/releases)
[![License](https://img.shields.io/github/license/taylorivanoff/icloud-photos-windows)](LICENSE)

iCloud Photos desktop app for Windows. Loads [icloud.com/photos](https://www.icloud.com/photos) in a native **Tauri / WebView2** shell.

## Features

- **System tray** — close hides to tray; left-click toggles the window
- **Safari user-agent** — Apple web session compatibility
- **Cookie persistence** — stay signed in across restarts
- **Start with Windows** — installer registers a login item
- **Deep link** — `icloud-photos://` protocol handler

## Installation

1. Download the latest installer from [Releases](https://github.com/taylorivanoff/icloud-photos-windows/releases)
2. Run the installer (WebView2 Runtime is used if already installed; otherwise the bootstrapper downloads it)
3. Sign in with your Apple ID

## Security & authentication

This app is **not affiliated with Apple**. It is an unofficial desktop wrapper around Apple’s web UI.

- You sign in on Apple’s own pages inside the WebView2 window
- Your Apple ID password is never collected by this app
- Session cookies for `icloud.com` / `apple.com` are stored under this app’s `%APPDATA%` folder only

## Development

Requires Rust (MSVC), WebView2, and Bun. Sibling crates:

- `Projects/tauri-tray-base`
- `Projects/tauri-icloud-base`

```bash
bun install
bun run icon          # regenerate icons from icon.png
bun run dev
```

### Release build

```bash
bun run release
```

Installer output: `src-tauri/target/release/bundle/nsis/`

## License

[MIT](LICENSE)
