mann_whitney <- function(df) {
  # Apply filter for non-empty test cases.
  temp <- filter_non_empty(df)
  
  # Calculate Mann-Whitney-U statistic and p-value for each metric.
  print(wilcox.test(temp$rTDATA ~ temp$UT, alternative="greater"))
  print(wilcox.test(temp$IMC ~ temp$UT, alternative="greater"))
  print(wilcox.test(temp$ICC ~ temp$UT, alternative="greater"))
  print(wilcox.test(temp$IPC ~ temp$UT, alternative="greater"))
  print(wilcox.test(temp$DPHC ~ temp$UT, alternative="greater"))
  print(wilcox.test(temp$rDirectness ~ temp$UT, alternative="less"))
}