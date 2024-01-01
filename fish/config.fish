if status is-interactive
    # Commands to run in interactive sessions can go here
set -U fish_greeting
    /opt/homebrew/bin/brew shellenv | source 
     starship init fish | source
     abbr -a vim nvim
end

