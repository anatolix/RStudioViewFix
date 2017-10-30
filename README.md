# RStudioViewFix

Some people use R-Studio for quite large data. For example your data.table could be 100Gb in memory.

Accidentally clicking "View" on this big table causes RStudio to hang up, because all 100Gb will be streamed to R-Studio. (After it it will cuts first 1000 lines and displays them).

This package replace "View" function to cut 1000 lines in R itself, passing only 1000 lines to R-Studio.

## R-Studio ppl

Please implement this inside R-Studio code. You could use reference implementation from here :)