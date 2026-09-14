# Install dan load paket 'meta'
library(meta)
library(readxl)

# Import data
data <- read_excel("File.xlsx")
data <- data.frame(data)
names(data)
data <- data[,c(1,7,5,6)]

# Buat meta-analisis
meta_analysis <- metagen(
  TE=PROPOLIS.VALUE, 
  lower=FINAL.PROPOLIS, 
  upper=INITIAL.PROPOLIS, 
  studlab=Study, 
  data=data
)

# Buat forest plot
forest(meta_analysis)
