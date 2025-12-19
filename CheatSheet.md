**Overview of most important keys. For a deep dive, see dwm's config.h.** 

MODKEY2 = alt
MODKEY = enter 
| Modifier | Key | Function | Argument |
| ----------- | ----------- | ----------- | ----------- |
| win | b | toggle the top bar |
| win | z | zoom |
| win | q | kill st terminal client
| win | s | set window layout 0 |
| win | t | set window layout 1 |
| win | f | set window layout 2 |
| win | m | set window layout 3 |
| win | space | set window layout |
| win | enter| start st terminal |
| win + shift | enter | open dmenu |
| win + shift | space | toggle floating of windows
| alt | s | take a picture with flameshot |
| alt + ctrl | c | choose and edit dotfiles in nvim (e.g. nvim is my default, yours can be different |
| alt + ctrl | m | create a bookmark in browser |
| alt + ctrl | j | start joshuto filemanager |
| alt + ctrl | del | open the powermenu |
| alt + ctrl | b | start helium browser |
| alt + ctrl | t | start signal messenger |
| alt + ctrl | p | start pcmanfm lxde file manager |
| alt + ctrl | o | start obsidian notes |











	{ MODKEY|ShiftMask,             XK_Escape, quit,                                {0} },
	{ MODKEY|ControlMask|ShiftMask, XK_q,      quit,                                {1} }, 
