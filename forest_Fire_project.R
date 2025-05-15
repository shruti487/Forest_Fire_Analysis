
# Load necessary libraries
library(tidyverse)

# Load the dataset (assuming it's in CSV format)
forest_fires <- read.csv("forestfires.csv")

# Explore the dataset
head(forest_fires)  # View the first few rows
str(forest_fires)    # Check the structure of the dataset
summary(forest_fires) # Get summary statistics


# Convert 'month' and 'day' to factors
forest_fires <- forest_fires %>%
  mutate(month = factor(month, levels = c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")),
         day = factor(day, levels = c("sun", "mon", "tue", "wed", "thu", "fri", "sat")))

# Verify the conversion
str(forest_fires$month)
str(forest_fires$day)

# Scatter plot with trendline
ggplot(forest_fires, aes(x = temp, y = area)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Temperature vs. Area Burned with Trendline",
       x = "Temperature (°C)",
       y = "Area Burned (hectares)") +
  theme_minimal()

# Identify and highlight outliers
outliers <- forest_fires %>% filter(area > 200)
ggplot(forest_fires, aes(x = temp, y = area)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_point(data = outliers, color = "red", size = 3) +
  geom_text(data = outliers, aes(label = area), vjust = -1, color = "red") +
  labs(title = "Temperature vs. Area Burned with Outliers Highlighted",
       x = "Temperature (°C)",
       y = "Area Burned (hectares)") +
  theme_minimal()

# Scatter plot grouped by month
ggplot(forest_fires, aes(x = temp, y = area, color = month)) +
  geom_point(alpha = 0.6) +
  labs(title = "Temperature vs. Area Burned by Month",
       x = "Temperature (°C)",
       y = "Area Burned (hectares)",
       color = "Month") +
  theme_minimal()

# Save the plot
ggsave("scatter_plot.png", width = 8, height = 6, dpi = 300)

# Calculate correlation
correlation <- cor(forest_fires$temp, forest_fires$area)
cat("Correlation between temperature and area burned:", correlation, "\n")