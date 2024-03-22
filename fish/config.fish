fish_vi_key_bindings
set -g direnv_fish_mode eval_on_arrow
set fish_color_normal normal
set fish_color_command blue
set fish_color_quote yellow
set fish_color_redirection cyan --bold
set fish_color_end green
set fish_color_error brred
set fish_color_param cyan
set fish_color_comment red
set fish_color_match --background=brblue
set fish_color_selection white --bold --background=brblack
set fish_color_search_match bryellow --background=brblack
set fish_color_history_current --bold
set fish_color_operator brcyan
set fish_color_escape brcyan
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_valid_path --underline
set fish_color_autosuggestion white
set fish_color_user brgreen
set fish_color_host normal
set fish_color_cancel --reverse
set fish_pager_color_prefix normal --bold --underline
set fish_pager_color_progress brwhite --background=cyan
set fish_pager_color_completion normal
set fish_pager_color_description B3A06D --italics
set fish_pager_color_selected_background --reverse
set fish_cursor_default block blink
set fish_cursor_insert line blink
set fish_cursor_replace_one underscore blink
function mark_prompt_start --on-event fish_prompt
    echo -en "\e]133;A\e\\"
end
function greeting
    set_color -o EEA9A9; date +%T; set_color normal
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
