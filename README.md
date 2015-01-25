Hello and thanks for assessing my solution.

Please find the run_analysis.R in the same folder. 
You will find a number of comments pinpointing original requirements to snippets below. 
The script is relatively simple. 
In the first step we read both the test and training data tables from files. 
In the second step we read all the features from the feature.txt file, 
and create a boolean vector with TRUE for each feature that has an interesting variable. 
Since we're supposed to focus only on mean and standard deviation, I use grepl to filter on features with std() or mean() in the name.
This vector in the next step will be crucial in filtering the unnecessary columns from otherwise large tables we've just read from the files.
Once the tables are cleaned from unnecessary features, I combine them using rbind.
Finally I create a vector of column names using the previously created bool vector and the features read from features.txt.
The dataset gets the column names with setNames.
The final dataset (for submission) is calculated with colMeans.

Thanks!