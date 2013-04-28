# Grab the current version of ruby in use (via RVM): [ruby-1.8.7]
ZSH_THEME_CURRENT_RUBY_=""
if [ -e ~/.rvm/bin/rvm-prompt ]; then
	ZSH_THEME_CURRENT_RUBY_="%{$fg[white]%} $(~/.rvm/bin/rvm-prompt i v)%{$fg[yellow]%} → %{$reset_color%}"
else
	if which rbenv &> /dev/null; then
		ZSH_THEME_CURRENT_RUBY_="%{$fg[white]%} $(rbenv version | sed -e 's/ (set.*$//')%{$fg[yellow]%} → %{$reset_color%}"
	fi
fi



PROMPT='%{$fg[yellow]%}λ $ZSH_THEME_CURRENT_RUBY_ %m %{$fg[green]%}%c %{$fg[yellow]%}→ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="λ %{$fg[blue]%}git %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%} → %{$reset_color%}"
