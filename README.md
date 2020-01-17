# Tmux Uptime
Simple plugin to show current uptime.

Adds `#{uptime}` format.

Currently only tested on Linux.
Contributions are welcome.

## Installation
### Using [TPM](https://github.com/tmux-plugins/tpm):

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'Rizhiy/tmux-uptime'

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

```shell
git clone https://github.com/Rizhiy/tmux-uptime ~/clone/path
```

Add this line to the bottom of `.tmux.conf`:

```tmux
run-shell ~/clone/path/uptime.tmux
```

From the terminal, reload TMUX environment:

```shell
tmux source-file ~/.tmux.conf
```

If format string is added to status-line, it should now be visible.

## Usage
Add `#{uptime}` format string to your existing status.

Here is an example:

    set -g status-right " #{uptime} | %a %h-%d %H:%M "
