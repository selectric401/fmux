# fmux
**F**unction-key enabled terminal **MU**ltiple**X**er enhancements

This project implements byobu-like function key bindings for common tmux commands, but without as much overhead as byobu. It also adds some useful status-bar widgets on the right, implemented with a bash script.

## Key bindings

I've added the most common/useful F-key shortcuts for moving between tmux windows, as well as splitting existing windows into panes with `Ctrl-b |` and `Ctrl-b -`.

In case any of these bindings interfere with other commands, they can be temporarily toggled on or off with `Shfit-F12`.

## Installation

1. Clone this repository to your home folder.
2. Establish a symbolic link from the tmux.conf file in the repository folder your home folder:
    <code>ln -s /home/$USER/fmux/tmux.conf /home/$USER/.tmux.conf</code>
	If your tmux version is 2.9 or greater, use `tmux-2.9.conf` instead. Version 2.9 introduced some [breaking changes](https://github.com/tmux/tmux/issues/1689) to the style formatting.
3. Start a new tmux session, or reload the configuration file in existing session(s).
