Population.StandardDeviation <- function(population,
                                     na.rm = TRUE){
  
  # 
  # References:
  # - http://en.wikipedia.org/wiki/Standard_deviation
  
  # TODO: Implement parameter validation
  
  if(na.rm == TRUE){
    population <- Vector.RemoveNA(population)
  }
  
  return (
    Number.Root(
      radicant = Population.Variance(population),
      degree = 2,
      na.rm = na.rm))
      
}