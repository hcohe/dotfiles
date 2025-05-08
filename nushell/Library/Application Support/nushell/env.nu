use std/util "path add"

path add "/usr/local/bin"
path add "~/.local/bin"
path add "/opt/homebrew/bin"

# $env.GOPATH = "~/go"
# path add ($env.GOPATH | path join "bin")
# path add "/usr/local/go/bin"
# path add "~/.krew/bin/"
#

# $env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optionacl
#
# mkdir ~/.cache/carapace
# carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
zoxide init nushell --cmd cd | save -f ~/.zoxide.nu
