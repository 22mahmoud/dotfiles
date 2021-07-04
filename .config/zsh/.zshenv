export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"

export LS_COLORS=${LS_COLORS:-'di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'}

export KEYTIMEOUT=1

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$ZSH_CACHE_DIR/history"

_gen_fzf_default_opts() {

local color00='#1C2023'
local color01='#393F45'
local color02='#565E65'
local color03='#747C84'
local color04='#ADB3BA'
local color05='#C7CCD1'
local color06='#DFE2E5'
local color07='#F3F4F5'
local color08='#C7AE95'
local color09='#C7C795'
local color0A='#AEC795'
local color0B='#95C7AE'
local color0C='#95AEC7'
local color0D='#AE95C7'
local color0E='#C795AE'
local color0F='#C79595'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

}

_gen_fzf_default_opts
