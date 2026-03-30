# tclaude

tmux + Claude Code session manager.

Manage persistent Claude Code sessions inside tmux — create, attach, list, kill, and rename sessions with a single command.

## Installation

### Homebrew

```bash
brew install polterix/tap/tclaude
```

### Manual

```bash
git clone https://github.com/polterix/tclaude.git
cd tclaude
cp tclaude /usr/local/bin/
cp completions/tclaude.zsh /usr/local/share/zsh/site-functions/_tclaude
```

## Requirements

- [tmux](https://github.com/tmux/tmux)
- [Claude Code](https://claude.ai/download)

## Usage

```bash
tclaude <name>               # Create or attach to a session
tclaude ls                   # List sessions
tclaude kill <name>          # Kill a session
tclaude kill all             # Kill all sessions
tclaude rename <old> <new>   # Rename a session
```

### Examples

```bash
# Start a new session for a project
tclaude my-project

# Detach from session: Ctrl+B d

# List running sessions
tclaude ls

# Reattach later
tclaude my-project

# Clean up
tclaude kill my-project
```

## Tips

- Add `confirm-close-surface = true` to your Ghostty config (`~/.config/ghostty/config`) to prevent accidental terminal closures.

## License

MIT
