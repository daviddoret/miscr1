# Install the bundled version of the "miscr1" package
# For developers
# Require: devtools
if(!require(devtools)){
  install.packages("devtools")
  library(devtools)
}
if(require(devtools)){
# devtools::install_github() 

  package.name <- "miscr1"
  package.url <- "https://github.com/daviddoret/miscr1/raw/master/Package/miscr1.tar.gz"
  
  # Curiously, I encountered various errors with the install_github function.
  install_url(url = package.url)
}else{
  warning("Bundled R packages are available for development purposes. Hence, they require the \"devtools\" package. Please install the \"devtools\" package with the following command: \"install.packages('devtools')\".")
}