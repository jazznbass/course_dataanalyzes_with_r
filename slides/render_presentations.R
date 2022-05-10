

info <-
  list(
  company = "University of Potsdam",
  author = "Jürgen Wilbert",
  date = paste0('Version: ', format(Sys.time(), '%d %B %Y'))
)

files <- dir(pattern = "*.Rmd")

files <- c(
  #"01-Introduction.Rmd",
 #"02-Basics_1.Rmd",


   "02-Basics_soph_sub.Rmd"
#  "02b-Basics_misc.Rmd"
#  "03-Rmarkdown.Rmd",
#  "04-Tidyverse.Rmd",
#  "04b-dplyr.Rmd",
#  "06-ggplot2.Rmd",
#  "05-Statistics.Rmd"
  #"07-Regression.Rmd"
)

files <- "02c-Create_new_variables.html"

for(file  in files) {
  rmarkdown::render(
    file,
    output_dir = "html"
  )
}

