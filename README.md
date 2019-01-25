# Vi like key bindings for MacOS using right shift

[Karabiner elements](https://github.com/tekezo/Karabiner-Elements) configuration for vi like keymappings on macOS Seirra.

### Mappings

all with right shift pressed..

##### Movement/navigation
- h/j/k/l -> mapped to arrow keys
- w/b -> word forward/back
- a/e -> home/end
- ;/p -> pageup/down
- u/o -> cmd+shift+[/] (tab switch)
- +command/option/left shift/control -> apply to above

##### Editing
- s/c/v/x/z/t sent with command modifier
- m -> return
- f/d -> delete/backspace
- space -> tab
- space+left shift -> shift tab
- q -> single quote
- q+left shift -> closed single quote 
- 2 -> double quote
- 2+left shift -> closed double quote
- 3 -> hash
- . -> "->"
- .+left shift -> "=>"
- r -> f6+shift (rename)

##### Other
- caplocks -> command
- caplocks+enter -> command+space (spotlight default)
- caplocks+space -> escape
- y -> cmd+w (close tab)
- g -> cmd+l (address bar)
- h/l -> cmd+[/] (history back/forward)

### Installation

Clone/download then run the installation script in the root of the project:

```sh
bin/install.sh
```

alternatively complete the following:

```sh
# Install Homebrew (see https://brew.sh).
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Karabiner elements.
brew cask install karabiner-elements

# Copy the configuration from the root of the project
cp ./src/karabiner/right-shift-vi-like.json ~/.config/karabiner/assets/complex_modifications/right-shift-vi-like.json
```

Finally the configurations will need to be loaded:

 - Karabiner elements -> preferences then "complex configuration" -> "Add rule" -> "right shift vi like"
