# dilladesk

Derdillas configs for desktop. Checkout `install.sh` for installation (Should be safe but _look at it_. Don't just run your old random scripts duh).

## Principles

- Don't config for generic use cases. Config for concrete requriements.
- Avoid custom scripts, prefer existing tools from repositories
- Prefer lowercase names without special characters as they are easier to type (`[a-z_\-0-9]`)

## Tools and usage

- Terminal: [alacritty](https://alacritty.org/index.html)
- File manager: [yazi](https://yazi-rs.github.io/) 
- non-posix coreutils replacements: ls->[`eza`](https://github.com/eza-community/eza), cat->[`bat`](https://github.com/sharkdp/bat), find->[`rg`](https://github.com/BurntSushi/ripgrep)
- System monitor: [btm](https://github.com/ClementTsang/bottom)
- Audio configuration: [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/)

### Important key-combos

Keybinds make work faster, but if you are anybit like me you will forget those. So here is a list with the most usefull ones and their assoiated App. Let's start with the global ones:

- `❖ Win` + `w`: Launch programm
- `❖ Win` + `q`: Launch terminal
- `❖ Win` + `e`: Launch file manager
- `❖ Win` + `v`: Make window movable

#### yazi

- `Space`: Select current
- `Ctrl` + `a`: Select all
- `Ctrl` + `r`: reverse selection
- `s`, `S`: Search modes
- `+`: Open selected for drad and drop
- `Enter`: Open in prefered editor
- `y`: Copy
- `x`: Cut
- `p`: Past
