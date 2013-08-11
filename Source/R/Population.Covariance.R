Population.Covariance <- function(population.x,
                              population.y,
                              na.rm = TRUE){
  # References:
  # - http://en.wikipedia.org/wiki/Covariance
  
  # TODO: Consider more robust algorithm from here:
  # - http://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
  
  # TODO: Implement parameter validation, in paricular check
  # size consitency between populations
  
  if(na.rm == TRUE){
    population.x <- Vector.RemoveNA(population.x)
    population.y <- Vector.RemoveNA(population.y)
  }
  
  n = length(population.x)
  mean.x <- RandomVariable.Mean.Arithmetic(population.x)
  mean.y <- RandomVariable.Mean.Arithmetic(population.y)
  
  # A naive algorithm
  return(
    (1 / n) *
      sum(
        (population.x - mean.x) * (population.y - mean.y)))
  
}