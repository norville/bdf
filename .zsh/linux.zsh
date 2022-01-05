### LISTING ###################################################################

# define LS Colors config file
ls_colors="${HOME}/.bdf_config.d/gruvbox.dircolors"

# if file exists load it
[[ -f "${ls_colors}" ]] && eval "$(dircolors ${ls_colors})"

# enable LS Colors
alias ls='ls -v --color=auto'

###############################################################################