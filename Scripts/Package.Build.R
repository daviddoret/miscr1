# Re-build the package and publishes it

# on my mac, I had to install MacTex

# On my Mac, I had to modify the original PATH variable to make 
# the build function and overcome this error message:
#      pdflatex not found. Not building PDF vignettes.
#      '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla CMD build  \
#     '/Users/David/Documents/miscr1/Source' --no-manual --no-resave-data  \
#     --no-vignettes 
#Sys.getenv("PATH")
#[1] "/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
#> Sys.setenv(PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin")
#> Sys.getenv("PATH")
#[1] "/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin"

binary.latestversion.path <- "/Users/David/Documents/miscr1/Package/miscr1_latestversion.tgz"
binary.currentversion.path <- "/Users/David/Documents/miscr1/Package/miscr1_0.1.tgz"

source.latestversion.path <- "/Users/David/Documents/miscr1/Package/miscr1_latestversion.tar.gz"
source.currentversion.path <- "/Users/David/Documents/miscr1/Package/miscr1_0.1.tar.gz"


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
  devtools::build(path = package.path,
                  binary = TRUE)  
  
  # The build will be located here:
  bundle.filename <- dir("/Users/David/Documents/miscr1/Package/", pattern="*.tar.gz")
  bundle.original.path <- paste0(package.path,"/",bundle.filename)
  bundle.destination.path <- paste0(package.path,"/miscr1.tar.gz")
  #file.rename(from = bundle.original.path,
  #            to = bundle.destination.path)
  file.copy(from = binary.currentversion.path,
            to = binary.latestversion.path,
            overwrite = TRUE)
  
  file.copy(from = source.currentversion.path,
            to = source.latestversion.path,
            overwrite = TRUE)
}else{
  error("please install devtools")
}
  

