set -gx MISE_GO_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-go-packages
set -gx MISE_NODE_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-npm-packages
set -gx MISE_PYTHON_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-python-packages
set -gx MISE_RUBY_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/mise/.default-gems

set -gx MISE_PATH $HOME/.local/bin/mise

if not test -e $MISE_PATH
  curl https://mise.run | sh
end

$MISE_PATH activate fish | source
