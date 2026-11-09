# Read dataset
student <- read.csv("student-por.csv", sep = ";")

# Check sample size
nrow(student)

# Number of students in each group
table(student$activities)

# Summary statistics for final grades
aggregate(G3 ~ activities, data = student,
          FUN = function(x) c(
            n = length(x),
            mean = mean(x),
            sd = sd(x),
            median = median(x)
          ))

# Compare distributions
boxplot(G3 ~ activities, data = student,
        xlab = "Extracurricular Activities",
        ylab = "Final Grade",
        main = "Final Grades by Activity Participation")

# Total number of missing values
sum(is.na(student))

# Missing values in each variable
colSums(is.na(student))

# Check activity categories
table(student$activities)

# Check final grade distribution
summary(student$G3)

# Check invalid grades
sum(student$G3 < 0 | student$G3 > 20, na.rm = TRUE)
