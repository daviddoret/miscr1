RandomVariable.Mean.Arithmetic <- function(x){
  
  # TODO: Handle the case where count = 0
  # TODO: Check input: must be two numerical vectors
  
  # Yes, this function exists natively in R
  # and it makes no programmatic sense to 
  # articially rewrite it. My idea was to
  # illustrate algorithms for the different
  # means.
  
  x.sum <- sum(x)
  x.count <- length(x)
  
  if(x.count == 0){
    # The default behavior of R is to return
    # infinity ("Inf") when a number is
    # divided by zero. Here, I rather wished
    # to adopt an approach that is mathematically
    # more correct but perhaps programmatically less 
    # practical: to return "undefined".
    # As for as I could find, "undefined" does
    # not exist. But NaN which stands for
    # "Not a Number" sounded to me like a 
    # better fit somehow.
    return(NaN)
  }
  
  x.average <- x.sum / x.count
  
  return(x.average)
  
}