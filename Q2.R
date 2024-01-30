original_data <- c(146, 148, 149, 153, 157, 158, 159, 161, 161, 163, 163, 166, 168, 172, 175, 176, 177, 178, 181, 185)

# Function to add errors based on standard deviation
add_errors <- function(data, sd_multiplier) {
  error <- rnorm(length(data), mean = 0, sd = sd(data) * sd_multiplier)
  return(data + round(error))
}

data_edward <- add_errors(original_data, 1)
data_hugo <- add_errors(original_data, 2)
data_lucy <- add_errors(original_data, 3)

# Normality test for original data
shapiro.test(original_data)

# Normality test for data with 1 SD error
shapiro.test(data_edward)

# Normality test for data with 2 SD error
shapiro.test(data_hugo)

# Normality test for data with 3 SD error
shapiro.test(data_lucy)

# T-test comparing original data with data with 1 SD error
t.test(original_data, data_edward)

# T-test comparing original data with data with 2 SD error
t.test(original_data, data_hugo)

# T-test comparing original data with data with 3 SD error
t.test(original_data, data_lucy)

# Two-sample t-test comparing means
t_test_result_1sd <- t.test(original_data, data_edward)
t_test_result_2sd <- t.test(original_data, data_hugo)
t_test_result_3sd <- t.test(original_data, data_lucy)

# Display the results
print("Two-Sample T-Test Results:")
print(t_test_result_1sd)
print(t_test_result_2sd)
print(t_test_result_3sd)

