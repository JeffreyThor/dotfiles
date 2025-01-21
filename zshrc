# Sets the default text editor
export EDITOR="zed"

# Open files with VSCode using `code <filename>`
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# odin
export PATH="$HOME/Developer/odin:$PATH"

# zig
# export PATH="$HOME/Developer/zig/build/stage3/bin:$PATH"
export PATH="$HOME/Developer/zig-0.13.0:$PATH"

# minisign
export PATH="$HOME/Developer/minisign/zig-out/bin:$PATH"

