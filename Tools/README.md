# CLI Tools
 * ## screen
    | Shortcut     | Action |
    | :---        |    :----:   |
    | ctrl + a + w    |  list all windows at the buttom     |
    | ctrl + a + c  | create a new window        |
    | ctrl + a + A | change window name |
    | ctrl + a + " | switch between windows |
    | ctrl + a + \| | split window horizontaly |
    | ctrl + a + S | split window vertically |
    | ctrl + a + tab | move between regions |
    | ctrl + a + X | terminate current region |
    | ctrl + a + Q | terminate all regions except current one |

 * ## vim
 * ### installation
       sudo apt install vim && sudo apt install vim-gtk 
 * ### insert mode 
        press i to enter insert mode 
 * ### Cursor Movement
    | Shortcut     | Action |
    | :---        |    :----:   |
    | k | move cursor up |
    | j | move cursor down|
    | h | move cursor left|
    | l | move cursor right|
    | 5gg or 5G | move cursor to line 5|
    | G | move cursor to last line|
    | gg | move cursor to first line|
 * ### how to exit 
    | Shortcut     | Action |
    | :---        |    :----:   |
    | :w | save |
    | :q | exit (if there is not change in file) |
    | :q! | exit without saving |
    | :wq , :x | save and exit |
 * ### visual mode
        press v to enter visual mode
        press ctrl + v to enter visual-block mode
        press V to enter visual-line mode
    | Shortcut     | Action |
    | :---        |    :----:   |
    | y | yank (copy to vim register) |
    | d | cut (cut to vim register)|
    | "+y | copy to system clipboard |
    | "+d | cut to system clipboard |