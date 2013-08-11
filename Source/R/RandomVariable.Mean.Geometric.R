RandomVariable.Mean.Geometric <- function(random.variable, na.rm = FALSE){
  
  # TODO: Handle the case where count = 0
  # TODO: Check input: must be two numerical vectors
  
  if(na.rm == TRUE){
    # Not removing NAs will lead to returning NA whenever
    # an NA is present in the random.variable.
    # Removing NAs, on the other hand, will modify the
    # number of items in the vector, hence modify the degree
    # to which the root function is taken.
    random.variable <- Vector.RemoveNA(random.variable)
  }
  
  random.variable.count <- length(random.variable)
  
  if(random.variable.count == 0){
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
  
  random.variable.product <- prod(random.variable, na.rm = na.rm)
  
  return(Number.Root(radicant = random.variable.product, 
                     degree = random.variable.count,
                     na.rm = na.rm))
  
}