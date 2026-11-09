# Extracurricular Activities and Portuguese Grades

STAT 300 Group Project

**Contributors:** Fiona Fang, Sunnie Chen, Cynthia Han, and Qing Xu

## Research Question

Do final Portuguese grades differ between students who participate in
extracurricular activities and those who do not?

We investigate this association using exploratory data analysis and three
two-sided hypothesis tests.

## Dataset

Source: [UCI Student Performance](https://doi.org/10.24432/C5TG7T).

The Portuguese-language dataset contains 649 students from two Portuguese
secondary schools. Our analysis uses:

- `activities`: extracurricular participation (No or Yes).
- `G3`: final Portuguese grade, measured on a 0–20 scale.

Applying the 1.5 × IQR rule separately within each participation group removes
16 observations with grades of 0 or 1. The analysis retains 633 students:
326 nonparticipants and 307 participants.

## Main Results

Participants had a mean final grade of **12.42**, compared with **12.00**
for nonparticipants—a difference of approximately **0.42 points**.

| Method | Two-sided p-value |
| --- | ---: |
| Two-sample t-test | 0.04799 |
| Wilcoxon rank-sum test | 0.02765 |
| Exact permutation test | 0.04985 |

All three tests reject their respective null hypotheses at the 5% level
for the retained sample. The association is modest, and the mean-based
results are close to the significance cutoff.

The observational design cannot establish causality. Results also depend
on the exclusion of valid low grades and may not generalize beyond the
two schools studied.

## Repository Files

| File | Description |
| --- | --- |
| `student-por.csv` | Original dataset, separated by semicolons. |
| `student_clean.csv` | Selected variables for all 649 students, before outlier removal. |
| `01_data_cleaning.Rmd` | Import, validation, variable selection, and cleaned CSV export. |
| `02_eda.R` | Exploratory plots, outlier removal, and descriptive statistics. |
| `03_t_test.R` | Welch two-sample t-test. |
| `04_wilcoxon.Rmd` | Wilcoxon rank-sum test with tie and continuity corrections. |
| `05_permutation.Rmd` | Exact permutation test. |
