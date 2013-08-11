# Install the bundled version of the "miscr1" package
# For developers
# Require: devtools

# TODOO (DMD): Option between binary and bundle versions.

miscr1.install <- function(){

  #TODO: check and install RCurlr
  
  install.binary <- function(){
    
    # TODO: url.exists("https://sourceforge.net/"))
    
    #install.packages(pkgs="miscr1",repos="https://github.com/daviddoret/miscr1/raw/master/Package/miscr1_latestversion.tgz")
    #local.path <- tempfile(pattern = "file", tmpdir = tempdir())
    local.path <- paste0(tempdir(),
                         "/miscr1.tgz")
    package <- getBinaryURL(url = "https://github.com/daviddoret/miscr1/raw/master/Package/miscr1_latestversion.tgz",
           ssl.verifypeer = FALSE)
    write(x = package, file = local.path)
    install.packages(pkgs = local.path,
                     repos = NULL,
                     type = "source")
  }
  install.source <- function(){
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
  }
}


