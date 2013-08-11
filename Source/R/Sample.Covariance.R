Sample.Covariance <- function(sample.x,
                              sample.y,
                              na.rm = TRUE){
  # References:
  # - http://en.wikipedia.org/wiki/Covariance
  
  # TODO: Consider more robust algorithm from here:
  # - http://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
  
  # TODO: Implement parameter validation, in paricular check
  # size consitency between samples
  
  if(na.rm == TRUE){
    sample.x <- Vector.RemoveNA(sample.x)
    sample.y <- Vector.RemoveNA(sample.y)
  }
  
  n = length(sample.x)
  mean.x <- RandomVariable.Mean.Arithmetic(sample.x)
  mean.y <- RandomVariable.Mean.Arithmetic(sample.y)
  
  # A naive algorithm
  return(
    (1 / (n - 1)) *
      sum(
        (sample.x - mean.x) * (sample.y - mean.y)))
  
}