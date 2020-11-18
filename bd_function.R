unlink("docs", recursive=TRUE)
if (file.exists("_main.Rmd")) 
    #Delete file if it exists
    file.remove("_main.Rmd")
bookdown::render_book("index.Rmd", "bookdown::gitbook")
file.create('docs/.nojekyll')
rm(list = ls())
rstudioapi::viewer("docs/index.html")