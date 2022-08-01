library(dbscan)

# Draw k-nearest neighbours distance plot.
dbscan_distance_plot <- function(dataframe, minPts = 4, line = 0.1) {
  dbscan::kNNdistplot(dataframe, k = minPts)
  abline(h = line, lty = 2)
}

# Remove DBSCAN noise points (=outliers) from data frame.
dbscan_remove_outliers <- function(df, minPts, eps) {
  outliers <- which(dbscan::dbscan(df[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], minPts = minPts, eps = eps)$cluster == 0)
  result <- df[-outliers, ]
  return(result)
}

# Generate k-nearest neighbour density plots.
gen_knn_plots <- function() {
  dbscan_distance_plot(biodata[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 4.5)
  dbscan_distance_plot(californium[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 14)
  dbscan_distance_plot(guice[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 10.5)
  dbscan_distance_plot(jedis[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 6)
  dbscan_distance_plot(junit4[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 8)
  dbscan_distance_plot(nfe[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 4.5)
  dbscan_distance_plot(phcommons[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 7.5)
  dbscan_distance_plot(pitest[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 11)
  dbscan_distance_plot(protostuff[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 4.5)
  dbscan_distance_plot(rtree[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 10)
  dbscan_distance_plot(rulewerk[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 4.5)
  dbscan_distance_plot(scribejava[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 4)
  dbscan_distance_plot(ta4j[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 3.3)
  dbscan_distance_plot(zxing[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], 12, 9.5)
}

# Applies the DBSCAN algorithm to remove outliers from the data sets. Note: overrides the global data set variables.
gen_dbscan_corrected <- function() {
  biodata_ <<- dbscan_remove_outliers(biodata, 12, 4.5)
  californium_ <<- dbscan_remove_outliers(californium, 12, 14)
  guice_ <<- dbscan_remove_outliers(guice, 12, 10.5)
  jedis_ <<- dbscan_remove_outliers(jedis, 12, 6)
  junit4_ <<- dbscan_remove_outliers(junit4, 12, 8)
  nfe_ <<- dbscan_remove_outliers(nfe, 12, 4.5)
  phcommons_ <<- dbscan_remove_outliers(phcommons, 12, 7.5)
  pitest_ <<- dbscan_remove_outliers(pitest, 12, 11)
  protostuff_ <<- dbscan_remove_outliers(protostuff, 12, 4.5)
  rtree_ <<- dbscan_remove_outliers(rtree, 12, 10)
  rulewerk_ <<- dbscan_remove_outliers(rulewerk, 12, 4.5)
  scribejava_ <<- dbscan_remove_outliers(scribejava, 12, 4)
  ta4j_ <<- dbscan_remove_outliers(ta4j, 12, 3.3)
  zxing_ <<- dbscan_remove_outliers(zxing, 12, 9.5)
}

# Generate k-nearest neighbour density plots (including mutants).
gen_knn_plots_incl_mutant <- function() {
  dbscan_distance_plot(biodata[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 4.6)
  dbscan_distance_plot(californium[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 14)
  dbscan_distance_plot(guice[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 10.5)
  dbscan_distance_plot(jedis[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 6)
  dbscan_distance_plot(junit4[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 8.5)
  dbscan_distance_plot(nfe[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 5)
  dbscan_distance_plot(phcommons[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 8)
  dbscan_distance_plot(pitest[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 10)
  dbscan_distance_plot(protostuff[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 5.7)
  dbscan_distance_plot(rtree[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 14)
  dbscan_distance_plot(rulewerk[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 4.5)
  dbscan_distance_plot(scribejava[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 4.5)
  dbscan_distance_plot(ta4j[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 3.5)
  dbscan_distance_plot(zxing[,c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], 16, 13.5)
}

# Applies the DBSCAN algorithm to remove outliers from the data sets (including mutants). Note: overrides the global data set variables.
gen_dbscan_corrected_incl_mutant <- function() {
  biodata <<- dbscan_remove_outliers(biodata, 16, 4.6)
  californium <<- dbscan_remove_outliers(californium, 16, 14)
  guice <<- dbscan_remove_outliers(guice, 16, 10.5)
  jedis <<- dbscan_remove_outliers(jedis, 16, 6)
  junit4 <<- dbscan_remove_outliers(junit4, 16, 8.5)
  nfe <<- dbscan_remove_outliers(nfe, 16, 5)
  phcommons <<- dbscan_remove_outliers(phcommons, 16, 8)
  pitest <<- dbscan_remove_outliers(pitest, 16, 10)
  protostuff <<- dbscan_remove_outliers(protostuff, 16, 5.7)
  rtree <<- dbscan_remove_outliers(rtree, 16, 14)
  rulewerk <<- dbscan_remove_outliers(rulewerk, 16, 4.5)
  scribejava <<- dbscan_remove_outliers(scribejava, 16, 4.5)
  ta4j <<- dbscan_remove_outliers(ta4j, 16, 3.5)
  zxing <<- dbscan_remove_outliers(zxing, 16, 13.5)
}