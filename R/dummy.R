##' Dummy Functions
##'
##'@export
RxODE.doc <- function(){
    devtools::build_vignettes(quiet=FALSE)
    if (file.exists("../RxODE/_pkgdown.yml")) {
        try(unlink("_pkgdown.yml"));
        file.copy("../RxODE/_pkgdown.yml", "_pkgdown.yml");
    }
    pkgdown::build_site()
    writeLines(c("<!DOCTYPE html>",
                 "<head>",
                 "<meta http-equiv=\"Refresh\" content=\"0; url=https://nlmixrdevelopment.github.io/RxODE/index.html\" />",
                 "</head>",
                 "<html>",
                 "</html>"),"docs/index.html")

}
