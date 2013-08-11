Number.Root <- function(radicant, 
                        degree, 
                        na.rm = TRUE){
  # It is surprising that R does not provide natively a root
  # function. A root function seems more intuitive in certain
  # situations than a 1/n exponent, even though the two are
  # equivalent.
  #
  # TODO: Handle with elegance the case when there are
  #       multiple roots.
  # TODO: Add support for complex numbers.
  # TODO: Handle with elegance the case when parameters
  #       are passed as vectors.
  # TODO: Implement na.rm parameter
  
  if(na.rm == TRUE){
    radicant <- Vector.RemoveNA(radicant)
  }
  
  return(radicant ^ ( 1 / degree ))
}