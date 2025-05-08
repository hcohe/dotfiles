# source ~/.cache/carapace/init.nu
$env.config.edit_mode = 'vi'
$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

alias v = nvim
alias l = ls
alias ll = ls -al
alias docker = podman

alias kubectl = kubecolor 
alias k = kubectl
alias ka = kubectl --namespace all
alias kctx = kubectl-ctx
alias kns = kubectl-ns

source ./catppuccin_mocha.nu

$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_INDICATOR_VI_NORMAL = "> "

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

source ~/.zoxide.nu
