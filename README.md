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

## Cheatsheet

> Prefix = `Ctrl + b` (default)

### Sessions

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + o` | Session-Picker (sessionx) |
| `prefix + d` | Session detachen |
| `prefix + s` | Sessions auflisten |
| `prefix + $` | Session umbenennen |
| `prefix + (` | Vorherige Session |
| `prefix + )` | Nächste Session |

### Windows

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + c` | Neues Fenster |
| `prefix + ,` | Fenster umbenennen |
| `prefix + &` | Fenster schließen |
| `prefix + n` | Nächstes Fenster |
| `prefix + p` | Vorheriges Fenster |
| `prefix + 1-9` | Zu Fenster 1-9 wechseln |
| `prefix + w` | Fenster-Übersicht |

### Panes

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + %` | Vertikal splitten |
| `prefix + "` | Horizontal splitten |
| `prefix + x` | Pane schließen |
| `prefix + o` | Zwischen Panes wechseln |
| `prefix + q` | Pane-Nummern anzeigen |
| `prefix + z` | Pane zoomen/unzoomen |
| `prefix + {` | Pane nach links |
| `prefix + }` | Pane nach rechts |
| `prefix + Pfeiltasten` | Pane-Größe ändern |

### Copy Mode

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + [` | Copy Mode starten |
| `q` | Copy Mode beenden |
| `Space` | Auswahl starten |
| `Enter` | Auswahl kopieren |
| `/` | Vorwärts suchen |
| `?` | Rückwärts suchen |
| `n` | Nächster Treffer |

### Plugins

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + I` | Plugins installieren (TPM) |
| `prefix + U` | Plugins updaten (TPM) |
| `prefix + Ctrl-s` | Session speichern (resurrect) |
| `prefix + Ctrl-r` | Session wiederherstellen (resurrect) |

### Custom (diese Config)

| Shortcut | Beschreibung |
|----------|--------------|
| `prefix + r` | Config neu laden |
| `prefix + o` | Sessionx öffnen |

### Nützliche Befehle

```bash
tmux                     # Neue Session starten
tmux new -s name         # Session mit Namen starten
tmux ls                  # Sessions auflisten
tmux a                   # Letzte Session attachen
tmux a -t name           # Bestimmte Session attachen
tmux kill-session -t name  # Session beenden
```
