# Loads the dataset CSVs from the given basePath. Note: function directly sets global variables.
load_datasets <- function(basePath) {
  biodata <<- read.csv(paste(basePath, "biodata.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  californium <<- read.csv(paste(basePath, "californium.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  guice <<- read.csv(paste(basePath, "guice.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  jedis <<- read.csv(paste(basePath, "jedis.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  junit4 <<- read.csv(paste(basePath, "junit4.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  nfe <<- read.csv(paste(basePath, "nfe.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  phcommons <<- read.csv(paste(basePath, "ph-commons.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  pitest <<- read.csv(paste(basePath, "pitest.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  protostuff <<- read.csv(paste(basePath, "protostuff.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  rtree <<- read.csv(paste(basePath, "rtree.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  rulewerk <<- read.csv(paste(basePath, "rulewerk.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  scribejava <<- read.csv(paste(basePath, "scribejava.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  ta4j <<- read.csv(paste(basePath, "ta4j.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
  zxing <<- read.csv(paste(basePath, "zxing.csv", sep = ""), header = TRUE, stringsAsFactors = FALSE)
}

# Combine the datasets into a single data frame.
combine_datasets <- function() {
  data.frame(
    key = c(
      rep('biodata', nrow(biodata)), 
      rep('californium', nrow(californium)), 
      rep('guice', nrow(guice)), 
      rep('jedis', nrow(jedis)), 
      rep('junit4', nrow(junit4)), 
      rep('nfe', nrow(nfe)), 
      rep('ph-commons', nrow(phcommons)), 
      rep('pitest', nrow(pitest)), 
      rep('protostuff', nrow(protostuff)), 
      rep('rtree', nrow(rtree)), 
      rep('rulewerk', nrow(rulewerk)), 
      rep('scribejava', nrow(scribejava)), 
      rep('ta4j', nrow(ta4j)), 
      rep('zxing', nrow(zxing))
    ), 
    rTDATA = c(
      biodata$rTDATA, 
      californium$rTDATA, 
      guice$rTDATA, 
      jedis$rTDATA, 
      junit4$rTDATA, 
      nfe$rTDATA, 
      phcommons$rTDATA, 
      pitest$rTDATA, 
      protostuff$rTDATA, 
      rtree$rTDATA, 
      rulewerk$rTDATA, 
      scribejava$rTDATA, 
      ta4j$rTDATA, 
      zxing$rTDATA
    ),
    IMC = c(
      biodata$IMC, 
      californium$IMC, 
      guice$IMC, 
      jedis$IMC, 
      junit4$IMC, 
      nfe$IMC, 
      phcommons$IMC, 
      pitest$IMC, 
      protostuff$IMC, 
      rtree$IMC, 
      rulewerk$IMC, 
      scribejava$IMC, 
      ta4j$IMC, 
      zxing$IMC
    ),
    ICC = c(
      biodata$ICC, 
      californium$ICC, 
      guice$ICC, 
      jedis$ICC, 
      junit4$ICC, 
      nfe$ICC, 
      phcommons$ICC, 
      pitest$ICC, 
      protostuff$ICC, 
      rtree$ICC, 
      rulewerk$ICC, 
      scribejava$ICC, 
      ta4j$ICC, 
      zxing$ICC
    ),
    IPC = c(
      biodata$IPC, 
      californium$IPC, 
      guice$IPC, 
      jedis$IPC, 
      junit4$IPC, 
      nfe$IPC, 
      phcommons$IPC, 
      pitest$IPC, 
      protostuff$IPC, 
      rtree$IPC, 
      rulewerk$IPC, 
      scribejava$IPC, 
      ta4j$IPC, 
      zxing$IPC
    ),
    DPHC = c(
      biodata$DPHC, 
      californium$DPHC, 
      guice$DPHC, 
      jedis$DPHC, 
      junit4$DPHC, 
      nfe$DPHC, 
      phcommons$DPHC, 
      pitest$DPHC, 
      protostuff$DPHC, 
      rtree$DPHC, 
      rulewerk$DPHC, 
      scribejava$DPHC, 
      ta4j$DPHC, 
      zxing$DPHC
    ),
    rDirectness = c(
      biodata$rDirectness, 
      californium$rDirectness, 
      guice$rDirectness, 
      jedis$rDirectness, 
      junit4$rDirectness, 
      nfe$rDirectness, 
      phcommons$rDirectness, 
      pitest$rDirectness, 
      protostuff$rDirectness, 
      rtree$rDirectness, 
      rulewerk$rDirectness, 
      scribejava$rDirectness, 
      ta4j$rDirectness, 
      zxing$rDirectness
    ),
    UT = c(
      biodata$UT, 
      californium$UT, 
      guice$UT, 
      jedis$UT, 
      junit4$UT, 
      nfe$UT, 
      phcommons$UT, 
      pitest$UT, 
      protostuff$UT, 
      rtree$UT, 
      rulewerk$UT, 
      scribejava$UT, 
      ta4j$UT, 
      zxing$UT
    )
  )
}