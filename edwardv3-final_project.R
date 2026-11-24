# edwardv3-final_project .R Fall 2026
# STA 145 Final Project: Upload your data into R
# Date: 2026_11_17
# Who: Vanessa Edwards

# Step 6: load the tidyverse
library(readr)

# Step 7: load data.csv from the working directory
data <- read_delim("data.csv")

# Step 8: run the three checks
dim(data)
names(data)
summary(data)
#Table 1: descriptive Statistics
mean(data$length)
sd(data$length)
hist(data$length)
summary(data$length)
min(data$length)
max(data$length)

mean(data$lyrics)
sd(data$lyrics)
hist(data$lyrics)
summary(data$lyrics)
min(data$lyrics)
max(data$lyrics)

# linear regression test
lm <- lm(lyrics ~ length, data = data)
summary(lm)



#scatter plot
plot <- plot(data$length,data$lyrics)
print(plot)

