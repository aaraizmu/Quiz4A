library(ggplot2)

# Combine the data into a data frame for easier plotting
combined_data <- data.frame(
  Group = rep(c("Original", "1 SD Error", "2 SD Error", "3 SD Error"), each = length(original_data)),
  Height = c(original_data, data_edward, data_hugo, data_lucy)
)

# Create the histogram using ggplot2
ggplot(combined_data, aes(x = Height, fill = Group)) +
  geom_histogram(binwidth = 2, position = "identity", alpha = 0.7, color = "black") +
  labs(title = "Histogram of Simulated Heights",
       x = "Height",
       y = "Frequency") +
  scale_fill_manual(values = c("Original" = "lightblue", "1 SD Error" = "lightgreen", 
                               "2 SD Error" = "lightcoral", "3 SD Error" = "lightyellow")) +
  theme_minimal()

