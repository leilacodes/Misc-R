freq <- function(vector) {
  counts <- as.data.frame(table(vector, useNA = "always"))
  names(counts) <- c("value", "count")
  pct <- counts$count / sum(counts$count)
  
  return(data.frame(counts, pct))
}