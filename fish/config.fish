set -x -g LANG en_US.UTF-8
set -x -g EDITOR (which vim)
set -e -g SSH_ASKPASS
set -e -g OVERCOMMIT_DISABLE 1
set -e fish_greeting
function tmux
	command tmux -2 $argv
end

rvm default
#nohup rvm default > /dev/null 2>&1
set TF_ALIAS fuck

function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_command $history[1]
    thefuck $fucked_up_command > $eval_script
    . $eval_script
    /bin/rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_command
    end
end

function r -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_command $history[1]
    thefuck $fucked_up_command > $eval_script
    . $eval_script
    /bin/rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_command
    end
end

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
  set last_status $status

  set_color $fish_color_escape
  printf '%s@%s' (whoami) (hostname)

  set_color $fish_color_escape
  printf ' '

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal


  printf ' > '

  set_color normal
end

function fish_right_prompt
	printf '<%s' (__terlar_git_prompt)
	# printf '<%s' (__fish_git_prompt)
end
