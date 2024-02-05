---
title: "Midterm1Notes"
author: "Jasmine Hsiao"
date: "2024-02-05"
output: 
  html_document: 
    keep_md: true
---



# Lab 1-"R, RStudio, and RMarkdown"
## Working Directory 

```r
getwd()
```

```
## [1] "/Users/jasminehsiao/Desktop/BIS15W2024_jhsiao"
```

## Load the tidyverse

```r
library("tidyverse") 
```

```
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.4     ✔ readr     2.1.4
## ✔ forcats   1.0.0     ✔ stringr   1.5.1
## ✔ ggplot2   3.4.4     ✔ tibble    3.2.1
## ✔ lubridate 1.9.3     ✔ tidyr     1.3.0
## ✔ purrr     1.0.2     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```


# Lab 2.1-"Objects, Classes & NAs"
## Objects

```r
x <- 42 # the object 'x' 'gets' 42 
```

## Types of Data
Five frequently used `classes` of data: 1. numeric, 2. integer, 3. character, 4. logical, 5. complex.

```r
my_numeric <- 2
class(my_numeric) # To find the class of data
```

```
## [1] "numeric"
```

Use `is()` and `as()` functions to clarify or specify a type of data.

```r
is.integer(my_numeric) #is my_numeric an integer?
```

```
## [1] FALSE
```


```r
my_integer <- as.integer(my_numeric) #create new object specified as an integer
```

## Missing Data
Functions to deal with NAs

```r
my_missing <- NA
```


```r
is.na(my_missing) # Asks if my_missing is NA
```

```
## [1] TRUE
```


```r
anyNA(my_missing) # Asks if theres any NA
```

```
## [1] TRUE
```


```r
new_vector <- c(10, 20, 30, NA)
mean(new_vector, na.rm=T) #removes the NA  in the vector. T = true, so it would be removed. 
```

```
## [1] 20
```

# lab 2.2-"Vectors and Data Matrices"
## Vectors 
The `c` stands for concatenate, to create vectors

```r
my_vector <- c(10, 20, 30) # numeric vector
```


```r
days_of_the_week <- c("Monday", "Tuesday", "Wednesday", "Thrusday", "Friday", "Saturday", "Sunday") # character vector
```


```r
my_vector_sequence <- c(1:100) # generate sequence of numbers
my_vector_sequence
```

```
##   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
##  [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
##  [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
##  [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
##  [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
##  [91]  91  92  93  94  95  96  97  98  99 100
```


```r
my_vector_sequence[15] # Evalulate numeric in vector
```

```
## [1] 15
```

## Data matrices

```r
Philosophers_Stone <- c(317.5, 657.1) # seperate vectors
Chamber_of_Secrets <- c(261.9, 616.9)
Prisoner_of_Azkaban <- c(249.5, 547.1)
Goblet_of_Fire <- c(290.0, 606.8)
Order_of_the_Phoenix <- c(292.0, 647.8)
Half_Blood_Prince <- c(301.9, 632.4)
Deathly_Hallows_1 <- c(295.9, 664.3)
Deathly_Hallows_2 <- c(381.0, 960.5)
```


```r
box_office <- c(Philosophers_Stone, Chamber_of_Secrets, Prisoner_of_Azkaban, Goblet_of_Fire, Order_of_the_Phoenix, Half_Blood_Prince, Deathly_Hallows_1, Deathly_Hallows_2)
box_office # New object called box_office
```

```
##  [1] 317.5 657.1 261.9 616.9 249.5 547.1 290.0 606.8 292.0 647.8 301.9 632.4
## [13] 295.9 664.3 381.0 960.5
```


```r
harry_potter_matrix <- matrix(box_office, nrow = 8, byrow = T)
harry_potter_matrix # Creates a matrix
```

```
##       [,1]  [,2]
## [1,] 317.5 657.1
## [2,] 261.9 616.9
## [3,] 249.5 547.1
## [4,] 290.0 606.8
## [5,] 292.0 647.8
## [6,] 301.9 632.4
## [7,] 295.9 664.3
## [8,] 381.0 960.5
```

## Name the rows and columns

```r
region <- c("US", "non-US")
region
```

```
## [1] "US"     "non-US"
```


```r
titles <- c("Philosophers_Stone", "Chamber_of_Secrets", "Prisoner_of_Azkaban", "Goblet_of_Fire", "Order_of_the_Phoenix", "Half_Blood_Prince", "Deathly_Hallows_1", "Deathly_Hallows_2")
titles
```

```
## [1] "Philosophers_Stone"   "Chamber_of_Secrets"   "Prisoner_of_Azkaban" 
## [4] "Goblet_of_Fire"       "Order_of_the_Phoenix" "Half_Blood_Prince"   
## [7] "Deathly_Hallows_1"    "Deathly_Hallows_2"
```


```r
colnames(harry_potter_matrix) <- region # name column with vector 'region'
```


```r
rownames(harry_potter_matrix) <- titles # name rows with vector 'title'
```


```r
harry_potter_matrix # print matrix
```

```
##                         US non-US
## Philosophers_Stone   317.5  657.1
## Chamber_of_Secrets   261.9  616.9
## Prisoner_of_Azkaban  249.5  547.1
## Goblet_of_Fire       290.0  606.8
## Order_of_the_Phoenix 292.0  647.8
## Half_Blood_Prince    301.9  632.4
## Deathly_Hallows_1    295.9  664.3
## Deathly_Hallows_2    381.0  960.5
```

## Using a data matrix

```r
global <- rowSums(harry_potter_matrix) # calculate total earnings
global
```

```
##   Philosophers_Stone   Chamber_of_Secrets  Prisoner_of_Azkaban 
##                974.6                878.8                796.6 
##       Goblet_of_Fire Order_of_the_Phoenix    Half_Blood_Prince 
##                896.8                939.8                934.3 
##    Deathly_Hallows_1    Deathly_Hallows_2 
##                960.2               1341.5
```


```r
all_harry_potter_matrix <- cbind(harry_potter_matrix, global)
all_harry_potter_matrix # Add new columns
```

```
##                         US non-US global
## Philosophers_Stone   317.5  657.1  974.6
## Chamber_of_Secrets   261.9  616.9  878.8
## Prisoner_of_Azkaban  249.5  547.1  796.6
## Goblet_of_Fire       290.0  606.8  896.8
## Order_of_the_Phoenix 292.0  647.8  939.8
## Half_Blood_Prince    301.9  632.4  934.3
## Deathly_Hallows_1    295.9  664.3  960.2
## Deathly_Hallows_2    381.0  960.5 1341.5
```


```r
harry_potter_matrix[2,1] # selects the value in the first column, second row.
```

```
## [1] 261.9
```


```r
harry_potter_matrix[1:4] #`:` selects the specified elements in a column. 
```

```
## [1] 317.5 261.9 249.5 290.0
```


```r
non_us_earnings <- all_harry_potter_matrix[ ,2] #select values in an entire row or column, calculate mean of entire second column
mean(non_us_earnings)
```

```
## [1] 666.6125
```

# Lab 3.1-"Data Frames"
## Data Frames
Another type of data structure, similar to spreadsheet. Cleaner and neat looking than matrix.  

```r
Sex <- c("male", "female", "male") # Build seperate vectors
Length <- c(3.2, 3.7, 3.4)
Weight <- c(2.9, 4.0, 3.1)
```


```r
hbirds <- data.frame(Sex, Length, Weight) # Combine vectors to create data frame
hbirds
```

```
##      Sex Length Weight
## 1   male    3.2    2.9
## 2 female    3.7    4.0
## 3   male    3.4    3.1
```


```r
names(hbirds) # Column names of data frame
```

```
## [1] "Sex"    "Length" "Weight"
```


```r
dim(hbirds) # Dimensions of hbirds
```

```
## [1] 3 3
```


```r
str(hbirds) # Dimensions of hbirds
```

```
## 'data.frame':	3 obs. of  3 variables:
##  $ Sex   : chr  "male" "female" "male"
##  $ Length: num  3.2 3.7 3.4
##  $ Weight: num  2.9 4 3.1
```


```r
hbirds <- data.frame(sex=Sex, length=Length, weight_g=Weight)
hbirds # Change names from uppercase to lowercase, When you say hbird gets data.frame, it overwrites everything
```

```
##      sex length weight_g
## 1   male    3.2      2.9
## 2 female    3.7      4.0
## 3   male    3.4      3.1
```


```r
hbirds[1,] # select first row
```

```
##    sex length weight_g
## 1 male    3.2      2.9
```


```r
hbirds[ ,3] # select third column
```

```
## [1] 2.9 4.0 3.1
```


```r
mean(hbirds$weight_g) # select values in entire column using '$', useful for calculating means
```

```
## [1] 3.333333
```

## Adding Rows

```r
new_bird <- c("female", 3.6, 3.9)
new_bird
```

```
## [1] "female" "3.6"    "3.9"
```


```r
hbirds<- rbind(hbirds, new_bird) # Add a new bird's data with 'rbind()' meaning row bind
hbirds
```

```
##      sex length weight_g
## 1   male    3.2      2.9
## 2 female    3.7        4
## 3   male    3.4      3.1
## 4 female    3.6      3.9
```

## Adding Columns

```r
hbirds$neighborhood <- c("lakewood", "brentwood", "lakewood", "scenic Heights")
hbirds # Add column into our data with '$'
```

```
##      sex length weight_g   neighborhood
## 1   male    3.2      2.9       lakewood
## 2 female    3.7        4      brentwood
## 3   male    3.4      3.1       lakewood
## 4 female    3.6      3.9 scenic Heights
```

## Writing Data to File
Save our hbirds data frame to use it again later. Here we write our data frame to a csv file. We use `row.names = FALSE` to avoid row numbers from printing out. 

```r
write.csv(hbirds, "hbirds_data.csv", row.names = FALSE)
```

# Lab 3.2-"Importing Data Frames"
## Load the tidyverse

```r
library("tidyverse")
```


```r
getwd() 
```

```
## [1] "/Users/jasminehsiao/Desktop/BIS15W2024_jhsiao"
```

## Load the data

```r
hot_springs <- read_csv("lab3/hsprings_data.csv")
```

```
## Rows: 9 Columns: 4
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (2): scientist, spring
## dbl (2): temp_C, depth_ft
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```


```r
str(hot_springs) # Get an idea of data structure
```

```
## spc_tbl_ [9 × 4] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
##  $ temp_C   : num [1:9] 36.2 35.4 35.3 35.1 35.4 ...
##  $ scientist: chr [1:9] "Jill" "Susan" "Steve" "Jill" ...
##  $ spring   : chr [1:9] "Buckeye" "Buckeye" "Buckeye" "Benton" ...
##  $ depth_ft : num [1:9] 4.15 4.13 4.12 3.21 3.23 3.2 5.67 5.65 5.66
##  - attr(*, "spec")=
##   .. cols(
##   ..   temp_C = col_double(),
##   ..   scientist = col_character(),
##   ..   spring = col_character(),
##   ..   depth_ft = col_double()
##   .. )
##  - attr(*, "problems")=<externalptr>
```


```r
class(hot_springs$scientist) 
```

```
## [1] "character"
```

```r
class(hot_springs$spring) # shows the classes of both
```

```
## [1] "character"
```


```r
hot_springs$scientist <- as.factor(hot_springs$scientist)
hot_springs$spring <- as.factor(hot_springs$spring) # Makes both factors
```


```r
levels(hot_springs$scientist) 
```

```
## [1] "Jill"  "Steve" "Susan"
```

```r
levels(hot_springs$spring) # Shows levels of the factors
```

```
## [1] "Benton"     "Buckeye"    "Travertine"
```

## Summary functions

```r
fish <- read_csv("lab3/data/Gaeta_etal_CLC_data.csv")
```

```
## Rows: 4033 Columns: 6
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (2): lakeid, annnumber
## dbl (4): fish_id, length, radii_length_mm, scalelength
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```


```r
summary(fish) # summarize data frame
```

```
##     lakeid             fish_id       annnumber             length     
##  Length:4033        Min.   :  1.0   Length:4033        Min.   : 58.0  
##  Class :character   1st Qu.:156.0   Class :character   1st Qu.:253.0  
##  Mode  :character   Median :267.0   Mode  :character   Median :299.0  
##                     Mean   :258.3                      Mean   :293.3  
##                     3rd Qu.:376.0                      3rd Qu.:342.0  
##                     Max.   :478.0                      Max.   :420.0  
##  radii_length_mm    scalelength     
##  Min.   : 0.4569   Min.   : 0.6282  
##  1st Qu.: 2.3252   1st Qu.: 4.2596  
##  Median : 3.5380   Median : 5.4062  
##  Mean   : 3.6589   Mean   : 5.3821  
##  3rd Qu.: 4.8229   3rd Qu.: 6.4145  
##  Max.   :11.0258   Max.   :11.0258
```


```r
glimpse(fish) # Another summary function
```

```
## Rows: 4,033
## Columns: 6
## $ lakeid          <chr> "AL", "AL", "AL", "AL", "AL", "AL", "AL", "AL", "AL", …
## $ fish_id         <dbl> 299, 299, 299, 300, 300, 300, 300, 301, 301, 301, 301,…
## $ annnumber       <chr> "EDGE", "2", "1", "EDGE", "3", "2", "1", "EDGE", "3", …
## $ length          <dbl> 167, 167, 167, 175, 175, 175, 175, 194, 194, 194, 194,…
## $ radii_length_mm <dbl> 2.697443, 2.037518, 1.311795, 3.015477, 2.670733, 2.13…
## $ scalelength     <dbl> 2.697443, 2.697443, 2.697443, 3.015477, 3.015477, 3.01…
```


```r
nrow(fish) # Gives number of rows
```

```
## [1] 4033
```


```r
ncol(fish) # Gives number of columns
```

```
## [1] 6
```


```r
dim(fish) # Gives dimensions
```

```
## [1] 4033    6
```


```r
names(fish) #Gives column names
```

```
## [1] "lakeid"          "fish_id"         "annnumber"       "length"         
## [5] "radii_length_mm" "scalelength"
```


```r
head(fish) # Prints the first n rows of the data frame
```

```
## # A tibble: 6 × 6
##   lakeid fish_id annnumber length radii_length_mm scalelength
##   <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
## 1 AL         299 EDGE         167            2.70        2.70
## 2 AL         299 2            167            2.04        2.70
## 3 AL         299 1            167            1.31        2.70
## 4 AL         300 EDGE         175            3.02        3.02
## 5 AL         300 3            175            2.67        3.02
## 6 AL         300 2            175            2.14        3.02
```


```r
tail(fish) # Prints the last n rows of the data frame
```

```
## # A tibble: 6 × 6
##   lakeid fish_id annnumber length radii_length_mm scalelength
##   <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
## 1 WS         180 6            403            5.41        11.0
## 2 WS         180 5            403            4.98        11.0
## 3 WS         180 4            403            4.22        11.0
## 4 WS         180 3            403            3.04        11.0
## 5 WS         180 2            403            2.03        11.0
## 6 WS         180 1            403            1.19        11.0
```


```r
table(fish$lakeid) # Useful when have limited num of categorical variables, produces fast counts of number of observations in a variable
```

```
## 
##  AL  AR  BO  BR  CR  DY  FD  JN  LC  LJ  LR LSG  MN  RD  UB  WS 
## 383 262 197 291 343 355 302 238 173 181 292 143 293 135 191 254
```


```r
# View(fish)
# click on the `fish` data frame in the Environment tab or type this
```


```r
little_fish <- filter(fish, length<=100)
little_fish # Filter allows us to pull out observations with specific criteria
```

```
## # A tibble: 5 × 6
##   lakeid fish_id annnumber length radii_length_mm scalelength
##   <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
## 1 LSG         58 EDGE          92           1.15        1.15 
## 2 LSG         59 EDGE          64           0.773       0.773
## 3 WS         151 EDGE          58           0.628       0.628
## 4 WS         152 EDGE          74           0.832       0.832
## 5 WS         153 EDGE          78           0.637       0.637
```

# Lab 4.1-"Transforming data 1: Dplyr `select()`"
## Load the tidyverse

```r
library("tidyverse")
```

## Load the data

```r
fish <- readr::read_csv("lab4/data/Gaeta_etal_CLC_data.csv") ##readr is just being explicit on the package used
```

```
## Rows: 4033 Columns: 6
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (2): lakeid, annnumber
## dbl (4): fish_id, length, radii_length_mm, scalelength
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

## Data Structure

```r
glimpse(fish) # structure
```

```
## Rows: 4,033
## Columns: 6
## $ lakeid          <chr> "AL", "AL", "AL", "AL", "AL", "AL", "AL", "AL", "AL", …
## $ fish_id         <dbl> 299, 299, 299, 300, 300, 300, 300, 301, 301, 301, 301,…
## $ annnumber       <chr> "EDGE", "2", "1", "EDGE", "3", "2", "1", "EDGE", "3", …
## $ length          <dbl> 167, 167, 167, 175, 175, 175, 175, 194, 194, 194, 194,…
## $ radii_length_mm <dbl> 2.697443, 2.037518, 1.311795, 3.015477, 2.670733, 2.13…
## $ scalelength     <dbl> 2.697443, 2.697443, 2.697443, 3.015477, 3.015477, 3.01…
```

```r
summary(fish) # contents
```

```
##     lakeid             fish_id       annnumber             length     
##  Length:4033        Min.   :  1.0   Length:4033        Min.   : 58.0  
##  Class :character   1st Qu.:156.0   Class :character   1st Qu.:253.0  
##  Mode  :character   Median :267.0   Mode  :character   Median :299.0  
##                     Mean   :258.3                      Mean   :293.3  
##                     3rd Qu.:376.0                      3rd Qu.:342.0  
##                     Max.   :478.0                      Max.   :420.0  
##  radii_length_mm    scalelength     
##  Min.   : 0.4569   Min.   : 0.6282  
##  1st Qu.: 2.3252   1st Qu.: 4.2596  
##  Median : 3.5380   Median : 5.4062  
##  Mean   : 3.6589   Mean   : 5.3821  
##  3rd Qu.: 4.8229   3rd Qu.: 6.4145  
##  Max.   :11.0258   Max.   :11.0258
```

```r
dim(fish) # Dimensions
```

```
## [1] 4033    6
```
