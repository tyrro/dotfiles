    # General
    tap "universal-ctags/universal-ctags"
    tap "github/gh"

    # mas-cli to install macOS apps
    brew "mas"

    # General apps
    cask "slack" unless File.directory?("/Applications/Slack.app")
    cask "google-chrome" unless File.directory?("/Applications/Google Chrome.app")
    cask "1password" unless File.directory?("/Applications/1Password.app")
    cask "1password-cli"
    cask "shottr" unless File.directory?("/Applications/Shottr.app")
    cask "postman"
    cask "iterm2"
    cask 'tableplus'
    cask 'grammarly-desktop'

    # Unix
    brew 'ack'
    brew "cmake"
    brew 'curl'
    brew "universal-ctags"
    brew "git"
    brew "openssl"
    brew "pkg-config"
    brew "shared-mime-info"
    brew "rcm"
    brew "reattach-to-user-namespace"
    brew "the_silver_searcher"
    brew "tmux"
    brew "gpg"
    brew "zsh"
    brew "tree"
    brew "zx"
    brew "overmind"

    # GitHub extensions
    brew "gh"
    cask "github" unless File.directory?("/Applications/GitHub Desktop.app")
    brew "git-lfs"

    # Editor
    cask "visual-studio-code" unless File.directory?("/Applications/Visual Studio Code.app")

    # Programming language prerequisites and package managers
    brew "libyaml" # should come after openssl
    brew "coreutils"
    brew "pinentry-mac"

    # Communication
    cask "chatgpt" unless File.directory?("/Applications/ChatGPT.app")
    cask "discord" unless File.directory?("/Applications/Discord.app")
    cask "figma" unless File.directory?("/Applications/Figma.app")
    cask "messenger" unless File.directory?("/Applications/Messenger.app")
    cask "whatsapp" unless File.directory?("/Applications/WhatsApp.app")
    cask "zoom" unless File.directory?("/Applications/zoom.us.app")
    cask "android-file-transfer"
    cask "superduper"

    # Web
    tap "heroku/brew"
    tap "phrase/brewed"

    # Devops
    brew "colima"
    brew "docker"
    brew "docker-compose"
    cask 'aws-vault'
    brew "awscli"
    brew 'aws-iam-authenticator'
    brew 'kubectl'
    brew 'kubectx'

    # Image manipulation
    brew "imagemagick"

    # Others
    brew "phrase"
    brew "libpq"
    brew "libsodium"
