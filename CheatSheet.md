**Overview of most importannt keys. For a deep dive, see dwm's config.h.** 

| Modifier | Key | Function | Argument |
| ----------- | ----------- | ----------- | ----------- |
| win + shift | enter | dmenu |
| win | enter| st terminal |
| win | b | toggle top bar |




	
	{ MODKEY,                       XK_b,                        togglebar,         {0} },
	{ 0, 			                XF86XK_MonBrightnessUp, 	 spawn, 	        {.v = brupcmd} },
	{ 0, 			                XF86XK_MonBrightnessDown, 	 spawn,           	{.v = brdowncmd} },
	{ 0, 				            XF86XK_AudioLowerVolume, 	 spawn,           	{.v = downvol} },
	{ 0, 				            XF86XK_AudioRaiseVolume, 	 spawn,           	{.v = upvol} },
	{ 0, 				            XF86XK_AudioMute, 		     spawn,           	{.v = mutevol} },
	{ 0, 				            XF86XK_AudioPrev,			 spawn,           	{.v = prevtrack} },
	{ 0, 				            XF86XK_AudioNext,			 spawn,           	{.v = nexttrack} },
	{ 0, 				            XF86XK_AudioPlay,			 spawn,           	{.v = playpausetrack} },
	{ MOD2KEY|ControlMask, 		    XK_c, 			             spawn, 	        {.v = configscript} },
	{ MOD2KEY|ControlMask, 		    XK_m, 			             spawn, 	        {.v = browserbookmarksscript} },
	{ MOD2KEY,                      XK_s,                        spawn,      		{.v = flameshot} },
	{ MOD2KEY|ControlMask,          XK_j,                        spawn,             {.v = joshuto} },
	{ MOD2KEY|ControlMask, 		    XK_Delete, 			         spawn, 	        {.v = powermenu} },
	{ MOD2KEY|ControlMask,          XK_b,                        spawn,             SHCMD("helium-browser")},
	{ MOD2KEY|ControlMask,          XK_t,                        spawn,             SHCMD("signal-desktop")},
	{ MOD2KEY|ControlMask,          XK_h,                        spawn,             SHCMD("")},
	{ MOD2KEY|ControlMask,          XK_p,                		 spawn,             SHCMD("pcmanfm")},
	{ MOD2KEY|ControlMask,          XK_o,                		 spawn,             SHCMD("obsidian")},
	{ MODKEY|ShiftMask,             XK_j,                        rotatestack,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_k,                        rotatestack,       {.i = -1 } },
	{ MODKEY,                       XK_j,                        focusstack,        {.i = +1 } },
	{ MODKEY,                       XK_k,                        focusstack,        {.i = -1 } },
	{ MODKEY,                       XK_i,                        incnmaster,        {.i = +1 } },
	{ MODKEY,                       XK_d,                        incnmaster,        {.i = -1 } },
	{ MODKEY,                       XK_h,                        setmfact,          {.f = -0.05} },
	{ MODKEY,                       XK_l,                        setmfact,          {.f = +0.05} },
	{ MODKEY,                       XK_z,                        zoom,              {0} },
	{ MODKEY|MOD2KEY,               XK_u,                        incrgaps,          {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_u,                        incrgaps,          {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_i,                        incrigaps,         {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_i,                        incrigaps,         {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_o,                        incrogaps,         {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_o,                        incrogaps,         {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_6,                        incrihgaps,        {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_6,                        incrihgaps,        {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_7,                        incrivgaps,        {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_7,                        incrivgaps,        {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_8,                        incrohgaps,        {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_8,                        incrohgaps,        {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_9,                        incrovgaps,        {.i = +1 } },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_9,                        incrovgaps,        {.i = -1 } },
	{ MODKEY|MOD2KEY,               XK_0,                        togglegaps,        {0} },
	{ MODKEY|MOD2KEY|ShiftMask,     XK_0,                        defaultgaps,       {0} },
	{ MODKEY,                       XK_Tab,                      view,              {0} },
	{ MODKEY,                       XK_q,                        killclient,        {0} },
	{ MODKEY,                       XK_s,                        setlayout,         {.v = &layouts[0]} },
	{ MODKEY,                       XK_t,                        setlayout,         {.v = &layouts[1]} },
	{ MODKEY,                       XK_f,                        setlayout,         {.v = &layouts[2]} },
	{ MODKEY,                       XK_m,                        setlayout,         {.v = &layouts[3]} },
	{ MODKEY,                       XK_space,                    setlayout,         {0} },
	{ MODKEY|ShiftMask,             XK_space,                    togglefloating,    {0} },
	{ MODKEY,                       XK_0,                        view,              {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,                        tag,               {.ui = ~0 } },
	{ MODKEY,                       XK_comma,                    focusmon,          {.i = -1 } },
	{ MODKEY,                       XK_period,                   focusmon,          {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,                    tagmon,            {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period,                   tagmon,            {.i = +1 } },
	TAGKEYS(                        XK_1,                                           0)
	TAGKEYS(                        XK_2,                                           1)
	TAGKEYS(                        XK_3,                                           2)
	TAGKEYS(                        XK_4,                                           3)
	TAGKEYS(                        XK_5,                                           4)
	TAGKEYS(                        XK_6,                                           5)
	TAGKEYS(                        XK_7,                                           6)
	TAGKEYS(                        XK_8,                                           7)
	TAGKEYS(                        XK_9,                                           8)
	{ MODKEY|ShiftMask,             XK_Escape, quit,                                {0} },
	{ MODKEY|ControlMask|ShiftMask, XK_q,      quit,                                {1} }, 
