\name{RStudioViewFix}
\alias{RStudioViewFix}
\title{RStudioViewFix}
\usage{
  library(RStudioViewFix)
}
\description{
  Some people use RStudio for large data. For example your data.table could be 100Gb.
  Accidentally clicking View on this table causes RStudio to hang up, because all 100Gb
  will be streamed to RStudio. After it it will cut first 1000 lines and display.

  This package replace View function to cut 1000 lines in R not R Studio.
}
\examples{
  library(RStudioViewFix)
}
