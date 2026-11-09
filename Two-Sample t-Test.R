t_result <- t.test(G3 ~ activities, data = student_no_outliers, var.equal = FALSE) 
print(t_result)

# To test whether extracurricular activities have a linear effect 
# on students' final grade G3, we performed a two-sample t-test. 
# We get a test statistic of t = -1.9813 with approximation 
# degrees of freedom df = 630.85, resulting in a p-value of 0.04799. 
# The 95% confidence interval for the true difference in means 
# (Group no - Group yes) is [-0.8305, -0.0037]. 
# The sample means are 12.00 for non-participants and 12.42 for participants.

# H_0: mu_no - mu_yes = 0 versus H_1: mu_no - mu_yes ≠ 0
# As we can see p-value = 0.048 < alpha = 0.05
# we reject H0