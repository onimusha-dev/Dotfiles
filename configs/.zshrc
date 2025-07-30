# ────────────────────────────────
# ZSH Config – Musa's Setup
# Clean, Fast, and Sexy as Hell
# ────────────────────────────────

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# === Theme ===
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"

# === Plugins ===
plugins=(aliases ubuntu systemadmin sudo history vscode git docker docker-compose ansible colored-man-pages zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# === Example aliases ===
alias studio="studio &"
alias anime="ani-cli"
alias ls="lsd"

# === Custom prompt config ===
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# === Custom paths ===
# Bun
export BUN_PATH="$HOME/.bun/bin"
export PATH="$BUN_PATH:$PATH"
# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# pnpm
export PNPM_HOME="/home/musa-de-codes/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
#Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
#TSC
export PATH="$HOME/.local/share/pnpm:$PATH"
