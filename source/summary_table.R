
library(knitr)
GHI_grouped <- group_by(all_data, "Entity")
summary_table <- kable(table)

?group_by
?kable
kable(table)

?as.table
?colnames
colnames <- c('Observations in DataSet','Features in DataSet', 
                             'Number of Unique Entities', 'Earliest Year in Dataset', 'Most Recent Year in Dataset')
summary_df <- c(summary_info$num_observations, summary_info$num_features, 
                          summary_info$uniq_Entities, summary_info$earliest_date, summary_info$recent_date)
table <- data.frame(title = colnames, info = summary_df)




