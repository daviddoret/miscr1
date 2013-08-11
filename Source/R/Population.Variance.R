Population.Variance <- function(population){
  
  # Returns the variance of a population
  
  # TODO: Consider alternative algorithms from: 
  # http://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
  
  # TODO: Implement parameter validation
  
  mean <- RandomVariable.Mean.Arithmetic(population)
  
  return(
    (sum((population - mean) ^ 2)) / 
      length(population))
  
}