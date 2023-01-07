# Many-to-many merge two datasets by variables A and B

# packages needed
packages = c(
  "base",        # base
  "tidyverse",   # programming essentials
  "data.table"   # import datasets
)

# Load packages
package_check <- lapply(packages, FUN = function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
})

# Load the two datasets
df1 <- fread("dataset1.csv")
df2 <- fread("dataset2.csv")

# Perform the many-to-many merge
merged_df <- merge(
    df1, df2, 
    by=c('A', 'B'), 
    all=TRUE
  )

# Display the merged dataframe
head(merged_df, 15)