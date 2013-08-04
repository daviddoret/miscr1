# Re-build the package and publishes it

#
if(!require(devtools)){
  install.packages("devtools")
  library("devtools")
}
if(require(devtools)){
  project.path <- "/Users/David/Documents/miscr1"
  source.path <- paste0(project.path, "/Source")
  package.path <- paste0(project.path, "/Package")
  setwd(source.path)
  
  # TODO (DMD): Add auto-incrementation of the
  #             version number in the DESCRIPTION file.
  
  # First, build the development version,
  # in R these are named "bundles".
  devtools::build(path = package.path,
                  binary = FALSE)  

  # Then, build the binary version,
  # for non-developers.
  #devtools::build(path = package.path,
  #                binary = TRUE)  
  
  # The build will be located here:
  bundle.filename <- dir("/Users/David/Documents/miscr1/Package/", pattern="*.tar.gz")
  bundle.original.path <- paste0(package.path,"/",bundle.filename)
  bundle.destination.path <- paste0(package.path,"/miscr1.tar.gz")
  file.rename(from = bundle.original.path,
              to = bundle.destination.path)
}else{
  error("please install devtools")
}
  

