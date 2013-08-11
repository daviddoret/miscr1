Vector.RemoveNA <- function(vector){
  
  # Returns a vector where all "na" have been removed.
  
  return(vector[!is.na(vector)])

}