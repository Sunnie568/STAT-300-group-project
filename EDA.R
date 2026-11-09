#summary statistics
aggregate(G3 ~ activities,
          data = student_clean,
          FUN = function(x) c(
            n = length(x),
            mean = mean(x),
            sd = sd(x),
            median = median(x)
          ))

#boxplot
boxplot(G3 ~ activities,
        data = student_clean,
        xlab = "Extracurricular Activities",
        ylab = "Final Grade",
        main = "Final Grades by Activity Participation")

#histogram
par(mfrow = c(1, 2))

hist(student_clean$G3[student_clean$activities == "No"],
     main = "No Activities",
     xlab = "Final Grade",
     xlim = c(0, 20),
     breaks = seq(-0.5, 20.5, 1))

hist(student_clean$G3[student_clean$activities == "Yes"],
     main = "Yes Activities",
     xlab = "Final Grade",
     xlim = c(0, 20),
     breaks = seq(-0.5, 20.5, 1))

par(mfrow = c(1, 1))

#check outliers
# Find outliers for each group
by(student_clean$G3,
   student_clean$activities,
   function(x) boxplot.stats(x)$out)

# Calculate outlier boundaries within each group
Q1 <- ave(student_clean$G3, student_clean$activities,
          FUN = function(x) quantile(x, 0.25))

Q3 <- ave(student_clean$G3, student_clean$activities,
          FUN = function(x) quantile(x, 0.75))

IQR_values <- Q3 - Q1

# Identify outliers
is_outlier <- student_clean$G3 < Q1 - 1.5 * IQR_values |
  student_clean$G3 > Q3 + 1.5 * IQR_values

# Remove outliers
student_no_outliers <- student_clean[!is_outlier, ]

# Check sample sizes
nrow(student_clean)
nrow(student_no_outliers)
