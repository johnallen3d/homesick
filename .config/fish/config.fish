#! /usr/bin/env fish

# no need for a greeting
set fish_greeting

# source variables
source ~/.config/fish/variables.fish

# source git abbreviations
source ~/.config/fish/abbr.fish

# load autojump
if test -f /usr/local/share/autojump/autojump.fish
  source /usr/local/share/autojump/autojump.fish
end

# kitty completions
kitty + complete setup fish | source
