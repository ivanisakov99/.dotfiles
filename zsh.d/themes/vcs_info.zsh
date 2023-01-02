# -*- shell-script -*-

ENABLE_VCS_INFO="true"
VCS_INFO_SHOW_TRACKING_BRANCH="true"

PS1='%{[%B%}%* %n@%2m %~%{%b%}]%{%F{yellow}%}%1v%{%f%} %{%F{red}%}%(?..(%?%))%{%f%}
$ '
# PS1="
# (%D %*) <%?> [%~]
# %{$fg[cyan]%}%m %#%{$fg[default]%} "

RPROMPT=
