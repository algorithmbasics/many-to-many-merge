# Many-to-many merge two datasets by variables A and B

# Load packages
import pandas as pd
import numpy as np

# Load the two datasets
df1 = pd.read_csv('dataset1.csv')
df2 = pd.read_csv('dataset2.csv')

# Perform the many-to-many merge
merged_df = pd.merge(df1, df2, on=['A', 'B'], how='outer')

# Display the merged dataframe
print(merged_df)