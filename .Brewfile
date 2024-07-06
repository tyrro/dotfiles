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
    cask "postman" unless File.directory?("/Applications/Postman.app")
    cask "iterm2" unless File.directory?("/Applications/iTerm.app")

    # Unix
    brew "cmake"
    brew "universal-ctags"
    brew "git"
    brew "openssl"
    brew "pkg-config"
    brew "rcm"
    brew "reattach-to-user-namespace"
    brew "the_silver_searcher"
    brew "tmux"
    brew "gpg"
    brew "zsh"

    # GitHub extensions
    brew "gh"
    cask "github" unless File.directory?("/Applications/GitHub Desktop.app")
    brew "git-lfs"

    # Editor
    cask "visual-studio-code" unless File.directory?("/Applications/Visual Studio Code.app")

    # Programming language prerequisites and package managers
    brew "libyaml" # should come after openssl
    brew "coreutils"

    # Communication
    cask "chatgpt" unless File.directory?("/Applications/ChatGPT.app")
    cask "messenger" unless File.directory?("/Applications/Messenger.app")
    cask "whatsapp" unless File.directory?("/Applications/WhatsApp.app")
    cask "zoom" unless File.directory?("/Applications/zoom.us.app")

    # Web
    tap "heroku/brew"
    tap "phrase/brewed"

    # Devops
    cask "docker"
    brew "awscli"

    # Image manipulation
    brew "imagemagick"

    # Others
    brew "phrase"
    brew "libpq"
