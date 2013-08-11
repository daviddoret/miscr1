Population.Correlation.PearsonCoefficient <- function(population.x,
                                                  population.y,
                                                  na.rm = TRUE){
  
  # References:
  # - http://en.wikipedia.org/wiki/Correlation_and_dependence
  # - http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient
  # - http://stattrek.com/statistics/correlation.aspx
  
  if(na.rm == TRUE){
    population.x <- Vector.RemoveNA(population.x)
    population.y <- Vector.RemoveNA(population.y)
  }
  
  n = length(population.x)
  mean.x <- RandomVariable.Mean.Arithmetic(population.x)
  mean.y <- RandomVariable.Mean.Arithmetic(population.y)
  sd.x <- Population.StandardDeviation(population.x, na.rm = FALSE)
  sd.y <- Population.StandardDeviation(population.y, na.rm = FALSE)
  
  return(
    (1 / n) *
      sum(((population.x - mean.x) / sd.x) * ((population.y - mean.y) / sd.y))
  )
}
