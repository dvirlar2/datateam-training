library(fs)
library(stringr)


## -- convert .rmd to .qmd in /training folder -- ##
rmd_names <- dir_ls(path = "workflows/pi_correspondence/email_templates",
 glob = "*.Rmd")

qmd_names <- str_replace(string = rmd_names,
                         pattern = "Rmd",
                         replacement = "qmd")

# rename .rmd files to end in .qmd
file_move(path = rmd_names, new_path = qmd_names)

# rename _bookdown.yml to _quarto.yml
file_move(path = "reference/_bookdown.yml",
          new_path = "reference/_quarto.yml")
