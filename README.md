### Master Thesis Data Set

See the `dataset/` directory for the `.csv` files. See the `rscripts/` directory for the `.R` scripts.

#### Import data sets into R

* Load the `*.R` scripts from the `rscripts/` directory into R.
* Run the `load_datasets(basePath)` function, supplying the path to the `dataset/` directory. This results in a dataframe in R for each `.csv` file.
* (optional) Apply the DBSCAN algorithm by executing the `gen_dbscan_corrected()` function to remove the outliers from the dataframes. Note: this overrides the dataframes from the previous step and leads to incorrect results if applied more than once.
* Run function(s) for data analysis as necessary:
** The `gen_corr()` function generates a correlation matrix.
** The `gen_density_plots()` function generates density plots (requires a combined dataframe for all projects, use the `combine_datasets()` function).
** The `mann_whitney()` function prints the Mann-Whitney-U test results for the testing level metrics.
** The `gen_boxplot()` function generates box plots (requires a combined dataframe for all projects, use the `combine_datasets()` function).
