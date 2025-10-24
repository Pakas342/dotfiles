if status is-interactive
    # commands to run in interactive sessions can go here
end

# key bindings fot autocompletion
bind \cy accept-autosuggestion
bind \cf forward-word

# key bindingd for history nav
bind \cp up-or-search
bind \cn down-or-search

set fish_greeting

# ENV vars
set -gx EDITOR nvim
set -gx MANPAGER "nvim +Man!"

nvm use 24 --silent
