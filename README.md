# tmux-config

My personal tmux configuration with Catppuccin Mocha theme.

## Features

- Catppuccin Mocha color scheme
- Two status lines with system info (CPU, RAM, Disk)
- Emoji window numbers
- Mode indicator (NORMAL, PREFIX, COPY, MOUSE)
- Heavy pane borders
- Mouse support enabled
- [tmux-sessionx](https://github.com/omerxx/tmux-sessionx) for session management
- [tmux-browser](https://github.com/ofirgall/tmux-browser) for browser sessions attached to tmux

## Requirements

- tmux 3.2+ (for heavy borders and popup styling)
- macOS (scripts use `top` and `sysctl` for system info)
- [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager)
- [brotab](https://github.com/balta2ar/brotab) (for tmux-browser)

## Installation

```bash
git clone https://github.com/rijhof/tmux-config.git
cd tmux-config
./install.sh
```

Then start tmux and press `prefix + I` to install plugins.

## Keybindings

- `prefix + r` - Reload config
- `prefix + o` - Open sessionx (session picker)

## Structure

```
.
├── tmux.conf         # Main config
├── scripts/
│   ├── cpu.sh        # CPU usage
│   ├── ram.sh        # RAM usage
│   ├── totalmem.sh   # Total memory
│   ├── mode.sh       # Current mode indicator
│   ├── emoji_num.sh  # Number to emoji converter
│   └── window_list.sh # Window list with emoji numbers
└── install.sh        # Installation script
```

## Plugins

Managed via TPM:
- [tpm](https://github.com/tmux-plugins/tpm) - Plugin manager
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) - Session persistence
- [tmux-sessionx](https://github.com/omerxx/tmux-sessionx) - Session picker
- [tmux-browser](https://github.com/ofirgall/tmux-browser) - Browser sessions per tmux session
