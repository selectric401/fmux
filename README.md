# fmux
**F**unction-key enabled terminal **MU**ltiple**X**er enhancements

This project implements byobu-like function key bindings for common tmux commands, but without as much overhead as byobu. It also adds some useful status-bar widgets on the right, implemented with a bash script.

## Key bindings

### Function keys

These keys work without the tmux prefix (`Ctrl-B` by default).

* `F2`: New window
* `F3`: Previous window
* `F4`: Next window
* `F6`: Detach session
* `Ctrl`-`F6`: Kill pane
* `F7`: Copy mode
* `F8`: Rename window
* `Ctrl`-`F8`: Rename session
* `Shift`-`F12`: Toggle bindings on/off
* `Alt`+`arrow keys` can be used to switch between panes.

### With tmux prefix

* `|`: Split window horizontally
* `-`: Split window vertically
* `Shift`-`W`/`A`/`S`/`D`: Resize current pane
* `r`: Reload config from `~/.tmux.conf`
* `Alt`-`Left` or `Right` arrows: Move window left or right, repsectively

In case any of these bindings interfere with other commands, they can be temporarily toggled on or off with `Shfit-F12`.

### Local configuration options

This configuration file sources `~/.tmux-local.conf` if you want to make additional modifications.

## Installation

1. Clone this repository to your home folder.
2. Establish a symbolic link from the tmux.conf file in the repository folder your home folder:
    <code>ln -s /home/$USER/fmux/tmux.conf /home/$USER/.tmux.conf</code>
	
	If your tmux version is 2.9 or below, use `tmux-2.9.conf` instead. Version 3.0 introduced several changes in configuration file parsing. (tmux 2.9 also introduced some [changes](https://github.com/tmux/tmux/issues/1689) to the style formatting, but they do not break functionality. [I do hope to fix this soon](https://github.com/selectric401/fmux/issues/1).) 
3. Run `touch ~/.tmux-local.conf`.
4. Start a new tmux session, or reload the configuration file in existing session(s).


