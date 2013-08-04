# Install the bundled version of the "miscr1" package
# For developers
# Require: devtools
if(!require(devtools)){
  install.packages("devtools")
  library(devtools)
}
if(require(devtools)){
 devtools::install_github() 
}
else
{
  warning("Bundled R packages are available for development purposes. Hence, they require the \"devtools\" package. Please install the \"devtools\" package with the following command: \"install.packages('devtools')\".")
}