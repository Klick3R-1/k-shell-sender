# k-shell-sender

CLI tool for sending messages to a [K-Shell](https://github.com/Klick3R-1/K-Shell) feed instance.

Zero external dependencies — pure Python 3 stdlib.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/Klick3R-1/k-shell-sender/main/install.sh | sudo bash
```

## Setup

```bash
k-shell-sender register <name>
# prompts for K-Shell URL and registration password
# saves token to ~/.config/k-shell/config
```

## Usage

```bash
# Direct messages
k-shell-sender error "disk at 98%"
k-shell-sender warn "high memory usage"
k-shell-sender info "deployment started"
k-shell-sender success "backup complete"
k-shell-sender log "some output"

# With tag
k-shell-sender log --tag nginx "server restarted"

# Pipe mode — reads stdin
journalctl -f -u myunit | k-shell-sender log --tag myunit
./backup.sh | k-shell-sender log --tag backup

# Script error handling
some-command || k-shell-sender error "some-command failed on $(hostname)"
```

## Message types

| Type | Use for |
|---|---|
| `error` | Failures, exceptions |
| `warn` | Degraded state, high usage |
| `info` | Informational events |
| `success` | Completed tasks |
| `log` | Raw output, piped streams |

## Config

Stored at `~/.config/k-shell/config` (mode 600). Re-run `register` to update.
