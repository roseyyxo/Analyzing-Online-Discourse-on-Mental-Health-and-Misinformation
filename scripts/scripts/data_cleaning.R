library(tidyverse)

# Example: load data (replace with your file path)
data <- read_csv("data/raw/mental_health_posts.csv")

# Basic cleaning
data_clean <- data %>%
  mutate(text = str_to_lower(text)) %>%        # convert to lowercase
  mutate(text = str_replace_all(text, "[^a-z\\s]", "")) %>%  # remove punctuation
  drop_na()

# Save cleaned data
write_csv(data_clean, "data/cleaned/mental_health_posts_cleaned.csv")

print("✅ Data cleaned and saved successfully!")
