Sample.Variance <- function(sample,
                            na.rm = TRUE){
  
  # Returns the variance of a sample,
  # using an unbiaised estimator.
  
  # TODO: Consider alternative algorithms from: 
  # http://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
  
  # TODO: Implement parameter validation
  
  if(na.rm == TRUE){
    sample <- Vector.RemoveNA(sample)
  }
  
  mean <- RandomVariable.Mean.Arithmetic(sample)
  
  return(
    (sum((sample - mean) ^ 2)) / 
      (length(sample) - 1))
  
}