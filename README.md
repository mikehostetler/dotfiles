# dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Quick Start

Install on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mhostetler
```

Or update existing:

```bash
chezmoi update
```

## What's Included

- **zsh** - Shell configuration (.zshrc, .zprofile)
- **mise** - Tool version management (.config/mise/config.toml)

## Directory Structure

```
.
├── dot_zshrc              → ~/.zshrc
├── dot_zprofile           → ~/.zprofile
├── dot_config/
│   └── mise/
│       └── config.toml    → ~/.config/mise/config.toml
└── README.md
```

## Next Steps

- [ ] Encrypt sensitive files (SSH keys, secrets)
- [ ] Add templates for machine-specific configs
- [ ] Add run scripts for setup automation

## License

MIT
