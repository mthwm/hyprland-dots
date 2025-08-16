static const char norm_fg[] = "#9abfcf";
static const char norm_bg[] = "#150f14";
static const char norm_border[] = "#6b8590";

static const char sel_fg[] = "#9abfcf";
static const char sel_bg[] = "#CD7142";
static const char sel_border[] = "#9abfcf";

static const char urg_fg[] = "#9abfcf";
static const char urg_bg[] = "#9B6A59";
static const char urg_border[] = "#9B6A59";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
