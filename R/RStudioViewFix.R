

.onLoad <- function(libname, pkgname) {
  packageStartupMessage("RStudio View function fix, do not fear click for large table now")
  packageStartupMessage("RStudio guys please integrate this directly to RStudio")

  env = environment(View)
  env = parent.env(env)

  while(!identical(env, emptyenv())) {
    if (exists("View",env)) {
      .RStudioView <<- get("View", env)
      break
    }
    env = parent.env()
  }

  invisible()
}

View <- function(x, title) {

  if (missing(title))
    title <- deparse(substitute(x))[1]

  if ("data.frame" %in% class(x) && nrow(x)>1000 ) {
    .RStudioView(x[1:1000,], title)
  } else {
    .RStudioView(x, title)
  }
  invisible()
}

