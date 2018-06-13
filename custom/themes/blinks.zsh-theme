# custom theme

_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

bg=7
bg_alt=0
fg=0
fg_alt=7

ZSH_THEME_GIT_PROMPT_PREFIX="<%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b>"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='
%{%K{${bg}}%F{${fg}}%} $(_collapsed_wd)%{%K{${bg_alt}}%F{${fg_alt}}%}█▓▒░%{%f%k%b%} '
RPROMPT='%{%F{${fg_alt}}%}$(git_prompt_info)%{%f%k%b%}'
