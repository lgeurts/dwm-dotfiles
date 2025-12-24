/* User and group to drop privileges to */
static const char *user  = "luge";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
	[CAPS] = "red",         /* CapsLock on */
};

/* Treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "YOU STUPID TOOK, GO AND BE NO MORE OF ANY NUISANCE!";

/* text color */
static const char * text_color = "#ffffff";
/* text size (must be a valid size) */
static const char * font_name = "6x13";
