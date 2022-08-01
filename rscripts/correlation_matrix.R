library(ggcorrplot)

# Generate correlation matrix for given data frame.
gen_corr <- function(df) {
  # Apply filter for non-empty test cases.
  temp <- filter_non_empty(df)
  
  correlations <- cor(temp[, c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], method = "kendall")
  pvalues <- cor_pmat(temp[, c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness')], method = "kendall")
  ggcorrplot(correlations, p.mat = pvalues, type="lower", colors = c('#6D9EC1', 'white', '#E46726'), lab=T, pch.cex = 20, lab_size = 7, tl.cex = 20, legend.title = "Correlation", ggtheme = theme_minimal(base_size = 20))
}

# Generate correlation matrix for given data frame (including mutants).
gen_corr_incl_mutant <- function(df) {
  # Apply filter for non-empty test cases.
  temp <- filter_non_empty(df)
  
  correlations <- cor(temp[, c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], method = "kendall")
  pvalues <- cor_pmat(temp[, c('rTDATA', 'IMC', 'ICC', 'IPC', 'DPHC', 'rDirectness', 'MutationScore', 'dMutationScore')], method = "kendall")
  ggcorrplot(correlations, p.mat = pvalues, type="lower", colors = c('#6D9EC1', 'white', '#E46726'), lab=T, pch.cex = 20, lab_size = 7, tl.cex = 20, legend.title = "Correlation", ggtheme = theme_minimal(base_size = 20)) + theme(legend.position = "none")
}