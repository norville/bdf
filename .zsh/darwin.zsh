### HOMEBREW ###############################################################

# If Homebrew is installed
if type brew &>/dev/null; then

    # get brew path
    BREW_PREFIX=$(brew --prefix)

    # update shell path
    PATH="${BREW_PREFIX}/opt/curl/bin:${PATH}"
    PATH="${BREW_PREFIX}/opt/sqlite/bin:${PATH}"
    PATH="${BREW_PREFIX}/opt/ruby/bin:${PATH}"
    PATH="${BREW_PREFIX}/lib/ruby/gems/3.0.0/bin:${PATH}"
    #PATH="${BREW_PREFIX}/opt/coreutils/libexec/gnubin:${PATH}"
    #PATH="${BREW_PREFIX}/opt/findutils/libexec/gnubin:${PATH}"
    export PATH

    # enable completions
    export FPATH=${BREW_PREFIX}/share/zsh/site-functions:${FPATH}

fi

##############################################################################

### LISTING ###################################################################

# Check if Homebrew coreutils are installed
if type /opt/homebrew/bin/gls &>/dev/null; then

    # define LS Colors config file
    ls_colors="${HOME}/.bdf_config.d/gruvbox.dircolors"

    # if file exists load it
    [[ -f "${ls_colors}" ]] && eval "$(gdircolors ${ls_colors})"

    # enable LS Colors
    alias ls='gls -v --color=auto'

else

    # Else revert to macOS LS Colors
    alias ls='ls -G'

fi

##############################################################################