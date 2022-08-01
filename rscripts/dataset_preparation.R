# Filter out test cases that do not cover any application classes.
filter_non_empty <- function(df) {
  subset(df, df$IMC > 0)
}

# Filter out test cases for which zero mutants are available.
filter_valid_mutants <- function(df) {
  subset(df, df$NKM > 0 | df$NSM > 0)
}

# Apply min-max normalization to specified column.
min_max_normalization <- function(df, columnName = "rTDATA") {
  columnIndex <- which(colnames(df) == columnName)
  if (columnIndex == 0) {
    stop("Unknown column.")
  }
  result <- df
  result[columnIndex] <- lapply(df[columnIndex], function(x) { (x - min(x)) / (max(x) - min(x)) })
  return(result)
}