t_result <- t.test(G3 ~ activities, data = student_clean, var.equal = FALSE) # Welch's t-test
print(t_result)

# To test whether extracurricular activities have a linear effect 
# on students' final grade G3, we performed a two-sample t-test. 
# We get a test statistic of t = -1.5238 with approximation 
# degrees of freedom df = 645.15, resulting in a p-value of 0.128. 
# The 95% confidence interval for the true difference in means 
# (Group no - Group yes) is [-0.884, 0.111]. 
# The sample means are 11.72 for non-participants and 12.10 for participants.