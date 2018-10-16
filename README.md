# Vi like key bindings for MacOS using right shift 

[Karabiner elements](https://github.com/tekezo/Karabiner-Elements) and [Hammerspoon](http://www.hammerspoon.org/) configuration that provide vi like keymappings for macOS. 

Works with macOS Seirra defaults using right shift and capslock only as modifiers.

### Mappings

##### Movement (left shift for select)
- h/j/k/l -> arrow keys
- w/b -> word forward/back
- a/e -> home/end
- ;/p -> pageup/down
- u/o -> cmd+shift+[/] (tab switch)

##### Command mapping
- a/s/c/v/x/z repeated with command
- h/j/k/l -> arrow keys with command (for navigation in file managers)
- y -> cmd+w (close tab)
- g -> cmd+l (address bar)
- h/l -> cmd+[/] (history back/forward) 

##### Control mapping
- h/l -> to arrow+control (for space switching) 

##### Editing
- m -> return
- f/d -> delete/backspace
- space -> tab
- q -> single quote
- 2 -> double quote
- 3 -> hash
- 9/0 -> (/)
- [/] -> [/] (shift for {/})
- . -> "->"
- r -> f6+shift (rename)

##### Other
- caplocks -> command
- caplocks+enter -> command+space (spotlight default)
- caplocks+space -> escape

### Installation

Clone/download then run the intallation script in the root of the project:

```sh
./bin/install.sh
```

alternatively complete the following:

```sh
# Install Homebrew (see https://brew.sh).
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Karabiner elements.
brew cask install karabiner-elements

# Install hammerspoon
brew cask install hammerspoon

# Copy the configuration from the root of the project
cp -R ./src/hammerspoon ~/.hammerspoon
cp ./src/karabiner/right-shift-vi-like.json ~/.config/karabiner/assets/complex_modifications/right-shift-vi-like.json 
```

Finally the configurations will need to be loaded:
 
 - Hammerspoon -> "Reload configuration" from preferences or menu
 - Karabiner elements -> preferences then "complex configuration" -> "Add rule" -> "right shift vi like"
