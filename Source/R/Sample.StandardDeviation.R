Sample.StandardDeviation <- function(sample,
                                     na.rm = TRUE){
  
  # 
  # References:
  # - http://en.wikipedia.org/wiki/Standard_deviation
  
  # TODO: Implement parameter validation
  
  if(na.rm == TRUE){
    sample <- Vector.RemoveNA(sample)
  }
  
  return (
    Number.Root(
      radicant = Sample.Variance(sample, na.rm = FALSE),
      degree = 2,
      na.rm = FALSE))
      
}