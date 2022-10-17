files <- c(
  #"01-Introduction.Rmd",
 #"02-Basics_1.Rmd",


   #"02-Basics_soph_sub.Rmd"
#  "02b-Basics_misc.Rmd"
#  "03-Rmarkdown.Rmd",
 #"04-Tidyverse.Rmd",
  "04b-dplyr.Rmd"
#  "06-ggplot2.Rmd",
#  "05-Statistics.Rmd"
  #"07-Regression.Rmd"
)

files <- "04c-tidyr.qmd"

for(file  in files) {
  quarto::quarto_render(
    file
  )
}

html_files <- dir(pattern = "*.html")
file.copy(html_files, "html", overwrite = TRUE)
file.remove(html_files)
