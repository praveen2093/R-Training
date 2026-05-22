# Complete R Programming Interview Preparation Guide
## Beginner to Intermediate — Stat / Clinical Programming Focus

---

# TABLE OF CONTENTS

1. Introduction to R
2. R Data Structures & Datatypes
3. Operators in R
4. Conditional Statements
5. Loops in R
6. Functions & Apply Family
7. Data Manipulation using dplyr
8. Missing Values Handling
9. Reading & Writing Data
10. Data Reshaping & Merging
11. Clinical Programming Concepts
12. Machine Learning & R
13. R vs SAS vs Python
14. Scenario-Based Interview Questions
15. Rapid Fire Questions
16. Final Interview Tips

---

# SECTION 1 : INTRODUCTION TO R

## 1. What is R?

- R is a programming language used for:
  - statistics
  - data analysis
  - visualization
  - clinical programming
  - machine learning

---

## 2. What is the significance of R in Data Analysis and Machine Learning?

R is widely used for:

- Exploratory Data Analysis (EDA)
- Statistical Modeling
- Machine Learning
- Data Visualization
- Predictive Analytics
- NLP and Text Mining

### Example

```r
library(ggplot2)

data <- data.frame(
  x = c(1,2,3,4,5),
  y = c(2,3,4,5,6)
)

ggplot(data, aes(x=x, y=y)) +
  geom_point()
```

---

# SECTION 2 : R DATA STRUCTURES & DATATYPES

## 3. What are vectors in R?

A vector is a collection of same datatype values.

```r
x <- c(1,2,3,4)
```

---

## 4. What are different datatypes in R?

- numeric
- character
- logical
- factor
- integer
- complex

---

## 5. What is the difference between dataframe and matrix?

| Dataframe | Matrix |
|---|---|
| Different datatypes allowed | Same datatype only |
| Column-based structure | 2D structure |

---

## 6. Difference between list and dataframe?

| List | Dataframe |
|---|---|
| Different object types | Tabular structure |
| Flexible structure | Equal row lengths |
| Can store nested objects | Mainly tabular data |

### List Example

```r
example_list <- list(
  name = "John",
  age = 25
)
```

### Dataframe Example

```r
example_df <- data.frame(
  name = c("John","Sara"),
  age = c(25,30)
)
```

---

## 7. How do you convert datatypes in R?

### Common Conversion Functions

- `as.numeric()`
- `as.character()`
- `as.logical()`
- `as.factor()`
- `as.Date()`

### Example

```r
x <- "25"

as.numeric(x)
```

---

# SECTION 3 : OPERATORS IN R

## 8. What are arithmetic operators in R?

| Operator | Meaning |
|---|---|
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `^` | Power |
| `%%` | Modulus |
| `%/%` | Integer Division |

---

## 9. Difference between `=` and `==`?

| Symbol | Meaning |
|---|---|
| `=` | Assignment |
| `==` | Comparison |

### Example

```r
x = 10
x == 10
```

---

## 10. What does `%in%` operator do?

Checks whether value exists in vector.

```r
"John" %in% c("John","David")
```

---

## 11. What is pipe operator?

```r
|>
```

Used to pass output from one function to another.

---

# SECTION 4 : CONDITIONAL STATEMENTS

## 12. What is `if` condition in R?

```r
if(age >= 18){
  print("Adult")
}
```

---

## 13. Difference between `if` and `ifelse()`?

| if | ifelse() |
|---|---|
| Single condition | Vectorized condition |
| Single value | Vectors/dataframes |

---

## 14. Why is `ifelse()` important?

Used for:
- flags
- derivations
- categorization
- column creation

---

## 15. What is `case_when()`?

Used for multiple conditions.

```r
case_when(
  marks >= 90 ~ "A",
  marks >= 75 ~ "B",
  TRUE ~ "FAIL"
)
```

---

## 16. What happens if condition is FALSE?

Code inside `if` block will not execute.

---

## 17. How do you handle missing values in conditions?

Using:

```r
is.na()
```

### Example

```r
ifelse(is.na(age),"Missing","Available")
```

---

# SECTION 5 : LOOPS IN R

## 18. What is a loop?

Loop repeats code multiple times.

---

## 19. Types of loops in R?

- for loop
- while loop

---

## 20. Syntax of for loop

```r
for(i in 1:5){

  print(i)

}
```

---

## 21. What is while loop?

```r
x <- 1

while(x <= 5){

  print(x)

  x <- x + 1

}
```

---

## 22. What is infinite loop?

Loop that never stops.

---

## 23. What is `break`?

Stops loop execution.

---

## 24. What is `next`?

Skips current iteration.

---

# SECTION 6 : FUNCTIONS & APPLY FAMILY

## 25. What is the apply family in R?

Used for vectorized operations.

### Common Functions

- `apply()`
- `lapply()`
- `sapply()`
- `vapply()`

---

## 26. Why use apply family functions?

- cleaner syntax
- avoid loops
- better readability
- efficient processing

---

# SECTION 7 : DATA MANIPULATION USING dplyr

## 27. What package is commonly used for data manipulation?

```r
dplyr
```

---

## 28. What does `mutate()` do?

Creates or modifies columns.

---

## 29. What does `filter()` do?

Filters rows.

```r
employees |>
  filter(salary > 50000)
```

---

## 30. Difference between `select()` and `filter()`?

| Function | Purpose |
|---|---|
| `select()` | Select columns |
| `filter()` | Filter rows |

---

## 31. What does `arrange()` do?

Sorts data.

---

## 32. What is tidyverse?

Collection of R packages for data science.

---

## 33. What is tibble?

Modern dataframe from tidyverse.

---

## 34. Explain dplyr package

### Common Functions

- `select()`
- `filter()`
- `mutate()`
- `summarize()`
- `group_by()`
- `arrange()`

---

# SECTION 8 : MISSING VALUES HANDLING

## 35. What is missing value in R?

```r
NA
```

---

## 36. How to identify missing values?

```r
is.na()
```

---

## 37. Difference between NULL and NA?

| NULL | NA |
|---|---|
| Object absent | Missing value |

---

## 38. How to remove missing values?

```r
na.omit(data)
```

---

## 39. How to replace missing values?

```r
data[is.na(data)] <- 0
```

---

# SECTION 9 : READING & WRITING DATA

## 40. How do you read CSV files?

```r
read.csv("file.csv")
```

---

## 41. What does `read_csv()` do?

Imports CSV file.

---

## 42. How do you write CSV files?

```r
write.csv(data,"output.csv")
```

---

## 43. How do you read Excel files?

```r
library(readxl)

read_excel("file.xlsx")
```

---

## 44. How do you save R objects?

```r
saveRDS(data,"file.rds")
```

---

# SECTION 10 : DATA RESHAPING & MERGING

## 45. How do you reshape data using tidyr?

### Common Functions

- `gather()`
- `spread()`
- `separate()`
- `unite()`

---

## 46. What does aggregate() function do?

Used for grouped summaries.

```r
aggregate(Sales ~ Region, data, sum)
```

---

## 47. How do you merge dataframes?

### Types of Merge

- Inner Join
- Left Join
- Right Join
- Full Join

### Example

```r
merge(df1, df2, all.x = TRUE)
```

---

# SECTION 11 : CLINICAL PROGRAMMING CONCEPTS

## 48. What is ADSL dataset?

ADSL stands for:
- Analysis Data Subject Level dataset

Contains:
- one row per subject

---

## 49. Common variables in ADSL

- USUBJID
- AGE
- SEX
- TRT01A
- COUNTRY

---

## 50. Create Treatment Flag

```r
adsl$TRT_FLAG <- ifelse(
  adsl$TRT01A == "Drug A",
  "Y",
  "N"
)
```

---

## 51. Create Age Category

```r
adsl$AGE_GROUP <- ifelse(
  adsl$AGE >= 18,
  "Adult",
  "Child"
)
```

---

## 52. Why are vectorized operations preferred?

Because they are:
- faster
- optimized
- memory efficient

---

# SECTION 12 : MACHINE LEARNING & R

## 53. Why is R popular in Machine Learning?

R provides:
- statistical libraries
- visualization tools
- modeling frameworks
- predictive analytics support

---

## 54. Common ML Packages in R

- caret
- randomForest
- xgboost
- tidymodels

---

# SECTION 13 : R vs SAS vs PYTHON

## 55. Difference between R and SAS

| R | SAS |
|---|---|
| Open Source | Licensed |
| Strong Visualization | Strong Clinical Usage |
| Flexible Packages | Controlled Environment |

---

## 56. Difference between R and Python

| R | Python |
|---|---|
| Statistical focus | General purpose |
| Better statistical graphics | Better deployment |
| Preferred for analytics | Preferred for AI/ML pipelines |

---

# SECTION 14 : SCENARIO-BASED QUESTIONS

## 57. Create missing AGE flag

```r
ifelse(is.na(AGE),"Y","N")
```

---

## 58. Filter Drug A subjects

```r
adsl |>
  filter(TRT01A == "Drug A")
```

---

## 59. Count number of adults

```r
sum(adsl$AGE >= 18, na.rm = TRUE)
```

---

## 60. Sort AGE descending

```r
adsl |>
  arrange(desc(AGE))
```

---

## 61. Replace missing AGE with 0

```r
adsl$AGE[is.na(adsl$AGE)] <- 0
```

---

# SECTION 15 : RAPID FIRE QUESTIONS

## 62. What does `c()` do?

Creates vector.

---

## 63. What does `length()` do?

Returns vector length.

---

## 64. What does `dim()` do?

Returns dataframe dimensions.

---

## 65. What does `head()` do?

Displays first 6 rows.

---

## 66. What does `str()` do?

Displays structure of object.

---

## 67. What does `summary()` do?

Provides statistical summary.

---

# SECTION 16 : FINAL INTERVIEW TIPS

- Explain logic clearly
- Write clean syntax
- Handle missing values carefully
- Practice small clinical examples
- Understand vectorization
- Know difference between SAS and R
- Practice dplyr operations
- Be comfortable with loops and conditions
