const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#150f14", /* black   */
  [1] = "#9B6A59", /* red     */
  [2] = "#CD7142", /* green   */
  [3] = "#AB8D6F", /* yellow  */
  [4] = "#E09F54", /* blue    */
  [5] = "#37688D", /* magenta */
  [6] = "#947B83", /* cyan    */
  [7] = "#9abfcf", /* white   */

  /* 8 bright colors */
  [8]  = "#6b8590",  /* black   */
  [9]  = "#9B6A59",  /* red     */
  [10] = "#CD7142", /* green   */
  [11] = "#AB8D6F", /* yellow  */
  [12] = "#E09F54", /* blue    */
  [13] = "#37688D", /* magenta */
  [14] = "#947B83", /* cyan    */
  [15] = "#9abfcf", /* white   */

  /* special colors */
  [256] = "#150f14", /* background */
  [257] = "#9abfcf", /* foreground */
  [258] = "#9abfcf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
