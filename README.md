# dotfiles

#
# Variables
#

GITHUB_REPO_DIR='~/Dropbox/GitHub'


#
# Premise
#

first, git clone this repo to "${GITHUB_REPO_DIR}"


#
# setup a tmux.conf
#

- Mac OS X

$ cd ~ && ln -s "${GITHUB_REPO_DIR}"/dotfiles/tmux_2.2_macosx.conf ./.tmux.conf
