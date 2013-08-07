# Install the bundled version of the "miscr1" package
# For developers
# Require: devtools

# TODOO (DMD): Option between binary and bundle versions.

# Check if "devtools" is installed.
if(!require(devtools)){
  # "devtools" is not installed. Install it and load it.
  install.packages("devtools")
  library(devtools)
}

if(require(devtools)){

  package.name <- "miscr1"
  package.url <- "https://github.com/daviddoret/miscr1/raw/master/Package/miscr1.tar.gz"
  
  # Curiously, I encountered various errors with the install_github function.
  # Previous version: devtools::install_github(blablabla)
  install_url(url = package.url)
  
}else{
  
  warning("Bundled R packages are available for development purposes. Hence, they require the \"devtools\" package. Please install the \"devtools\" package with the following command: \"install.packages('devtools')\".")

}