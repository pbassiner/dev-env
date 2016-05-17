## My theme, optimized number of calls to git
autoload -U colors && colors
autoload -Uz vcs_info

# Here are the colours from Textmate's Monokai theme:
#
# Black: 0, 0, 0
# Red: 229, 34, 34
# Green: 166, 227, 45
# Yellow: 252, 149, 30
# Blue: 196, 141, 255
# Magenta: 250, 37, 115
# Cyan: 103, 217, 240
# White: 242, 242, 242

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# More symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ   ➭

# Determine if we are using a gemset.
function rvm_gemset() {
    GEMSET=`rvm gemset list | grep '=>' | cut -b4-`
    if [[ -n $GEMSET ]]; then
        echo "%{$fg[yellow]%}$GEMSET%{$reset_color%}|"
    fi
}

CRUNCH_BRACKET_COLOR="%{$fg[white]%}"
CRUNCH_TIME_COLOR="%{$fg[yellow]%}"
CRUNCH_RVM_COLOR="%{$fg[magenta]%}"
CRUNCH_DIR_COLOR="%{$fg[cyan]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[green]%}"
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"

# Our elements:
local CRUNCH_TIME_="$CRUNCH_BRACKET_COLOR{$CRUNCH_TIME_COLOR%T$CRUNCH_BRACKET_COLOR}%{$reset_color%}"
if [ -e ~/.rvm/bin/rvm-prompt ]; then
      CRUNCH_RVM_="$CRUNCH_BRACKET_COLOR"["$CRUNCH_RVM_COLOR\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}$CRUNCH_BRACKET_COLOR"]"%{$reset_color%}"
   else
   if which rbenv &> /dev/null; then
      CRUNCH_RVM_="$CRUNCH_BRACKET_COLOR"["$CRUNCH_RVM_COLOR\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}$CRUNCH_BRACKET_COLOR"]"%{$reset_color%}"
   fi
fi


# if superuser make the username green
if [ $UID -eq 0 ]; then NCOLOR="yellow"; else NCOLOR="red"; fi

# user part, color coded by privileges
local user="%{$fg_bold[$NCOLOR]%}%n%{$reset_color%}"

# Hostname part.  compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
local host="%{$fg_bold[green]%}${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"

# Compacted $PWD
local pwd="%{$fg_bold[blue]%}%30<...<%~%<<%{$reset_color%}"

# The prompt
setopt prompt_subst
#PROMPT='$CRUNCH_TIME_${user}@${host}${pwd}$(git_branch_string)%{$fg[white]%}%(!.#.»)%{$reset_color%} '
PROMPT='${user}@${host}${pwd}$(git_branch_string)%{$fg[white]%}%(!.#.»)%{$reset_color%} '
# Add this at the start of RPROMPT to include rvm info showing ruby-version@gemset-name
# %{$fg[yellow]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%}

# display exitcode on the right when >0
local return_code="%(?..%{$fg[red]%}%? ↵ %{$reset_color%})"

# The right-hand prompt
RPROMPT='%{$reset_color%}${return_code}$(git_prompt_string)$(git_prompt_short_sha)%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}(%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗" # Ⓓ
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔" # Ⓞ

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%} ✭" # ⓣ
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚" # ⓐ ⑃
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⚡"  # ⓜ ⑁
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖" # ⓧ ⑂
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➜" # ⓡ ⑄
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ♒" # ⓤ ⑊

GIT_PROMPT_DIRTY="%{$fg[red]%}✗" # Ⓓ
GIT_PROMPT_CLEAN="%{$fg[green]%}✔" # Ⓞ

GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[white]%}[%{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[white]%}]%{$reset_color%}"
GIT_PROMPT_PREFIX_BRANCH="%{$reset_color%}%{$fg[white]%}(%{$reset_color%}"
GIT_PROMPT_SUFFIX_BRANCH="%{$reset_color%}%{$fg[white]%})%{$reset_color%}"

GIT_PROMPT_AHEAD="%{$fg[cyan]%}↑%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[magenta]%}↓%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[white]%}⚐%{$reset_color%}"

GIT_PROMPT_UNTRACKED="%{$fg_bold[magenta]%}✭%{$reset_color%}"
GIT_PROMPT_NSTAGED="%{$fg_bold[cyan]%}✚%{$reset_color%}"
GIT_PROMPT_NSTAGEDMOD="%{$fg_bold[yellow]%}✚%{$reset_color%}"
GIT_PROMPT_NSTAGEDDEL="%{$fg_bold[red]%}✚%{$reset_color%}"

GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}⚡%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}⚡%{$reset_color%}"
GIT_PROMPT_MODIFIEDSTAGED="%{$fg_bold[red]%}⚡%{$reset_color%}"

GIT_PROMPT_BOTH="%{$fg_bold[green]%}☣%{$reset_color%}"

GIT_PROMPT_RENAMED="%{$fg_bold[blue]%}➜%{$reset_color%}"

GIT_PROMPT_DELETE="%{$fg_bold[yellow]%}✖%{$reset_color%}"
GIT_PROMPT_NDELETE="%{$fg_bold[red]%}✖%{$reset_color%}"

GIT_PROMPT_STASH="%{$fg_bold[blue]%}✎%{$reset_color%}"


# Show Git branch/tag, or name-rev if on detached head
git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {
  local GIT_STATE=""
  local GIT_PROMPT_BRANCH="%B%F{green}"
  local BRANCH="$1"
  BRANCH="${BRANCH#(refs/heads/|tags/)}"

  # When merging don't bother
  if test -r .git/MERGE_HEAD; then
  else
    # L is used as a padding since there is no status code L and ' A' is not the same as 'A '
    local STAT="$(cat ~/.git_current_st)"
    typeset -A STATE_MAP
    STATE_MAP=( ${(Oa)=STAT} )

    local NUM_ADD=$STATE_MAP[??]
    if [[ -n $NUM_ADD ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED$NUM_ADD
    fi

    local NUM=$STATE_MAP[MM]
    if [[ -n $NUM ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIEDSTAGED$NUM
    fi

    local NUM=$STATE_MAP[LM]
    if [[ -n $NUM ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED$NUM
    fi

    local NUM_SG=$STATE_MAP[ML]
    if [[ -n $NUM_SG ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED$NUM_SG
    fi

    local NUM_BOTH=$STATE_MAP[UU]
    if [[ -n $NUM_BOTH ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_BOTH$NUM_BOTH
    fi

    local NUM_NG=$STATE_MAP[AL]
    if [[ -n $NUM_NG ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_NSTAGED$NUM_NG
    fi

    local NUM_NG=$STATE_MAP[AM]
    if [[ -n $NUM_NG ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_NSTAGEDMOD$NUM_NG
    fi

    local NUM_NG=$STATE_MAP[AD]
    if [[ -n $NUM_NG ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_NSTAGEDDEL$NUM_NG
    fi

    local NUM_DEL=$STATE_MAP[DL]
    if [[ -n $NUM_DEL ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_DELETE$NUM_DEL
    fi

    local NUM_NDEL=$STATE_MAP[LD]
    if [[ -n $NUM_NDEL ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_NDELETE$NUM_NDEL
    fi

    local NUM_REN=$STATE_MAP[RL]
    if [[ -n $NUM_REN ]]; then
      GIT_STATE=$GIT_STATE$GIT_PROMPT_RENAMED$NUM_REN
    fi

  fi

  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi
}

parse_git_branch() {
  local BRANCH="$1"
  local BRANCH="${BRANCH#(refs/heads/|tags/)}"

  local GIT_PROMPT_BRANCH="%B%F{white}"
  local PROMPT_BRANCH_ICON=$GIT_PROMPT_CLEAN

  # When merging don't bother
  if test -r .git/MERGE_HEAD; then
    GIT_PROMPT_BRANCH="%B%F{red}"
    BRANCH="($BRANCH|MERGING)"$GIT_PROMPT_MERGING
  else
    local DIFF_COM_NUMS="$(git rev-list --count --left-right origin/$BRANCH...$BRANCH 2> /dev/null)"

    typeset -a DIFF_COM
    DIFF_COM=( ${=DIFF_COM_NUMS} )

    local NUM_BEHIND=$DIFF_COM[1]
    if [ "$NUM_BEHIND" -gt 0 ]; then
      DIFF=$GIT_PROMPT_BEHIND$NUM_BEHIND
    fi

    local NUM_AHEAD=$DIFF_COM[2]
    if [ "$NUM_AHEAD" -gt 0 ]; then
      DIFF=$DIFF$GIT_PROMPT_AHEAD$NUM_AHEAD
    fi

    # L is used as a padding since there is no status code L and ' A' is not the same as 'A '
    local STAT="$(git status --porcelain 2> /dev/null | cut -c 1-2 | sort | tr ' ' 'L' | uniq -c)"
    echo $STAT > ~/.git_current_st
    typeset -A STATE_MAP
    STATE_MAP=( ${(Oa)=STAT} )

    local NUM_ADD=$STATE_MAP[??]
    if [[ -n $NUM_ADD ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM=$STATE_MAP[LM]
    if [[ -n $NUM ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_B=$STATE_MAP[MM]
    if [[ -n $NUM_B ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_SG=$STATE_MAP[ML]
    if [[ -n $NUM_SG ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_BOTH=$STATE_MAP[UU]
    if [[ -n $NUM_BOTH ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_NG=$STATE_MAP[AL]
    if [[ -n $NUM_NG ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_NG=$STATE_MAP[AM]
    if [[ -n $NUM_NG ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_NG=$STATE_MAP[AD]
    if [[ -n $NUM_NG ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_DEL=$STATE_MAP[DL]
    if [[ -n $NUM_DEL ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_NDEL=$STATE_MAP[LD]
    if [[ -n $NUM_NDEL ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi

    local NUM_REN=$STATE_MAP[RL]
    if [[ -n $NUM_REN ]]; then
      GIT_PROMPT_BRANCH="%B%F{yellow}"
      PROMPT_BRANCH_ICON=$GIT_PROMPT_DIRTY
    fi
  fi

  local STASH_NO=""
  local STASH="$(git stash list 2> /dev/null | wc -l)"
  if [[ "$STASH" -gt 0 ]]; then
     STASH_NO=$GIT_PROMPT_STASH$STASH
  fi

  echo "$GIT_PROMPT_PREFIX_BRANCH$GIT_PROMPT_BRANCH$BRANCH$PROMPT_BRANCH_ICON$DIFF$GIT_PROMPT_SUFFIX_BRANCH$STASH_NO"
}

# If inside a Git repository, print its branch and state
git_prompt_string() {
  local git_where="$(git_branch)"
  [ -n "$git_where" ] && echo "$(parse_git_state $git_where)"
}

git_branch_string() {
  local git_where="$(git_branch)"
  [ -n "$git_where" ] && echo "$(parse_git_branch $git_where)"
}