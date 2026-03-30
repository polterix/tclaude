#compdef tclaude

_tclaude() {
  local -a commands sessions

  commands=(
    'ls:List sessions'
    'kill:Kill a session'
    'rename:Rename a session'
  )

  sessions=(${(f)"$(tmux ls -F '#{session_name}' 2>/dev/null)"})

  case $CURRENT in
    2)
      _describe 'commands' commands
      _describe 'existing sessions' sessions
      ;;
    3)
      case $words[2] in
        kill)
          local -a targets
          targets=('all:All sessions')
          _describe 'targets' targets
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
          _message 'new name'
          ;;
      esac
      ;;
  esac
}

_tclaude "$@"
