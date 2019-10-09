# unlink("docs", recursive=TRUE)
bookdown::render_book("index.Rmd", "bookdown::gitbook")
file.create('docs/.nojekyll')
rm(list = ls())
