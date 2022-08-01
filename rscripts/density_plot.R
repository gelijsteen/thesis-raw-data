library(ggplot2)

# Generate density plot for each metric.
gen_density_plots <- function(df) {
  # Apply filter for non-empty test cases.
  temp <- filter_non_empty(df)
  
  # Generate density plots.
  print(ggplot(min_max_normalization(df, 'rTDATA'), aes(x=rTDATA, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.01) + xlab('Normalized rTDATA') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 0.125))
  print(ggplot(min_max_normalization(df, 'IMC'), aes(x=IMC, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.05) + xlab('Normalized IMC') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 0.75))
  print(ggplot(min_max_normalization(df, 'ICC'), aes(x=ICC, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.04) + xlab('Normalized ICC') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 1.03))
  print(ggplot(min_max_normalization(df, 'IPC'), aes(x=IPC, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.04) + xlab('Normalized IPC') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 0.75))
  print(ggplot(min_max_normalization(df, 'DPHC'), aes(x=DPHC, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.05) + xlab('Normalized DPHC') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 0.9))
  print(ggplot(min_max_normalization(df, 'rDirectness'), aes(x=rDirectness, fill=key)) + geom_density(fill='#d5e8d4', color=1, adjust=1, bw=0.05) + xlab('rDirectness') + ylab('Density') + facet_wrap(~key) + theme_minimal(base_size = 14) + xlim(0, 1.03))
}
