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
- - -> "->"
- = -> "=>"
- r -> f6+shift (rename)

##### Other
- caplocks -> command
- caplocks+enter -> command+space (spotlight default)
- caplocks+space -> escape
- y -> cmd+w (close tab)
- g -> cmd+l (address bar)
- h/l -> cmd+[/] (history back/forward)

### Installation

Clone this repository then run `sh bin/install.sh` in the root of the project.

Alternatively install [Karabiner elements](https://pqrs.org/osx/karabiner/) then import the [rules](https://pqrs.org/osx/karabiner/complex_modifications/#right_shift_vi_like) from it's site. 

For both methods the rules will need to be loaded in the Karabiner elements UI:

```"Preferences" -> "Complex Modifications" -> "Add rule" -> "right shift vi like" -> "Enable all"```