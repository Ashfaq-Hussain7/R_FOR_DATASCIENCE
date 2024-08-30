# Load necessary libraries
library(ggplot2)
library(dplyr)

# Assuming the dataset is already loaded into the variable `data`
# and has columns named `Date`, `Confirmed`, `Deaths`, `Recovered`

# Convert the Date column to Date format
data$Date <- as.Date(data$Date)

# Summarize the data by date
data_summary <- data %>%
  group_by(Date) %>%
  summarise(Total_Confirmed = sum(Confirmed, na.rm = TRUE),
            Total_Death = sum(Deaths, na.rm = TRUE),
            Total_Recovered = sum(Recovered, na.rm = TRUE))

# Create the time series plot
ggplot(data = data_summary, aes(x = Date)) + 
  geom_line(aes(y = Total_Confirmed, col = 'Total Confirmed')) +
  geom_line(aes(y = Total_Death, col = 'Total Deaths')) +
  geom_line(aes(y = Total_Recovered, col = 'Total Recovered')) +
  scale_color_manual(values = c('Total Confirmed' = 'black',
                                'Total Deaths' = 'red',
                                'Total Recovered' = 'blue')) +
  labs(title = 'Time Series Plot using COVID-19 Dataset',
       x = 'Date', y = 'Number of Cases',
       color = 'Legend:') +
  theme(legend.position = 'top', plot.title = element_text(hjust = 0.5))
