Sample.Correlation.PearsonCoefficient <- function(sample.x,
                                                  sample.y,
                                                  na.rm = TRUE){
  
  # Sample correlation coefficient. The correlation r between two variables is:
  # r = [ 1 / (n - 1) ] * Σ { [ (xi - x) / sx ] * [ (yi - y) / sy ] }
  # where n is the number of observations in the sample, Σ is the summation symbol, 
  # xi is the x value for observation i, x is the sample mean of x, yi is the y value 
  # for observation i, y is the sample mean of y, sx is the sample standard deviation 
  # of x, and sy is the sample standard deviation of y.
  # Reference: http://stattrek.com/statistics/correlation.aspx
  
  # References:
  # - http://en.wikipedia.org/wiki/Correlation_and_dependence
  # - http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient
  # - http://stattrek.com/statistics/correlation.aspx
  
  if(na.rm == TRUE){
    sample.x <- Vector.RemoveNA(sample.x)
    sample.y <- Vector.RemoveNA(sample.y)
  }

  n = length(sample.x)
  mean.x <- RandomVariable.Mean.Arithmetic(sample.x)
  mean.y <- RandomVariable.Mean.Arithmetic(sample.y)
  sd.x <- Sample.StandardDeviation(sample.x, na.rm = FALSE)
  sd.y <- Sample.StandardDeviation(sample.y, na.rm = FALSE)
  
  return(
    (1 / (n - 1)) *
      sum(((sample.x - mean.x) / sd.x) * ((sample.y - mean.y) / sd.y))
    )
}

