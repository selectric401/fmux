# fmux
**F**unction-key enabled terminal **MU**ltiple**X**er enhancements

This project implements byobu-like function key bindings for common tmux commands, but without as much overhead as byobu. It also adds some useful status-bar widgets on the right, implemented with a bash script.

## Installation

1. Clone this repository to your home folder.
2. Establish a symbolic link from the tmux.conf file in the repository folder your home folder:    
    <code>ln -s /home/$USER/fmux/.tmux.conf /home/$USER/.tmux.conf</code>
3. Start a new tmux session, or reload the configuration file in existing session(s).
