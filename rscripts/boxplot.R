library(ggplot2)

# Generate box plot for each metric.
gen_boxplot <- function(df) {
  # Apply filter for non-empty test cases.
  temp <- filter_non_empty(df)
  
  # Convert to nominal values for display purposes.
  temp['UT'][temp['UT'] == 1] <- "Unit"
  temp['UT'][temp['UT'] == 0] <- "Non-Unit"
  
  # Generate boxplots.
  print(ggplot(temp, aes(UT, rTDATA, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
  print(ggplot(temp, aes(UT, IMC, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
  print(ggplot(temp, aes(UT, ICC, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
  print(ggplot(temp, aes(UT, IPC, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
  print(ggplot(temp, aes(UT, DPHC, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
  print(ggplot(temp, aes(UT, rDirectness, group=UT, fill = UT)) + geom_boxplot() + facet_wrap(~key, ncol = 2) + theme_minimal(base_size = 15) + coord_flip() + xlab('Developer Classification') + theme(legend.position = "none") + scale_fill_manual(values = c('#6D9EC1', '#E46726')))
}