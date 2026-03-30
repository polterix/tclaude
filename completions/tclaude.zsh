#compdef tclaude

_tclaude() {
  local -a commands sessions

  commands=(
    'ls:Lister les sessions'
    'kill:Tuer une session'
    'rename:Renommer une session'
  )

  sessions=(${(f)"$(tmux ls -F '#{session_name}' 2>/dev/null)"})

  case $CURRENT in
    2)
      _describe 'commandes' commands
      _describe 'sessions existantes' sessions
      ;;
    3)
      case $words[2] in
        kill)
          local -a targets
          targets=('all:Toutes les sessions')
          _describe 'cibles' targets
          _describe 'sessions' sessions
          ;;
        rename)
          _describe 'sessions' sessions
          ;;
      esac
      ;;
    4)
      case $words[2] in
        rename)
          _message 'nouveau nom'
          ;;
      esac
      ;;
  esac
}

_tclaude "$@"
