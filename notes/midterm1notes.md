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
## [1] "/Users/jasminehsiao/Desktop/BIS15W2024_jhsiao/notes"
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
## [1] "/Users/jasminehsiao/Desktop/BIS15W2024_jhsiao/notes"
```

## Load the data

```r
hot_springs <- read_csv("data_midterm1/hsprings_data.csv")
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
fish <- read_csv("data_midterm1/Gaeta_etal_CLC_data.csv")
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
fish <- readr::read_csv("data_midterm1/Gaeta_etal_CLC_data.csv") ##readr is just being explicit on the package used
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

## dplyr
`dplyr` is a package part of the tidyverse, used to transform data frames by extracting, rearranging, and summarizing data such that they are focused on a question of interest.

## `select()`

```r
names(fish) 
```

```
## [1] "lakeid"          "fish_id"         "annnumber"       "length"         
## [5] "radii_length_mm" "scalelength"
```


```r
select(fish, "lakeid", "scalelength") # Pull out column of interest, order matters
```

```
## # A tibble: 4,033 × 2
##    lakeid scalelength
##    <chr>        <dbl>
##  1 AL            2.70
##  2 AL            2.70
##  3 AL            2.70
##  4 AL            3.02
##  5 AL            3.02
##  6 AL            3.02
##  7 AL            3.02
##  8 AL            3.34
##  9 AL            3.34
## 10 AL            3.34
## # ℹ 4,023 more rows
```


```r
select(fish, fish_id:length) #gives the columns in between, range of columns
```

```
## # A tibble: 4,033 × 3
##    fish_id annnumber length
##      <dbl> <chr>      <dbl>
##  1     299 EDGE         167
##  2     299 2            167
##  3     299 1            167
##  4     300 EDGE         175
##  5     300 3            175
##  6     300 2            175
##  7     300 1            175
##  8     301 EDGE         194
##  9     301 3            194
## 10     301 2            194
## # ℹ 4,023 more rows
```


```r
select(fish, -"fish_id", -"annnumber", -"length", -"radii_length_mm") # Columns except those (-)
```

```
## # A tibble: 4,033 × 2
##    lakeid scalelength
##    <chr>        <dbl>
##  1 AL            2.70
##  2 AL            2.70
##  3 AL            2.70
##  4 AL            3.02
##  5 AL            3.02
##  6 AL            3.02
##  7 AL            3.02
##  8 AL            3.34
##  9 AL            3.34
## 10 AL            3.34
## # ℹ 4,023 more rows
```


```r
select(fish, contains("length")) #pull out all data with length
```

```
## # A tibble: 4,033 × 3
##    length radii_length_mm scalelength
##     <dbl>           <dbl>       <dbl>
##  1    167            2.70        2.70
##  2    167            2.04        2.70
##  3    167            1.31        2.70
##  4    175            3.02        3.02
##  5    175            2.67        3.02
##  6    175            2.14        3.02
##  7    175            1.23        3.02
##  8    194            3.34        3.34
##  9    194            2.97        3.34
## 10    194            2.29        3.34
## # ℹ 4,023 more rows
```


```r
select(fish, starts_with("radii")) #pull out all variable starts with
```

```
## # A tibble: 4,033 × 1
##    radii_length_mm
##              <dbl>
##  1            2.70
##  2            2.04
##  3            1.31
##  4            3.02
##  5            2.67
##  6            2.14
##  7            1.23
##  8            3.34
##  9            2.97
## 10            2.29
## # ℹ 4,023 more rows
```


```r
select(fish, ends_with("id"))
```

```
## # A tibble: 4,033 × 2
##    lakeid fish_id
##    <chr>    <dbl>
##  1 AL         299
##  2 AL         299
##  3 AL         299
##  4 AL         300
##  5 AL         300
##  6 AL         300
##  7 AL         300
##  8 AL         301
##  9 AL         301
## 10 AL         301
## # ℹ 4,023 more rows
```
Options to select columns based on a specific criteria include:  
1. ends_with() = Select columns that end with a character string  
2. contains() = Select columns that contain a character string  
3. matches() = Select columns that match a regular expression  
4. one_of() = Select columns names that are from a group of names 


```r
select(fish, matches("a.+er")) # look at variables of interest
```

```
## # A tibble: 4,033 × 1
##    annnumber
##    <chr>    
##  1 EDGE     
##  2 2        
##  3 1        
##  4 EDGE     
##  5 3        
##  6 2        
##  7 1        
##  8 EDGE     
##  9 3        
## 10 2        
## # ℹ 4,023 more rows
```

Select columns based on class of data:

```r
select_if(fish, is.numeric) #pull out all numerics
```

```
## # A tibble: 4,033 × 4
##    fish_id length radii_length_mm scalelength
##      <dbl>  <dbl>           <dbl>       <dbl>
##  1     299    167            2.70        2.70
##  2     299    167            2.04        2.70
##  3     299    167            1.31        2.70
##  4     300    175            3.02        3.02
##  5     300    175            2.67        3.02
##  6     300    175            2.14        3.02
##  7     300    175            1.23        3.02
##  8     301    194            3.34        3.34
##  9     301    194            2.97        3.34
## 10     301    194            2.29        3.34
## # ℹ 4,023 more rows
```

Select all columns that are *not* a class of data, you need to add a `~`.:

```r
select_if(fish, ~!is.numeric(.)) #select if in fish data, look across all variables dont select numeric(!)
```

```
## # A tibble: 4,033 × 2
##    lakeid annnumber
##    <chr>  <chr>    
##  1 AL     EDGE     
##  2 AL     2        
##  3 AL     1        
##  4 AL     EDGE     
##  5 AL     3        
##  6 AL     2        
##  7 AL     1        
##  8 AL     EDGE     
##  9 AL     3        
## 10 AL     2        
## # ℹ 4,023 more rows
```

```r
#! means not
```

## Others
Load data

```r
mammals <- read.csv("data_midterm1/mammal_lifehistories_v2.csv")
```

Imported data frames often have a mix of lower and uppercase column names. Use `toupper()` or `tolower()` to fix this issue. (Lower case is more consistent)

```r
select_all(mammals, tolower) #fix all the lower case
```

```
##               order          family            genus           species
## 1      Artiodactyla  Antilocapridae      Antilocapra         americana
## 2      Artiodactyla         Bovidae            Addax     nasomaculatus
## 3      Artiodactyla         Bovidae        Aepyceros          melampus
## 4      Artiodactyla         Bovidae       Alcelaphus        buselaphus
## 5      Artiodactyla         Bovidae       Ammodorcas           clarkei
## 6      Artiodactyla         Bovidae       Ammotragus            lervia
## 7      Artiodactyla         Bovidae       Antidorcas       marsupialis
## 8      Artiodactyla         Bovidae         Antilope        cervicapra
## 9      Artiodactyla         Bovidae            Bison             bison
## 10     Artiodactyla         Bovidae            Bison           bonasus
## 11     Artiodactyla         Bovidae              Bos         grunniens
## 12     Artiodactyla         Bovidae              Bos         frontalis
## 13     Artiodactyla         Bovidae              Bos         javanicus
## 14     Artiodactyla         Bovidae       Boselaphus      tragocamelus
## 15     Artiodactyla         Bovidae          Bubalus    depressicornis
## 16     Artiodactyla         Bovidae          Bubalus       mindorensis
## 17     Artiodactyla         Bovidae          Bubalus           bubalis
## 18     Artiodactyla         Bovidae         Budorcas         taxicolor
## 19     Artiodactyla         Bovidae            Capra         caucasica
## 20     Artiodactyla         Bovidae            Capra         falconeri
## 21     Artiodactyla         Bovidae            Capra              ibex
## 22     Artiodactyla         Bovidae            Capra    cylindricornis
## 23     Artiodactyla         Bovidae            Capra            hircus
## 24     Artiodactyla         Bovidae      Cephalophus             niger
## 25     Artiodactyla         Bovidae      Cephalophus        nigrifrons
## 26     Artiodactyla         Bovidae      Cephalophus        natalensis
## 27     Artiodactyla         Bovidae      Cephalophus       leucogaster
## 28     Artiodactyla         Bovidae      Cephalophus           ogilbyi
## 29     Artiodactyla         Bovidae      Cephalophus             zebra
## 30     Artiodactyla         Bovidae      Cephalophus         rufilatus
## 31     Artiodactyla         Bovidae      Cephalophus          dorsalis
## 32     Artiodactyla         Bovidae      Cephalophus         monticola
## 33     Artiodactyla         Bovidae      Cephalophus       silvicultor
## 34     Artiodactyla         Bovidae      Cephalophus         maxwellii
## 35     Artiodactyla         Bovidae     Connochaetes              gnou
## 36     Artiodactyla         Bovidae     Connochaetes          taurinus
## 37     Artiodactyla         Bovidae       Damaliscus           hunteri
## 38     Artiodactyla         Bovidae       Damaliscus          pygargus
## 39     Artiodactyla         Bovidae       Damaliscus           lunatus
## 40     Artiodactyla         Bovidae          Gazella     soemmerringii
## 41     Artiodactyla         Bovidae          Gazella         rufifrons
## 42     Artiodactyla         Bovidae          Gazella              dama
## 43     Artiodactyla         Bovidae          Gazella        leptoceros
## 44     Artiodactyla         Bovidae          Gazella            granti
## 45     Artiodactyla         Bovidae          Gazella            spekei
## 46     Artiodactyla         Bovidae          Gazella           cuvieri
## 47     Artiodactyla         Bovidae          Gazella            dorcas
## 48     Artiodactyla         Bovidae          Gazella      subgutturosa
## 49     Artiodactyla         Bovidae          Gazella         thomsonii
## 50     Artiodactyla         Bovidae          Gazella           gazella
## 51     Artiodactyla         Bovidae       Hemitragus         hylocrius
## 52     Artiodactyla         Bovidae       Hemitragus        jemlahicus
## 53     Artiodactyla         Bovidae      Hippotragus           equinus
## 54     Artiodactyla         Bovidae      Hippotragus             niger
## 55     Artiodactyla         Bovidae            Kobus         megaceros
## 56     Artiodactyla         Bovidae            Kobus          vardonii
## 57     Artiodactyla         Bovidae            Kobus             leche
## 58     Artiodactyla         Bovidae            Kobus    ellipsiprymnus
## 59     Artiodactyla         Bovidae            Kobus               kob
## 60     Artiodactyla         Bovidae      Litocranius           walleri
## 61     Artiodactyla         Bovidae          Madoqua          saltiana
## 62     Artiodactyla         Bovidae          Madoqua         guentheri
## 63     Artiodactyla         Bovidae          Madoqua            kirkii
## 64     Artiodactyla         Bovidae      Naemorhedus           crispus
## 65     Artiodactyla         Bovidae      Naemorhedus      sumatraensis
## 66     Artiodactyla         Bovidae      Naemorhedus             goral
## 67     Artiodactyla         Bovidae        Neotragus            batesi
## 68     Artiodactyla         Bovidae        Neotragus         moschatus
## 69     Artiodactyla         Bovidae         Oreamnos        americanus
## 70     Artiodactyla         Bovidae       Oreotragus        oreotragus
## 71     Artiodactyla         Bovidae             Oryx            dammah
## 72     Artiodactyla         Bovidae             Oryx          leucoryx
## 73     Artiodactyla         Bovidae             Oryx           gazella
## 74     Artiodactyla         Bovidae          Ourebia            ourebi
## 75     Artiodactyla         Bovidae           Ovibos         moschatus
## 76     Artiodactyla         Bovidae             Ovis          nivicola
## 77     Artiodactyla         Bovidae             Ovis            vignei
## 78     Artiodactyla         Bovidae             Ovis             dalli
## 79     Artiodactyla         Bovidae             Ovis        canadensis
## 80     Artiodactyla         Bovidae             Ovis             ammon
## 81     Artiodactyla         Bovidae             Ovis             aries
## 82     Artiodactyla         Bovidae       Pantholops         hodgsonii
## 83     Artiodactyla         Bovidae            Pelea         capreolus
## 84     Artiodactyla         Bovidae         Procapra         gutturosa
## 85     Artiodactyla         Bovidae         Pseudois            nayaur
## 86     Artiodactyla         Bovidae       Raphicerus        campestris
## 87     Artiodactyla         Bovidae          Redunca         arundinum
## 88     Artiodactyla         Bovidae          Redunca           redunca
## 89     Artiodactyla         Bovidae          Redunca       fulvorufula
## 90     Artiodactyla         Bovidae        Rupicapra         rupicapra
## 91     Artiodactyla         Bovidae            Saiga          tatarica
## 92     Artiodactyla         Bovidae       Sigmoceros    lichtensteinii
## 93     Artiodactyla         Bovidae       Sylvicapra           grimmia
## 94     Artiodactyla         Bovidae         Syncerus            caffer
## 95     Artiodactyla         Bovidae      Taurotragus         derbianus
## 96     Artiodactyla         Bovidae      Taurotragus              oryx
## 97     Artiodactyla         Bovidae       Tetracerus      quadricornis
## 98     Artiodactyla         Bovidae      Tragelaphus           buxtoni
## 99     Artiodactyla         Bovidae      Tragelaphus         eurycerus
## 100    Artiodactyla         Bovidae      Tragelaphus            spekii
## 101    Artiodactyla         Bovidae      Tragelaphus      strepsiceros
## 102    Artiodactyla         Bovidae      Tragelaphus           angasii
## 103    Artiodactyla         Bovidae      Tragelaphus          imberbis
## 104    Artiodactyla         Bovidae      Tragelaphus          scriptus
## 105    Artiodactyla       Camelidae          Camelus        bactrianus
## 106    Artiodactyla       Camelidae          Camelus       dromedarius
## 107    Artiodactyla       Camelidae             Lama             glama
## 108    Artiodactyla       Camelidae             Lama             pacos
## 109    Artiodactyla       Camelidae             Lama          guanicoe
## 110    Artiodactyla       Camelidae          Vicugna           vicugna
## 111    Artiodactyla        Cervidae            Alces             alces
## 112    Artiodactyla        Cervidae             Axis          porcinus
## 113    Artiodactyla        Cervidae             Axis              axis
## 114    Artiodactyla        Cervidae      Blastocerus        dichotomus
## 115    Artiodactyla        Cervidae        Capreolus         capreolus
## 116    Artiodactyla        Cervidae        Capreolus          pygargus
## 117    Artiodactyla        Cervidae           Cervus        duvaucelii
## 118    Artiodactyla        Cervidae           Cervus           elaphus
## 119    Artiodactyla        Cervidae           Cervus       albirostris
## 120    Artiodactyla        Cervidae           Cervus        timorensis
## 121    Artiodactyla        Cervidae           Cervus          unicolor
## 122    Artiodactyla        Cervidae           Cervus             eldii
## 123    Artiodactyla        Cervidae           Cervus            nippon
## 124    Artiodactyla        Cervidae             Dama              dama
## 125    Artiodactyla        Cervidae        Elaphodus       cephalophus
## 126    Artiodactyla        Cervidae        Elaphurus        davidianus
## 127    Artiodactyla        Cervidae     Hippocamelus          bisulcus
## 128    Artiodactyla        Cervidae     Hippocamelus        antisensis
## 129    Artiodactyla        Cervidae       Hydropotes           inermis
## 130    Artiodactyla        Cervidae           Mazama            rufina
## 131    Artiodactyla        Cervidae           Mazama       gouazoupira
## 132    Artiodactyla        Cervidae           Mazama         americana
## 133    Artiodactyla        Cervidae        Muntiacus           muntjak
## 134    Artiodactyla        Cervidae        Muntiacus           reevesi
## 135    Artiodactyla        Cervidae       Odocoileus          hemionus
## 136    Artiodactyla        Cervidae       Odocoileus       virginianus
## 137    Artiodactyla        Cervidae       Ozotoceros       bezoarticus
## 138    Artiodactyla        Cervidae             Pudu    mephistophiles
## 139    Artiodactyla        Cervidae             Pudu              puda
## 140    Artiodactyla        Cervidae         Rangifer          tarandus
## 141    Artiodactyla      Giraffidae          Giraffa    camelopardalis
## 142    Artiodactyla      Giraffidae           Okapia         johnstoni
## 143    Artiodactyla  Hippopotamidae     Hexaprotodon       liberiensis
## 144    Artiodactyla  Hippopotamidae     Hippopotamus         amphibius
## 145    Artiodactyla       Moschidae          Moschus      chrysogaster
## 146    Artiodactyla       Moschidae          Moschus       berezovskii
## 147    Artiodactyla       Moschidae          Moschus       moschiferus
## 148    Artiodactyla          Suidae        Babyrousa         babyrussa
## 149    Artiodactyla          Suidae      Hylochoerus    meinertzhageni
## 150    Artiodactyla          Suidae     Phacochoerus       aethiopicus
## 151    Artiodactyla          Suidae    Potamochoerus            porcus
## 152    Artiodactyla          Suidae              Sus         salvanius
## 153    Artiodactyla          Suidae              Sus          barbatus
## 154    Artiodactyla          Suidae              Sus            scrofa
## 155    Artiodactyla     Tayassuidae        Catagonus           wagneri
## 156    Artiodactyla     Tayassuidae           Pecari            tajacu
## 157    Artiodactyla     Tayassuidae          Tayassu            pecari
## 158    Artiodactyla      Tragulidae       Hyemoschus         aquaticus
## 159    Artiodactyla      Tragulidae        Moschiola           meminna
## 160    Artiodactyla      Tragulidae         Tragulus         javanicus
## 161    Artiodactyla      Tragulidae         Tragulus              napu
## 162       Carnivora         Canidae           Alopex           lagopus
## 163       Carnivora         Canidae       Atelocynus          microtis
## 164       Carnivora         Canidae            Canis          simensis
## 165       Carnivora         Canidae            Canis            aureus
## 166       Carnivora         Canidae            Canis             rufus
## 167       Carnivora         Canidae            Canis             lupus
## 168       Carnivora         Canidae            Canis         mesomelas
## 169       Carnivora         Canidae            Canis           latrans
## 170       Carnivora         Canidae            Canis           adustus
## 171       Carnivora         Canidae        Cerdocyon             thous
## 172       Carnivora         Canidae       Chrysocyon        brachyurus
## 173       Carnivora         Canidae             Cuon           alpinus
## 174       Carnivora         Canidae           Lycaon            pictus
## 175       Carnivora         Canidae      Nyctereutes      procyonoides
## 176       Carnivora         Canidae          Otocyon         megalotis
## 177       Carnivora         Canidae      Pseudalopex       gymnocercus
## 178       Carnivora         Canidae      Pseudalopex           griseus
## 179       Carnivora         Canidae      Pseudalopex          culpaeus
## 180       Carnivora         Canidae         Speothos         venaticus
## 181       Carnivora         Canidae          Urocyon  cinereoargenteus
## 182       Carnivora         Canidae          Urocyon        littoralis
## 183       Carnivora         Canidae           Vulpes              cana
## 184       Carnivora         Canidae           Vulpes             chama
## 185       Carnivora         Canidae           Vulpes         rueppelli
## 186       Carnivora         Canidae           Vulpes         ferrilata
## 187       Carnivora         Canidae           Vulpes           pallida
## 188       Carnivora         Canidae           Vulpes       bengalensis
## 189       Carnivora         Canidae           Vulpes            corsac
## 190       Carnivora         Canidae           Vulpes            vulpes
## 191       Carnivora         Canidae           Vulpes             zerda
## 192       Carnivora         Canidae           Vulpes             velox
## 193       Carnivora         Felidae         Acinonyx           jubatus
## 194       Carnivora         Felidae          Caracal           caracal
## 195       Carnivora         Felidae         Catopuma        temminckii
## 196       Carnivora         Felidae            Felis             chaus
## 197       Carnivora         Felidae            Felis         margarita
## 198       Carnivora         Felidae            Felis        silvestris
## 199       Carnivora         Felidae            Felis          nigripes
## 200       Carnivora         Felidae      Herpailurus        yaguarondi
## 201       Carnivora         Felidae        Leopardus            wiedii
## 202       Carnivora         Felidae        Leopardus          tigrinus
## 203       Carnivora         Felidae        Leopardus          pardalis
## 204       Carnivora         Felidae      Leptailurus            serval
## 205       Carnivora         Felidae             Lynx          pardinus
## 206       Carnivora         Felidae             Lynx             rufus
## 207       Carnivora         Felidae             Lynx              lynx
## 208       Carnivora         Felidae             Lynx        canadensis
## 209       Carnivora         Felidae         Neofelis          nebulosa
## 210       Carnivora         Felidae        Oncifelis          colocolo
## 211       Carnivora         Felidae        Oncifelis         geoffroyi
## 212       Carnivora         Felidae       Otocolobus             manul
## 213       Carnivora         Felidae         Panthera            tigris
## 214       Carnivora         Felidae         Panthera              onca
## 215       Carnivora         Felidae         Panthera               leo
## 216       Carnivora         Felidae         Panthera            pardus
## 217       Carnivora         Felidae       Pardofelis         marmorata
## 218       Carnivora         Felidae     Prionailurus        viverrinus
## 219       Carnivora         Felidae     Prionailurus       rubiginosus
## 220       Carnivora         Felidae     Prionailurus       bengalensis
## 221       Carnivora         Felidae         Profelis            aurata
## 222       Carnivora         Felidae             Puma          concolor
## 223       Carnivora         Felidae            Uncia             uncia
## 224       Carnivora     Herpestidae           Atilax       paludinosus
## 225       Carnivora     Herpestidae         Bdeogale       crassicauda
## 226       Carnivora     Herpestidae      Crossarchus          obscurus
## 227       Carnivora     Herpestidae         Cynictis       penicillata
## 228       Carnivora     Herpestidae        Galerella      pulverulenta
## 229       Carnivora     Herpestidae        Galerella         sanguinea
## 230       Carnivora     Herpestidae          Galidia           elegans
## 231       Carnivora     Herpestidae       Galidictis          fasciata
## 232       Carnivora     Herpestidae         Helogale           parvula
## 233       Carnivora     Herpestidae        Herpestes         javanicus
## 234       Carnivora     Herpestidae        Herpestes         edwardsii
## 235       Carnivora     Herpestidae        Herpestes         ichneumon
## 236       Carnivora     Herpestidae        Ichneumia         albicauda
## 237       Carnivora     Herpestidae           Mungos             mungo
## 238       Carnivora     Herpestidae      Mungotictis      decemlineata
## 239       Carnivora     Herpestidae     Paracynictis           selousi
## 240       Carnivora     Herpestidae         Suricata         suricatta
## 241       Carnivora       Hyaenidae          Crocuta           crocuta
## 242       Carnivora       Hyaenidae           Hyaena            hyaena
## 243       Carnivora       Hyaenidae       Parahyaena           brunnea
## 244       Carnivora       Hyaenidae         Proteles         cristatus
## 245       Carnivora      Mustelidae         Amblonyx          cinereus
## 246       Carnivora      Mustelidae            Aonyx          congicus
## 247       Carnivora      Mustelidae            Aonyx          capensis
## 248       Carnivora      Mustelidae         Arctonyx          collaris
## 249       Carnivora      Mustelidae        Conepatus        leuconotus
## 250       Carnivora      Mustelidae        Conepatus      semistriatus
## 251       Carnivora      Mustelidae        Conepatus        mesoleucus
## 252       Carnivora      Mustelidae             Eira           barbara
## 253       Carnivora      Mustelidae          Enhydra            lutris
## 254       Carnivora      Mustelidae         Galictis           vittata
## 255       Carnivora      Mustelidae             Gulo              gulo
## 256       Carnivora      Mustelidae          Ictonyx            libyca
## 257       Carnivora      Mustelidae          Ictonyx          striatus
## 258       Carnivora      Mustelidae           Lontra       longicaudis
## 259       Carnivora      Mustelidae           Lontra            felina
## 260       Carnivora      Mustelidae           Lontra        canadensis
## 261       Carnivora      Mustelidae            Lutra      maculicollis
## 262       Carnivora      Mustelidae            Lutra             lutra
## 263       Carnivora      Mustelidae        Lutrogale     perspicillata
## 264       Carnivora      Mustelidae           Martes         flavigula
## 265       Carnivora      Mustelidae           Martes         zibellina
## 266       Carnivora      Mustelidae           Martes             foina
## 267       Carnivora      Mustelidae           Martes         americana
## 268       Carnivora      Mustelidae           Martes          pennanti
## 269       Carnivora      Mustelidae           Martes            martes
## 270       Carnivora      Mustelidae            Meles             meles
## 271       Carnivora      Mustelidae        Mellivora          capensis
## 272       Carnivora      Mustelidae         Melogale         personata
## 273       Carnivora      Mustelidae         Mephitis          macroura
## 274       Carnivora      Mustelidae         Mephitis          mephitis
## 275       Carnivora      Mustelidae          Mustela          nigripes
## 276       Carnivora      Mustelidae          Mustela          lutreola
## 277       Carnivora      Mustelidae          Mustela           altaica
## 278       Carnivora      Mustelidae          Mustela          sibirica
## 279       Carnivora      Mustelidae          Mustela             vison
## 280       Carnivora      Mustelidae          Mustela           frenata
## 281       Carnivora      Mustelidae          Mustela           erminea
## 282       Carnivora      Mustelidae          Mustela       eversmannii
## 283       Carnivora      Mustelidae          Mustela          putorius
## 284       Carnivora      Mustelidae          Mustela           nivalis
## 285       Carnivora      Mustelidae      Poecilogale         albinucha
## 286       Carnivora      Mustelidae        Pteronura      brasiliensis
## 287       Carnivora      Mustelidae        Spilogale           pygmaea
## 288       Carnivora      Mustelidae        Spilogale          putorius
## 289       Carnivora      Mustelidae          Taxidea             taxus
## 290       Carnivora      Mustelidae          Vormela         peregusna
## 291       Carnivora      Odobenidae         Odobenus          rosmarus
## 292       Carnivora       Otariidae    Arctocephalus     galapagoensis
## 293       Carnivora       Otariidae    Arctocephalus        tropicalis
## 294       Carnivora       Otariidae    Arctocephalus          forsteri
## 295       Carnivora       Otariidae    Arctocephalus           gazella
## 296       Carnivora       Otariidae    Arctocephalus          pusillus
## 297       Carnivora       Otariidae    Arctocephalus         australis
## 298       Carnivora       Otariidae       Eumetopias           jubatus
## 299       Carnivora       Otariidae         Neophoca           cinerea
## 300       Carnivora       Otariidae           Otaria           byronia
## 301       Carnivora       Otariidae       Phocarctos           hookeri
## 302       Carnivora       Otariidae         Zalophus     californianus
## 303       Carnivora      Otariidae       Callorhinus           ursinus
## 304       Carnivora        Phocidae       Cystophora          cristata
## 305       Carnivora        Phocidae       Erignathus          barbatus
## 306       Carnivora        Phocidae      Halichoerus            grypus
## 307       Carnivora        Phocidae         Hydrurga          leptonyx
## 308       Carnivora        Phocidae    Leptonychotes         weddellii
## 309       Carnivora        Phocidae          Lobodon     carcinophagus
## 310       Carnivora        Phocidae         Mirounga           leonina
## 311       Carnivora        Phocidae         Mirounga    angustirostris
## 312       Carnivora        Phocidae         Monachus          monachus
## 313       Carnivora        Phocidae         Monachus     schauinslandi
## 314       Carnivora        Phocidae      Ommatophoca            rossii
## 315       Carnivora        Phocidae            Phoca            largha
## 316       Carnivora        Phocidae            Phoca           caspica
## 317       Carnivora        Phocidae            Phoca           hispida
## 318       Carnivora        Phocidae            Phoca      groenlandica
## 319       Carnivora        Phocidae            Phoca          fasciata
## 320       Carnivora        Phocidae            Phoca          vitulina
## 321       Carnivora        Phocidae            Phoca          sibirica
## 322       Carnivora     Procyonidae      Bassaricyon            gabbii
## 323       Carnivora     Procyonidae      Bassariscus       sumichrasti
## 324       Carnivora     Procyonidae      Bassariscus           astutus
## 325       Carnivora     Procyonidae            Nasua             nasua
## 326       Carnivora     Procyonidae            Nasua            narica
## 327       Carnivora     Procyonidae            Potos            flavus
## 328       Carnivora     Procyonidae          Procyon       cancrivorus
## 329       Carnivora     Procyonidae          Procyon             lotor
## 330       Carnivora         Ursidae       Ailuropoda       melanoleuca
## 331       Carnivora         Ursidae          Ailurus           fulgens
## 332       Carnivora         Ursidae        Helarctos         malayanus
## 333       Carnivora         Ursidae         Melursus           ursinus
## 334       Carnivora         Ursidae       Tremarctos           ornatus
## 335       Carnivora         Ursidae            Ursus        thibetanus
## 336       Carnivora         Ursidae            Ursus         maritimus
## 337       Carnivora         Ursidae            Ursus            arctos
## 338       Carnivora         Ursidae            Ursus        americanus
## 339       Carnivora      Viverridae        Arctictis         binturong
## 340       Carnivora      Viverridae     Arctogalidia        trivirgata
## 341       Carnivora      Viverridae       Chrotogale           owstoni
## 342       Carnivora      Viverridae      Civettictis           civetta
## 343       Carnivora      Viverridae     Cryptoprocta             ferox
## 344       Carnivora      Viverridae         Cynogale         bennettii
## 345       Carnivora      Viverridae         Eupleres          goudotii
## 346       Carnivora      Viverridae            Fossa           fossana
## 347       Carnivora      Viverridae          Genetta          maculata
## 348       Carnivora      Viverridae          Genetta           genetta
## 349       Carnivora      Viverridae          Genetta           tigrina
## 350       Carnivora      Viverridae        Hemigalus         derbyanus
## 351       Carnivora      Viverridae         Nandinia          binotata
## 352       Carnivora      Viverridae           Paguma           larvata
## 353       Carnivora      Viverridae      Paradoxurus       zeylonensis
## 354       Carnivora      Viverridae      Paradoxurus    hermaphroditus
## 355       Carnivora      Viverridae        Prionodon        pardicolor
## 356       Carnivora      Viverridae        Prionodon           linsang
## 357       Carnivora      Viverridae          Viverra           zibetha
## 358       Carnivora      Viverridae      Viverricula            indica
## 359         Cetacea      Balaenidae          Balaena        mysticetus
## 360         Cetacea      Balaenidae        Eubalaena         australis
## 361         Cetacea      Balaenidae        Eubalaena         glacialis
## 362         Cetacea Balaenopteridae     Balaenoptera          physalus
## 363         Cetacea Balaenopteridae     Balaenoptera          musculus
## 364         Cetacea Balaenopteridae     Balaenoptera          borealis
## 365         Cetacea Balaenopteridae     Balaenoptera             edeni
## 366         Cetacea Balaenopteridae     Balaenoptera     acutorostrata
## 367         Cetacea Balaenopteridae        Megaptera      novaeangliae
## 368         Cetacea     Delphinidae  Cephalorhynchus        heavisidii
## 369         Cetacea     Delphinidae  Cephalorhynchus       commersonii
## 370         Cetacea     Delphinidae  Cephalorhynchus           hectori
## 371         Cetacea     Delphinidae        Delphinus           delphis
## 372         Cetacea     Delphinidae           Feresa         attenuata
## 373         Cetacea     Delphinidae     Globicephala             melas
## 374         Cetacea     Delphinidae     Globicephala     macrorhynchus
## 375         Cetacea     Delphinidae          Grampus           griseus
## 376         Cetacea     Delphinidae    Lagenodelphis             hosei
## 377         Cetacea     Delphinidae   Lagenorhynchus       albirostris
## 378         Cetacea     Delphinidae   Lagenorhynchus       obliquidens
## 379         Cetacea     Delphinidae   Lagenorhynchus            acutus
## 380         Cetacea     Delphinidae   Lagenorhynchus          obscurus
## 381         Cetacea     Delphinidae         Orcaella      brevirostris
## 382         Cetacea     Delphinidae          Orcinus              orca
## 383         Cetacea     Delphinidae    Peponocephala           electra
## 384         Cetacea     Delphinidae        Pseudorca        crassidens
## 385         Cetacea     Delphinidae          Sotalia       fluviatilis
## 386         Cetacea     Delphinidae         Stenella      coeruleoalba
## 387         Cetacea     Delphinidae         Stenella      longirostris
## 388         Cetacea     Delphinidae         Stenella         attenuata
## 389         Cetacea     Delphinidae            Steno       bredanensis
## 390         Cetacea     Delphinidae         Tursiops         truncatus
## 391         Cetacea  Eschrichtiidae     Eschrichtius          robustus
## 392         Cetacea    Monodontidae   Delphinapterus            leucas
## 393         Cetacea    Monodontidae          Monodon         monoceros
## 394         Cetacea   Neobalaenidae          Caperea         marginata
## 395         Cetacea     Phocoenidae      Neophocaena      phocaenoides
## 396         Cetacea     Phocoenidae         Phocoena             sinus
## 397         Cetacea     Phocoenidae         Phocoena          phocoena
## 398         Cetacea     Phocoenidae     Phocoenoides             dalli
## 399         Cetacea    Physeteridae            Kogia             simus
## 400         Cetacea    Physeteridae            Kogia         breviceps
## 401         Cetacea    Physeteridae         Physeter           catodon
## 402         Cetacea   Platanistidae             Inia       geoffrensis
## 403         Cetacea   Platanistidae          Lipotes        vexillifer
## 404         Cetacea   Platanistidae       Platanista             minor
## 405         Cetacea   Platanistidae       Platanista         gangetica
## 406         Cetacea   Platanistidae       Pontoporia       blainvillei
## 407         Cetacea       Ziphiidae        Berardius           arnuxii
## 408         Cetacea       Ziphiidae        Berardius           bairdii
## 409         Cetacea       Ziphiidae       Hyperoodon        ampullatus
## 410         Cetacea       Ziphiidae       Mesoplodon        carlhubbsi
## 411         Cetacea       Ziphiidae       Mesoplodon      densirostris
## 412         Cetacea       Ziphiidae       Mesoplodon            bidens
## 413         Cetacea       Ziphiidae          Ziphius       cavirostris
## 414      Dermoptera  Cynocephalidae     Cynocephalus        variegatus
## 415      Dermoptera  Cynocephalidae     Cynocephalus            volans
## 416      Hyracoidea     Procaviidae      Dendrohyrax          arboreus
## 417      Hyracoidea     Procaviidae      Dendrohyrax          dorsalis
## 418      Hyracoidea     Procaviidae      Heterohyrax            brucei
## 419      Hyracoidea     Procaviidae         Procavia          capensis
## 420     Insectivora Chrysochloridae       Amblysomus       hottentotus
## 421     Insectivora Chrysochloridae    Chrysochloris        stuhlmanni
## 422     Insectivora Chrysochloridae    Chrysochloris          asiatica
## 423     Insectivora Chrysochloridae     Chrysospalax          villosus
## 424     Insectivora Chrysochloridae       Eremitalpa            granti
## 425     Insectivora     Erinaceidae         Atelerix           algirus
## 426     Insectivora     Erinaceidae         Atelerix       albiventris
## 427     Insectivora     Erinaceidae         Atelerix         frontalis
## 428     Insectivora     Erinaceidae      Echinosorex           gymnura
## 429     Insectivora     Erinaceidae        Erinaceus          concolor
## 430     Insectivora     Erinaceidae        Erinaceus         europaeus
## 431     Insectivora     Erinaceidae      Hemiechinus          micropus
## 432     Insectivora     Erinaceidae      Hemiechinus         hypomelas
## 433     Insectivora     Erinaceidae      Hemiechinus       aethiopicus
## 434     Insectivora     Erinaceidae      Hemiechinus           auritus
## 435     Insectivora     Erinaceidae          Hylomys           suillus
## 436     Insectivora  Solenodontidae        Solenodon           cubanus
## 437     Insectivora  Solenodontidae        Solenodon         paradoxus
## 438     Insectivora       Soricidae          Blarina      carolinensis
## 439     Insectivora       Soricidae          Blarina         hylophaga
## 440     Insectivora       Soricidae          Blarina        brevicauda
## 441     Insectivora       Soricidae        Crocidura        fuliginosa
## 442     Insectivora       Soricidae        Crocidura             turba
## 443     Insectivora       Soricidae        Crocidura       canariensis
## 444     Insectivora       Soricidae        Crocidura       fuscomurina
## 445     Insectivora       Soricidae        Crocidura         planiceps
## 446     Insectivora       Soricidae        Crocidura           crossei
## 447     Insectivora       Soricidae        Crocidura       mariquensis
## 448     Insectivora       Soricidae        Crocidura            viaria
## 449     Insectivora       Soricidae        Crocidura        flavescens
## 450     Insectivora       Soricidae        Crocidura          leucodon
## 451     Insectivora       Soricidae        Crocidura             hirta
## 452     Insectivora       Soricidae        Crocidura           russula
## 453     Insectivora       Soricidae        Crocidura        suaveolens
## 454     Insectivora       Soricidae        Cryptotis             parva
## 455     Insectivora       Soricidae     Diplomesodon        pulchellum
## 456     Insectivora       Soricidae         Myosorex            varius
## 457     Insectivora       Soricidae         Myosorex             cafer
## 458     Insectivora       Soricidae         Myosorex             geata
## 459     Insectivora       Soricidae           Neomys          anomalus
## 460     Insectivora       Soricidae           Neomys           fodiens
## 461     Insectivora       Soricidae       Notiosorex         crawfordi
## 462     Insectivora       Soricidae            Sorex         mirabilis
## 463     Insectivora       Soricidae            Sorex            dispar
## 464     Insectivora       Soricidae            Sorex         pacificus
## 465     Insectivora       Soricidae            Sorex           bairdii
## 466     Insectivora       Soricidae            Sorex          bendirii
## 467     Insectivora       Soricidae            Sorex         coronatus
## 468     Insectivora       Soricidae            Sorex          merriami
## 469     Insectivora       Soricidae            Sorex          cinereus
## 470     Insectivora       Soricidae            Sorex          arcticus
## 471     Insectivora       Soricidae            Sorex           ornatus
## 472     Insectivora       Soricidae            Sorex              hoyi
## 473     Insectivora       Soricidae            Sorex        monticolus
## 474     Insectivora       Soricidae            Sorex       trowbridgii
## 475     Insectivora       Soricidae            Sorex           minutus
## 476     Insectivora       Soricidae            Sorex           haydeni
## 477     Insectivora       Soricidae            Sorex           araneus
## 478     Insectivora       Soricidae            Sorex      longirostris
## 479     Insectivora       Soricidae            Sorex             nanus
## 480     Insectivora       Soricidae            Sorex            fumeus
## 481     Insectivora       Soricidae            Sorex           vagrans
## 482     Insectivora       Soricidae            Sorex         palustris
## 483     Insectivora       Soricidae           Suncus           murinus
## 484     Insectivora       Soricidae           Suncus           varilla
## 485     Insectivora       Soricidae           Suncus          etruscus
## 486     Insectivora       Soricidae       Surdisorex             norae
## 487     Insectivora       Soricidae       Surdisorex           polulus
## 488     Insectivora       Soricidae       Sylvisorex            granti
## 489     Insectivora        Talpidae        Condylura          cristata
## 490     Insectivora        Talpidae          Desmana          moschata
## 491     Insectivora        Talpidae          Galemys        pyrenaicus
## 492     Insectivora        Talpidae     Neurotrichus           gibbsii
## 493     Insectivora        Talpidae      Parascalops           breweri
## 494     Insectivora        Talpidae         Scalopus         aquaticus
## 495     Insectivora        Talpidae         Scapanus        townsendii
## 496     Insectivora        Talpidae         Scapanus           orarius
## 497     Insectivora        Talpidae         Scapanus         latimanus
## 498     Insectivora        Talpidae            Talpa           altaica
## 499     Insectivora        Talpidae            Talpa          europaea
## 500     Insectivora        Talpidae       Urotrichus         talpoides
## 501     Insectivora      Tenrecidae         Echinops          telfairi
## 502     Insectivora      Tenrecidae          Geogale            aurita
## 503     Insectivora      Tenrecidae     Hemicentetes      semispinosus
## 504     Insectivora      Tenrecidae        Limnogale          mergulus
## 505     Insectivora      Tenrecidae        Microgale           dobsoni
## 506     Insectivora      Tenrecidae        Microgale          talazaci
## 507     Insectivora      Tenrecidae  Micropotamogale          lamottei
## 508     Insectivora      Tenrecidae       Potamogale             velox
## 509     Insectivora      Tenrecidae          Setifer           setosus
## 510     Insectivora      Tenrecidae           Tenrec         ecaudatus
## 511      Lagomorpha       Leporidae      Brachylagus        idahoensis
## 512      Lagomorpha       Leporidae        Bunolagus      monticularis
## 513      Lagomorpha       Leporidae       Caprolagus          hispidus
## 514      Lagomorpha       Leporidae            Lepus       nigricollis
## 515      Lagomorpha       Leporidae            Lepus          callotis
## 516      Lagomorpha       Leporidae            Lepus         insularis
## 517      Lagomorpha       Leporidae            Lepus             tolai
## 518      Lagomorpha       Leporidae            Lepus             othus
## 519      Lagomorpha       Leporidae            Lepus          arcticus
## 520      Lagomorpha       Leporidae            Lepus           timidus
## 521      Lagomorpha       Leporidae            Lepus        americanus
## 522      Lagomorpha       Leporidae            Lepus        townsendii
## 523      Lagomorpha       Leporidae            Lepus          capensis
## 524      Lagomorpha       Leporidae            Lepus            alleni
## 525      Lagomorpha       Leporidae            Lepus      californicus
## 526      Lagomorpha       Leporidae            Lepus         europaeus
## 527      Lagomorpha       Leporidae            Lepus         saxatilis
## 528      Lagomorpha       Leporidae      Oryctolagus         cuniculus
## 529      Lagomorpha       Leporidae         Poelagus         marjorita
## 530      Lagomorpha       Leporidae       Pronolagus         randensis
## 531      Lagomorpha       Leporidae       Pronolagus    crassicaudatus
## 532      Lagomorpha       Leporidae       Pronolagus         rupestris
## 533      Lagomorpha       Leporidae      Romerolagus             diazi
## 534      Lagomorpha       Leporidae       Sylvilagus      brasiliensis
## 535      Lagomorpha      Leporidae        Sylvilagus         palustris
## 536      Lagomorpha      Leporidae        Sylvilagus    transitionalis
## 537      Lagomorpha      Leporidae        Sylvilagus         aquaticus
## 538      Lagomorpha      Leporidae        Sylvilagus          bachmani
## 539      Lagomorpha      Leporidae        Sylvilagus         nuttallii
## 540      Lagomorpha      Leporidae        Sylvilagus        floridanus
## 541      Lagomorpha      Leporidae        Sylvilagus         audubonii
## 542      Lagomorpha     Ochotonidae         Ochotona          macrotis
## 543      Lagomorpha     Ochotonidae         Ochotona         curzoniae
## 544      Lagomorpha     Ochotonidae         Ochotona          collaris
## 545      Lagomorpha     Ochotonidae         Ochotona            roylei
## 546      Lagomorpha     Ochotonidae         Ochotona          dauurica
## 547      Lagomorpha     Ochotonidae         Ochotona            alpina
## 548      Lagomorpha     Ochotonidae         Ochotona          princeps
## 549      Lagomorpha     Ochotonidae         Ochotona            rutila
## 550      Lagomorpha     Ochotonidae         Ochotona           pallasi
## 551      Lagomorpha     Ochotonidae         Ochotona           pusilla
## 552      Lagomorpha     Ochotonidae         Ochotona         rufescens
## 553   Macroscelidea Macroscelididae     Elephantulus         rupestris
## 554   Macroscelidea Macroscelididae     Elephantulus            fuscus
## 555   Macroscelidea Macroscelididae     Elephantulus            intufi
## 556   Macroscelidea Macroscelididae     Elephantulus            myurus
## 557   Macroscelidea Macroscelididae     Elephantulus            rozeti
## 558   Macroscelidea Macroscelididae     Elephantulus         rufescens
## 559   Macroscelidea Macroscelididae     Elephantulus    brachyrhynchus
## 560   Macroscelidea Macroscelididae    Macroscelides      proboscideus
## 561   Macroscelidea Macroscelididae      Petrodromus     tetradactylus
## 562   Macroscelidea Macroscelididae      Rhynchocyon       chrysopygus
## 563  Perissodactyla         Equidae            Equus            asinus
## 564  Perissodactyla         Equidae            Equus             kiang
## 565  Perissodactyla         Equidae            Equus            grevyi
## 566  Perissodactyla         Equidae            Equus             zebra
## 567  Perissodactyla         Equidae            Equus        burchellii
## 568  Perissodactyla         Equidae            Equus          hemionus
## 569  Perissodactyla  Rhinocerotidae    Ceratotherium             simum
## 570  Perissodactyla  Rhinocerotidae     Dicerorhinus       sumatrensis
## 571  Perissodactyla  Rhinocerotidae          Diceros          bicornis
## 572  Perissodactyla  Rhinocerotidae       Rhinoceros         unicornis
## 573  Perissodactyla  Rhinocerotidae       Rhinoceros         sondaicus
## 574  Perissodactyla       Tapiridae          Tapirus         pinchaque
## 575  Perissodactyla       Tapiridae          Tapirus        terrestris
## 576  Perissodactyla       Tapiridae          Tapirus           indicus
## 577  Perissodactyla       Tapiridae          Tapirus           bairdii
## 578       Pholidota         Manidae            Manis          gigantea
## 579       Pholidota         Manidae            Manis          javanica
## 580       Pholidota         Manidae            Manis      pentadactyla
## 581       Pholidota         Manidae            Manis         tricuspis
## 582       Pholidota         Manidae            Manis     crassicaudata
## 583       Pholidota         Manidae            Manis      tetradactyla
## 584       Pholidota         Manidae            Manis        temminckii
## 585        Primates  Callitrichidae        Callimico           goeldii
## 586        Primates  Callitrichidae       Callithrix       humeralifer
## 587        Primates  Callitrichidae       Callithrix         argentata
## 588        Primates  Callitrichidae       Callithrix           pygmaea
## 589        Primates  Callitrichidae       Callithrix       penicillata
## 590        Primates  Callitrichidae       Callithrix         flaviceps
## 591        Primates  Callitrichidae       Callithrix           jacchus
## 592        Primates  Callitrichidae   Leontopithecus           rosalia
## 593        Primates  Callitrichidae         Saguinus          leucopus
## 594        Primates  Callitrichidae         Saguinus         imperator
## 595        Primates  Callitrichidae         Saguinus           bicolor
## 596        Primates  Callitrichidae         Saguinus       nigricollis
## 597        Primates  Callitrichidae         Saguinus            mystax
## 598        Primates  Callitrichidae         Saguinus         geoffroyi
## 599        Primates  Callitrichidae         Saguinus       fuscicollis
## 600        Primates  Callitrichidae         Saguinus           oedipus
## 601        Primates  Callitrichidae         Saguinus          labiatus
## 602        Primates  Callitrichidae         Saguinus             midas
## 603        Primates         Cebidae         Alouatta             pigra
## 604        Primates         Cebidae         Alouatta         seniculus
## 605        Primates         Cebidae         Alouatta          palliata
## 606        Primates         Cebidae         Alouatta            caraya
## 607        Primates         Cebidae            Aotus       trivirgatus
## 608        Primates         Cebidae            Aotus         lemurinus
## 609        Primates         Cebidae            Aotus            azarai
## 610        Primates         Cebidae           Ateles         belzebuth
## 611        Primates         Cebidae           Ateles         geoffroyi
## 612        Primates         Cebidae           Ateles          paniscus
## 613        Primates         Cebidae           Ateles         fusciceps
## 614        Primates         Cebidae      Brachyteles       arachnoides
## 615        Primates         Cebidae          Cacajao            calvus
## 616        Primates         Cebidae       Callicebus         torquatus
## 617        Primates         Cebidae       Callicebus           cupreus
## 618        Primates         Cebidae       Callicebus            moloch
## 619        Primates         Cebidae            Cebus         olivaceus
## 620        Primates         Cebidae            Cebus         capucinus
## 621        Primates         Cebidae            Cebus            apella
## 622        Primates         Cebidae            Cebus         albifrons
## 623        Primates         Cebidae       Chiropotes         albinasus
## 624        Primates         Cebidae       Chiropotes           satanas
## 625        Primates         Cebidae        Lagothrix        lagotricha
## 626        Primates         Cebidae         Pithecia          monachus
## 627        Primates         Cebidae         Pithecia          pithecia
## 628        Primates         Cebidae          Saimiri          oerstedi
## 629        Primates         Cebidae          Saimiri          sciureus
## 630        Primates Cercopithecidae   Allenopithecus      nigroviridis
## 631        Primates Cercopithecidae       Cercocebus         galeritus
## 632        Primates Cercopithecidae       Cercocebus         torquatus
## 633        Primates Cercopithecidae    Cercopithecus             wolfi
## 634        Primates Cercopithecidae    Cercopithecus           lhoesti
## 635        Primates Cercopithecidae    Cercopithecus              mona
## 636        Primates Cercopithecidae    Cercopithecus         nictitans
## 637        Primates Cercopithecidae    Cercopithecus        erythrotis
## 638        Primates Cercopithecidae    Cercopithecus            cephus
## 639        Primates Cercopithecidae    Cercopithecus          pogonias
## 640        Primates Cercopithecidae    Cercopithecus          ascanius
## 641        Primates Cercopithecidae    Cercopithecus         campbelli
## 642        Primates Cercopithecidae    Cercopithecus             mitis
## 643        Primates Cercopithecidae    Cercopithecus           solatus
## 644        Primates Cercopithecidae    Cercopithecus         neglectus
## 645        Primates Cercopithecidae    Cercopithecus             diana
## 646        Primates Cercopithecidae      Chlorocebus          aethiops
## 647        Primates Cercopithecidae          Colobus        angolensis
## 648        Primates Cercopithecidae          Colobus           satanas
## 649        Primates Cercopithecidae          Colobus         polykomos
## 650        Primates Cercopithecidae          Colobus           guereza
## 651        Primates Cercopithecidae     Erythrocebus             patas
## 652        Primates Cercopithecidae       Lophocebus          albigena
## 653        Primates Cercopithecidae           Macaca         thibetana
## 654        Primates Cercopithecidae           Macaca           fuscata
## 655        Primates Cercopithecidae           Macaca             maura
## 656        Primates Cercopithecidae           Macaca          sylvanus
## 657        Primates Cercopithecidae           Macaca         arctoides
## 658        Primates Cercopithecidae           Macaca             nigra
## 659        Primates Cercopithecidae           Macaca            sinica
## 660        Primates Cercopithecidae           Macaca           silenus
## 661        Primates Cercopithecidae           Macaca           mulatta
## 662        Primates Cercopithecidae           Macaca          cyclopis
## 663        Primates Cercopithecidae           Macaca        nemestrina
## 664        Primates Cercopithecidae           Macaca      fascicularis
## 665        Primates Cercopithecidae           Macaca           radiata
## 666        Primates Cercopithecidae       Mandrillus       leucophaeus
## 667        Primates Cercopithecidae       Mandrillus            sphinx
## 668        Primates Cercopithecidae      Miopithecus          talapoin
## 669        Primates Cercopithecidae          Nasalis          larvatus
## 670        Primates Cercopithecidae            Papio         hamadryas
## 671        Primates Cercopithecidae        Presbytis            comata
## 672        Primates Cercopithecidae        Presbytis         rubicunda
## 673        Primates Cercopithecidae        Presbytis        potenziani
## 674        Primates Cercopithecidae        Presbytis        melalophos
## 675        Primates Cercopithecidae       Procolobus             verus
## 676        Primates Cercopithecidae       Procolobus            badius
## 677        Primates Cercopithecidae        Pygathrix             bieti
## 678        Primates Cercopithecidae        Pygathrix           nemaeus
## 679        Primates Cercopithecidae    Semnopithecus          entellus
## 680        Primates Cercopithecidae    Theropithecus            gelada
## 681        Primates Cercopithecidae   Trachypithecus         francoisi
## 682        Primates Cercopithecidae   Trachypithecus              geei
## 683        Primates Cercopithecidae   Trachypithecus            johnii
## 684        Primates Cercopithecidae   Trachypithecus         cristatus
## 685        Primates Cercopithecidae   Trachypithecus           vetulus
## 686        Primates Cercopithecidae   Trachypithecus          obscurus
## 687        Primates Cercopithecidae   Trachypithecus           phayrei
## 688        Primates  Cheirogaleidae     Cheirogaleus             major
## 689        Primates  Cheirogaleidae     Cheirogaleus            medius
## 690        Primates  Cheirogaleidae       Microcebus             rufus
## 691        Primates  Cheirogaleidae       Microcebus         coquereli
## 692        Primates  Cheirogaleidae       Microcebus           murinus
## 693        Primates  Cheirogaleidae           Phaner          furcifer
## 694        Primates  Daubentoniidae      Daubentonia  madagascariensis
## 695        Primates     Galagonidae         Euoticus       elegantulus
## 696        Primates     Galagonidae           Galago            alleni
## 697        Primates     Galagonidae           Galago            moholi
## 698        Primates     Galagonidae           Galago      senegalensis
## 699        Primates     Galagonidae       Galagoides          demidoff
## 700        Primates     Galagonidae       Galagoides      zanzibaricus
## 701        Primates     Galagonidae         Otolemur    crassicaudatus
## 702        Primates     Galagonidae         Otolemur         garnettii
## 703        Primates       Hominidae          Gorilla           gorilla
## 704        Primates       Hominidae              Pan       troglodytes
## 705        Primates       Hominidae              Pan          paniscus
## 706        Primates       Hominidae            Pongo          pygmaeus
## 707        Primates     Hylobatidae        Hylobates            moloch
## 708        Primates     Hylobatidae        Hylobates           klossii
## 709        Primates     Hylobatidae        Hylobates           hoolock
## 710        Primates     Hylobatidae        Hylobates          concolor
## 711        Primates     Hylobatidae        Hylobates            agilis
## 712        Primates     Hylobatidae        Hylobates       syndactylus
## 713        Primates     Hylobatidae        Hylobates               lar
## 714        Primates        Indridae            Avahi           laniger
## 715        Primates        Indridae            Indri             indri
## 716        Primates        Indridae      Propithecus       tattersalli
## 717        Primates        Indridae      Propithecus           diadema
## 718        Primates        Indridae      Propithecus         verreauxi
## 719        Primates       Lemuridae          Eulemur       rubriventer
## 720        Primates       Lemuridae          Eulemur            macaco
## 721        Primates       Lemuridae          Eulemur            mongoz
## 722        Primates       Lemuridae          Eulemur         coronatus
## 723        Primates       Lemuridae          Eulemur            fulvus
## 724        Primates       Lemuridae        Hapalemur            aureus
## 725        Primates       Lemuridae        Hapalemur           griseus
## 726        Primates       Lemuridae            Lemur             catta
## 727        Primates       Lemuridae          Varecia         variegata
## 728        Primates         Loridae       Arctocebus      calabarensis
## 729        Primates         Loridae            Loris       tardigradus
## 730        Primates         Loridae       Nycticebus          pygmaeus
## 731        Primates         Loridae       Nycticebus           coucang
## 732        Primates         Loridae     Perodicticus             potto
## 733        Primates   Megaladapidae        Lepilemur          leucopus
## 734        Primates   Megaladapidae        Lepilemur      ruficaudatus
## 735        Primates   Megaladapidae        Lepilemur        mustelinus
## 736        Primates       Tarsiidae          Tarsius           pumilis
## 737        Primates       Tarsiidae          Tarsius            dianae
## 738        Primates       Tarsiidae          Tarsius          syrichta
## 739        Primates       Tarsiidae          Tarsius          bancanus
## 740        Primates       Tarsiidae          Tarsius          spectrum
## 741     Proboscidea    Elephantidae          Elephas           maximus
## 742     Proboscidea    Elephantidae        Loxodonta          africana
## 743        Rodentia     Abrocomidae         Abrocoma           cinerea
## 744        Rodentia     Abrocomidae         Abrocoma          bennetti
## 745        Rodentia       Agoutidae           Agouti              paca
## 746        Rodentia    Anomaluridae       Anomalurus         beecrofti
## 747        Rodentia    Anomaluridae       Anomalurus         derbianus
## 748        Rodentia    Anomaluridae       Anomalurus             pelii
## 749        Rodentia    Anomaluridae          Idiurus           zenkeri
## 750        Rodentia    Aplodontidae       Aplodontia              rufa
## 751        Rodentia    Bathyergidae       Bathyergus           suillus
## 752        Rodentia    Bathyergidae       Bathyergus           janetta
## 753        Rodentia    Bathyergidae        Cryptomys        damarensis
## 754        Rodentia    Bathyergidae        Cryptomys       hottentotus
## 755        Rodentia    Bathyergidae        Cryptomys  ochraceocinereus
## 756        Rodentia    Bathyergidae        Georychus          capensis
## 757        Rodentia    Bathyergidae     Heliophobius  argenteocinereus
## 758        Rodentia    Bathyergidae   Heterocephalus            glaber
## 759        Rodentia     Capromyidae         Capromys         pilorides
## 760        Rodentia     Capromyidae      Geocapromys         ingrahami
## 761        Rodentia     Capromyidae      Geocapromys           brownii
## 762        Rodentia     Capromyidae        Mysateles         melanurus
## 763        Rodentia     Capromyidae        Mysateles       prehensilis
## 764        Rodentia     Capromyidae     Plagiodontia            aedium
## 765        Rodentia      Castoridae           Castor             fiber
## 766        Rodentia      Castoridae           Castor        canadensis
## 767        Rodentia        Caviidae            Cavia          tschudii
## 768        Rodentia        Caviidae            Cavia            aperea
## 769        Rodentia        Caviidae            Cavia         porcellus
## 770        Rodentia        Caviidae       Dolichotis        salinicola
## 771        Rodentia        Caviidae       Dolichotis         patagonum
## 772        Rodentia        Caviidae            Galea            spixii
## 773        Rodentia        Caviidae            Galea       musteloides
## 774        Rodentia        Caviidae          Kerodon         rupestris
## 775        Rodentia        Caviidae       Microcavia         australis
## 776        Rodentia   Chinchillidae       Chinchilla      brevicaudata
## 777        Rodentia   Chinchillidae       Chinchilla          lanigera
## 778        Rodentia   Chinchillidae         Lagidium          viscacia
## 779        Rodentia   Chinchillidae         Lagidium          peruanum
## 780        Rodentia   Chinchillidae       Lagostomus           maximus
## 781        Rodentia Ctenodactylidae    Ctenodactylus              vali
## 782        Rodentia Ctenodactylidae    Ctenodactylus             gundi
## 783        Rodentia Ctenodactylidae      Massoutiera             mzabi
## 784        Rodentia     Ctenomyidae         Ctenomys         torquatus
## 785        Rodentia     Ctenomyidae         Ctenomys             haigi
## 786        Rodentia     Ctenomyidae         Ctenomys          peruanus
## 787        Rodentia     Ctenomyidae         Ctenomys           talarum
## 788        Rodentia     Ctenomyidae         Ctenomys            opimus
## 789        Rodentia   Dasyproctidae       Dasyprocta          punctata
## 790        Rodentia   Dasyproctidae       Dasyprocta          cristata
## 791        Rodentia   Dasyproctidae       Dasyprocta          leporina
## 792        Rodentia   Dasyproctidae        Myoprocta           acouchy
## 793        Rodentia      Dinomyidae          Dinomys         branickii
## 794        Rodentia       Dipodidae        Allactaga      tetradactyla
## 795        Rodentia       Dipodidae        Allactaga        euphratica
## 796        Rodentia       Dipodidae        Allactaga          sibirica
## 797        Rodentia       Dipodidae        Allactaga            elater
## 798        Rodentia       Dipodidae            Dipus           sagitta
## 799        Rodentia       Dipodidae       Eremodipus     lichtensteini
## 800        Rodentia       Dipodidae          Jaculus        orientalis
## 801        Rodentia       Dipodidae          Jaculus           jaculus
## 802        Rodentia       Dipodidae          Jaculus       turcmenicus
## 803        Rodentia       Dipodidae      Napaeozapus          insignis
## 804        Rodentia       Dipodidae       Pygeretmus         platyurus
## 805        Rodentia       Dipodidae       Pygeretmus           pumilio
## 806        Rodentia       Dipodidae      Salpingotus       crassicauda
## 807        Rodentia       Dipodidae          Sicista            napaea
## 808        Rodentia       Dipodidae          Sicista          betulina
## 809        Rodentia       Dipodidae       Stylodipus             telum
## 810        Rodentia       Dipodidae            Zapus          princeps
## 811        Rodentia       Dipodidae            Zapus        trinotatus
## 812        Rodentia       Dipodidae            Zapus         hudsonius
## 813        Rodentia      Echimyidae          Echimys         chrysurus
## 814        Rodentia      Echimyidae         Hoplomys          gymnurus
## 815        Rodentia      Echimyidae    Kannabateomys         amblyonyx
## 816        Rodentia      Echimyidae         Makalata            armata
## 817        Rodentia      Echimyidae       Proechimys       cayennensis
## 818        Rodentia      Echimyidae       Proechimys      semispinosus
## 819        Rodentia      Echimyidae       Proechimys           guairae
## 820        Rodentia      Echimyidae       Thrichomys        apereoides
## 821        Rodentia  Erethizontidae          Coendou       prehensilis
## 822        Rodentia  Erethizontidae        Erethizon          dorsatum
## 823        Rodentia  Erethizontidae       Sphiggurus          villosus
## 824        Rodentia  Erethizontidae       Sphiggurus         mexicanus
## 825        Rodentia       Geomyidae           Geomys         bursarius
## 826        Rodentia       Geomyidae           Geomys           pinetis
## 827        Rodentia       Geomyidae           Geomys        personatus
## 828        Rodentia       Geomyidae           Geomys         arenarius
## 829        Rodentia       Geomyidae      Orthogeomys          hispidus
## 830        Rodentia       Geomyidae      Orthogeomys          cherriei
## 831        Rodentia       Geomyidae      Pappogeomys         castanops
## 832        Rodentia       Geomyidae         Thomomys           clusius
## 833        Rodentia       Geomyidae         Thomomys         monticola
## 834        Rodentia       Geomyidae         Thomomys          umbrinus
## 835        Rodentia       Geomyidae         Thomomys         talpoides
## 836        Rodentia       Geomyidae         Thomomys        bulbivorus
## 837        Rodentia       Geomyidae         Thomomys            bottae
## 838        Rodentia       Geomyidae         Thomomys        townsendii
## 839        Rodentia    Heteromyidae      Chaetodipus           nelsoni
## 840        Rodentia    Heteromyidae      Chaetodipus      penicillatus
## 841        Rodentia    Heteromyidae      Chaetodipus      californicus
## 842        Rodentia    Heteromyidae      Chaetodipus       intermedius
## 843        Rodentia    Heteromyidae      Chaetodipus            fallax
## 844        Rodentia    Heteromyidae      Chaetodipus          formosus
## 845        Rodentia    Heteromyidae      Chaetodipus          hispidus
## 846        Rodentia    Heteromyidae        Dipodomys      elephantinus
## 847        Rodentia    Heteromyidae        Dipodomys       nitratoides
## 848        Rodentia    Heteromyidae        Dipodomys      panamintinus
## 849        Rodentia    Heteromyidae        Dipodomys           microps
## 850        Rodentia    Heteromyidae        Dipodomys            agilis
## 851        Rodentia    Heteromyidae        Dipodomys         stephensi
## 852        Rodentia    Heteromyidae        Dipodomys          venustus
## 853        Rodentia    Heteromyidae        Dipodomys          merriami
## 854        Rodentia    Heteromyidae        Dipodomys       spectabilis
## 855        Rodentia    Heteromyidae        Dipodomys      californicus
## 856        Rodentia    Heteromyidae        Dipodomys            ingens
## 857        Rodentia    Heteromyidae        Dipodomys         heermanni
## 858        Rodentia    Heteromyidae        Dipodomys             ordii
## 859        Rodentia    Heteromyidae        Dipodomys           deserti
## 860        Rodentia    Heteromyidae        Heteromys          anomalus
## 861        Rodentia    Heteromyidae        Heteromys         oresterus
## 862        Rodentia    Heteromyidae        Heteromys          goldmani
## 863        Rodentia    Heteromyidae        Heteromys    desmarestianus
## 864        Rodentia    Heteromyidae           Liomys            pictus
## 865        Rodentia    Heteromyidae           Liomys         irroratus
## 866        Rodentia    Heteromyidae           Liomys         adspersus
## 867        Rodentia    Heteromyidae           Liomys           salvini
## 868        Rodentia    Heteromyidae    Microdipodops          pallidus
## 869        Rodentia    Heteromyidae    Microdipodops      megacephalus
## 870        Rodentia    Heteromyidae      Perognathus         fasciatus
## 871        Rodentia    Heteromyidae      Perognathus      longimembris
## 872        Rodentia    Heteromyidae      Perognathus            flavus
## 873        Rodentia    Heteromyidae      Perognathus        flavescens
## 874        Rodentia    Heteromyidae      Perognathus            parvus
## 875        Rodentia    Heteromyidae      Perognathus          merriami
## 876        Rodentia    Heteromyidae      Perognathus         inornatus
## 877        Rodentia  Hydrochaeridae     Hydrochaeris      hydrochaeris
## 878        Rodentia     Hystricidae        Atherurus         macrourus
## 879        Rodentia     Hystricidae        Atherurus         africanus
## 880        Rodentia     Hystricidae          Hystrix            pumila
## 881        Rodentia     Hystricidae          Hystrix         brachyura
## 882        Rodentia     Hystricidae          Hystrix            indica
## 883        Rodentia     Hystricidae          Hystrix          cristata
## 884        Rodentia     Hystricidae          Hystrix  africaeaustralis
## 885        Rodentia         Muridae           Acomys         percivali
## 886        Rodentia         Muridae           Acomys          russatus
## 887        Rodentia         Muridae           Acomys           wilsoni
## 888        Rodentia         Muridae           Acomys         cahirinus
## 889        Rodentia         Muridae         Aethomys            hindei
## 890        Rodentia         Muridae         Aethomys           kaiseri
## 891        Rodentia         Muridae         Aethomys      chrysophilus
## 892        Rodentia         Muridae         Aethomys       namaquensis
## 893        Rodentia         Muridae           Akodon            varius
## 894        Rodentia         Muridae           Akodon            cursor
## 895        Rodentia         Muridae           Akodon       boliviensis
## 896        Rodentia         Muridae           Akodon           molinae
## 897        Rodentia         Muridae           Akodon           dolores
## 898        Rodentia         Muridae           Akodon            azarae
## 899        Rodentia         Muridae           Akodon        longipilis
## 900        Rodentia         Muridae           Akodon         olivaceus
## 901        Rodentia         Muridae           Akodon            urichi
## 902        Rodentia         Muridae   Allocricetulus        eversmanni
## 903        Rodentia         Muridae         Alticola            roylei
## 904        Rodentia         Muridae         Alticola         strelzowi
## 905        Rodentia         Muridae         Alticola        argentatus
## 906        Rodentia         Muridae         Apodemus         argenteus
## 907        Rodentia         Muridae         Apodemus        peninsulae
## 908        Rodentia         Muridae         Apodemus         uralensis
## 909        Rodentia         Muridae         Apodemus        mystacinus
## 910        Rodentia         Muridae         Apodemus       flavicollis
## 911        Rodentia         Muridae         Apodemus          agrarius
## 912        Rodentia         Muridae         Apodemus        sylvaticus
## 913        Rodentia         Muridae        Arborimus              pomo
## 914        Rodentia         Muridae        Arborimus       longicaudus
## 915        Rodentia         Muridae        Arborimus           albipes
## 916        Rodentia         Muridae      Arvicanthis         niloticus
## 917        Rodentia         Muridae         Arvicola           sapidus
## 918        Rodentia         Muridae         Arvicola        terrestris
## 919        Rodentia         Muridae       Auliscomys          micropus
## 920        Rodentia         Muridae          Baiomys           taylori
## 921        Rodentia         Muridae        Bandicota            indica
## 922        Rodentia         Muridae        Bandicota       bengalensis
## 923        Rodentia         Muridae           Beamys            hindei
## 924        Rodentia         Muridae          Bolomys          lasiurus
## 925        Rodentia         Muridae          Calomys           lepidus
## 926        Rodentia         Muridae          Calomys            laucha
## 927        Rodentia         Muridae          Calomys       hummelincki
## 928        Rodentia         Muridae          Calomys          callosus
## 929        Rodentia         Muridae          Calomys        musculinus
## 930        Rodentia         Muridae       Calomyscus         bailwardi
## 931        Rodentia         Muridae       Calomyscus            mystax
## 932        Rodentia         Muridae         Cannomys            badius
## 933        Rodentia         Muridae        Chionomys           nivalis
## 934        Rodentia         Muridae        Chionomys               gud
## 935        Rodentia         Muridae     Chiropodomys         gliroides
## 936        Rodentia         Muridae       Chiruromys             vates
## 937        Rodentia         Muridae    Clethrionomys           gapperi
## 938        Rodentia         Muridae    Clethrionomys         rufocanus
## 939        Rodentia         Muridae    Clethrionomys         glareolus
## 940        Rodentia         Muridae    Clethrionomys      californicus
## 941        Rodentia         Muridae    Clethrionomys           rutilus
## 942        Rodentia         Muridae          Colomys          goslingi
## 943        Rodentia         Muridae        Conilurus      penicillatus
## 944        Rodentia         Muridae        Cremnomys         blanfordi
## 945        Rodentia         Muridae        Cremnomys         cutchicus
## 946        Rodentia         Muridae       Cricetomys         gambianus
## 947        Rodentia         Muridae       Cricetulus        barabensis
## 948        Rodentia         Muridae       Cricetulus       migratorius
## 949        Rodentia         Muridae         Cricetus          cricetus
## 950        Rodentia         Muridae          Dasymys          incomtus
## 951        Rodentia         Muridae        Dendromus         messorius
## 952        Rodentia         Muridae        Dendromus       kahuziensis
## 953        Rodentia         Muridae        Dendromus        mystacalis
## 954        Rodentia         Muridae        Dendromus         mesomelas
## 955        Rodentia         Muridae        Dendromus         melanotis
## 956        Rodentia         Muridae         Dephomys             defua
## 957        Rodentia         Muridae   Desmodilliscus           braueri
## 958        Rodentia         Muridae      Desmodillus       auricularis
## 959        Rodentia         Muridae      Dicrostonyx      unalascensis
## 960        Rodentia         Muridae      Dicrostonyx       richardsoni
## 961        Rodentia         Muridae      Dicrostonyx         hudsonius
## 962        Rodentia         Muridae      Dicrostonyx         torquatus
## 963        Rodentia         Muridae      Dicrostonyx     groenlandicus
## 964        Rodentia         Muridae        Dinaromys         bogdanovi
## 965        Rodentia         Muridae     Eligmodontia             typus
## 966        Rodentia         Muridae         Ellobius     fuscocapillus
## 967        Rodentia         Muridae         Ellobius          talpinus
## 968        Rodentia         Muridae        Eolagurus            luteus
## 969        Rodentia         Muridae      Gerbillurus           setzeri
## 970        Rodentia         Muridae      Gerbillurus             paeba
## 971        Rodentia         Muridae      Gerbillurus           tytonis
## 972        Rodentia         Muridae        Gerbillus          gleadowi
## 973        Rodentia         Muridae        Gerbillus         andersoni
## 974        Rodentia         Muridae        Gerbillus           henleyi
## 975        Rodentia         Muridae        Gerbillus         gerbillus
## 976        Rodentia         Muridae        Gerbillus          dasyurus
## 977        Rodentia         Muridae        Gerbillus       perpallidus
## 978        Rodentia         Muridae        Gerbillus            simoni
## 979        Rodentia         Muridae        Gerbillus         cheesmani
## 980        Rodentia         Muridae        Gerbillus             nanus
## 981        Rodentia         Muridae        Gerbillus         pyramidum
## 982        Rodentia         Muridae          Golunda           ellioti
## 983        Rodentia         Muridae        Grammomys          rutilans
## 984        Rodentia         Muridae        Grammomys        dolichurus
## 985        Rodentia         Muridae        Grammomys           cometes
## 986        Rodentia         Muridae          Graomys      griseoflavus
## 987        Rodentia         Muridae          Hodomys            alleni
## 988        Rodentia         Muridae       Holochilus      brasiliensis
## 989        Rodentia         Muridae          Hybomys       univittatus
## 990        Rodentia         Muridae         Hydromys      chrysogaster
## 991        Rodentia         Muridae       Hylomyscus            alleni
## 992        Rodentia         Muridae       Hylomyscus            stella
## 993        Rodentia         Muridae           Hyomys           goliath
## 994        Rodentia         Muridae      Hyperacrius          fertilis
## 995        Rodentia         Muridae      Hyperacrius            wynnei
## 996        Rodentia         Muridae       Hypogeomys          antimena
## 997        Rodentia         Muridae          Lagurus           lagurus
## 998        Rodentia         Muridae     Lasiopodomys          brandtii
## 999        Rodentia         Muridae        Leggadina     lakedownensis
## 1000       Rodentia         Muridae        Leggadina          forresti
## 1001       Rodentia         Muridae        Lemmiscus          curtatus
## 1002       Rodentia         Muridae           Lemmus            lemmus
## 1003       Rodentia         Muridae           Lemmus         sibiricus
## 1004       Rodentia         Muridae      Lemniscomys          griselda
## 1005       Rodentia         Muridae      Lemniscomys          striatus
## 1006       Rodentia         Muridae       Leporillus          conditor
## 1007       Rodentia         Muridae        Lophiomys           imhausi
## 1008       Rodentia         Muridae       Lophuromys          woosnami
## 1009       Rodentia         Muridae       Lophuromys       luteogaster
## 1010       Rodentia         Muridae       Lophuromys    flavopunctatus
## 1011       Rodentia         Muridae       Lophuromys          sikapusi
## 1012       Rodentia         Muridae    Macrotarsomys          bastardi
## 1013       Rodentia         Muridae      Malacothrix            typica
## 1014       Rodentia         Muridae         Mastomys     erythroleucus
## 1015       Rodentia         Muridae         Mastomys        natalensis
## 1016       Rodentia         Muridae     Megadontomys           thomasi
## 1017       Rodentia         Muridae          Melomys           levipes
## 1018       Rodentia         Muridae          Melomys             rubex
## 1019       Rodentia         Muridae          Melomys         rufescens
## 1020       Rodentia         Muridae          Melomys         moncktoni
## 1021       Rodentia         Muridae          Melomys       leucogaster
## 1022       Rodentia         Muridae          Melomys          capensis
## 1023       Rodentia         Muridae          Melomys           burtoni
## 1024       Rodentia         Muridae          Melomys        cervinipes
## 1025       Rodentia         Muridae         Meriones          persicus
## 1026       Rodentia         Muridae         Meriones         tristrami
## 1027       Rodentia         Muridae         Meriones           libycus
## 1028       Rodentia         Muridae         Meriones             shawi
## 1029       Rodentia         Muridae         Meriones       vinogradovi
## 1030       Rodentia         Muridae         Meriones           crassus
## 1031       Rodentia         Muridae         Meriones      tamariscinus
## 1032       Rodentia         Muridae         Meriones        meridianus
## 1033       Rodentia         Muridae         Meriones         hurrianae
## 1034       Rodentia         Muridae         Meriones      unguiculatus
## 1035       Rodentia         Muridae     Mesembriomys          macrurus
## 1036       Rodentia         Muridae     Mesembriomys           gouldii
## 1037       Rodentia         Muridae     Mesocricetus           brandti
## 1038       Rodentia         Muridae     Mesocricetus            raddei
## 1039       Rodentia         Muridae     Mesocricetus           auratus
## 1040       Rodentia         Muridae         Micromys           minutus
## 1041       Rodentia         Muridae         Microtus       lusitanicus
## 1042       Rodentia         Muridae         Microtus     transcaspicus
## 1043       Rodentia         Muridae         Microtus  duodecimcostatus
## 1044       Rodentia         Muridae         Microtus       abbreviatus
## 1045       Rodentia         Muridae         Microtus         mexicanus
## 1046       Rodentia         Muridae         Microtus         juldaschi
## 1047       Rodentia         Muridae         Microtus           breweri
## 1048       Rodentia         Muridae         Microtus        montebelli
## 1049       Rodentia         Muridae         Microtus        townsendii
## 1050       Rodentia         Muridae         Microtus            miurus
## 1051       Rodentia         Muridae         Microtus       longicaudus
## 1052       Rodentia         Muridae         Microtus     chrotorrhinus
## 1053       Rodentia         Muridae         Microtus        canicaudus
## 1054       Rodentia         Muridae         Microtus       richardsoni
## 1055       Rodentia         Muridae         Microtus     xanthognathus
## 1056       Rodentia         Muridae         Microtus    pennsylvanicus
## 1057       Rodentia         Muridae         Microtus         pinetorum
## 1058       Rodentia         Muridae         Microtus          gregalis
## 1059       Rodentia         Muridae         Microtus         guentheri
## 1060       Rodentia         Muridae         Microtus         oeconomus
## 1061       Rodentia         Muridae         Microtus          agrestis
## 1062       Rodentia         Muridae         Microtus      subterraneus
## 1063       Rodentia         Muridae         Microtus       ochrogaster
## 1064       Rodentia         Muridae         Microtus           oregoni
## 1065       Rodentia         Muridae         Microtus          montanus
## 1066       Rodentia         Muridae         Microtus      californicus
## 1067       Rodentia         Muridae         Microtus          socialis
## 1068       Rodentia         Muridae         Microtus           arvalis
## 1069       Rodentia         Muridae         Microtus            fortis
## 1070       Rodentia         Muridae        Millardia           meltada
## 1071       Rodentia         Muridae              Mus            caroli
## 1072       Rodentia         Muridae              Mus           spretus
## 1073       Rodentia         Muridae              Mus            mayori
## 1074       Rodentia         Muridae              Mus        cervicolor
## 1075       Rodentia         Muridae              Mus       musculoides
## 1076       Rodentia         Muridae              Mus        platythrix
## 1077       Rodentia         Muridae              Mus           booduga
## 1078       Rodentia         Muridae              Mus            triton
## 1079       Rodentia         Muridae              Mus        minutoides
## 1080       Rodentia         Muridae              Mus          musculus
## 1081       Rodentia         Muridae           Myomys           fumatus
## 1082       Rodentia         Muridae           Myomys            derooi
## 1083       Rodentia         Muridae           Myomys           daltoni
## 1084       Rodentia         Muridae           Myopus      schisticolor
## 1085       Rodentia         Muridae        Myospalax         myospalax
## 1086       Rodentia         Muridae        Mystromys      albicaudatus
## 1087       Rodentia         Muridae      Nannospalax          leucodon
## 1088       Rodentia         Muridae         Neacomys          tenuipes
## 1089       Rodentia         Muridae         Nectomys         squamipes
## 1090       Rodentia         Muridae         Nectomys          parvipes
## 1091       Rodentia         Muridae         Neofiber            alleni
## 1092       Rodentia         Muridae          Neotoma             devia
## 1093       Rodentia         Muridae          Neotoma          fuscipes
## 1094       Rodentia         Muridae          Neotoma         stephensi
## 1095       Rodentia         Muridae          Neotoma           cinerea
## 1096       Rodentia         Muridae          Neotoma            phenax
## 1097       Rodentia         Muridae          Neotoma          mexicana
## 1098       Rodentia         Muridae          Neotoma          albigula
## 1099       Rodentia         Muridae          Neotoma            lepida
## 1100       Rodentia         Muridae          Neotoma          micropus
## 1101       Rodentia         Muridae          Neotoma         floridana
## 1102       Rodentia         Muridae       Neotomodon           alstoni
## 1103       Rodentia         Muridae          Nesokia            indica
## 1104       Rodentia         Muridae       Niviventer        niviventer
## 1105       Rodentia         Muridae          Notomys          cervinus
## 1106       Rodentia         Muridae          Notomys            fuscus
## 1107       Rodentia         Muridae          Notomys            aquilo
## 1108       Rodentia         Muridae          Notomys        mitchellii
## 1109       Rodentia         Muridae          Notomys            alexis
## 1110       Rodentia         Muridae         Nyctomys       sumichrasti
## 1111       Rodentia         Muridae       Ochrotomys          nuttalli
## 1112       Rodentia         Muridae          Oecomys          concolor
## 1113       Rodentia         Muridae          Oenomys       hypoxanthus
## 1114       Rodentia         Muridae     Oligoryzomys          nigripes
## 1115       Rodentia         Muridae     Oligoryzomys        flavescens
## 1116       Rodentia         Muridae     Oligoryzomys     longicaudatus
## 1117       Rodentia         Muridae          Ondatra        zibethicus
## 1118       Rodentia         Muridae        Onychomys       leucogaster
## 1119       Rodentia         Muridae        Onychomys          torridus
## 1120       Rodentia         Muridae         Oryzomys         subflavus
## 1121       Rodentia         Muridae         Oryzomys         palustris
## 1122       Rodentia         Muridae         Oryzomys            capito
## 1123       Rodentia         Muridae           Otomys         sloggetti
## 1124       Rodentia         Muridae           Otomys             typus
## 1125       Rodentia         Muridae           Otomys             denti
## 1126       Rodentia         Muridae           Otomys       angoniensis
## 1127       Rodentia         Muridae           Otomys         irroratus
## 1128       Rodentia         Muridae       Ototylomys         phyllotis
## 1129       Rodentia         Muridae      Oxymycterus             rufus
## 1130       Rodentia         Muridae      Pachyuromys           duprasi
## 1131       Rodentia         Muridae        Parotomys          brantsii
## 1132       Rodentia         Muridae          Pelomys             minor
## 1133       Rodentia         Muridae          Pelomys            fallax
## 1134       Rodentia         Muridae       Peromyscus           hooperi
## 1135       Rodentia         Muridae       Peromyscus          megalops
## 1136       Rodentia         Muridae       Peromyscus      melanocarpus
## 1137       Rodentia         Muridae       Peromyscus         mexicanus
## 1138       Rodentia         Muridae       Peromyscus   interparietalis
## 1139       Rodentia         Muridae       Peromyscus         perfulvus
## 1140       Rodentia         Muridae       Peromyscus       melanophrys
## 1141       Rodentia         Muridae       Peromyscus        pectoralis
## 1142       Rodentia         Muridae       Peromyscus            gratus
## 1143       Rodentia         Muridae       Peromyscus            boylii
## 1144       Rodentia         Muridae       Peromyscus       yucatanicus
## 1145       Rodentia         Muridae       Peromyscus        gossypinus
## 1146       Rodentia         Muridae       Peromyscus        difficilis
## 1147       Rodentia         Muridae       Peromyscus         attwateri
## 1148       Rodentia         Muridae       Peromyscus           nasutus
## 1149       Rodentia         Muridae       Peromyscus         sitkensis
## 1150       Rodentia         Muridae       Peromyscus          crinitus
## 1151       Rodentia         Muridae       Peromyscus        polionotus
## 1152       Rodentia         Muridae       Peromyscus             truei
## 1153       Rodentia         Muridae       Peromyscus       maniculatus
## 1154       Rodentia         Muridae       Peromyscus          eremicus
## 1155       Rodentia         Muridae       Peromyscus          leucopus
## 1156       Rodentia         Muridae       Peromyscus      californicus
## 1157       Rodentia         Muridae       Peromyscus         melanotis
## 1158       Rodentia         Muridae      Petromyscus          collinus
## 1159       Rodentia         Muridae       Phenacomys            ungava
## 1160       Rodentia         Muridae       Phenacomys       intermedius
## 1161       Rodentia         Muridae         Phodopus         campbelli
## 1162       Rodentia         Muridae         Phodopus          sungorus
## 1163       Rodentia         Muridae         Phodopus       roborovskii
## 1164       Rodentia         Muridae        Phyllotis           darwini
## 1165       Rodentia         Muridae       Pithecheir            parvus
## 1166       Rodentia         Muridae          Podomys        floridanus
## 1167       Rodentia         Muridae    Pogonomelomys             sevia
## 1168       Rodentia         Muridae        Pogonomys        sylvestris
## 1169       Rodentia         Muridae        Pogonomys            loriae
## 1170       Rodentia         Muridae        Pogonomys         macrourus
## 1171       Rodentia         Muridae          Praomys          jacksoni
## 1172       Rodentia         Muridae          Praomys             morio
## 1173       Rodentia         Muridae          Praomys         tullbergi
## 1174       Rodentia         Muridae          Praomys        delectorum
## 1175       Rodentia         Muridae        Psammomys            obesus
## 1176       Rodentia         Muridae        Pseudomys            fuscus
## 1177       Rodentia         Muridae        Pseudomys            oralis
## 1178       Rodentia         Muridae        Pseudomys hermannsburgensis
## 1179       Rodentia         Muridae        Pseudomys      pilligaensis
## 1180       Rodentia         Muridae        Pseudomys       delicatulus
## 1181       Rodentia         Muridae        Pseudomys   gracilicaudatus
## 1182       Rodentia         Muridae        Pseudomys          desertor
## 1183       Rodentia         Muridae        Pseudomys             nanus
## 1184       Rodentia         Muridae        Pseudomys         australis
## 1185       Rodentia         Muridae        Pseudomys            fieldi
## 1186       Rodentia         Muridae        Pseudomys         praeconis
## 1187       Rodentia         Muridae        Pseudomys       shortridgei
## 1188       Rodentia         Muridae        Pseudomys      albocinereus
## 1189       Rodentia         Muridae        Pseudomys          higginsi
## 1190       Rodentia         Muridae        Pseudomys            fumeus
## 1191       Rodentia         Muridae        Pseudomys       apodemoides
## 1192       Rodentia         Muridae        Pseudomys   novaehollandiae
## 1193       Rodentia         Muridae           Rattus          colletti
## 1194       Rodentia         Muridae           Rattus     villosissimus
## 1195       Rodentia         Muridae           Rattus        tiomanicus
## 1196       Rodentia         Muridae           Rattus          leucopus
## 1197       Rodentia         Muridae           Rattus            steini
## 1198       Rodentia         Muridae           Rattus           praetor
## 1199       Rodentia         Muridae           Rattus           tunneyi
## 1200       Rodentia         Muridae           Rattus          sordidus
## 1201       Rodentia         Muridae           Rattus     argentiventer
## 1202       Rodentia         Muridae           Rattus         lutreolus
## 1203       Rodentia         Muridae           Rattus          fuscipes
## 1204       Rodentia         Muridae           Rattus           exulans
## 1205       Rodentia         Muridae           Rattus        norvegicus
## 1206       Rodentia         Muridae           Rattus            rattus
## 1207       Rodentia         Muridae       Reithrodon           auritus
## 1208       Rodentia         Muridae  Reithrodontomys           humulis
## 1209       Rodentia         Muridae  Reithrodontomys         megalotis
## 1210       Rodentia         Muridae  Reithrodontomys          montanus
## 1211       Rodentia         Muridae  Reithrodontomys       raviventris
## 1212       Rodentia         Muridae  Reithrodontomys        fulvescens
## 1213       Rodentia         Muridae        Rhabdomys           pumilio
## 1214       Rodentia         Muridae       Rhipidomys         latimanus
## 1215       Rodentia         Muridae       Rhipidomys        mastacalis
## 1216       Rodentia         Muridae         Rhizomys       sumatrensis
## 1217       Rodentia         Muridae         Rhizomys         pruinosus
## 1218       Rodentia         Muridae        Rhombomys            opimus
## 1219       Rodentia         Muridae      Saccostomus        campestris
## 1220       Rodentia         Muridae       Scotinomys           teguina
## 1221       Rodentia         Muridae       Scotinomys      xerampelinus
## 1222       Rodentia         Muridae       Sekeetamys           calurus
## 1223       Rodentia         Muridae         Sigmodon          leucotis
## 1224       Rodentia         Muridae         Sigmodon      ochrognathus
## 1225       Rodentia         Muridae         Sigmodon       fulviventer
## 1226       Rodentia         Muridae         Sigmodon          hispidus
## 1227       Rodentia         Muridae         Sigmodon           alstoni
## 1228       Rodentia         Muridae           Spalax    microphthalmus
## 1229       Rodentia         Muridae        Steatomys           krebsii
## 1230       Rodentia         Muridae        Steatomys         pratensis
## 1231       Rodentia         Muridae        Stochomys     longicaudatus
## 1232       Rodentia         Muridae         Sundamys          muelleri
## 1233       Rodentia         Muridae       Synaptomys           cooperi
## 1234       Rodentia         Muridae       Synaptomys          borealis
## 1235       Rodentia         Muridae     Tachyoryctes           ruandae
## 1236       Rodentia         Muridae     Tachyoryctes         splendens
## 1237       Rodentia         Muridae         Tateomys    rhinogradoides
## 1238       Rodentia         Muridae           Tatera           inclusa
## 1239       Rodentia         Muridae           Tatera       leucogaster
## 1240       Rodentia         Muridae           Tatera           robusta
## 1241       Rodentia         Muridae           Tatera            valida
## 1242       Rodentia         Muridae           Tatera          brantsii
## 1243       Rodentia         Muridae           Tatera            indica
## 1244       Rodentia         Muridae           Tatera        nigricauda
## 1245       Rodentia         Muridae           Tatera              afra
## 1246       Rodentia         Muridae       Taterillus             emini
## 1247       Rodentia         Muridae       Taterillus          pygargus
## 1248       Rodentia         Muridae       Taterillus          gracilis
## 1249       Rodentia         Muridae        Thallomys         paedulcus
## 1250       Rodentia         Muridae        Thamnomys          venustus
## 1251       Rodentia         Muridae          Tylomys        nudicaudus
## 1252       Rodentia         Muridae         Uranomys             ruddi
## 1253       Rodentia         Muridae          Uromys     caudimaculatus
## 1254       Rodentia         Muridae      Vandeleuria         nolthenii
## 1255       Rodentia         Muridae         Wiedomys      pyrrhorhinos
## 1256       Rodentia         Muridae        Zelotomys          woosnami
## 1257       Rodentia         Muridae     Zygodontomys        brevicauda
## 1258       Rodentia         Muridae          Zyzomys             maini
## 1259       Rodentia         Muridae          Zyzomys           argurus
## 1260       Rodentia         Muridae          Zyzomys         woodwardi
## 1261       Rodentia   Myocastoridae        Myocastor            coypus
## 1262       Rodentia        Myoxidae          Dryomys           laniger
## 1263       Rodentia        Myoxidae          Dryomys          nitedula
## 1264       Rodentia        Myoxidae          Eliomys         quercinus
## 1265       Rodentia        Myoxidae         Glirulus         japonicus
## 1266       Rodentia        Myoxidae       Graphiurus    crassicaudatus
## 1267       Rodentia        Myoxidae       Graphiurus           murinus
## 1268       Rodentia        Myoxidae       Graphiurus          ocularis
## 1269       Rodentia        Myoxidae      Muscardinus      avellanarius
## 1270       Rodentia        Myoxidae           Myoxus              glis
## 1271       Rodentia    Octodontidae          Octodon             degus
## 1272       Rodentia    Octodontidae     Octodontomys         gliroides
## 1273       Rodentia    Octodontidae       Spalacopus            cyanus
## 1274       Rodentia       Pedetidae          Pedetes          capensis
## 1275       Rodentia    Petromuridae         Petromus           typicus
## 1276       Rodentia       Sciuridae Ammospermophilus          harrisii
## 1277       Rodentia       Sciuridae Ammospermophilus           nelsoni
## 1278       Rodentia       Sciuridae Ammospermophilus         interpres
## 1279       Rodentia       Sciuridae Ammospermophilus          leucurus
## 1280       Rodentia       Sciuridae     Callosciurus         prevostii
## 1281       Rodentia       Sciuridae     Callosciurus          caniceps
## 1282       Rodentia       Sciuridae     Callosciurus     nigrovittatus
## 1283       Rodentia       Sciuridae     Callosciurus           notatus
## 1284       Rodentia       Sciuridae          Cynomys      ludovicianus
## 1285       Rodentia       Sciuridae          Cynomys         gunnisoni
## 1286       Rodentia       Sciuridae          Cynomys         parvidens
## 1287       Rodentia       Sciuridae          Cynomys          leucurus
## 1288       Rodentia       Sciuridae          Cynomys         mexicanus
## 1289       Rodentia       Sciuridae         Dremomys           lokriah
## 1290       Rodentia       Sciuridae         Epixerus              ebii
## 1291       Rodentia       Sciuridae     Exilisciurus            exilis
## 1292       Rodentia       Sciuridae       Funambulus       sublineatus
## 1293       Rodentia       Sciuridae       Funambulus          palmarum
## 1294       Rodentia       Sciuridae       Funambulus         pennantii
## 1295       Rodentia       Sciuridae      Funisciurus        anerythrus
## 1296       Rodentia       Sciuridae      Funisciurus       lemniscatus
## 1297       Rodentia       Sciuridae      Funisciurus          pyrropus
## 1298       Rodentia       Sciuridae      Funisciurus          congicus
## 1299       Rodentia       Sciuridae        Glaucomys          sabrinus
## 1300       Rodentia       Sciuridae        Glaucomys            volans
## 1301       Rodentia       Sciuridae     Heliosciurus      rufobrachium
## 1302       Rodentia       Sciuridae        Hylopetes         alboniger
## 1303       Rodentia       Sciuridae        Hylopetes        fimbriatus
## 1304       Rodentia       Sciuridae            Iomys        horsfieldi
## 1305       Rodentia       Sciuridae          Marmota         menzbieri
## 1306       Rodentia       Sciuridae          Marmota      camtschatica
## 1307       Rodentia       Sciuridae          Marmota    vancouverensis
## 1308       Rodentia       Sciuridae          Marmota           olympus
## 1309       Rodentia       Sciuridae          Marmota          caligata
## 1310       Rodentia       Sciuridae          Marmota             bobak
## 1311       Rodentia       Sciuridae          Marmota      flaviventris
## 1312       Rodentia       Sciuridae          Marmota           broweri
## 1313       Rodentia       Sciuridae          Marmota           marmota
## 1314       Rodentia       Sciuridae          Marmota          sibirica
## 1315       Rodentia       Sciuridae          Marmota             monax
## 1316       Rodentia       Sciuridae          Marmota           caudata
## 1317       Rodentia       Sciuridae          Marmota         baibacina
## 1318       Rodentia       Sciuridae       Myosciurus           pumilio
## 1319       Rodentia       Sciuridae        Paraxerus       flavovittis
## 1320       Rodentia       Sciuridae        Paraxerus           poensis
## 1321       Rodentia       Sciuridae        Paraxerus         ochraceus
## 1322       Rodentia       Sciuridae        Paraxerus         palliatus
## 1323       Rodentia       Sciuridae        Paraxerus            cepapi
## 1324       Rodentia       Sciuridae       Petaurista        leucogenys
## 1325       Rodentia       Sciuridae       Petaurista           elegans
## 1326       Rodentia       Sciuridae       Petaurista        magnificus
## 1327       Rodentia       Sciuridae       Petaurista      philippensis
## 1328       Rodentia       Sciuridae       Petaurista        petaurista
## 1329       Rodentia       Sciuridae        Petinomys        genibarbis
## 1330       Rodentia       Sciuridae        Petinomys           setosus
## 1331       Rodentia       Sciuridae        Petinomys       vordermanni
## 1332       Rodentia       Sciuridae        Petinomys     fuscocapillus
## 1333       Rodentia       Sciuridae         Pteromys            volans
## 1334       Rodentia       Sciuridae           Ratufa            indica
## 1335       Rodentia       Sciuridae           Ratufa          macroura
## 1336       Rodentia       Sciuridae           Ratufa           bicolor
## 1337       Rodentia       Sciuridae     Rhinosciurus      laticaudatus
## 1338       Rodentia       Sciuridae       Sciurillus          pusillus
## 1339       Rodentia       Sciuridae          Sciurus       aureogaster
## 1340       Rodentia       Sciuridae          Sciurus      yucatanensis
## 1341       Rodentia       Sciuridae          Sciurus            alleni
## 1342       Rodentia       Sciuridae          Sciurus       arizonensis
## 1343       Rodentia       Sciuridae          Sciurus           griseus
## 1344       Rodentia       Sciuridae          Sciurus            aberti
## 1345       Rodentia       Sciuridae          Sciurus             niger
## 1346       Rodentia       Sciuridae          Sciurus      carolinensis
## 1347       Rodentia       Sciuridae          Sciurus       granatensis
## 1348       Rodentia       Sciuridae          Sciurus          vulgaris
## 1349       Rodentia       Sciuridae  Spermophilopsis     leptodactylus
## 1350       Rodentia       Sciuridae     Spermophilus          relictus
## 1351       Rodentia       Sciuridae     Spermophilus           parryii
## 1352       Rodentia       Sciuridae     Spermophilus        mohavensis
## 1353       Rodentia       Sciuridae     Spermophilus          dauricus
## 1354       Rodentia       Sciuridae     Spermophilus         lateralis
## 1355       Rodentia       Sciuridae     Spermophilus          beldingi
## 1356       Rodentia       Sciuridae     Spermophilus           armatus
## 1357       Rodentia       Sciuridae     Spermophilus             canus
## 1358       Rodentia       Sciuridae     Spermophilus      erythrogenys
## 1359       Rodentia       Sciuridae     Spermophilus          pygmaeus
## 1360       Rodentia       Sciuridae     Spermophilus             major
## 1361       Rodentia       Sciuridae     Spermophilus            mollis
## 1362       Rodentia       Sciuridae     Spermophilus      nayaritensis
## 1363       Rodentia       Sciuridae     Spermophilus       columbianus
## 1364       Rodentia       Sciuridae     Spermophilus         saturatus
## 1365       Rodentia       Sciuridae     Spermophilus         undulatus
## 1366       Rodentia       Sciuridae     Spermophilus         mexicanus
## 1367       Rodentia       Sciuridae     Spermophilus           elegans
## 1368       Rodentia       Sciuridae     Spermophilus      tereticaudus
## 1369       Rodentia       Sciuridae     Spermophilus          brunneus
## 1370       Rodentia       Sciuridae     Spermophilus          beecheyi
## 1371       Rodentia       Sciuridae     Spermophilus            fulvus
## 1372       Rodentia       Sciuridae     Spermophilus          suslicus
## 1373       Rodentia       Sciuridae     Spermophilus      richardsonii
## 1374       Rodentia       Sciuridae     Spermophilus        franklinii
## 1375       Rodentia       Sciuridae     Spermophilus        townsendii
## 1376       Rodentia       Sciuridae     Spermophilus       washingtoni
## 1377       Rodentia       Sciuridae     Spermophilus  tridecemlineatus
## 1378       Rodentia       Sciuridae     Spermophilus          citellus
## 1379       Rodentia       Sciuridae     Spermophilus        variegatus
## 1380       Rodentia       Sciuridae     Spermophilus         spilosoma
## 1381       Rodentia       Sciuridae     Sundasciurus             lowii
## 1382       Rodentia       Sciuridae     Sundasciurus            tenuis
## 1383       Rodentia       Sciuridae           Tamias        ochrogenys
## 1384       Rodentia       Sciuridae           Tamias           palmeri
## 1385       Rodentia       Sciuridae           Tamias          siskiyou
## 1386       Rodentia       Sciuridae           Tamias           canipes
## 1387       Rodentia       Sciuridae           Tamias           sonomae
## 1388       Rodentia       Sciuridae           Tamias        ruficaudus
## 1389       Rodentia       Sciuridae           Tamias      panamintinus
## 1390       Rodentia       Sciuridae           Tamias         speciosus
## 1391       Rodentia       Sciuridae           Tamias        townsendii
## 1392       Rodentia       Sciuridae           Tamias             senex
## 1393       Rodentia       Sciuridae           Tamias           minimus
## 1394       Rodentia       Sciuridae           Tamias     cinereicollis
## 1395       Rodentia       Sciuridae           Tamias   quadrimaculatus
## 1396       Rodentia       Sciuridae           Tamias           amoenus
## 1397       Rodentia       Sciuridae           Tamias         sibiricus
## 1398       Rodentia       Sciuridae           Tamias    quadrivittatus
## 1399       Rodentia       Sciuridae           Tamias          dorsalis
## 1400       Rodentia       Sciuridae           Tamias          striatus
## 1401       Rodentia       Sciuridae     Tamiasciurus         douglasii
## 1402       Rodentia       Sciuridae     Tamiasciurus        hudsonicus
## 1403       Rodentia       Sciuridae      Trogopterus         xanthipes
## 1404       Rodentia       Sciuridae            Xerus        erythropus
## 1405       Rodentia       Sciuridae            Xerus           inauris
## 1406       Rodentia   Thryonomyidae       Thryonomys       gregorianus
## 1407       Rodentia   Thryonomyidae       Thryonomys      swinderianus
## 1408     Scandentia       Tupaiidae           Tupaia           montana
## 1409     Scandentia       Tupaiidae           Tupaia             minor
## 1410     Scandentia       Tupaiidae           Tupaia              tana
## 1411     Scandentia       Tupaiidae           Tupaia              glis
## 1412     Scandentia       Tupaiidae           Tupaia         belangeri
## 1413     Scandentia       Tupaiidae          Urogale          everetti
## 1414     Scandentia      Tupaiidae       Ptilocercus             lowii
## 1415        Sirenia      Dugongidae           Dugong             dugon
## 1416        Sirenia      Dugongidae     Hydrodamalis             gigas
## 1417        Sirenia    Trichechidae       Trichechus      senegalensis
## 1418        Sirenia    Trichechidae       Trichechus           manatus
## 1419        Sirenia    Trichechidae       Trichechus          inunguis
## 1420  Tubulidentata Orycteropodidae      Orycteropus              afer
## 1421      Xenarthra    Bradypodidae         Bradypus         torquatus
## 1422      Xenarthra    Bradypodidae         Bradypus        variegatus
## 1423      Xenarthra    Bradypodidae         Bradypus       tridactylus
## 1424      Xenarthra     Dasypodidae        Cabassous         centralis
## 1425      Xenarthra     Dasypodidae   Chaetophractus           nationi
## 1426      Xenarthra     Dasypodidae   Chaetophractus          villosus
## 1427      Xenarthra     Dasypodidae          Dasypus          kappleri
## 1428      Xenarthra     Dasypodidae          Dasypus        sabanicola
## 1429      Xenarthra     Dasypodidae          Dasypus          hybridus
## 1430      Xenarthra     Dasypodidae          Dasypus     septemcinctus
## 1431      Xenarthra     Dasypodidae          Dasypus      novemcinctus
## 1432      Xenarthra     Dasypodidae       Euphractus        sexcinctus
## 1433      Xenarthra     Dasypodidae       Priodontes           maximus
## 1434      Xenarthra     Dasypodidae       Tolypeutes           matacus
## 1435      Xenarthra     Dasypodidae          Zaedyus            pichiy
## 1436      Xenarthra  Megalonychidae        Choloepus         hoffmanni
## 1437      Xenarthra  Megalonychidae        Choloepus        didactylus
## 1438      Xenarthra Myrmecophagidae         Cyclopes        didactylus
## 1439      Xenarthra Myrmecophagidae     Myrmecophaga        tridactyla
## 1440      Xenarthra Myrmecophagidae         Tamandua      tetradactyla
##              mass gestation    newborn weaning   wean.mass     afr max..life
## 1        45375.00      8.13    3246.36    3.00     8900.00   13.53       142
## 2       182375.00      9.39    5480.00    6.50     -999.00   27.27       308
## 3        41480.00      6.35    5093.00    5.63    15900.00   16.66       213
## 4       150000.00      7.90   10166.67    6.50     -999.00   23.02       240
## 5        28500.00      6.80    -999.00 -999.00     -999.00 -999.00      -999
## 6        55500.00      5.08    3810.00    4.00     -999.00   14.89       251
## 7        30000.00      5.72    3910.00    4.04     -999.00   10.23       228
## 8        37500.00      5.50    3846.00    2.13     -999.00   20.13       255
## 9       497666.67      8.93   20000.00   10.71   157500.00   29.45       300
## 10      500000.00      9.14   23000.08    6.60     -999.00   29.99       324
## 11      333000.00      8.88   18000.00    7.33     -999.00   24.27       300
## 12      800000.00      9.02   23033.33    4.50     -999.00   24.16       314
## 13      666666.67      9.83    -999.00    9.50     -999.00   25.54       319
## 14      169000.00      8.51    5875.00 -999.00     -999.00   29.97       260
## 15        -999.00     10.00    -999.00 -999.00     -999.00 -999.00       433
## 16      233333.33      9.85    -999.00 -999.00     -999.00 -999.00       300
## 17      950000.00     10.47   37500.00    7.50     -999.00   19.88       348
## 18      302000.00      8.29    6000.00 -999.00     -999.00   30.00       235
## 19       55000.00      5.17    3850.00 -999.00     -999.00 -999.00      -999
## 20       41000.00      5.36    -999.00    5.50     -999.00   24.50       144
## 21       71500.00      5.60    2791.43    7.50     -999.00   29.24      -999
## 22       50000.00      5.29    3787.50    6.00     -999.00   33.50       264
## 23       60000.00      5.22    2200.00    5.00     -999.00   16.00       249
## 24       18100.00      4.20    -999.00 -999.00     -999.00 -999.00      -999
## 25       13900.00   -999.00    -999.00 -999.00     -999.00 -999.00       236
## 26       10000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 27       12700.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 28       20000.00      4.00    -999.00 -999.00     -999.00 -999.00      -999
## 29        -999.00      7.47    1707.50 -999.00     -999.00 -999.00      -999
## 30       12500.00      7.82     965.00 -999.00     -999.00   13.78      -999
## 31       11600.00      7.75    1610.00 -999.00     -999.00   19.00      -999
## 32        6250.00      6.43     800.00 -999.00     -999.00   16.00       144
## 33       62500.00      5.43    2400.00    1.25    20512.50 -999.00      -999
## 34        9000.00      4.00     832.00    2.00     -999.00   32.00       120
## 35      132250.00      8.50   11000.00    7.50     -999.00   25.10       235
## 36      164500.00      8.32   17716.67    8.00     -999.00   20.40      -999
## 37      159000.00      9.30    8350.00 -999.00     -999.00 -999.00      -999
## 38       84500.00      8.20    6792.00    5.00     -999.00   23.26       260
## 39      128000.00      7.81   11100.00 -999.00     -999.00   21.00      -999
## 40       40000.00      6.50    -999.00 -999.00     -999.00   19.90      -999
## 41       27000.00      5.75    -999.00 -999.00     -999.00 -999.00      -999
## 42       73000.00      6.84    -999.00 -999.00     -999.00 -999.00      -999
## 43       23600.00      5.42    4640.00 -999.00     -999.00    5.17      -999
## 44       47636.36      6.45    5602.50 -999.00     -999.00    8.25      -999
## 45       20000.00      6.48    1253.33 -999.00     -999.00   16.80      -999
## 46       17500.00      5.61    -999.00 -999.00     -999.00   11.46      -999
## 47       16985.00      4.74    1500.63    2.75     7000.00   22.27      -999
## 48       25500.00      5.37    2426.67    3.50    13500.00   18.50       188
## 49       16300.00      5.37    2553.75    3.35     -999.00   12.18      -999
## 50       20750.00      6.00    -999.00    3.00     -999.00   13.20       219
## 51        -999.00      6.17    -999.00    5.00     -999.00   20.50      -999
## 52       35200.00      6.00    2000.00    4.97     -999.00   24.00       261
## 53      242000.00      9.32   15166.67    6.00     -999.00   23.50      -999
## 54      200500.00      8.87   15447.14    7.00     -999.00   24.51       267
## 55       17500.00   -999.00    -999.00 -999.00     -999.00   19.67      -999
## 56       63950.00      8.50    -999.00 -999.00     -999.00 -999.00      -999
## 57       81733.33      7.57    5100.00    4.50     -999.00   23.31       180
## 58      175333.33      8.91    9000.00    7.39     -999.00   25.34       222
## 59       58600.00      8.38    4937.50    6.39    31600.00   11.60       263
## 60       41333.33      6.76    -999.00 -999.00     -999.00   11.83       156
## 61        3250.00   -999.00     690.00    1.50     -999.00   10.00      -999
## 62        4550.00      5.84     681.67    2.75     2825.50 -999.00      -999
## 63        4876.67      5.77     654.00    2.35     1780.00    8.77       171
## 64       30000.00      7.15    3510.50 -999.00     -999.00   42.00       223
## 65       87500.00      7.50    -999.00 -999.00     -999.00 -999.00      -999
## 66       27666.67      7.69    2000.00 -999.00     -999.00   31.20      -999
## 67        2500.00      6.00     500.00 -999.00     -999.00    9.33      -999
## 68        7166.67      6.00    -999.00 -999.00     -999.00    6.05       162
## 69       82350.00      5.78    3176.67    2.67     -999.00   29.99       230
## 70       13000.00      6.79    1065.00    4.50     -999.00   12.00       214
## 71      177500.00      8.22   10316.67 -999.00     -999.00   21.30      -999
## 72      121350.00      8.00    -999.00    4.50     -999.00   26.11      -999
## 73      195000.00      9.01   12015.00 -999.00     -999.00   25.02       240
## 74       17500.00      6.95    2235.00    4.50     -999.00   12.62       190
## 75      258000.00      8.48   11077.40    6.21     -999.00   37.33       288
## 76       50500.00   -999.00    -999.00 -999.00     -999.00   24.00      -999
## 77       60000.00      6.00    -999.00 -999.00     -999.00 -999.00      -999
## 78       57666.67      5.62    3500.00    4.33     -999.00   26.57      -999
## 79       68166.67      5.99    4266.67    4.86    28666.67   23.07       240
## 80      180000.00      5.61    2375.00    4.50     -999.00   11.67      -999
## 81       50000.00      5.02    2277.08    6.00    17500.00   18.23      -999
## 82       27500.00      7.00    -999.00 -999.00     -999.00 -999.00      -999
## 83       25000.00      8.70    -999.00 -999.00     -999.00 -999.00       148
## 84       24000.00      6.43    2900.00 -999.00     -999.00   17.50        84
## 85       46666.67      5.16    -999.00    6.00     -999.00   18.61       180
## 86       11333.33      6.53     936.00    3.00     -999.00    7.50      -999
## 87       48850.00      7.32    4500.00 -999.00     -999.00 -999.00      -999
## 88       40000.00      7.50    -999.00 -999.00     -999.00  120.00       216
## 89       30000.00      7.57    2600.00 -999.00     -999.00   12.96       144
## 90       26100.00      5.83    2652.86    3.70     -999.00   30.55      -999
## 91       38250.00      4.94    3365.33    2.92    14500.00    9.15       144
## 92      153000.00      7.76   15000.00 -999.00     -999.00   16.58      -999
## 93       19000.00      5.08    1202.86 -999.00     -999.00    9.90       172
## 94      504666.67     11.03   42862.50    9.18   166000.00   47.92       354
## 95      680000.00      8.67    -999.00 -999.00     -999.00   36.40      -999
## 96      432500.00      8.64   28325.00    6.00     -999.00   26.99       282
## 97       19000.00      7.34    1033.00 -999.00     -999.00   13.20       130
## 98      218000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 99      186250.00      9.57   19240.00 -999.00     -999.00   27.94       233
## 100      87500.00      8.13    4000.00 -999.00     -999.00   13.17       258
## 101     190000.00      7.41   16150.00    6.00     -999.00   18.40       267
## 102     100666.67      7.37    5232.50    7.00     -999.00   14.85       192
## 103      64500.00      8.01    5760.00 -999.00     -999.00   25.89      -999
## 104      36250.00      6.17    3800.00 -999.00     -999.00   16.32       144
## 105       -999.00     13.18   35000.00   10.50     -999.00   42.00      -999
## 106     434000.00     12.64   35808.46   14.63   253484.00   46.30       480
## 107     142500.00     11.01   12000.00    5.00     -999.00 -999.00      -999
## 108      60000.00     10.79    7584.00    7.00     -999.00   16.00      -999
## 109     110000.00     11.25   11666.67   11.33     -999.00   18.00       340
## 110      50000.00     11.55    5841.67    7.00     -999.00   22.75       344
## 111     351000.00      7.95   13018.18    3.80    94000.00   23.38       324
## 112      33500.00      7.45    2365.00    6.00     -999.00   10.00       240
## 113      55000.00      7.72    3378.50    4.00     -999.00   12.64       249
## 114     102500.00      8.89    4200.00 -999.00     -999.00 -999.00      -999
## 115      21666.67      6.54    1214.33    3.08     8692.50   15.41       180
## 116      39450.00      9.67    1750.00    4.50    28750.00 -999.00      -999
## 117     143000.00      8.21    -999.00 -999.00     -999.00   36.00       276
## 118     120333.33      8.03    8814.09    5.37    46900.00   28.36       324
## 119     125000.00      8.33    -999.00 -999.00     -999.00   24.00       228
## 120      53000.00      8.49    -999.00    7.50     -999.00   17.71       253
## 121     171000.00      8.20    9890.00    7.00     -999.00   23.23       317
## 122      73000.00      7.37    5008.00    7.88     -999.00   18.78       235
## 123      96500.00      7.59    3734.00    5.67    28590.00   22.12       305
## 124      54500.00      7.75    4511.17    6.01    22570.00   18.55       300
## 125      33500.00      6.50    -999.00 -999.00     -999.00   18.00       144
## 126     149000.00      9.41   11412.50    5.50     -999.00   27.00       279
## 127      70000.00      6.50    -999.00 -999.00     -999.00 -999.00      -999
## 128      68600.00      8.00    -999.00 -999.00     -999.00 -999.00      -999
## 129      14000.00      6.25    1028.33 -999.00     -999.00    7.00       167
## 130       8200.00      7.25    -999.00 -999.00     -999.00 -999.00      -999
## 131      16650.00      7.42     792.33 -999.00     -999.00   20.50      -999
## 132      23000.00      7.43     542.50    6.00     -999.00   12.00       166
## 133      14000.00      6.12    1310.80    2.00     -999.00    8.67       204
## 134      12000.00      6.86    1096.67 -999.00     -999.00    6.00       236
## 135      55766.67      6.85    2952.67    2.48    19516.67   14.24       264
## 136      59500.00      6.84    3154.67    4.29    33631.33    9.09       276
## 137      35000.00      7.25    2150.00    5.50     -999.00   12.00       253
## 138       9750.00   -999.00     400.00 -999.00     -999.00 -999.00      -999
## 139       8250.00      6.76     695.00    2.00     -999.00    5.73       252
## 140     113200.00      7.24    5773.67    2.84    26900.00   23.93       242
## 141     800000.00     14.89   59770.59    8.25     -999.00   48.71       434
## 142     287500.00     14.87   17375.00    7.00    77000.00   23.86       396
## 143     215000.00      6.84    5636.25    7.33     -999.00   48.00       526
## 144    1258333.33      7.75   39746.67   10.13   237500.00   89.93       732
## 145      11000.00   -999.00     800.00 -999.00     -999.00   21.00      -999
## 146      10900.00   -999.00     524.00 -999.00     -999.00 -999.00      -999
## 147      12500.00      5.33     458.75    3.50     -999.00   15.54       144
## 148     100000.00      5.16     715.00    7.00     -999.00   18.00       288
## 149     202500.00      4.39    1250.00    2.25     -999.00   17.50       216
## 150      71000.00      5.53     672.78    3.49     -999.00   18.55       225
## 151      71000.00      3.78     762.00    3.00     -999.00   28.24       240
## 152       8150.00      3.76     191.50 -999.00     -999.00   23.00      -999
## 153     102750.00      4.00    -999.00 -999.00     -999.00 -999.00      -999
## 154     100900.00      3.95    1040.31    3.38     8726.00    9.77       252
## 155      35300.00   -999.00     647.00 -999.00     -999.00   39.17      -999
## 156      19200.00      4.66     657.18    1.70     5220.67   10.64       296
## 157      33750.00      5.23    1225.00    1.63     -999.00   20.00       253
## 158      12250.00      5.86    -999.00    5.17     -999.00   13.38       156
## 159       2450.00      4.94     319.00 -999.00     -999.00 -999.00        81
## 160       3850.00      4.61     370.00    2.92     -999.00    5.20       144
## 161       5900.00      5.20     373.67    3.00     -999.00    4.50       192
## 162       4500.00      1.75      71.04    1.67     -999.00    9.94       194
## 163       9500.00   -999.00    -999.00 -999.00     -999.00 -999.00       132
## 164      12675.00      2.04    -999.00    2.50     -999.00   24.00      -999
## 165      11000.00      2.05     207.50    2.28     -999.00   10.46       192
## 166      26000.00      2.05    -999.00 -999.00     -999.00 -999.00       168
## 167      34875.00      2.16     418.60    1.55     5250.00   22.04       192
## 168       9750.00      2.08     159.00    2.13     -999.00   10.80       168
## 169      11800.00      2.05     249.75    1.74     1517.00   10.29       262
## 170       8250.00      2.17    -999.00    1.50     -999.00    7.67       144
## 171       6500.00      1.85     365.00    3.00     -999.00    9.07       138
## 172      23000.00      2.11     400.17    4.75     -999.00   24.00       188
## 173      12760.00      2.07     273.33    1.64     2350.00   11.50       186
## 174      27133.33      2.41     332.50    2.88     -999.00   25.25       204
## 175       4232.00      2.05      87.92    1.73      825.00   12.22       128
## 176       4150.00      2.26     120.88    2.06     -999.00   12.00       165
## 177       4690.00      1.95    -999.00 -999.00     -999.00   10.00       164
## 178       3990.00      1.85    -999.00 -999.00     -999.00 -999.00      -999
## 179      13000.00      1.99    -999.00    2.00     -999.00   12.00      -999
## 180       6000.00      2.35     152.43    3.33     -999.00   11.00       160
## 181       4220.00      2.14      95.33    1.80      519.67   10.50      -999
## 182       1890.67      1.70    -999.00    2.00     -999.00   12.00      -999
## 183       1000.00      1.84      29.00    1.50     -999.00   10.50      -999
## 184       4000.00      1.72    -999.00 -999.00     -999.00 -999.00      -999
## 185       2250.00      1.75    -999.00 -999.00     -999.00   12.00      -999
## 186       7000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 187       2550.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 188       1800.00      1.69      58.50 -999.00     -999.00 -999.00      -999
## 189       2700.00      1.77      62.50    0.93     -999.00   16.81      -999
## 190       5662.50      1.73     101.25    1.81     1236.43    9.76       144
## 191       1200.00      1.71      26.28    2.18     -999.00    9.87       175
## 192       2766.67      1.71      39.65    1.69     -999.00   11.01       240
## 193      58750.00      3.35     403.96    3.67     1940.00   25.41       228
## 194      14000.00      2.43     165.00    4.17     -999.00   16.51       216
## 195      11500.00      2.67     250.00 -999.00     -999.00   21.00       240
## 196      10000.00      2.05     126.62    3.00     2212.50   15.82       240
## 197       2350.00      2.20      55.50 -999.00     -999.00    9.00       156
## 198       4150.00      2.15     101.87    2.25      630.79   10.24       180
## 199       2125.00      2.20      70.87 -999.00     -999.00   17.04      -999
## 200       6750.00      2.33    -999.00 -999.00     -999.00   26.40       180
## 201       3666.67      2.67     118.00    1.83      785.10   21.65       252
## 202       2250.00      2.51    -999.00    1.83     -999.00 -999.00      -999
## 203       8800.00      2.64     254.40    3.50     3400.00   21.80       257
## 204      13350.00      2.36     253.20    4.20     -999.00   26.75       237
## 205       9400.00      2.18    -999.00 -999.00     -999.00 -999.00       156
## 206       8600.00      1.86     301.00    2.55     1190.00   17.06       388
## 207      18026.67      2.33     269.50    3.10     1860.00   16.36       264
## 208       8900.00      2.18     204.00    5.00     -999.00   17.60       321
## 209      19500.00      3.06     215.33    4.26     5427.50   26.30       234
## 210       2950.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 211       4000.00      2.45      86.18    2.25     -999.00 -999.00       252
## 212       3500.00      2.37      89.00 -999.00     -999.00   12.00      -999
## 213     119700.00      3.51    1248.59    5.48    19556.00   41.12       315
## 214      81150.00      3.39     831.89    4.13     5033.50   35.56       264
## 215     139500.00      3.62    1377.45    7.22     8480.00   35.98       360
## 216      42325.00      3.22     363.49    2.88     1940.00   34.10       276
## 217       3500.00   -999.00      85.00 -999.00     -999.00 -999.00      -999
## 218      10850.00      2.29     170.00    2.92     -999.00 -999.00      -999
## 219       1350.00      2.23    -999.00 -999.00     -999.00 -999.00       192
## 220       4150.00      2.17      93.86    1.47      620.00   18.52       180
## 221      10650.00   -999.00     248.33 -999.00     -999.00 -999.00      -999
## 222      48000.00      3.07     388.22    4.20     3500.00   26.91       240
## 223      45625.00      3.28     463.45    2.54     7500.00   30.11       252
## 224       3300.00      2.49     100.23    1.43      631.85 -999.00       228
## 225       1570.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 226        727.00      2.25    -999.00    0.75     -999.00    9.00       108
## 227        598.50      1.84    -999.00    2.00     -999.00   24.00       182
## 228        683.00      2.00    -999.00    1.92     -999.00 -999.00      -999
## 229        448.00      2.00    -999.00    1.73     -999.00 -999.00      -999
## 230        800.00      2.61      50.00    1.94      183.00   24.22       293
## 231       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 232        274.80      1.80    -999.00 -999.00     -999.00   13.50      -999
## 233        800.00      1.62      25.92    1.65      275.00    9.90      -999
## 234       1008.00      1.98    -999.00 -999.00     -999.00 -999.00      -999
## 235       2920.00      2.39    -999.00    2.00      800.00   24.00      -999
## 236       3150.00   -999.00    -999.00    9.00     -999.00 -999.00       121
## 237       1331.50      2.02      22.10 -999.00     -999.00   11.29       144
## 238        700.00      3.27      50.00    1.29     -999.00   24.39      -999
## 239       1800.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 240        776.00      2.57      31.33    1.44      212.75   10.80       152
## 241      63000.00      3.45    1353.33   10.57    14500.00   33.00       493
## 242      40000.00      3.01     669.50    9.17     -999.00   28.11       282
## 243      60200.00      3.08     727.28    7.67    27400.00   36.00       348
## 244      10000.00      2.90    -999.00    3.52     -999.00 -999.00       227
## 245       3000.00      2.07      57.00    2.67     -999.00 -999.00       192
## 246      24000.00   -999.00    -999.00 -999.00     -999.00   14.20      -999
## 247      11800.00      2.10    1050.00    1.75     3360.00   12.00       168
## 248      10500.00      1.50      58.00    3.42     -999.00 -999.00      -999
## 249       3500.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 250       1200.00      2.00    -999.00 -999.00     -999.00 -999.00      -999
## 251       1996.67      1.70    -999.00 -999.00     -999.00   10.50      -999
## 252       4500.00      2.19      82.25    2.71     1707.50 -999.00       216
## 253      21800.00      7.10    1909.17    5.77    12666.67   43.13       240
## 254       2350.00      1.30    -999.00 -999.00     -999.00 -999.00       126
## 255      16333.33      1.69      90.53    2.60     -999.00   26.76       208
## 256        500.00      1.68       5.00    1.25      250.00 -999.00      -999
## 257        765.00      1.20      12.50    2.60      170.00    9.26       160
## 258       7500.00      1.87    -999.00 -999.00     -999.00 -999.00      -999
## 259       -999.00      2.45    -999.00 -999.00     -999.00 -999.00      -999
## 260       6225.00      2.01     141.00    4.38     1510.00   29.97       276
## 261       4000.00      2.00    -999.00 -999.00     -999.00 -999.00      -999
## 262       6750.00      2.20    -999.00    1.90     -999.00   12.00      -999
## 263       9000.00      2.07    -999.00 -999.00     -999.00 -999.00       240
## 264       2500.00   -999.00    -999.00 -999.00     -999.00 -999.00       168
## 265       1066.67      1.50      31.25    1.79      600.00   17.34       180
## 266       1700.00      3.19    -999.00    1.42     -999.00   18.00       217
## 267        606.67      0.93      32.67    1.50      414.00   17.67       204
## 268       2600.00      1.33      34.78    2.61     -999.00   17.33       120
## 269       1300.00      1.73      30.00    1.87      680.00   24.09       204
## 270      13000.00      1.89      84.25    3.18     -999.00   13.25       194
## 271      10000.00      5.86     210.00 -999.00     -999.00 -999.00       317
## 272       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 273        965.00      2.00    -999.00 -999.00     -999.00 -999.00      -999
## 274       1821.25      1.63      28.10    2.08      493.50   11.17        60
## 275        809.00      1.44    -999.00 -999.00     -999.00   12.00       144
## 276        440.00      3.32       7.50    1.88     -999.00   10.67       120
## 277        171.00      1.25    -999.00    1.63     -999.00 -999.00      -999
## 278        405.00      1.06    -999.00    2.00     -999.00 -999.00       106
## 279        899.75      1.19       8.64    1.60      110.00    8.59       120
## 280        150.60      0.82       3.10    1.22       34.60    5.33      -999
## 281        110.33      1.43       2.30    1.49       26.57    3.12        84
## 282       1350.00      1.20       5.73    1.67     -999.00   10.50      -999
## 283        588.67      1.05       9.26    1.64     -999.00   10.00       168
## 284         49.75      1.32       2.61    1.39       36.00    3.73       120
## 285        257.50      1.05       4.00    2.14       50.00   14.43      -999
## 286      24000.00      2.26     202.83    3.67     -999.00   24.00       174
## 287        260.00      1.57       6.90 -999.00     -999.00 -999.00      -999
## 288        511.50      2.19      13.80    1.64      160.00    7.50       118
## 289       6050.00      1.83     101.88    1.68     3000.00    7.35       312
## 290        542.50      2.00    -999.00    1.00     -999.00    3.00       107
## 291     650000.00     11.50   51883.33   20.37   200000.00   52.14       480
## 292      27000.00      7.00    3533.33   16.60    15000.00   42.00       264
## 293      50000.00     11.75    4420.00    7.85     -999.00 -999.00      -999
## 294      55000.00      7.75    3833.33   11.00     -999.00   60.00      -999
## 295      40500.00      9.00    5933.33    3.90    15800.00   34.00       240
## 296      77666.67      9.17    5955.56   11.57    26150.00   42.53       252
## 297      45000.00      7.75    4250.00   13.50     -999.00   36.00       360
## 298     288932.50      8.75   19215.00    9.71   106610.00   56.08       360
## 299      79633.33     11.75    7075.00   18.75    59724.00   36.00       192
## 300     140000.00     12.00   12763.33   12.00     -999.00   44.28       298
## 301       -999.00     12.00    7000.00    8.67     -999.00 -999.00       276
## 302      84666.67     11.14    6817.14   10.75    25000.00   68.00       300
## 303      49100.00      8.37    5182.73    3.22    12920.00   48.90       312
## 304     212000.00      8.01   15388.89    0.30    44980.00   35.88       420
## 305     286666.67      8.71   36950.00    1.00    72666.67   65.02       372
## 306     186000.00      7.87   12820.00    0.61    43077.78   50.52       552
## 307     398666.67      9.50   30875.00    1.00     -999.00   41.70       312
## 308     421666.67      9.60   28394.00    1.33   117917.14   48.51       300
## 309     238333.33      8.50   22333.33    1.09   120000.00   48.16       468
## 310     579400.00      7.63   39918.89    0.76   130192.31   31.29       276
## 311     716666.67      8.45   35250.00    0.88   138037.14   41.62       240
## 312     275000.00     10.00   19600.00    1.55     -999.00   48.00       284
## 313     173000.00     11.00   30675.00    1.24    64000.00   60.00       360
## 314     187666.67      8.13   20266.67    1.00     -999.00   41.51       252
## 315      80000.00     10.50    7100.00    0.78    21300.00   42.00       420
## 316      86000.00     11.00    5000.00    1.00     -999.00   61.00       600
## 317      86140.00      8.20    5909.09    1.60    11350.00   73.93       516
## 318     128786.67      7.63    8476.92    0.37    34377.78   49.80      -999
## 319      82500.00      9.00   10250.00    0.88    30000.00   29.43       240
## 320     101250.00      8.35   11083.64    1.13    23945.00   46.51       408
## 321      81666.67      9.00    3000.00    2.14    66900.00   57.88       672
## 322       1242.50      2.45      51.00 -999.00     -999.00   21.35      -999
## 323        900.00      2.15    -999.00 -999.00     -999.00 -999.00       281
## 324        975.50      1.81      28.58    2.26      219.35   10.70       192
## 325       4750.00      2.51     153.33    2.82      730.00   32.00      -999
## 326       3750.00      2.56     140.00    4.17     -999.00   23.00       204
## 327       3000.00      3.84     165.66    3.35     -999.00   27.65       384
## 328       6270.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 329       4400.00      2.13      76.14    2.95     1200.00   11.34       247
## 330     111600.00      4.31     109.29    6.70    15000.00   77.26       408
## 331       4325.00      4.30     120.17    4.00     1140.00   19.51       210
## 332      46000.00      3.68     275.00    3.00     -999.00   78.00       372
## 333     100000.00      6.42    -999.00    2.50     -999.00 -999.00       480
## 334      61000.00      7.33     320.00    2.96     -999.00 -999.00       464
## 335      76666.67      7.00     351.67    3.25     -999.00   31.33       432
## 336     286366.67      8.11     634.25   12.68    31156.00   55.22       540
## 337     203500.00      6.93     494.82   13.78    26000.00   60.01       472
## 338     110560.00      6.75     294.47    6.42    14050.00   40.71       372
## 339      12250.00      2.74     316.38    2.59     2100.00   30.34       311
## 340       2250.00      1.50    -999.00    2.00     -999.00   36.00       193
## 341       3250.00      2.00      81.50 -999.00     -999.00 -999.00      -999
## 342      13666.67      2.31     417.00    4.19     1955.75   14.62       336
## 343       9500.00      3.00     100.00    4.08     -999.00   49.17       240
## 344       4000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 345       3000.00   -999.00     150.00    2.13     -999.00 -999.00      -999
## 346       1540.00      2.90      67.50    2.28     -999.00   23.92       132
## 347       2225.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 348       1866.67      2.50      74.20    2.75     -999.00   48.64       258
## 349       1820.00      2.32      71.00    1.94     -999.00 -999.00      -999
## 350       2375.00   -999.00     125.00    2.33     -999.00 -999.00       216
## 351       1900.00      2.13    -999.00    2.13     -999.00   36.27       190
## 352       4300.00   -999.00    -999.00 -999.00     -999.00 -999.00       240
## 353       2380.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 354       3100.00      1.50      87.08 -999.00     -999.00   11.22       300
## 355       4500.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 356        698.00   -999.00      40.00 -999.00     -999.00 -999.00       128
## 357      10000.00   -999.00    -999.00    1.00     -999.00 -999.00       240
## 358       3000.00   -999.00    -999.00    4.25     -999.00 -999.00       126
## 359   80000000.00     12.37    -999.00   11.25     -999.00  210.00      1200
## 360   23000000.00     12.55    -999.00 -999.00     -999.00  108.00      -999
## 361   23000000.00     11.50    -999.00    7.00     -999.00  110.00       804
## 362   66800000.00     10.93 1850000.00    6.50     -999.00   89.70      1368
## 363  149000000.00     10.71 2250000.00    7.08 19075000.00   72.34      1320
## 364   14766666.67     11.40  650000.00    7.56     -999.00   77.15       888
## 365   20000000.00     12.35    -999.00    9.00     -999.00  105.25       864
## 366   16266666.67     10.15    -999.00    5.00     -999.00   98.73       564
## 367   30000000.00     11.43 1325000.00    9.08     -999.00   64.28       924
## 368       -999.00   -999.00    9500.00 -999.00     -999.00 -999.00      -999
## 369      72400.00     12.00    5500.00 -999.00     -999.00   78.00       216
## 370       -999.00   -999.00    -999.00 -999.00     -999.00   93.00       240
## 371      76365.00      9.57    7050.00   10.50    40000.00   55.02       240
## 372     133000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 373    1060000.00     14.80  109666.67   26.69     -999.00   81.22       720
## 374     726000.00     15.25   60000.00   48.00     -999.00  106.20       756
## 375     425000.00     12.00    -999.00 -999.00     -999.00 -999.00      -999
## 376     164000.00     11.00    -999.00 -999.00     -999.00   87.00       192
## 377     180000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 378     103000.00     10.00    -999.00 -999.00     -999.00  126.00       552
## 379     182000.00     10.50   24000.00   18.00     -999.00   73.34       324
## 380     110000.00     11.63    -999.00   12.00     -999.00 -999.00      -999
## 381     190000.00     14.00   12300.00   15.50    45000.00 -999.00       360
## 382    4300000.00     14.89  159333.33   15.50     -999.00  138.22      1080
## 383     206000.00     12.00    -999.00 -999.00     -999.00  141.00       564
## 384    1360000.00     14.92    -999.00   16.50     -999.00  114.73       750
## 385      46666.67     10.70    -999.00 -999.00     -999.00 -999.00      -999
## 386     122950.00     12.10   11300.00   14.83     -999.00   94.65       684
## 387      70333.33     10.40    -999.00   18.00     -999.00   61.96      -999
## 388      68700.00     11.40    -999.00   17.95     -999.00   93.73       552
## 389     122500.00   -999.00    -999.00 -999.00     -999.00  120.00       384
## 390     173333.33     12.12   18920.00   18.94     -999.00   97.41       588
## 391   25066666.67     12.36  529666.67    6.10     -999.00   79.28       840
## 392     665000.00     13.44   71400.00   22.60     -999.00   56.21       360
## 393     900000.00     14.83   80000.00   17.00     -999.00   72.00       600
## 394    3200000.00     10.00    -999.00    5.50     -999.00 -999.00      -999
## 395      32500.00     10.50    7066.67   10.50    24500.00   68.67       276
## 396      45000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 397      53183.33      9.66    6775.00    8.50     -999.00   34.71       156
## 398     101666.67      9.98    -999.00   11.43     -999.00   65.62       264
## 399     190233.33   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 400     363000.00     11.00   82000.00 -999.00     -999.00 -999.00      -999
## 401   15400000.00     15.80  942666.67   18.40     -999.00  103.36       924
## 402      96500.00      9.83    6800.00 -999.00     -999.00 -999.00       360
## 403      83500.00     10.50    -999.00 -999.00     -999.00   96.00       288
## 404       -999.00     10.25    7000.00 -999.00     -999.00 -999.00      -999
## 405      21000.00     10.00    -999.00   12.00     -999.00   80.95       240
## 406      40333.33     10.92    7900.00   10.50     -999.00   28.03       192
## 407       -999.00     10.00    -999.00 -999.00     -999.00 -999.00      -999
## 408    8200000.00     14.67    -999.00 -999.00     -999.00  124.29      1008
## 409    5266666.67     12.00    -999.00   12.00     -999.00  117.38       444
## 410    1500000.00     12.00    -999.00 -999.00     -999.00 -999.00      -999
## 411    1050000.00   -999.00    -999.00 -999.00     -999.00  108.00       324
## 412    3400000.00     12.00    -999.00   12.00     -999.00 -999.00      -999
## 413    2952500.00     12.00    -999.00 -999.00     -999.00 -999.00       432
## 414       1000.00      2.00    -999.00 -999.00     -999.00 -999.00      -999
## 415       -999.00      3.50      35.90    6.34     -999.00 -999.00       210
## 416       2950.00      7.59    -999.00    5.00     -999.00 -999.00       147
## 417       3116.67      7.00     236.00 -999.00     -999.00   13.33      -999
## 418       2456.67      7.57     225.00    3.00     -999.00   16.00      -999
## 419       3600.00      7.44     232.18    2.81      500.00   22.18       132
## 420         64.80   -999.00       4.50 -999.00     -999.00 -999.00      -999
## 421         39.80   -999.00    -999.00    2.50     -999.00 -999.00      -999
## 422         42.00   -999.00    -999.00    2.50     -999.00 -999.00      -999
## 423        104.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 424         23.20   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 425        745.00      1.30    -999.00    1.33     -999.00 -999.00      -999
## 426        334.00      1.24       7.92    1.45     -999.00    2.77      -999
## 427        309.00      1.22      10.49    1.17     -999.00   12.00      -999
## 428        956.50      1.25      14.50 -999.00     -999.00 -999.00        55
## 429        719.00   -999.00      22.00 -999.00     -999.00    7.00        49
## 430        771.00      1.20      15.70    1.37      203.00   10.80        96
## 431        171.00      1.24       8.50    2.00     -999.00   10.00      -999
## 432        292.00   -999.00    -999.00    2.00     -999.00 -999.00        86
## 433        358.00   -999.00       8.50    1.64     -999.00 -999.00      -999
## 434        342.00      1.26      10.14    1.17     -999.00    7.00      -999
## 435         64.00      1.08    -999.00 -999.00     -999.00 -999.00      -999
## 436       1000.00   -999.00    -999.00 -999.00     -999.00 -999.00        78
## 437        900.00      2.80      53.75    2.50     -999.00 -999.00       136
## 438          9.25   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 439         14.50      0.75    -999.00    1.00       14.50 -999.00        24
## 440         21.63      0.66       0.97    0.72     -999.00    2.21        33
## 441         12.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 442         15.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 443          7.50      1.00       0.80 -999.00     -999.00 -999.00      -999
## 444          5.00   -999.00       0.82    0.57        3.20 -999.00      -999
## 445          2.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 446          7.20   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 447          9.70   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 448         17.10   -999.00       1.40    0.67       13.70 -999.00      -999
## 449         22.00      0.84       2.26 -999.00       20.70 -999.00      -999
## 450          9.91      0.99       0.88    0.70     -999.00    4.98        36
## 451         13.67      0.60       1.00    0.59       10.00 -999.00      -999
## 452         11.63      0.97       0.88    0.84        7.70    4.34        38
## 453          7.70      0.93       0.63    0.83        4.00    5.75        48
## 454          6.20      0.67       0.34    0.69        3.85    1.63        31
## 455         10.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 456         11.00   -999.00       1.00    0.70     -999.00 -999.00        16
## 457         13.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 458       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 459         16.00      0.75       0.58    0.97     -999.00    5.25        24
## 460         14.32      0.73       0.78    1.20       10.00    5.25        37
## 461          4.15   -999.00       0.41    1.42        3.60 -999.00      -999
## 462       -999.00   -999.00    -999.00 -999.00     -999.00   11.00      -999
## 463          4.90   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 464          6.71   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 465          8.34   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 466         15.88   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 467          9.60      0.77       0.58    1.00        8.60 -999.00        20
## 468          4.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 469          4.26      0.64       0.28    0.75        3.50    5.05        21
## 470          8.20   -999.00    -999.00 -999.00     -999.00   12.00        18
## 471          5.57      0.70       0.50 -999.00     -999.00   12.00        18
## 472          4.37   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 473          6.00   -999.00    -999.00    0.70     -999.00   12.00        18
## 474          4.44   -999.00    -999.00 -999.00     -999.00 -999.00        18
## 475          7.25      0.77       0.25    0.84     -999.00    9.92        24
## 476          3.00      0.68    -999.00    0.84     -999.00 -999.00      -999
## 477          8.98      0.69       0.47    0.85        8.50   10.71        24
## 478          3.68   -999.00    -999.00    0.88     -999.00 -999.00        14
## 479          2.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 480          8.20      0.55    -999.00 -999.00        4.00   10.00        17
## 481          5.58      0.67       0.42    0.70        5.50 -999.00        18
## 482         12.47      0.75    -999.00 -999.00     -999.00    3.00        18
## 483         45.87      1.05       2.60    0.65       19.08    1.54        30
## 484       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 485          2.10      0.93       0.21    0.66        2.09    7.50        32
## 486       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 487       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 488       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 489         55.33   -999.00    -999.00    0.79       30.00   10.00      -999
## 490        383.00      1.54    -999.00    1.17     -999.00    1.30      -999
## 491         61.30      1.00    -999.00 -999.00     -999.00   24.00        48
## 492         10.00   -999.00       0.67 -999.00     -999.00 -999.00      -999
## 493         50.18      1.21      10.10    0.98       34.77   10.50        60
## 494         74.60      1.35       5.36    1.17     -999.00   10.27        36
## 495        118.80      1.17       5.00    1.00       65.00   10.00      -999
## 496         76.90      1.00    -999.00    1.00     -999.00   10.00      -999
## 497         52.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 498         85.00   -999.00       3.50    1.03     -999.00 -999.00      -999
## 499        133.30      1.06       3.38    1.25       44.20   10.41        72
## 500         19.50   -999.00    -999.00    1.00     -999.00   12.00      -999
## 501        180.00      1.90       7.74    0.94       50.00    8.32       156
## 502          6.70      2.06       0.70    1.21     -999.00 -999.00        25
## 503        149.60      1.79       8.18    0.67     -999.00    1.44        32
## 504         79.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 505         37.80      2.06       3.95    0.94     -999.00   22.00        67
## 506         48.10      2.03       3.65    0.97     -999.00   21.50        70
## 507         69.60   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 508        761.70   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 509        259.45      1.89      24.85    0.75     -999.00    6.48       127
## 510        884.00      2.01      21.38    1.11      225.00    6.33        76
## 511        421.33      0.89    -999.00 -999.00     -999.00    8.42      -999
## 512       1250.00   -999.00      45.00 -999.00     -999.00 -999.00      -999
## 513       2500.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 514       2099.50      1.30    -999.00 -999.00     -999.00    5.92      -999
## 515       1820.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 516       -999.00      1.40    -999.00 -999.00     -999.00 -999.00      -999
## 517       2110.00      1.53     110.00 -999.00     -999.00   12.20      -999
## 518       4506.33      1.53     102.50    1.83     2042.00   12.20      -999
## 519       3766.00      1.72     105.00    2.13     -999.00   11.56      -999
## 520       3030.43      1.65     107.93    0.76      491.99    8.73       216
## 521       1489.25      1.22      61.03    0.66      362.00   10.12      -999
## 522       3035.50      1.29      94.32    0.88      737.00   10.95        96
## 523       2358.00      1.42     118.40    1.08      943.33    7.48      -999
## 524       3759.67      1.50     118.10    1.75     3000.00   24.00      -999
## 525       2317.00      1.43      84.34    1.34     1300.00    8.00        81
## 526       3673.33      1.42     119.67    0.94      390.00    7.77        89
## 527       2686.00      1.38      98.00 -999.00     -999.00 -999.00      -999
## 528       1558.25      1.02      39.61    0.85      214.00    5.13       120
## 529       2500.00      1.25    -999.00 -999.00     -999.00 -999.00      -999
## 530       2470.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 531       1945.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 532       1700.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 533        494.50      1.27      30.62    0.86      102.60    6.33      -999
## 534        950.00      1.19    -999.00    0.88     -999.00    4.17      -999
## 535       1233.00      1.11    -999.00 -999.00     -999.00    7.21      -999
## 536        902.60      0.93      30.00    0.53     -999.00    3.96      -999
## 537       2120.67      1.26      57.67    0.47      160.00    6.53      -999
## 538        707.67      0.90      28.17    0.63     -999.00    5.07      -999
## 539        759.96      0.97    -999.00    1.13     -999.00    3.97      -999
## 540       1269.00      0.90      34.33    0.80      118.50    4.06       108
## 541        909.38      0.94      34.50    0.92     -999.00    5.39      -999
## 542        167.00   -999.00    -999.00 -999.00     -999.00   12.00      -999
## 543       -999.00      0.75      11.20 -999.00     -999.00 -999.00      -999
## 544        129.00      1.00    -999.00 -999.00     -999.00   12.00        72
## 545        115.00   -999.00       7.00    0.70     -999.00    0.74      -999
## 546        128.00   -999.00    -999.00 -999.00     -999.00    0.70      -999
## 547       -999.00      1.00       7.87    0.70     -999.00    0.92      -999
## 548        140.20      1.00      10.67    0.91       81.12   11.42        84
## 549       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 550       -999.00      0.83       7.00    0.70     -999.00    0.92      -999
## 551       -999.00      0.74       7.00    0.72     -999.00    1.02      -999
## 552        250.00      0.86      11.40    0.65       72.30    1.71      -999
## 553         60.00      1.87    -999.00 -999.00     -999.00 -999.00      -999
## 554       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 555         51.95      1.70      10.00    1.25     -999.00   11.00       105
## 556         51.94      1.80       8.10    1.00     -999.00    2.26      -999
## 557         48.00      2.50    -999.00 -999.00     -999.00 -999.00        36
## 558         58.00      1.93      10.73    0.77       28.99    2.40        72
## 559         44.33   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 560         40.00      2.14       7.00    0.62     -999.00    1.45      -999
## 561        220.00   -999.00      31.00 -999.00     -999.00 -999.00      -999
## 562        540.00      1.40      80.00    0.49      180.00    1.25        60
## 563     250000.00     11.97   29166.67 -999.00     -999.00   22.80       564
## 564     275000.00      9.83    -999.00 -999.00     -999.00 -999.00       319
## 565     384000.00     13.32   40000.00    9.17     -999.00   48.00       345
## 566     296000.00     12.02   30000.00   10.00     -999.00   40.33       354
## 567     257000.00     12.16   32292.00   10.76   174500.00   25.73       480
## 568     230000.00     11.44    -999.00   12.50     -999.00   27.75       274
## 569    2233333.33     15.87   51166.67   12.00     -999.00   66.57       600
## 570    1266666.67      7.75   23000.00   16.50     -999.00   90.00       392
## 571     927766.67     16.12   34166.67   19.92     -999.00   59.51       550
## 572    1602333.33     16.44   58204.55   15.00   885812.33   72.85       564
## 573    1750000.00     16.50    -999.00   18.00     -999.00   42.00       252
## 574     148950.00     13.09    4270.00 -999.00     -999.00 -999.00      -999
## 575     200000.00     13.18    5417.50    9.50    86260.00   23.00       420
## 576     296250.00     12.76    7100.00    6.37     -999.00   46.00      -999
## 577     300000.00     13.17    9400.00 -999.00     -999.00 -999.00      -999
## 578      33000.00   -999.00     500.00 -999.00     6000.00 -999.00      -999
## 579       5150.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 580       2350.00   -999.00      92.50    2.87     -999.00 -999.00      -999
## 581       1480.00      4.00     120.00    4.83      675.00   24.00      -999
## 582       3900.00      2.25     331.75 -999.00     -999.00 -999.00       240
## 583       2750.00   -999.00    -999.00 -999.00      400.00 -999.00      -999
## 584       7230.00      4.63     338.00    1.17      948.70 -999.00      -999
## 585        558.33      5.18      49.07    2.07      215.00   17.33       215
## 586        343.33   -999.00      34.50    3.50     -999.00 -999.00      -999
## 587        357.25   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 588        116.83      4.60      16.16    3.00       70.00   20.55       216
## 589        307.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 590        406.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 591        309.00      4.90      27.12    5.42       97.00   16.33       144
## 592        558.00      4.35      55.07    4.30      165.00   25.01       338
## 593        490.00   -999.00      44.00 -999.00     -999.00 -999.00      -999
## 594        445.80   -999.00      35.00 -999.00     -999.00 -999.00       240
## 595        465.00      5.33    -999.00 -999.00     -999.00 -999.00      -999
## 596        411.00   -999.00      43.70    2.70      175.00   27.96      -999
## 597        526.13      5.00      46.90    5.62     -999.00 -999.00      -999
## 598        499.33      4.67      46.03    1.83     -999.00   18.00      -999
## 599        370.00      4.91      39.60    3.00     -999.00   20.37       288
## 600        401.00      5.84      40.22    7.79      102.50   25.33       300
## 601        501.33      4.83      42.33    7.46     -999.00 -999.00      -999
## 602        466.75      4.60      40.00    2.34     -999.00   21.06       156
## 603      11600.00      6.23     480.00 -999.00     -999.00 -999.00      -999
## 604       5555.29      6.37     295.00   12.30     -999.00   54.96      -999
## 605       5659.14      6.22     368.75   14.22     1100.00   42.30       240
## 606       5353.00      6.23     187.50    6.42     -999.00   41.51      -999
## 607        833.56      4.67      91.18    3.14      360.00   29.46       324
## 608        874.00      4.43      98.00    2.50     -999.00 -999.00      -999
## 609       1230.00   -999.00    -999.00    7.70     -999.00 -999.00      -999
## 610       5400.00      4.63    -999.00 -999.00     -999.00 -999.00      -999
## 611       6265.80      7.39     447.50   23.47     2000.00   72.34       576
## 612       7758.80      7.39     461.67   26.15     3790.00   54.73      -999
## 613       7761.80      7.47     235.00   12.90     -999.00   56.28       240
## 614      11142.50      7.76    -999.00   21.75     -999.00   90.00      -999
## 615       4092.00      6.00    -999.00   21.14     -999.00   32.90       372
## 616       1050.00   -999.00    -999.00    5.00     -999.00   48.80      -999
## 617       1120.00      4.33      74.00    6.77     -999.00 -999.00      -999
## 618        850.00      5.49      72.20    3.50     -999.00   36.00       300
## 619       2410.00   -999.00    -999.00   24.33     -999.00   72.00      -999
## 620       2602.57      5.70     237.25   17.12     1350.00   48.00       660
## 621       2528.50      5.33     225.42   10.09     1000.00   57.56       540
## 622       2539.07      5.17     232.42    8.15     -999.00   45.66       480
## 623       2900.00      5.00    -999.00 -999.00     -999.00   48.00      -999
## 624       2750.00      5.00    -999.00 -999.00     -999.00   48.00       216
## 625       6076.25      8.35     213.96   11.57     -999.00   81.49       311
## 626       1926.67   -999.00     120.67 -999.00     -999.00 -999.00       168
## 627       1377.20      5.32    -999.00    4.00     -999.00   25.48       420
## 628        580.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 629        607.80      5.71     113.25    6.40      410.50   38.71       252
## 630       3301.67   -999.00     221.00    2.50     -999.00 -999.00       276
## 631       5425.75      5.85    -999.00   12.00     2170.00   74.54       228
## 632       7036.67      5.61    -999.00 -999.00     -999.00   57.60       246
## 633       2870.00   -999.00     435.00 -999.00     -999.00 -999.00      -999
## 634       4700.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 635       3833.33   -999.00     283.00 -999.00     -999.00 -999.00      -999
## 636       4225.33      5.67     406.00 -999.00     -999.00 -999.00      -999
## 637       -999.00   -999.00    -999.00   16.00     -999.00 -999.00      -999
## 638       2866.25      5.67     339.00 -999.00     -999.00   60.00      -999
## 639       2973.67      5.67     339.00 -999.00     -999.00   60.00      -999
## 640       3392.60      5.00     371.00    6.00     -999.00   60.00      -999
## 641       3150.00      6.00    -999.00   12.00     -999.00 -999.00       351
## 642       5685.71      4.50     391.65   10.37     -999.00   60.62      -999
## 643       3920.00   -999.00    -999.00 -999.00     -999.00   57.00      -999
## 644       4670.17      5.75     305.00   13.00     1640.00   50.80      -999
## 645       4216.50   -999.00     463.00   12.00     -999.00   64.50       418
## 646       3732.64      5.62     337.79    6.99     1036.50   47.37       372
## 647       9000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 648       9500.00      6.50    -999.00   16.00     -999.00 -999.00      -999
## 649       8508.00      6.26     573.40    8.87     1240.00   79.79       312
## 650       9725.17      5.67     497.00   12.38     1600.00   53.40       288
## 651       5883.40      5.56     546.50    5.33     1950.00   32.84       287
## 652       6725.80      5.97     462.50    7.67     2170.00   57.58       392
## 653      10036.67      5.67     533.33   18.80     2400.00 -999.00      -999
## 654       8857.50      5.72     504.96   12.06     1767.50   55.02      -999
## 655       5575.00      5.43     389.50   16.67     -999.00   60.00      -999
## 656       9752.60      5.49     450.00    7.00     2420.00   49.81      -999
## 657       7307.67      6.00     486.20   11.20     2300.00   47.76      -999
## 658       6211.67      5.78     457.67    7.00     -999.00   63.21       216
## 659       3495.00   -999.00     446.00   13.03     -999.00   54.00       420
## 660       4875.00      5.94     418.00   12.00     -999.00   53.16      -999
## 661       5413.40      5.47     476.20    9.47     1454.00   41.08       259
## 662       6316.67      5.40     401.00    6.87     -999.00 -999.00      -999
## 663       6133.10      5.71     476.24   10.66     1416.50   43.64       316
## 664       3456.29      5.49     407.82    9.58      990.33   43.56       445
## 665       3735.00      5.43     391.33   10.72     2000.00   45.35      -999
## 666       9087.50      6.19     772.00   16.00     -999.00   56.85       343
## 667      11916.67      6.02     751.50   11.64     3000.00   48.21       349
## 668       1093.33      5.40     187.50    5.43      450.00   53.13       332
## 669       9462.60      5.53     452.00    7.62     2000.00   54.00       276
## 670      14028.57      5.94     836.97    8.59     3950.00   55.17       540
## 671       6200.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 672       6300.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 673       6400.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 674       6600.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 675       3600.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 676       6163.50      5.63    -999.00   21.88     -999.00   48.96      -999
## 677       9960.00   -999.00     427.00 -999.00     -999.00 -999.00      -999
## 678       8310.00      6.25     463.00 -999.00     -999.00 -999.00      -999
## 679      11253.33      6.30     500.00   11.48     2100.00   40.64       300
## 680      12242.33      5.81     464.50   15.40     3900.00   46.30       360
## 681       7325.00   -999.00     457.00   13.10     -999.00   48.00      -999
## 682       8100.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 683      12000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 684       6572.00   -999.00    -999.00   12.00     -999.00   48.00      -999
## 685       7081.75      6.95     432.33    8.23     1100.00   42.00      -999
## 686       6426.00      4.92     329.83   12.00     -999.00   48.00      -999
## 687       8400.00      5.50    -999.00   10.17     -999.00 -999.00      -999
## 688        394.20      2.35      18.04    1.55     -999.00 -999.00       106
## 689        170.60      2.16      16.33    2.03     -999.00   13.77       230
## 690         69.00   -999.00       6.50    1.33     -999.00 -999.00      -999
## 691        306.67      2.95      14.50    4.54     -999.00   18.20       183
## 692         71.00      1.84       5.78    1.30     -999.00   12.90       186
## 693        400.00   -999.00    -999.00 -999.00     -999.00 -999.00       144
## 694       2610.33      5.53     123.00    7.71     1535.00   39.00       279
## 695        280.00      4.50    -999.00 -999.00     -999.00 -999.00      -999
## 696        289.20      4.47      24.00 -999.00     -999.00   10.11      -999
## 697        180.00      4.10      12.10    3.07       95.00   10.62      -999
## 698        171.38      4.23      14.05    2.93      116.67   11.33       226
## 699         66.00      3.12      10.58    1.50     -999.00   13.88       168
## 700        144.00      4.10      14.55 -999.00     -999.00   10.67       198
## 701       1143.33      4.41      51.21    4.53      500.00   22.16       216
## 702        731.33      4.40      49.00 -999.00     -999.00   19.48       216
## 703     101386.11      8.47    2077.50   27.44    12595.00   89.33       472
## 704      37618.18      7.36    1669.92   36.54     8500.00  131.87       726
## 705      32733.33      7.75    1411.20   20.87     8500.00  108.00      -999
## 706      37115.60      8.67    1671.93   36.79    11000.00  110.12       672
## 707       6048.40      7.50    -999.00 -999.00     -999.00 -999.00      -999
## 708       5900.00      7.00    -999.00   11.00     -999.00 -999.00      -999
## 709       6500.00   -999.00    -999.00   23.30     -999.00   84.00      -999
## 710       6389.67      6.84    -999.00 -999.00     -999.00  100.50      -999
## 711       5666.67   -999.00    -999.00 -999.00     -999.00 -999.00       528
## 712       9554.67      7.74     527.33   21.10     -999.00   89.40       300
## 713       5050.56      7.08     325.71   19.73     1070.00  103.27       378
## 714       1094.43      4.50    -999.00    5.33     -999.00   30.96      -999
## 715       7918.00      4.85     300.00   10.41     -999.00   96.00      -999
## 716       3545.00   -999.00      98.00    5.10     -999.00   54.00      -999
## 717       6260.00      5.93     135.00    9.10     -999.00   51.06      -999
## 718       3657.13      4.70      77.64    6.04     -999.00   39.62       280
## 719       1765.33      4.28      85.50 -999.00     -999.00 -999.00      -999
## 720       2171.83      4.37      74.67    5.17     -999.00   26.14       325
## 721       1666.20      4.29      58.93    5.07     -999.00   26.17      -999
## 722       1389.25      4.12      59.00 -999.00     -999.00   20.00      -999
## 723       2426.29      4.02      78.40    5.03     -999.00   22.59       432
## 724       1390.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 725       1202.71      4.73      44.80    4.84     -999.00   28.93       204
## 726       2466.67      4.43      72.14    4.79     -999.00   24.75       396
## 727       3431.43      3.34      91.99    3.67     2893.00   24.28       396
## 728        314.14      4.46      29.69    3.69      160.00   10.36       156
## 729        237.00      5.56      12.34    5.92      139.00   13.37       185
## 730        307.00      6.17      21.50 -999.00     -999.00 -999.00      -999
## 731        966.20      6.34      49.94    5.82      520.00   23.42       174
## 732       1083.50      6.44      40.51    4.34     -999.00   18.74       312
## 733        700.00   -999.00    -999.00 -999.00     -999.00   11.20      -999
## 734        779.00   -999.00    -999.00    4.00     -999.00   19.56      -999
## 735        713.00      4.38      37.17    2.81     -999.00   20.84       144
## 736       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 737        107.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 738        112.00      5.98      25.62    2.73     -999.00 -999.00       161
## 739        101.20      5.93      25.42    2.02     -999.00   30.24      -999
## 740        179.60      5.62      25.70    2.27     -999.00   13.38       144
## 741    3178000.00     21.12  100038.90   18.00     -999.00  126.53       960
## 742    3507000.00     21.46   99006.25   39.35   600000.00  147.51       840
## 743        250.00      3.78      12.25 -999.00     -999.00 -999.00      -999
## 744        307.00   -999.00    -999.00 -999.00     -999.00 -999.00        28
## 745       9000.00      3.77     682.40    2.41     -999.00   10.50       192
## 746        389.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 747        770.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 748       1650.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 749         15.75   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 750        687.00      0.98      23.58    1.75      392.52   23.45        72
## 751        635.00      2.26      34.00    0.70     -999.00 -999.00      -999
## 752        332.00   -999.00      15.40    0.93     -999.00 -999.00      -999
## 753        144.00      3.05       9.00    2.73     -999.00    2.43      -999
## 754        132.50      2.67       8.63    1.50       26.05   14.78       115
## 755        200.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 756        181.00      1.47       8.40    0.57       36.00   10.00        36
## 757        160.00      2.90       7.00 -999.00     -999.00 -999.00      -999
## 758         35.00      2.23       1.88    1.17       11.00    7.50       192
## 759       4683.33      4.25     209.50    3.30     -999.00    8.38       136
## 760        660.00      3.85      78.00 -999.00      250.00 -999.00      -999
## 761       1500.00      3.23    -999.00 -999.00     -999.00   12.00       118
## 762       -999.00      6.63    -999.00    6.63     -999.00 -999.00      -999
## 763       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 764       1267.00      4.50     105.85 -999.00     -999.00 -999.00       119
## 765      19000.00      3.51     537.94    2.33     4200.00   31.22       420
## 766      19606.67      3.76     455.43    1.85     -999.00   21.60      -999
## 767        637.50      2.11    -999.00 -999.00     -999.00    2.03      -999
## 768        341.00      2.07      59.66    0.56      171.05    2.44      -999
## 769        728.00      2.24      85.14    0.60      228.00    2.25      -999
## 770       1600.00      2.57     196.00 -999.00     -999.00 -999.00      -999
## 771      12500.00      2.81     561.94    2.13     -999.00    5.00       168
## 772        326.00      1.78    -999.00 -999.00     -999.00 -999.00        55
## 773        337.85      1.78      37.99    1.27      136.75    2.18        22
## 774        950.00      2.53      80.33 -999.00     -999.00    3.12       132
## 775        350.00      1.80      30.40    1.28     -999.00    3.19      -999
## 776        500.00      4.27    -999.00 -999.00     -999.00    8.00       240
## 777        642.50      3.70      39.27    1.78     -999.00    6.45      -999
## 778        600.00      4.39     260.00 -999.00     -999.00 -999.00      -999
## 779       1270.00      4.04     180.00    1.94     -999.00    7.18       234
## 780       3250.00      5.14     196.00    1.78      652.25    7.40       113
## 781        174.75      2.00      18.30 -999.00     -999.00    9.00      -999
## 782        288.80      2.44      29.90 -999.00     -999.00   10.50      -999
## 783        194.00   -999.00      20.50 -999.00     -999.00 -999.00      -999
## 784        275.00      3.53    -999.00 -999.00     -999.00 -999.00      -999
## 785        164.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 786        490.00      4.00      34.70 -999.00     -999.00 -999.00      -999
## 787        100.00      3.87       8.00    1.20     -999.00    8.07      -999
## 788        400.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 789       2675.00      2.80      22.70 -999.00     -999.00   16.00      -999
## 790       2650.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 791       3265.00      3.47    -999.00 -999.00     -999.00    6.36       213
## 792        775.00      3.30      76.80    1.75      350.00    8.22      -999
## 793      12500.00      8.42     730.54    0.50     -999.00 -999.00       156
## 794         52.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 795         35.90   -999.00    -999.00 -999.00     -999.00 -999.00        50
## 796        117.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 797         58.67   -999.00    -999.00    1.09     -999.00    4.67      -999
## 798         87.00      0.92    -999.00 -999.00     -999.00    2.75      -999
## 799         51.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 800        134.00      1.15    -999.00 -999.00     -999.00 -999.00      -999
## 801         55.00      1.28       2.00    1.67       20.00   10.74        75
## 802       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 803         21.33      0.77       0.96    1.19        8.90    8.40        48
## 804       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 805         52.33      0.92    -999.00 -999.00     -999.00    5.18      -999
## 806       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 807       -999.00      0.69    -999.00 -999.00     -999.00 -999.00      -999
## 808          8.00      0.97    -999.00    1.25     -999.00   11.61        40
## 809         55.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 810         28.75      0.60       0.80    0.98     -999.00 -999.00        48
## 811         24.00      0.69       0.81    1.00     -999.00   12.00      -999
## 812         18.25      0.63       0.82    0.92        7.80    1.59        60
## 813        640.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 814        504.00   -999.00      24.30 -999.00     -999.00 -999.00      -999
## 815        460.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 816        276.00   -999.00    -999.00 -999.00     -999.00 -999.00        37
## 817        356.50      2.10      24.70    0.94     -999.00    4.85        42
## 818        500.00      2.01      23.00    0.70     -999.00    6.57      -999
## 819        350.00      2.09      21.63    0.73     -999.00    2.80        84
## 820        373.50      3.10      21.10    1.50     -999.00    5.85      -999
## 821       3900.00      6.67     407.90    3.13     -999.00   19.00       208
## 822       9000.00      6.78     678.20    1.28      936.84   24.74       120
## 823       1750.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 824       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 825        176.67      0.88       5.51    1.11       22.50    3.93        86
## 826        142.50      0.93       5.80    1.00       45.00    5.87      -999
## 827        397.00   -999.00    -999.00 -999.00     -999.00 -999.00        24
## 828        210.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 829        650.00   -999.00    -999.00 -999.00     -999.00    2.77      -999
## 830        225.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 831        266.00   -999.00       6.07 -999.00       68.80   10.20      -999
## 832       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 833         80.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 834        100.00   -999.00    -999.00 -999.00     -999.00    7.97      -999
## 835         91.40      0.87       3.12    1.32     -999.00   11.70        72
## 836        359.90   -999.00       6.11    1.50       86.00 -999.00      -999
## 837        103.50      0.87       3.30 -999.00     -999.00 -999.00      -999
## 838        233.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 839         14.40      1.00    -999.00 -999.00     -999.00 -999.00        31
## 840         15.23      0.84    -999.00    0.75     -999.00 -999.00      -999
## 841         25.50      0.83       1.75    0.76       11.00    3.00      -999
## 842         16.50   -999.00    -999.00    0.80     -999.00 -999.00      -999
## 843         18.70      0.84    -999.00 -999.00     -999.00    5.53       100
## 844         19.45      1.00       1.00    0.75        8.00   12.00      -999
## 845         35.25   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 846         85.00      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 847         35.50      1.13       3.18    0.89       20.00    2.90      -999
## 848         72.40      0.99       4.50    0.93     -999.00    1.34      -999
## 849         55.16      1.04       4.00    0.75       21.00 -999.00      -999
## 850         60.57   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 851         64.50   -999.00       4.40    0.67       27.67 -999.00      -999
## 852         82.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 853         40.00      0.91       2.92    0.67       17.60    3.35      -999
## 854        119.60      0.78       7.75    0.81       30.30 -999.00      -999
## 855         84.96   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 856        132.00   -999.00    -999.00    1.07     -999.00 -999.00      -999
## 857         65.00      1.03       3.91    1.02       28.10 -999.00      -999
## 858         54.50      0.99    -999.00    1.13     -999.00    2.59       118
## 859        112.00      1.01       3.04    0.67       38.00 -999.00       108
## 860         70.00   -999.00       3.30 -999.00     -999.00    1.67      -999
## 861         81.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 862         85.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 863         77.00      0.92       3.00 -999.00     -999.00    7.61      -999
## 864         50.00      0.83       2.75    0.87       22.50    3.26      -999
## 865         42.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 866         65.00   -999.00    -999.00 -999.00     -999.00    6.33        18
## 867         41.00      0.92       1.90 -999.00     -999.00    2.15      -999
## 868         13.55   -999.00       1.00 -999.00     -999.00 -999.00      -999
## 869         13.45   -999.00    -999.00 -999.00     -999.00 -999.00        65
## 870         11.55      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 871          9.00      0.77       0.78    0.66        4.75    4.96       100
## 872          7.83      0.83    -999.00    1.00     -999.00 -999.00        60
## 873          9.00      0.85    -999.00 -999.00     -999.00    2.75        60
## 874         20.10      0.80       1.50    0.75     -999.00    3.28      -999
## 875          8.00   -999.00    -999.00    0.75     -999.00 -999.00        48
## 876          8.65   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 877      55000.00      8.82    1537.50    3.38     8299.00   15.10       144
## 878       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 879       3180.00      3.50     148.13 -999.00     -999.00 -999.00       275
## 880       2740.00   -999.00    -999.00 -999.00     -999.00 -999.00       114
## 881       8000.00      4.00     445.00 -999.00     -999.00 -999.00       327
## 882      14650.00      3.73    -999.00 -999.00     -999.00 -999.00      -999
## 883      18333.33      2.50    1000.00 -999.00     -999.00 -999.00      -999
## 884      15680.00      2.42     331.15    2.53     -999.00   15.20      -999
## 885       -999.00      1.27    -999.00 -999.00     -999.00 -999.00      -999
## 886         54.43      1.13       7.00 -999.00     -999.00    3.00        60
## 887         20.00      1.27    -999.00 -999.00       10.00 -999.00      -999
## 888         45.25      1.23       5.77    0.81       12.58    2.02        60
## 889        107.00      0.82    -999.00 -999.00     -999.00 -999.00      -999
## 890        198.00      0.90       6.10    0.87       47.57 -999.00      -999
## 891         78.55      0.83       4.45    0.98       31.00    3.77      -999
## 892         47.56   -999.00       2.50    0.80       12.50 -999.00      -999
## 893         37.30   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 894         39.70   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 895         25.95   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 896         33.00      0.77       3.00    0.87     -999.00 -999.00      -999
## 897         50.00   -999.00       3.00 -999.00     -999.00 -999.00      -999
## 898         27.33      0.79       2.20    0.49     -999.00    2.16      -999
## 899         37.55   -999.00       3.30 -999.00     -999.00    2.25      -999
## 900         28.03   -999.00    -999.00 -999.00     -999.00    7.00      -999
## 901         50.00   -999.00    -999.00 -999.00     -999.00    2.70      -999
## 902       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 903         35.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 904         50.00      0.67       3.00    0.57       15.00 -999.00      -999
## 905         37.70   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 906       -999.00   -999.00    -999.00 -999.00     -999.00    2.00      -999
## 907         32.90   -999.00       2.00 -999.00     -999.00 -999.00      -999
## 908       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 909         45.60      0.77       3.00    0.88     -999.00 -999.00      -999
## 910         29.35      0.85       2.40    0.73        8.70    1.67        48
## 911         21.50      0.71       1.90    0.88     -999.00    2.50        48
## 912         23.38      0.77       1.50    0.68     -999.00    2.34        48
## 913         36.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 914         23.00      1.15       2.57    1.01       21.00 -999.00      -999
## 915         23.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 916         64.50      0.73       4.15    0.75       21.67    1.82      -999
## 917        187.50      0.73       6.00 -999.00     -999.00 -999.00      -999
## 918        120.00      0.71       5.86    0.51       42.00    1.69        60
## 919         72.60   -999.00    -999.00 -999.00     -999.00    2.00      -999
## 920          7.83      0.74       1.16    0.68        3.59    1.95        43
## 921        545.00      0.69       9.99    0.92       41.00    8.39      -999
## 922        166.67      0.64       4.43    0.97       22.90    2.60      -999
## 923        101.67      0.83       3.20    1.38       59.20    6.85      -999
## 924         39.93      0.74       3.45 -999.00     -999.00    2.28      -999
## 925         26.60   -999.00       2.05 -999.00     -999.00 -999.00      -999
## 926         34.00      0.83    -999.00 -999.00     -999.00 -999.00      -999
## 927         27.00      0.83    -999.00 -999.00     -999.00 -999.00      -999
## 928         41.00      0.73       2.34    0.58       14.25    1.72      -999
## 929         17.60      0.74    -999.00 -999.00     -999.00    2.41      -999
## 930         20.40   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 931         20.40   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 932        650.00      1.38       7.00    2.00     -999.00 -999.00        39
## 933         54.00      0.69       3.70    0.75     -999.00 -999.00      -999
## 934       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 935         25.50      0.67       2.80    0.79       10.00    3.33        43
## 936         43.40   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 937         20.57      0.59       1.61    0.55       10.89    4.00      -999
## 938         29.50   -999.00    -999.00 -999.00       10.00    2.03      -999
## 939         20.77      0.69       1.82    0.72        9.40    3.10        59
## 940         23.60      0.62    -999.00 -999.00     -999.00 -999.00      -999
## 941         25.00      0.77       2.95 -999.00     -999.00    4.00      -999
## 942         58.50   -999.00    -999.00 -999.00     -999.00 -999.00        36
## 943        144.00      1.16    -999.00    1.02     -999.00 -999.00        60
## 944         14.10   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 945         59.80   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 946       1092.60      1.17      23.10    1.02     -999.00    5.32      -999
## 947       -999.00   -999.00       2.00    0.67       14.00 -999.00      -999
## 948         30.80      0.49    -999.00 -999.00     -999.00 -999.00      -999
## 949        506.67      0.71       5.05    0.83      105.05    3.34        48
## 950        106.18   -999.00    -999.00    1.00       30.00    2.34      -999
## 951       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 952       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 953          7.20   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 954         10.60   -999.00    -999.00 -999.00     -999.00 -999.00        39
## 955          7.36      0.83    -999.00 -999.00     -999.00 -999.00      -999
## 956         45.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 957         10.00      0.96       0.90 -999.00     -999.00 -999.00      -999
## 958         54.50      0.94       3.12    1.10     -999.00 -999.00      -999
## 959       -999.00      0.70       5.20 -999.00     -999.00 -999.00      -999
## 960         55.00      0.68       4.00    0.63     -999.00    3.00        24
## 961         57.00      0.67    -999.00 -999.00     -999.00 -999.00      -999
## 962         85.00      0.60       2.97    1.00       25.50    3.00        45
## 963         55.05      0.71       4.35    0.53       23.00    1.32      -999
## 964         56.00      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 965         21.40   -999.00       1.73    0.60     -999.00    1.75      -999
## 966         80.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 967         38.00      0.87    -999.00    2.00     -999.00    3.15      -999
## 968         26.00   -999.00    -999.00 -999.00     -999.00    0.97      -999
## 969         38.60      0.70       2.30    0.85       20.15 -999.00      -999
## 970         28.50      0.79       2.10    0.82       13.50    2.49      -999
## 971         24.00   -999.00       1.90    0.97       13.00 -999.00      -999
## 972         26.10      0.67       1.90 -999.00     -999.00 -999.00      -999
## 973         22.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 974         11.70   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 975         25.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 976         24.40      0.84    -999.00 -999.00     -999.00 -999.00      -999
## 977       -999.00      0.67       2.24 -999.00       17.23 -999.00      -999
## 978       -999.00   -999.00    -999.00    0.88     -999.00    3.06      -999
## 979         43.35   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 980         18.50      0.72    -999.00 -999.00     -999.00 -999.00      -999
## 981         37.00      0.95       2.55    0.92       11.00    2.59        98
## 982         65.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 983         53.00      0.83    -999.00 -999.00     -999.00 -999.00      -999
## 984         43.70      0.80       4.20    0.82     -999.00    2.40        53
## 985       -999.00   -999.00    -999.00    0.75     -999.00 -999.00      -999
## 986         66.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 987        368.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 988        155.00      0.94       5.00    0.75     -999.00    3.25      -999
## 989         51.80      1.00       4.40 -999.00     -999.00    2.93      -999
## 990        606.00      1.17      24.39    1.05      150.00    5.36      -999
## 991         20.00      0.97       1.50 -999.00     -999.00 -999.00      -999
## 992         16.70      0.97       1.49 -999.00     -999.00    1.27      -999
## 993        882.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 994       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 995         52.60   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 996       1250.00      4.00    -999.00 -999.00     -999.00 -999.00      -999
## 997         20.30      0.66       1.35 -999.00        5.75    1.24      -999
## 998       -999.00   -999.00       1.90 -999.00     -999.00    2.00      -999
## 999         17.50      1.05    -999.00    1.00     -999.00    3.00      -999
## 1000        20.00   -999.00    -999.00    1.00     -999.00    3.00      -999
## 1001        27.17      0.82       1.16    0.70     -999.00    1.89      -999
## 1002        51.67      0.68       3.92    0.50     -999.00    1.29        24
## 1003        59.20      0.70       3.78 -999.00       27.00    1.86      -999
## 1004        59.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1005        42.30      0.83       1.70    1.00       15.00    5.51        30
## 1006       332.50      1.24    -999.00    1.17     -999.00    7.47      -999
## 1007       755.00   -999.00    -999.00    1.33     -999.00 -999.00        90
## 1008      -999.00      1.07       9.50 -999.00     -999.00 -999.00      -999
## 1009      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1010        55.00      1.01       6.50    1.67       15.33    2.00      -999
## 1011        44.50      1.00       7.50    0.40       13.61 -999.00      -999
## 1012      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1013        12.33      0.88       1.20    1.07     -999.00    2.12      -999
## 1014        37.77      0.70    -999.00 -999.00       22.50    4.50      -999
## 1015        44.97      0.77       2.07    0.69       13.28    2.77      -999
## 1016       111.00   -999.00       4.50    1.00     -999.00 -999.00      -999
## 1017        81.60   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1018        45.90   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1019        57.40   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1020        89.80   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1021        96.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1022        65.00   -999.00       6.50 -999.00     -999.00 -999.00      -999
## 1023        62.00   -999.00    -999.00    0.75       30.50 -999.00      -999
## 1024        94.00      1.30    -999.00    1.08       17.50    6.42      -999
## 1025       100.00      0.84       5.00    0.64     -999.00 -999.00      -999
## 1026       105.00      0.85       3.00 -999.00     -999.00 -999.00      -999
## 1027        77.00      0.84       5.33    1.00       45.00    3.00      -999
## 1028       185.00      0.86       4.46    0.75       25.00    3.36      -999
## 1029       150.00      0.72       3.00 -999.00     -999.00 -999.00      -999
## 1030        48.30      0.82       3.40    0.67     -999.00    3.00        67
## 1031      -999.00   -999.00       3.03    0.56       15.75 -999.00      -999
## 1032        53.00      0.77    -999.00    0.70     -999.00 -999.00      -999
## 1033        70.00      0.97       3.50    0.82       20.50    3.61      -999
## 1034        53.20      0.84       2.90    0.87       14.95    2.64        24
## 1035       268.50      1.57    -999.00    1.63     -999.00 -999.00      -999
## 1036       900.00      1.46      34.90    1.56      440.50    2.32        47
## 1037       197.50      0.50    -999.00 -999.00     -999.00    1.17      -999
## 1038      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1039       105.00      0.54       2.31    0.74       22.93    1.54        36
## 1040         6.00      0.65       0.90    0.59     -999.00    1.41        60
## 1041      -999.00      0.67       1.70 -999.00     -999.00    1.25      -999
## 1042      -999.00   -999.00       2.80 -999.00     -999.00 -999.00      -999
## 1043      -999.00   -999.00       2.21 -999.00     -999.00 -999.00        33
## 1044        50.00      0.70       3.45    0.50     -999.00 -999.00      -999
## 1045        35.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1046      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1047        54.00      0.73       3.50    0.50     -999.00 -999.00      -999
## 1048        39.85      0.97       2.45    0.67       17.60    2.00      -999
## 1049        54.80      0.75    -999.00    0.53       15.10 -999.00      -999
## 1050        39.50      0.70       2.60 -999.00     -999.00 -999.00      -999
## 1051        36.70   -999.00    -999.00 -999.00     -999.00 -999.00        14
## 1052        39.00      0.67    -999.00 -999.00     -999.00 -999.00      -999
## 1053        35.30      0.73       2.43    0.60       13.98    1.83      -999
## 1054       106.20      0.90       5.05    0.70       31.09 -999.00      -999
## 1055       141.50   -999.00       3.50    1.00     -999.00 -999.00      -999
## 1056        43.67      0.70       2.46    0.48       13.60    0.94        16
## 1057        25.50      0.75       2.32    0.68        9.63    3.21      -999
## 1058        47.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1059        51.60      0.70       3.00    0.59       15.00    6.17        47
## 1060        93.33      0.71       2.43    0.71       15.90    0.94        21
## 1061        46.00      0.68       2.30    0.44        8.94    1.17        39
## 1062        19.50      0.71       1.60    0.79        9.44    3.17        34
## 1063        40.00      0.74       3.02    0.67       16.68    1.56        35
## 1064        20.50      0.78       1.63    0.46       10.00    1.05      -999
## 1065        49.50      0.70       3.05    0.54        9.33    0.82      -999
## 1066        53.50      0.71       2.83    0.60       17.67    2.18      -999
## 1067        48.00      0.65       2.10 -999.00     -999.00    1.10      -999
## 1068        27.50      0.69       1.85    0.58        8.87    1.57        36
## 1069        63.00   -999.00    -999.00 -999.00     -999.00    3.75      -999
## 1070        70.00      0.62    -999.00 -999.00     -999.00    2.96      -999
## 1071        11.25      0.69       1.20 -999.00     -999.00 -999.00      -999
## 1072        12.80   -999.00    -999.00 -999.00     -999.00    1.34      -999
## 1073      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1074        17.70      0.65       1.50 -999.00     -999.00 -999.00      -999
## 1075         6.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1076        28.20   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1077         9.22   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1078        12.45      0.67       1.30    0.92        4.50    1.67      -999
## 1079         7.25      0.67       0.97    0.69        3.34    1.98        37
## 1080        20.50      0.69       1.25    0.72        8.95    2.37        72
## 1081        30.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1082        32.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1083        33.50      0.97       1.50 -999.00        8.00    4.54      -999
## 1084        25.00      0.71       3.20    0.67       15.65    1.07        12
## 1085      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1086       106.00      1.26       6.25    1.07       39.00    3.28        72
## 1087       178.00   -999.00       5.00    1.50     -999.00 -999.00      -999
## 1088        19.00   -999.00    -999.00 -999.00     -999.00    1.00      -999
## 1089       290.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1090       257.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1091       269.00      0.93      11.08    0.75     -999.00    2.98      -999
## 1092        96.70      1.20      10.00    0.70     -999.00    2.50      -999
## 1093       233.58      1.02      12.10    0.88     -999.00    6.00      -999
## 1094       142.00      1.03      10.60    1.31       35.00    9.50      -999
## 1095       335.50      0.98      13.50    0.90      107.03   11.59        36
## 1096       227.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1097       203.00      1.09      10.40 -999.00     -999.00    2.00      -999
## 1098       198.00      1.19      11.35    0.96       78.15    5.00        92
## 1099       125.33      1.10       8.96    0.95       34.63    4.21        67
## 1100       236.33      1.14      11.70    0.87       35.60    4.48        40
## 1101       370.50      1.20      13.28    0.73       50.45    4.71        36
## 1102        50.00      0.91       3.40 -999.00     -999.00    3.99      -999
## 1103       143.50      0.57    -999.00 -999.00     -999.00 -999.00      -999
## 1104        66.40   -999.00       3.75 -999.00     -999.00 -999.00      -999
## 1105        35.00      1.40       3.00    1.09     -999.00    5.30      -999
## 1106        35.00      1.14    -999.00    1.00     -999.00    2.70      -999
## 1107        39.00      1.75    -999.00 -999.00     -999.00 -999.00      -999
## 1108        52.00      1.21    -999.00    1.00     -999.00    2.40      -999
## 1109        35.00      1.16       2.83    0.98       12.50    2.50        62
## 1110        53.33      1.09       5.20    0.70       40.00 -999.00        62
## 1111        22.00      0.95       2.63    0.63       10.90 -999.00       101
## 1112        60.67   -999.00    -999.00 -999.00     -999.00    3.00      -999
## 1113        85.50   -999.00    -999.00    1.00       30.00    3.83      -999
## 1114        22.65      0.83       3.30    0.49     -999.00    1.93      -999
## 1115        21.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1116        27.75   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1117      1135.80      0.91      21.92    0.84      152.10    4.96       120
## 1118        40.00      1.08       2.65    0.91       13.20    4.06        60
## 1119        19.00      0.97       2.32    0.69        9.35    2.10        55
## 1120         7.50   -999.00    -999.00    1.00     -999.00 -999.00      -999
## 1121        47.67      0.80       3.42    0.50       22.25    1.78      -999
## 1122        63.15      0.88       3.85 -999.00     -999.00    1.45      -999
## 1123       121.00      1.27      11.40    0.60       27.50    2.75      -999
## 1124      -999.00   -999.00      12.50 -999.00     -999.00 -999.00      -999
## 1125      -999.00   -999.00      20.00 -999.00     -999.00 -999.00      -999
## 1126       150.95   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1127       146.85      1.30      14.50    0.42       30.00    2.70        22
## 1128       101.00      1.81      10.20    1.08     -999.00    0.86      -999
## 1129        85.50   -999.00    -999.00    0.47     -999.00    3.54      -999
## 1130        32.50      0.71    -999.00    0.97     -999.00 -999.00        53
## 1131       120.00   -999.00    -999.00 -999.00     -999.00    4.07      -999
## 1132        50.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1133       118.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1134        36.00      1.12       2.62    0.76       10.07    2.30      -999
## 1135        71.00   -999.00       3.90    0.74       16.00    1.57      -999
## 1136        59.00      1.12       4.50    0.73     -999.00 -999.00      -999
## 1137        60.50      1.09       4.40 -999.00     -999.00 -999.00      -999
## 1138      -999.00   -999.00       2.74    0.62     -999.00 -999.00      -999
## 1139        40.00      1.44       3.00 -999.00     -999.00 -999.00      -999
## 1140        40.00      0.82    -999.00    1.05     -999.00 -999.00      -999
## 1141        31.50      0.77    -999.00 -999.00     -999.00 -999.00      -999
## 1142        26.90      0.87    -999.00 -999.00     -999.00 -999.00      -999
## 1143        28.70      0.82       2.20    0.88     -999.00    1.62      -999
## 1144        26.30      1.03       2.50 -999.00       13.10 -999.00      -999
## 1145        29.00      0.83       2.20    0.81       13.69    1.68      -999
## 1146        28.00   -999.00    -999.00    0.87     -999.00 -999.00      -999
## 1147        30.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1148        28.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1149        28.30   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1150        16.33      0.82       2.20    0.87       13.87    3.77      -999
## 1151        14.00      0.79       1.63    0.76        6.77    0.99      -999
## 1152        27.00      0.99       2.32    0.85       10.50    1.18      -999
## 1153        20.50      0.88       1.83    0.84        8.95    2.58       100
## 1154        25.00      0.85       2.33    0.82     -999.00    4.23      -999
## 1155        23.00      0.83       1.89    0.77        9.58    2.33      -999
## 1156        42.00      0.97       4.46    0.98       18.65    1.50      -999
## 1157        39.60      0.84       1.67 -999.00     -999.00 -999.00      -999
## 1158        21.00   -999.00       2.10    1.05     -999.00 -999.00      -999
## 1159        27.00      0.75       2.40    0.68       10.00    1.25        48
## 1160        33.00      0.71       2.18    0.63       15.28    1.21        48
## 1161        23.40   -999.00    -999.00 -999.00     -999.00    1.50      -999
## 1162        23.40      0.65       1.77    0.65       14.80    3.95        38
## 1163      -999.00      0.70       1.45    0.63       18.10    8.00      -999
## 1164        50.83      1.12    -999.00 -999.00     -999.00 -999.00      -999
## 1165       104.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1166        31.25      0.77       2.40    0.84       11.50 -999.00        89
## 1167        60.90   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1168        39.10   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1169        95.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1170        45.10   -999.00    -999.00 -999.00     -999.00 -999.00        29
## 1171        40.00      1.18    -999.00    1.00       20.00    2.37      -999
## 1172        21.00      1.04       2.70    0.94     -999.00    3.04      -999
## 1173        36.97      0.80       2.70    0.82       10.50    2.69        62
## 1174        27.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1175       177.33      0.88       6.25    0.89       40.00    5.49      -999
## 1176       148.00      1.28       7.25    1.29     -999.00 -999.00      -999
## 1177        95.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1178        12.00      1.06    -999.00    1.00     -999.00    2.51      -999
## 1179        11.00      0.93    -999.00 -999.00     -999.00 -999.00      -999
## 1180        11.00      0.99       1.00    1.00     -999.00 -999.00      -999
## 1181        63.00      0.90       4.35    0.94       24.00 -999.00      -999
## 1182        25.00      0.98    -999.00    0.84     -999.00    2.50      -999
## 1183        34.00      0.80    -999.00    0.77     -999.00    3.33      -999
## 1184        65.00      1.02       4.00    0.87       12.50    3.59        67
## 1185        45.00      0.82    -999.00    1.00     -999.00 -999.00      -999
## 1186        45.00      1.00    -999.00    1.00     -999.00 -999.00      -999
## 1187        64.00   -999.00    -999.00 -999.00     -999.00   11.00      -999
## 1188        26.00      1.27    -999.00    1.00     -999.00    2.50      -999
## 1189        60.10      1.07       5.00    0.98     -999.00    9.00        48
## 1190        70.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1191        20.00      1.48    -999.00    1.17       11.00 -999.00      -999
## 1192        18.00      1.06       1.80    0.91     -999.00    3.01      -999
## 1193        61.00   -999.00    -999.00 -999.00     -999.00    2.00      -999
## 1194       200.00   -999.00    -999.00 -999.00     -999.00    2.33      -999
## 1195       127.50      0.77       4.10 -999.00     -999.00 -999.00      -999
## 1196       124.00      0.75    -999.00    0.83     -999.00    3.69      -999
## 1197       155.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1198       139.35   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1199       113.50      0.72    -999.00    0.75     -999.00    1.24      -999
## 1200       125.00      0.72       3.00 -999.00     -999.00    2.07      -999
## 1201       202.00      0.71    -999.00 -999.00     -999.00    1.60      -999
## 1202       115.00      0.88       4.87    0.83       25.00    2.60        29
## 1203       133.00      0.86       4.50    0.97       21.28    3.51      -999
## 1204        70.00      0.73       2.62    0.78       22.76    4.08      -999
## 1205       280.00      0.71       5.81    0.82       63.75    2.22      -999
## 1206       246.50      0.74       4.55    0.86       39.68    3.82        50
## 1207        72.17   -999.00    -999.00 -999.00     -999.00    2.00      -999
## 1208        10.30      0.75       1.09    0.76     -999.00    3.44        27
## 1209        11.03      0.76       1.33    0.70     -999.00    3.53      -999
## 1210         9.00      0.74       1.04    0.49        5.40    2.46      -999
## 1211        11.05   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1212        12.50   -999.00       1.08    0.48        3.25 -999.00      -999
## 1213        51.00      0.83       2.67    0.49        8.45    1.78        35
## 1214        57.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1215        75.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1216      3000.00   -999.00    -999.00    3.00     -999.00 -999.00      -999
## 1217      2450.00   -999.00    -999.00    4.00     -999.00 -999.00      -999
## 1218       143.00      0.92       4.75    0.73     -999.00    3.50        48
## 1219        47.38      0.69       2.60    1.00     -999.00    2.17        33
## 1220        12.00      1.01       1.35    0.68     -999.00    1.13      -999
## 1221        15.00      1.09       1.35    0.79     -999.00    1.73      -999
## 1222        38.50   -999.00    -999.00 -999.00     -999.00 -999.00        65
## 1223       135.50      1.17    -999.00 -999.00     -999.00 -999.00      -999
## 1224       113.67      1.15       5.55    0.50       35.55    1.36      -999
## 1225       211.00      1.17    -999.00 -999.00     -999.00    1.50      -999
## 1226       185.00      0.89       6.69    0.49       23.56    1.31        62
## 1227        55.70   -999.00    -999.00 -999.00     -999.00    2.00      -999
## 1228      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1229        24.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1230        25.53   -999.00       1.55 -999.00     -999.00 -999.00      -999
## 1231        74.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1232       334.00   -999.00    -999.00 -999.00     -999.00 -999.00        24
## 1233        37.05      0.77       3.46    0.75       20.00 -999.00        30
## 1234        21.30   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1235      -999.00      1.58      14.00 -999.00     -999.00 -999.00      -999
## 1236       207.50      1.36      20.00    1.30     -999.00    4.99        37
## 1237        84.00   -999.00    -999.00 -999.00       82.80 -999.00      -999
## 1238       131.00      0.77    -999.00    0.73     -999.00    3.40      -999
## 1239        64.86   -999.00       2.80    0.93       19.00 -999.00      -999
## 1240        93.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1241       113.00   -999.00    -999.00 -999.00       30.00    3.25      -999
## 1242        75.00      0.75       5.13    0.83       45.00    5.50      -999
## 1243       146.67      0.87       3.00    0.79     -999.00    2.86        84
## 1244       114.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1245        74.80      0.75       4.50 -999.00     -999.00    5.00      -999
## 1246      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1247        48.10      0.88    -999.00    0.75     -999.00    3.00      -999
## 1248        51.85      0.87    -999.00 -999.00     -999.00    3.00      -999
## 1249        77.43   -999.00       2.65    0.98     -999.00    3.57      -999
## 1250        65.00      0.80    -999.00    0.80     -999.00    2.74      -999
## 1251       280.00      1.32      16.77    0.87       40.00    3.15        65
## 1252        47.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1253       625.00      1.29      20.00    1.33     -999.00    6.00      -999
## 1254        56.60   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1255        47.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1256        54.50      1.03    -999.00 -999.00     -999.00 -999.00      -999
## 1257        58.00      0.87       3.64    0.48       22.00    1.44      -999
## 1258        94.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1259        50.00      1.00    -999.00    1.17       14.00 -999.00      -999
## 1260       130.00   -999.00    -999.00    1.17     -999.00 -999.00      -999
## 1261      7150.00      4.43     196.36    1.90     1533.33    5.25        79
## 1262      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1263        25.00      0.81       1.60    1.00     -999.00 -999.00        48
## 1264       115.00      0.74    -999.00    1.00     -999.00   18.00        60
## 1265        27.00      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 1266      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1267        24.00      0.80       3.50 -999.00     -999.00 -999.00        69
## 1268        68.80   -999.00    -999.00 -999.00       25.60 -999.00      -999
## 1269        27.33      0.79       0.80    1.27     -999.00   16.50        72
## 1270       125.00      0.94       1.50    1.07     -999.00   10.60       104
## 1271       235.00      2.96      14.10    1.19       71.20   10.90        85
## 1272       158.00      3.39      16.67    1.38     -999.00 -999.00        88
## 1273        98.05   -999.00    -999.00 -999.00     -999.00 -999.00        70
## 1274      3500.00      2.53     264.50    1.64     1300.00   34.00       228
## 1275       200.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1276       126.00      0.97       3.80    1.69       45.00   10.50      -999
## 1277       154.50      0.87       4.88 -999.00       41.00 -999.00        68
## 1278       110.20   -999.00    -999.00 -999.00       27.50 -999.00      -999
## 1279        97.50      1.04       3.36    2.20       60.00   12.00        70
## 1280       400.00      1.57      16.35 -999.00     -999.00 -999.00      -999
## 1281        30.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1282       202.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1283       190.00   -999.00    -999.00 -999.00     -999.00 -999.00       115
## 1284       863.00      1.11      15.38    1.89      140.57   26.24       102
## 1285       816.67      1.00    -999.00    1.50     -999.00   11.59      -999
## 1286       516.00   -999.00    -999.00 -999.00     -999.00   12.00      -999
## 1287       873.50      1.00    -999.00 -999.00     -999.00   23.75      -999
## 1288       828.10   -999.00    -999.00    1.52     -999.00 -999.00      -999
## 1289       172.50   -999.00    -999.00 -999.00     -999.00 -999.00        85
## 1290       388.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1291        14.60   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1292      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1293      -999.00      1.13    -999.00 -999.00     -999.00 -999.00      -999
## 1294       147.65      1.33    -999.00    2.00     -999.00    7.68      -999
## 1295       218.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1296       141.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1297       271.67   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1298       106.00      1.73       9.96    1.67     -999.00 -999.00       114
## 1299       132.17      1.32       5.62    2.12       33.87    7.83       156
## 1300        65.38      1.32       3.49    1.75       44.60   10.84       170
## 1301       326.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1302       240.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1303       510.00   -999.00    -999.00    2.50     -999.00 -999.00      -999
## 1304       120.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1305      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1306      -999.00   -999.00      33.00 -999.00     -999.00   36.00      -999
## 1307      4750.00      1.00    -999.00 -999.00     -999.00   39.00      -999
## 1308      6300.00      1.00    -999.00 -999.00     -999.00   32.00      -999
## 1309      6343.33      0.94    -999.00    0.92     -999.00   29.85      -999
## 1310      -999.00      1.35      35.50 -999.00     -999.00   36.00       180
## 1311      2930.00      1.00      33.80    0.89      478.83   26.83      -999
## 1312      3180.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1313      2010.00      1.17      29.67    1.77     -999.00   30.00       180
## 1314      8000.00      1.37    -999.00 -999.00     -999.00 -999.00      -999
## 1315      3413.00      1.09      27.43    1.57      248.00   17.81       116
## 1316      4100.00      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 1317      -999.00      1.33    -999.00 -999.00     -999.00 -999.00      -999
## 1318        16.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1319      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1320       134.00   -999.00       9.91 -999.00     -999.00    4.20      -999
## 1321      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1322       295.00      2.05      15.21 -999.00     -999.00 -999.00      -999
## 1323       216.00      1.88      12.88    1.33     -999.00    6.09      -999
## 1324      -999.00   -999.00       5.00 -999.00     -999.00 -999.00      -999
## 1325      1273.33   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1326      1780.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1327      -999.00      1.50      56.00    3.00     -999.00 -999.00      -999
## 1328      1330.00   -999.00    -999.00    2.25     -999.00 -999.00       192
## 1329       110.00      1.77    -999.00 -999.00     -999.00 -999.00      -999
## 1330        42.25   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1331        37.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1332       712.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1333       130.00      1.00    -999.00    1.50     -999.00 -999.00      -999
## 1334      1060.00      2.75    -999.00 -999.00     -999.00 -999.00       240
## 1335      1280.00      0.93    -999.00    2.25     -999.00   24.00      -999
## 1336      2150.00      1.05      77.00 -999.00     -999.00   35.45      -999
## 1337       221.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1338        39.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1339       595.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1340       225.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1341       461.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1342       760.50   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1343       751.67      1.44    -999.00    2.00     -999.00   10.50       120
## 1344       702.50      1.43      12.00    2.50      355.00   10.75      -999
## 1345       803.70      1.49      15.44    2.50     -999.00   11.81      -999
## 1346       540.33      1.43      15.15    2.14      165.00   10.48       283
## 1347       374.00   -999.00       9.50    2.00     -999.00 -999.00        84
## 1348       324.75      1.25       9.57    2.15     -999.00    9.52       144
## 1349      -999.00      1.50    -999.00 -999.00     -999.00 -999.00      -999
## 1350       600.00   -999.00    -999.00 -999.00     -999.00   12.00      -999
## 1351       751.00      0.83    -999.00 -999.00     -999.00   11.34      -999
## 1352       190.00      0.92       4.50    1.20       30.00 -999.00      -999
## 1353       200.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1354       157.60      1.00       6.26    1.22       74.16   20.94        84
## 1355       278.50      0.87       6.94    0.86       60.50   11.64       132
## 1356       308.00      0.79    -999.00    0.70      102.25   11.37      -999
## 1357      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1358      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1359       136.00      0.88    -999.00 -999.00     -999.00 -999.00      -999
## 1360      -999.00   -999.00    -999.00 -999.00      200.00 -999.00      -999
## 1361       165.40      0.78       3.95    1.13     -999.00   12.00      -999
## 1362       707.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1363       466.33      0.84       9.37    0.96       98.62   17.63      -999
## 1364       275.00      0.93       5.97    1.43      113.47   12.00        48
## 1365       840.00      0.92      11.08 -999.00      109.90 -999.00      -999
## 1366       130.95      0.97       4.10    3.00     -999.00   12.00      -999
## 1367       401.05      0.80       6.02    1.25       80.00 -999.00      -999
## 1368       163.33      0.93       3.90    1.28       75.00   10.69      -999
## 1369       205.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1370       609.33      0.97      10.00    1.35       89.00   11.60      -999
## 1371       596.00      1.00    -999.00 -999.00     -999.00 -999.00      -999
## 1372      -999.00      0.80    -999.00    1.13     -999.00   12.00      -999
## 1373       342.50      0.78       6.35    1.17       92.75   11.26        72
## 1374       459.00      0.92    -999.00    1.39     -999.00   10.74      -999
## 1375       155.00      0.80       3.61    0.92       42.16   11.69      -999
## 1376       203.00   -999.00    -999.00    1.00       33.00   12.00      -999
## 1377       172.67      0.92       3.24    1.07       16.00   11.63      -999
## 1378       217.00      0.89    -999.00    1.13     -999.00   10.33      -999
## 1379       663.03      1.00       7.80    1.75      100.00 -999.00      -999
## 1380       119.50      0.93    -999.00 -999.00       45.00   12.00      -999
## 1381        67.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1382        75.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1383        94.10   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1384        59.70      1.10    -999.00    1.50       22.70 -999.00      -999
## 1385        75.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1386        70.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1387        75.00   -999.00    -999.00    0.75     -999.00 -999.00      -999
## 1388        57.29      1.03    -999.00 -999.00     -999.00   12.00        96
## 1389        54.15      1.20       4.00    1.38       19.20 -999.00      -999
## 1390        60.00   -999.00    -999.00 -999.00     -999.00   12.00      -999
## 1391        84.00      0.93       3.55    1.64       34.50   11.62       123
## 1392        94.81      0.93    -999.00 -999.00     -999.00 -999.00      -999
## 1393        44.15      0.97       2.30    1.46     -999.00 -999.00      -999
## 1394        62.10      1.00    -999.00    1.33     -999.00 -999.00      -999
## 1395        88.45      1.03    -999.00 -999.00     -999.00   11.14      -999
## 1396        48.25      0.98       2.62    1.45       19.00   11.73        62
## 1397        85.00      1.14       4.00    1.30     -999.00   11.50      -999
## 1398        58.13      1.05       2.60 -999.00     -999.00   11.00      -999
## 1399        62.80      0.99    -999.00 -999.00     -999.00 -999.00      -999
## 1400        95.70      1.03       3.50    1.17       39.55    5.00        96
## 1401       229.80      1.29       5.00 -999.00     -999.00    4.00      -999
## 1402       194.50      1.22       7.00    2.06       83.75   11.24       120
## 1403      -999.00      2.71    -999.00    3.50     -999.00   22.00       144
## 1404       502.00   -999.00    -999.00    1.75     -999.00    6.00        72
## 1405       588.00      1.54      20.00    1.73     -999.00   11.32        72
## 1406      1880.00      3.00    -999.00 -999.00     -999.00 -999.00      -999
## 1407      3687.50      3.56     105.00    1.00     -999.00   10.94        52
## 1408       283.00      1.65      11.00 -999.00     -999.00 -999.00      -999
## 1409       700.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1410       797.00   -999.00    -999.00    1.02     -999.00 -999.00      -999
## 1411       159.00      1.52      12.94    1.17      100.00    4.53       149
## 1412      -999.00      1.50      10.00    1.17     -999.00 -999.00      -999
## 1413       350.00      1.85      19.98    1.25      104.40 -999.00       138
## 1414        42.50   -999.00      10.00 -999.00     -999.00 -999.00        32
## 1415    479500.00     12.21   27500.00   18.00     -999.00  112.93       876
## 1416   4000000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1417    500000.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1418    387500.00      9.94   28633.33   18.00     -999.00   49.31       528
## 1419    480000.00     10.25   12500.00   24.00    67500.00   36.00       150
## 1420     60000.00      7.08    1734.00    3.37     6250.00   26.00       288
## 1421      3900.00   -999.00    -999.00 -999.00     -999.00 -999.00       144
## 1422      4860.00      5.37     290.00    1.05     -999.00   37.42      -999
## 1423      3770.00      4.63    -999.00    1.25     -999.00    3.53       480
## 1424      2750.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1425      2150.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1426      2020.00      2.18     131.40    1.83     -999.00    9.00       282
## 1427     10150.00   -999.00    -999.00 -999.00     -999.00 -999.00      -999
## 1428      1150.00      3.00    -999.00 -999.00     -999.00 -999.00      -999
## 1429      1500.00      4.00    -999.00 -999.00     -999.00 -999.00      -999
## 1430      1475.00      4.34    -999.00 -999.00     -999.00    9.00      -999
## 1431      4300.00      4.36      66.33    4.50     -999.00   13.33       268
## 1432      4600.00      2.09     105.00    1.02      420.00    9.00       226
## 1433     50000.00      4.00     113.00    1.25     -999.00   10.50       156
## 1434      1225.00      4.75      99.00    1.72     -999.00 -999.00      -999
## 1435      1500.00      2.00     105.00    1.50     -999.00   10.50       108
## 1436      4750.00      9.41     387.25    0.69     -999.00   30.12       385
## 1437      6070.00      8.67     354.77    2.50     -999.00   36.00       333
## 1438      5070.00      8.92    -999.00    5.00     -999.00 -999.00      -999
## 1439     28500.00      6.19    1491.17    1.83     -999.00   39.00       310
## 1440      5030.00      5.22    -999.00 -999.00     -999.00   12.00       114
##      litter.size litters.year
## 1           1.85         1.00
## 2           1.00         0.99
## 3           1.00         0.95
## 4           1.00      -999.00
## 5           1.00      -999.00
## 6           1.37         2.00
## 7           1.00      -999.00
## 8           1.00         1.89
## 9           1.00         1.00
## 10          1.00         1.00
## 11          1.00         0.75
## 12          1.17         0.89
## 13          1.33         1.00
## 14          1.51         1.13
## 15          1.00      -999.00
## 16          1.00         0.50
## 17          1.33         0.50
## 18          1.17         1.00
## 19          1.00      -999.00
## 20          2.00      -999.00
## 21          1.25         0.75
## 22          1.10         1.00
## 23          1.61         1.00
## 24       -999.00      -999.00
## 25       -999.00      -999.00
## 26          1.00      -999.00
## 27          1.00      -999.00
## 28          1.00      -999.00
## 29          1.00      -999.00
## 30          1.00      -999.00
## 31          1.00      -999.00
## 32          1.00      -999.00
## 33          1.00         1.00
## 34          1.00         1.00
## 35          1.01      -999.00
## 36          1.00         1.00
## 37          1.00      -999.00
## 38          1.25      -999.00
## 39          1.00         0.57
## 40       -999.00      -999.00
## 41          1.00      -999.00
## 42          1.00      -999.00
## 43          1.00      -999.00
## 44          1.00      -999.00
## 45          1.00      -999.00
## 46          1.46      -999.00
## 47          1.18         1.00
## 48          1.44         1.00
## 49          1.00         1.50
## 50          1.60         1.50
## 51          1.00      -999.00
## 52          1.03         1.00
## 53          1.00      -999.00
## 54          1.00         1.00
## 55       -999.00      -999.00
## 56          1.00      -999.00
## 57          1.00      -999.00
## 58          1.10         1.10
## 59          1.00         1.30
## 60          1.00      -999.00
## 61          1.00      -999.00
## 62          1.00         2.00
## 63          1.00         2.00
## 64          1.00      -999.00
## 65          1.00         1.00
## 66          1.00         1.00
## 67       -999.00      -999.00
## 68          1.00      -999.00
## 69          1.32         1.00
## 70          1.00      -999.00
## 71          1.00      -999.00
## 72          1.00         1.00
## 73          1.00         1.33
## 74          1.00         1.53
## 75          1.01         0.75
## 76          1.00      -999.00
## 77          1.50      -999.00
## 78          1.18         0.75
## 79          1.06         1.00
## 80          1.20         1.00
## 81          1.35         1.00
## 82          1.00      -999.00
## 83          1.00      -999.00
## 84          1.33      -999.00
## 85          1.50      -999.00
## 86          1.00      -999.00
## 87          1.00      -999.00
## 88          1.00      -999.00
## 89          1.00         1.09
## 90          1.00         0.94
## 91          1.65         1.00
## 92          1.00      -999.00
## 93          1.01         1.38
## 94          1.08         0.40
## 95          1.00      -999.00
## 96          1.00      -999.00
## 97          1.57      -999.00
## 98          1.00      -999.00
## 99          1.00         0.73
## 100         1.00         1.00
## 101         1.00         1.00
## 102         1.00         1.21
## 103         1.00         1.33
## 104         1.00         1.50
## 105         1.00         0.50
## 106         1.00         0.65
## 107         1.00      -999.00
## 108         1.00      -999.00
## 109         1.00         0.50
## 110         1.00         0.67
## 111         1.29         0.77
## 112         1.01      -999.00
## 113         1.03      -999.00
## 114         1.00         1.00
## 115         1.78      -999.00
## 116         2.00         1.00
## 117         1.00      -999.00
## 118         1.07         0.91
## 119         1.00         1.00
## 120         1.00         1.00
## 121         1.00         1.00
## 122         1.01         1.00
## 123         1.02         1.00
## 124         1.14         1.00
## 125         1.00      -999.00
## 126         1.11         1.00
## 127         1.00      -999.00
## 128         1.00      -999.00
## 129         3.32      -999.00
## 130         1.00      -999.00
## 131         1.00      -999.00
## 132         1.00         1.00
## 133         1.33      -999.00
## 134         1.00         1.50
## 135         1.62         0.97
## 136         1.71         1.00
## 137         1.00         1.00
## 138         1.00      -999.00
## 139         1.03      -999.00
## 140         1.20         0.91
## 141         1.12         0.54
## 142         1.00         0.75
## 143         1.00         0.42
## 144         1.00         0.61
## 145         1.00      -999.00
## 146         1.71      -999.00
## 147         1.49         1.00
## 148         1.40         2.00
## 149         4.70      -999.00
## 150         3.53         1.11
## 151         4.33      -999.00
## 152         3.20      -999.00
## 153         4.00      -999.00
## 154         5.76         1.36
## 155         2.42      -999.00
## 156         1.82         2.00
## 157         2.00      -999.00
## 158         1.25         1.00
## 159         1.50      -999.00
## 160         1.00      -999.00
## 161         1.00      -999.00
## 162         8.12         0.92
## 163      -999.00      -999.00
## 164         4.00      -999.00
## 165         4.16      -999.00
## 166         4.51      -999.00
## 167         4.82         0.82
## 168         3.95         1.00
## 169         5.49         1.00
## 170         4.29         2.00
## 171         4.10         1.90
## 172         3.09      -999.00
## 173         4.13      -999.00
## 174         6.99         0.93
## 175         9.46         1.00
## 176         3.74         2.00
## 177         2.50      -999.00
## 178         4.17      -999.00
## 179         4.00         1.00
## 180         4.26         2.00
## 181         4.17         0.98
## 182         2.60         1.00
## 183         2.00      -999.00
## 184         3.25      -999.00
## 185         3.26      -999.00
## 186         3.50      -999.00
## 187         4.00      -999.00
## 188         4.00      -999.00
## 189         4.71      -999.00
## 190         4.34         0.91
## 191         2.45         1.00
## 192         4.44         1.00
## 193         3.04         0.65
## 194         3.08      -999.00
## 195         1.28      -999.00
## 196         3.48         2.00
## 197         4.50         2.00
## 198         3.69         2.02
## 199         1.91         2.50
## 200         2.34         2.00
## 201         1.38      -999.00
## 202         1.50      -999.00
## 203         1.54         0.75
## 204         2.18         2.00
## 205         2.50      -999.00
## 206         2.82         0.94
## 207         2.25         1.00
## 208         3.19         1.00
## 209         2.47      -999.00
## 210         2.50      -999.00
## 211         2.04         1.33
## 212         4.14      -999.00
## 213         2.57         0.40
## 214         2.46         0.50
## 215         2.90         0.66
## 216         2.38         0.83
## 217         2.00      -999.00
## 218         2.12      -999.00
## 219         2.13      -999.00
## 220         2.64      -999.00
## 221         2.00      -999.00
## 222         2.85         0.47
## 223         2.22         1.00
## 224         2.42      -999.00
## 225         1.00      -999.00
## 226         4.00         2.50
## 227         1.67         2.00
## 228         2.60      -999.00
## 229         2.23         2.00
## 230         1.00         1.00
## 231         1.00         1.00
## 232         3.38         2.33
## 233         2.24      -999.00
## 234         2.60      -999.00
## 235         2.91         1.00
## 236         2.33      -999.00
## 237         3.24         1.00
## 238         1.00      -999.00
## 239         2.50      -999.00
## 240         3.63         1.00
## 241         2.00         1.00
## 242         2.61      -999.00
## 243         2.28         0.40
## 244         2.77      -999.00
## 245         1.42         2.00
## 246      -999.00      -999.00
## 247         2.56      -999.00
## 248         3.50      -999.00
## 249         3.00      -999.00
## 250         4.50      -999.00
## 251         3.83         1.50
## 252         1.92      -999.00
## 253         1.00         0.83
## 254         2.00      -999.00
## 255         2.84         0.45
## 256         2.00      -999.00
## 257         2.17         1.00
## 258         2.50      -999.00
## 259         3.25      -999.00
## 260         2.72         0.94
## 261         2.00      -999.00
## 262         2.06         1.00
## 263         5.00      -999.00
## 264         2.50      -999.00
## 265         3.20      -999.00
## 266         3.79      -999.00
## 267         2.73         1.00
## 268         2.92         1.00
## 269         3.80         1.00
## 270         3.11         0.75
## 271         2.33         2.00
## 272         3.00      -999.00
## 273         5.33      -999.00
## 274         5.10         1.21
## 275         3.43      -999.00
## 276         4.50      -999.00
## 277         6.10      -999.00
## 278         7.00      -999.00
## 279         4.76         1.00
## 280         6.22         1.00
## 281         6.77         1.00
## 282         9.41         1.00
## 283         7.68         1.26
## 284         5.37         1.67
## 285         2.20         1.25
## 286         1.94         1.00
## 287         3.67         1.00
## 288         4.73         1.50
## 289         3.07         0.74
## 290         5.76      -999.00
## 291         1.14         0.50
## 292         1.00         0.50
## 293         1.00         1.00
## 294         1.00         1.00
## 295         1.00         1.00
## 296         1.00         1.00
## 297         1.00         1.00
## 298         1.00         1.00
## 299         1.00         0.69
## 300         1.00         1.00
## 301         1.00         1.00
## 302         1.00         1.00
## 303         1.00         0.89
## 304         1.00         1.00
## 305         1.00         1.00
## 306         1.00         0.93
## 307         1.00      -999.00
## 308         1.00      -999.00
## 309         1.00         1.00
## 310         1.00         0.86
## 311         1.00         1.00
## 312         1.00      -999.00
## 313         1.00         0.50
## 314         1.00         1.00
## 315         1.00      -999.00
## 316         1.00      -999.00
## 317         1.00         0.80
## 318         1.00         1.00
## 319         1.00         1.00
## 320         1.00         1.00
## 321         1.01         1.00
## 322         1.00      -999.00
## 323         1.50      -999.00
## 324         2.70         1.00
## 325         3.81      -999.00
## 326         4.17      -999.00
## 327         1.00         1.00
## 328         2.75      -999.00
## 329         3.39         1.00
## 330         1.54         0.70
## 331         2.02         1.00
## 332         1.16      -999.00
## 333         1.69      -999.00
## 334         1.65      -999.00
## 335         1.67      -999.00
## 336         1.66         0.36
## 337         2.36         0.36
## 338         2.54         0.38
## 339         2.63         2.00
## 340         2.50         2.00
## 341         2.00         1.50
## 342         2.26         2.25
## 343         3.00      -999.00
## 344         2.00      -999.00
## 345         1.50      -999.00
## 346         1.00      -999.00
## 347         2.33      -999.00
## 348         2.34         2.00
## 349         2.38         2.00
## 350         2.00      -999.00
## 351         2.00         2.00
## 352         2.39         2.00
## 353         2.50      -999.00
## 354         3.29         2.00
## 355         2.00      -999.00
## 356         2.00      -999.00
## 357         2.60         2.00
## 358         3.88      -999.00
## 359         1.00         0.29
## 360         1.00      -999.00
## 361         1.00         0.29
## 362         1.01         0.36
## 363         1.01         0.41
## 364         1.01         0.45
## 365         1.00         0.50
## 366         1.01         1.00
## 367         1.01         0.50
## 368      -999.00      -999.00
## 369         1.00      -999.00
## 370         1.00         0.42
## 371         1.00         0.42
## 372         1.00      -999.00
## 373         1.00         0.20
## 374         1.00         0.24
## 375      -999.00      -999.00
## 376         1.00      -999.00
## 377         1.00      -999.00
## 378         1.00      -999.00
## 379         1.00         0.40
## 380         1.00         0.42
## 381         1.00      -999.00
## 382         1.00         0.21
## 383      -999.00      -999.00
## 384      -999.00         0.14
## 385         1.00      -999.00
## 386         1.50         0.31
## 387         1.00         0.33
## 388         1.00         0.35
## 389      -999.00      -999.00
## 390         1.00         0.50
## 391         1.00         0.50
## 392         1.02         0.33
## 393         1.00         0.33
## 394         1.00      -999.00
## 395         1.00         0.50
## 396         1.00      -999.00
## 397         1.00      -999.00
## 398         1.00         0.71
## 399         1.00      -999.00
## 400         1.00         1.00
## 401         1.00         0.17
## 402         1.00      -999.00
## 403         1.00         0.50
## 404         1.00      -999.00
## 405         1.00      -999.00
## 406         1.00         0.50
## 407      -999.00      -999.00
## 408      -999.00      -999.00
## 409         1.00         0.75
## 410      -999.00      -999.00
## 411      -999.00      -999.00
## 412         1.00      -999.00
## 413         1.00      -999.00
## 414         1.00      -999.00
## 415         1.00      -999.00
## 416         1.35      -999.00
## 417         1.50      -999.00
## 418         1.94      -999.00
## 419         2.38      -999.00
## 420         2.00      -999.00
## 421      -999.00      -999.00
## 422         2.75      -999.00
## 423         2.00      -999.00
## 424         1.00      -999.00
## 425         5.00      -999.00
## 426         3.81         1.00
## 427         5.40         1.50
## 428         1.80         2.00
## 429         4.50      -999.00
## 430         4.64         1.58
## 431         3.13         1.00
## 432         3.20         1.00
## 433         3.75         1.00
## 434         4.05         1.00
## 435         2.43         2.00
## 436         1.50      -999.00
## 437         1.86         2.00
## 438         4.00      -999.00
## 439         6.50         1.50
## 440         5.73         3.00
## 441         1.50      -999.00
## 442         2.00      -999.00
## 443         2.10      -999.00
## 444         2.80      -999.00
## 445         3.00      -999.00
## 446         3.00      -999.00
## 447         3.50      -999.00
## 448         3.50      -999.00
## 449         3.50      -999.00
## 450         4.72      -999.00
## 451         3.45         2.00
## 452         4.88         3.50
## 453         5.61         3.50
## 454         5.13      -999.00
## 455         5.00      -999.00
## 456         2.95      -999.00
## 457         3.00      -999.00
## 458         4.00      -999.00
## 459         5.53      -999.00
## 460         5.51         1.80
## 461         3.83         2.00
## 462      -999.00      -999.00
## 463         3.50      -999.00
## 464         4.24      -999.00
## 465         4.80      -999.00
## 466         5.00      -999.00
## 467         5.05      -999.00
## 468         6.00      -999.00
## 469         6.22      -999.00
## 470         6.57      -999.00
## 471         5.00         1.00
## 472         5.28         1.00
## 473         5.68         1.33
## 474         4.40         1.50
## 475         5.77         1.50
## 476         7.00         1.50
## 477         6.03         1.90
## 478         5.75         2.00
## 479         6.50         2.00
## 480         5.00         2.50
## 481         5.25         2.50
## 482         5.70         2.50
## 483         2.96      -999.00
## 484         3.30      -999.00
## 485         3.91      -999.00
## 486         1.00      -999.00
## 487         1.50      -999.00
## 488         2.00      -999.00
## 489         4.42         1.00
## 490         3.86         2.00
## 491         3.75         2.00
## 492         2.63      -999.00
## 493         4.38         1.00
## 494         3.61         1.00
## 495         2.86         1.00
## 496         3.25         1.00
## 497         3.58         1.00
## 498         4.35         0.82
## 499         4.09         1.15
## 500         3.53         1.50
## 501         5.01         1.00
## 502         3.90         2.00
## 503         5.02         2.00
## 504         3.00         1.00
## 505         1.99      -999.00
## 506         2.25      -999.00
## 507         4.00      -999.00
## 508         1.63         2.00
## 509         3.04         1.00
## 510        13.89         1.50
## 511         6.00         2.50
## 512         1.00      -999.00
## 513      -999.00         2.50
## 514         1.42      -999.00
## 515         2.20      -999.00
## 516         3.50      -999.00
## 517         3.80      -999.00
## 518         6.30         1.00
## 519         5.03         1.80
## 520         3.96         2.07
## 521         3.28         2.60
## 522         4.32         2.76
## 523         2.58         3.28
## 524         2.21         3.50
## 525         2.93         3.73
## 526         2.82         3.75
## 527         1.58         3.90
## 528         5.54         4.33
## 529         1.50      -999.00
## 530         1.10      -999.00
## 531         1.50      -999.00
## 532         2.00      -999.00
## 533         2.18      -999.00
## 534         3.20         4.50
## 535         2.34      -999.00
## 536         4.75         2.50
## 537         3.14         3.23
## 538         3.64         3.25
## 539         3.63         3.50
## 540         5.13         3.89
## 541         2.97         5.00
## 542         3.52      -999.00
## 543         3.93      -999.00
## 544         4.00         1.50
## 545         3.00         1.75
## 546         6.50         2.00
## 547         3.78         2.11
## 548         2.90         2.17
## 549      -999.00         2.50
## 550         5.60         2.67
## 551         8.41         2.78
## 552         5.75         3.33
## 553      -999.00      -999.00
## 554         1.00      -999.00
## 555         1.60      -999.00
## 556         1.91      -999.00
## 557         2.50         2.00
## 558         1.42         5.25
## 559         1.75         5.50
## 560         1.60      -999.00
## 561         1.17      -999.00
## 562         1.00         4.50
## 563         1.00      -999.00
## 564      -999.00         0.50
## 565         1.00         0.50
## 566         1.00         0.60
## 567         1.00         0.64
## 568         1.00         0.67
## 569         1.00         0.42
## 570         1.00         0.29
## 571         1.00         0.39
## 572         1.00         0.30
## 573         1.00         0.32
## 574         1.00      -999.00
## 575         1.00      -999.00
## 576         1.00         0.50
## 577         1.00         0.71
## 578      -999.00      -999.00
## 579         1.00      -999.00
## 580         1.00      -999.00
## 581         1.00      -999.00
## 582         1.00      -999.00
## 583         1.05      -999.00
## 584         1.00         1.00
## 585         1.00         1.17
## 586      -999.00      -999.00
## 587         1.87      -999.00
## 588         1.98      -999.00
## 589         2.00      -999.00
## 590         2.00      -999.00
## 591         2.24         2.00
## 592         1.95         1.75
## 593      -999.00      -999.00
## 594      -999.00      -999.00
## 595         1.50      -999.00
## 596         1.66      -999.00
## 597         1.89      -999.00
## 598         1.97      -999.00
## 599         1.80         1.00
## 600         1.92         1.00
## 601         1.91         1.20
## 602         1.80         1.36
## 603         1.00      -999.00
## 604         1.20      -999.00
## 605         1.00         0.60
## 606         1.00         0.98
## 607         1.12      -999.00
## 608         1.00         1.00
## 609         1.00         1.00
## 610         1.00      -999.00
## 611         1.00         0.32
## 612         1.00         0.50
## 613         1.00         0.50
## 614         1.00         0.34
## 615         1.00         0.50
## 616         1.00      -999.00
## 617         1.00         0.93
## 618         1.17         1.00
## 619         1.00      -999.00
## 620         1.00         0.46
## 621         1.00         0.55
## 622         1.00         0.67
## 623         1.00      -999.00
## 624         1.00      -999.00
## 625         1.00         0.50
## 626         1.00      -999.00
## 627         1.00      -999.00
## 628         1.00      -999.00
## 629         1.00         1.33
## 630         1.00      -999.00
## 631         1.00      -999.00
## 632         1.00      -999.00
## 633      -999.00      -999.00
## 634         1.00      -999.00
## 635         1.00      -999.00
## 636         1.00      -999.00
## 637         1.00      -999.00
## 638         1.00      -999.00
## 639         1.00      -999.00
## 640         1.00      -999.00
## 641         1.00      -999.00
## 642         1.00         0.50
## 643         1.00         0.67
## 644         1.00         1.00
## 645         1.00         1.00
## 646         1.00         1.00
## 647         1.00      -999.00
## 648         1.00      -999.00
## 649         1.00         0.55
## 650         1.00         0.59
## 651         1.00         0.97
## 652         1.00         0.36
## 653         1.00         0.50
## 654         1.33         0.50
## 655         1.00         0.55
## 656         1.50         0.55
## 657         1.00         0.61
## 658         1.00         0.67
## 659         1.00         0.69
## 660         1.00         0.70
## 661         1.00         0.75
## 662         1.00         0.80
## 663         1.00         0.85
## 664         1.00         0.93
## 665         1.00         1.00
## 666         1.00      -999.00
## 667         1.07         0.83
## 668         1.00         1.00
## 669         1.00         0.67
## 670         1.00         0.80
## 671         1.00      -999.00
## 672         1.00      -999.00
## 673         1.00      -999.00
## 674         1.00      -999.00
## 675         1.00      -999.00
## 676         1.00      -999.00
## 677      -999.00      -999.00
## 678         1.00      -999.00
## 679         1.14         0.67
## 680         1.00         0.50
## 681      -999.00      -999.00
## 682         1.00      -999.00
## 683         1.00      -999.00
## 684         1.00      -999.00
## 685         1.00         0.37
## 686         1.00         0.50
## 687         1.00         0.80
## 688         2.25      -999.00
## 689         2.14         1.00
## 690         2.50      -999.00
## 691         1.70         1.00
## 692         2.41         1.00
## 693         1.00      -999.00
## 694         1.00         1.04
## 695      -999.00      -999.00
## 696         1.15      -999.00
## 697         1.00         2.00
## 698         1.59         2.00
## 699         1.57         1.00
## 700         1.32         2.00
## 701         1.57         1.00
## 702         1.00         1.36
## 703         1.01         0.26
## 704         1.10         0.20
## 705         1.00         0.22
## 706         1.21         0.22
## 707         1.00      -999.00
## 708         1.00      -999.00
## 709         1.00      -999.00
## 710         1.00      -999.00
## 711         1.00      -999.00
## 712         1.17         0.36
## 713         1.00         0.45
## 714         1.00         1.00
## 715         1.00         0.40
## 716      -999.00      -999.00
## 717      -999.00         0.48
## 718         1.17         1.00
## 719         1.00      -999.00
## 720         1.06         1.00
## 721         1.21         1.00
## 722         1.32         1.00
## 723         1.08         2.00
## 724      -999.00         1.00
## 725         1.20         1.09
## 726         1.11         0.93
## 727         2.23         1.00
## 728         1.00         1.50
## 729         1.37         1.50
## 730         2.00      -999.00
## 731         1.07         1.00
## 732         1.03         1.00
## 733      -999.00      -999.00
## 734      -999.00      -999.00
## 735         1.00         1.00
## 736         1.00      -999.00
## 737         1.00      -999.00
## 738         1.00      -999.00
## 739         1.00         1.49
## 740         1.00         2.38
## 741         1.00         0.23
## 742         1.02         0.21
## 743         1.80      -999.00
## 744         3.00         2.00
## 745         1.26         1.50
## 746         1.00      -999.00
## 747         1.17         2.00
## 748         2.00         2.00
## 749         1.00      -999.00
## 750         3.14         1.00
## 751         3.13         1.50
## 752         3.50         1.50
## 753         2.50         1.00
## 754         2.86         1.50
## 755      -999.00         2.00
## 756         5.95         2.00
## 757         2.60         1.25
## 758         8.95         3.50
## 759         2.08      -999.00
## 760         1.00      -999.00
## 761         1.80         2.00
## 762         1.75      -999.00
## 763         2.00      -999.00
## 764         1.22      -999.00
## 765         3.16      -999.00
## 766         3.56         1.00
## 767         1.90      -999.00
## 768         2.48      -999.00
## 769         4.30      -999.00
## 770         1.25      -999.00
## 771         1.71         3.50
## 772         2.40      -999.00
## 773         2.63      -999.00
## 774         1.57      -999.00
## 775         2.36         4.00
## 776         1.45         1.50
## 777         1.62         2.00
## 778         1.50      -999.00
## 779         1.00         2.00
## 780         2.05         1.75
## 781         2.00      -999.00
## 782         1.85         1.00
## 783         2.00      -999.00
## 784         2.50      -999.00
## 785         2.60      -999.00
## 786         3.00      -999.00
## 787         4.25      -999.00
## 788         2.00         1.00
## 789         1.64      -999.00
## 790         2.00      -999.00
## 791         2.10      -999.00
## 792         1.75      -999.00
## 793         1.85      -999.00
## 794      -999.00      -999.00
## 795         5.00      -999.00
## 796      -999.00         1.00
## 797         4.55         2.00
## 798         3.38         2.00
## 799      -999.00         1.00
## 800         2.50      -999.00
## 801         4.33         1.50
## 802         4.50         3.00
## 803         4.42         1.33
## 804         6.00      -999.00
## 805         3.00         2.00
## 806         2.57         2.00
## 807         3.50         1.00
## 808         4.86         1.00
## 809         3.00         1.00
## 810         4.89         0.90
## 811         5.50         1.00
## 812         5.17         2.07
## 813         2.00      -999.00
## 814         2.10      -999.00
## 815         1.00      -999.00
## 816         1.33      -999.00
## 817         2.40      -999.00
## 818         2.67         4.04
## 819         2.83         4.40
## 820         3.15         2.50
## 821         1.00      -999.00
## 822         1.00         1.00
## 823         1.00      -999.00
## 824         1.00      -999.00
## 825         3.39         1.00
## 826         1.86         1.73
## 827         3.30         2.00
## 828         5.00         2.00
## 829         2.00      -999.00
## 830         2.50         2.00
## 831         2.00      -999.00
## 832         6.50      -999.00
## 833         3.50         1.00
## 834         3.90         1.00
## 835         5.09         1.13
## 836         5.70         1.25
## 837         4.33         1.50
## 838         5.67         2.00
## 839         3.68      -999.00
## 840         3.69      -999.00
## 841         4.00      -999.00
## 842         4.50      -999.00
## 843      -999.00         1.00
## 844         5.53         1.00
## 845         4.90         1.75
## 846         2.00      -999.00
## 847         2.27      -999.00
## 848         3.50      -999.00
## 849         2.40         1.00
## 850         2.55         1.00
## 851         2.62         1.50
## 852         3.00         1.50
## 853         2.30         1.63
## 854         2.65         2.00
## 855         2.75         2.00
## 856         2.75         2.00
## 857         3.12         2.00
## 858         3.30         2.00
## 859         3.29         2.42
## 860         2.00      -999.00
## 861         4.00      -999.00
## 862      -999.00         3.50
## 863         3.31         5.00
## 864         3.50      -999.00
## 865         4.00      -999.00
## 866         3.20         1.44
## 867         3.43         1.80
## 868         3.90      -999.00
## 869         3.90      -999.00
## 870         4.50         1.00
## 871         4.33         1.33
## 872         4.43         1.33
## 873         4.75         1.50
## 874         4.77         1.60
## 875         4.50         2.00
## 876         4.67         2.00
## 877         3.48         1.25
## 878         1.67      -999.00
## 879         1.50         2.50
## 880      -999.00      -999.00
## 881      -999.00      -999.00
## 882         2.00      -999.00
## 883         2.43      -999.00
## 884         2.10         1.67
## 885      -999.00      -999.00
## 886         2.50      -999.00
## 887      -999.00         3.50
## 888         2.47         3.50
## 889         1.68      -999.00
## 890         2.80      -999.00
## 891         3.60      -999.00
## 892         3.75         2.00
## 893         3.00      -999.00
## 894         3.00      -999.00
## 895         3.50      -999.00
## 896         3.78      -999.00
## 897         3.90      -999.00
## 898         4.05         1.00
## 899         3.70         2.50
## 900         5.50         2.50
## 901         5.00         3.60
## 902      -999.00         2.00
## 903         4.30      -999.00
## 904         7.70         2.20
## 905         3.60         2.50
## 906         4.12      -999.00
## 907         4.67      -999.00
## 908         6.40      -999.00
## 909         2.84         2.00
## 910         5.54         2.80
## 911         5.72         3.17
## 912         5.18         3.83
## 913         1.50      -999.00
## 914         2.57      -999.00
## 915         2.80      -999.00
## 916         5.03         3.50
## 917         5.00      -999.00
## 918         5.08         3.22
## 919      -999.00      -999.00
## 920         2.67      -999.00
## 921         7.44      -999.00
## 922         7.96         5.90
## 923         4.26      -999.00
## 924         4.17      -999.00
## 925         4.15      -999.00
## 926         4.65      -999.00
## 927         5.00      -999.00
## 928         5.06      -999.00
## 929         5.40      -999.00
## 930         3.33         1.00
## 931      -999.00         2.00
## 932         1.75      -999.00
## 933         2.67         2.00
## 934      -999.00         2.50
## 935         2.17      -999.00
## 936         1.00      -999.00
## 937         5.04         2.71
## 938         4.13         2.84
## 939         4.29         3.17
## 940         3.30         3.30
## 941         7.00         3.80
## 942         2.00      -999.00
## 943         2.00      -999.00
## 944         2.50      -999.00
## 945         4.67      -999.00
## 946         3.33         4.33
## 947         5.33      -999.00
## 948         4.10         2.00
## 949         7.73         2.00
## 950         2.50      -999.00
## 951         3.00      -999.00
## 952         3.50      -999.00
## 953         4.29      -999.00
## 954         4.44      -999.00
## 955         4.56      -999.00
## 956         2.75      -999.00
## 957         2.53      -999.00
## 958         3.29      -999.00
## 959         2.80      -999.00
## 960         3.50      -999.00
## 961      -999.00         1.50
## 962         4.07         2.00
## 963         3.27         2.50
## 964         2.50         1.50
## 965         4.00      -999.00
## 966         3.67      -999.00
## 967         3.60         4.75
## 968         7.50         3.50
## 969         3.00      -999.00
## 970         3.63      -999.00
## 971         4.40      -999.00
## 972         3.50      -999.00
## 973         3.90      -999.00
## 974         4.00      -999.00
## 975         4.10      -999.00
## 976         4.40      -999.00
## 977         4.46      -999.00
## 978         4.68      -999.00
## 979         8.00      -999.00
## 980         5.00         3.00
## 981         3.47         5.00
## 982         3.50      -999.00
## 983         1.00      -999.00
## 984         2.74      -999.00
## 985      -999.00         3.00
## 986         7.05      -999.00
## 987         2.00      -999.00
## 988         3.00      -999.00
## 989         2.50      -999.00
## 990         3.80         2.12
## 991         3.00      -999.00
## 992         3.13      -999.00
## 993         1.00      -999.00
## 994      -999.00         2.50
## 995         1.67         2.50
## 996         1.00      -999.00
## 997         4.50         5.00
## 998         6.00         2.67
## 999         3.00      -999.00
## 1000        3.50      -999.00
## 1001        6.11         3.00
## 1002        5.12         2.50
## 1003        5.15         3.00
## 1004        3.25      -999.00
## 1005        4.54         2.00
## 1006        2.17      -999.00
## 1007        2.00      -999.00
## 1008        1.50      -999.00
## 1009        2.00      -999.00
## 1010        2.31      -999.00
## 1011        3.50      -999.00
## 1012        2.48      -999.00
## 1013        4.10      -999.00
## 1014        6.50      -999.00
## 1015       14.18         2.00
## 1016        2.70      -999.00
## 1017        1.50      -999.00
## 1018        2.00      -999.00
## 1019        2.00      -999.00
## 1020        2.00      -999.00
## 1021        2.00      -999.00
## 1022        2.00      -999.00
## 1023        2.40      -999.00
## 1024        2.50         1.30
## 1025        4.33      -999.00
## 1026        4.60      -999.00
## 1027        4.97      -999.00
## 1028        5.41      -999.00
## 1029        7.00      -999.00
## 1030        3.83         2.00
## 1031        4.21         2.00
## 1032        5.56         3.00
## 1033        4.46         3.50
## 1034        4.89         3.84
## 1035        2.00      -999.00
## 1036        1.96         4.00
## 1037        6.49      -999.00
## 1038     -999.00         2.00
## 1039        8.59         3.75
## 1040        5.15         2.60
## 1041        2.00      -999.00
## 1042        2.10      -999.00
## 1043        2.53      -999.00
## 1044        2.57      -999.00
## 1045        2.72      -999.00
## 1046        3.53      -999.00
## 1047        3.98      -999.00
## 1048        4.30      -999.00
## 1049        5.28      -999.00
## 1050        5.96      -999.00
## 1051        5.22         1.90
## 1052        3.56         2.00
## 1053        4.33         2.00
## 1054        5.80         2.00
## 1055        8.25         2.00
## 1056        4.96         2.58
## 1057        2.89         2.74
## 1058     -999.00         3.00
## 1059        5.96         3.33
## 1060        5.76         3.38
## 1061        4.42         3.61
## 1062        2.68         4.00
## 1063        3.80         4.00
## 1064        3.28         4.40
## 1065        4.82         4.50
## 1066        4.54         4.83
## 1067        4.96         5.00
## 1068        5.11         5.50
## 1069        5.00         6.00
## 1070        5.62         4.50
## 1071     -999.00      -999.00
## 1072     -999.00      -999.00
## 1073        3.00      -999.00
## 1074        4.13      -999.00
## 1075        4.50      -999.00
## 1076        5.70      -999.00
## 1077        6.72      -999.00
## 1078        6.00         3.00
## 1079        3.83         4.00
## 1080        6.07         4.57
## 1081        3.00      -999.00
## 1082        3.50      -999.00
## 1083        5.64      -999.00
## 1084        4.63         2.00
## 1085        3.00         1.00
## 1086        3.18      -999.00
## 1087        3.50         1.00
## 1088        3.80         6.10
## 1089        4.13      -999.00
## 1090        4.50      -999.00
## 1091        2.34         4.53
## 1092        2.10      -999.00
## 1093        2.65         1.17
## 1094        1.08         1.95
## 1095        3.68         2.00
## 1096        2.00         2.00
## 1097        2.10         2.00
## 1098        2.15         2.00
## 1099        2.92         2.00
## 1100        2.51         2.40
## 1101        3.10         2.50
## 1102        3.25         2.00
## 1103        4.09      -999.00
## 1104     -999.00      -999.00
## 1105        2.83      -999.00
## 1106        2.90      -999.00
## 1107        3.00      -999.00
## 1108        3.27      -999.00
## 1109        3.89      -999.00
## 1110        2.00      -999.00
## 1111        2.55      -999.00
## 1112        3.60         4.20
## 1113        3.92      -999.00
## 1114        3.30      -999.00
## 1115        3.40      -999.00
## 1116        4.00      -999.00
## 1117        6.28         2.68
## 1118        3.63         2.50
## 1119        3.58         2.60
## 1120        4.80      -999.00
## 1121        3.77         5.50
## 1122        3.33         5.93
## 1123        1.44      -999.00
## 1124        1.50      -999.00
## 1125        1.79      -999.00
## 1126        2.92      -999.00
## 1127        1.78         4.25
## 1128        2.30      -999.00
## 1129        3.02      -999.00
## 1130        4.06      -999.00
## 1131     -999.00      -999.00
## 1132        2.50      -999.00
## 1133        2.67      -999.00
## 1134     -999.00      -999.00
## 1135        1.80      -999.00
## 1136        1.90      -999.00
## 1137        2.27      -999.00
## 1138        2.40      -999.00
## 1139        2.60      -999.00
## 1140        2.95      -999.00
## 1141        3.00      -999.00
## 1142        3.00      -999.00
## 1143        3.19      -999.00
## 1144        3.50      -999.00
## 1145        3.60      -999.00
## 1146        3.90      -999.00
## 1147        4.00      -999.00
## 1148        5.00      -999.00
## 1149     -999.00         2.00
## 1150        3.08         2.05
## 1151        3.60         2.70
## 1152        3.50         3.40
## 1153        4.73         3.40
## 1154        2.63         3.50
## 1155        4.42         3.90
## 1156        2.02         4.56
## 1157        4.26         7.50
## 1158        2.56         1.00
## 1159        4.90      -999.00
## 1160        4.58         2.30
## 1161     -999.00         3.50
## 1162        5.00         3.50
## 1163        6.00         3.50
## 1164     -999.00      -999.00
## 1165        2.00      -999.00
## 1166        2.74      -999.00
## 1167        1.00      -999.00
## 1168        1.67      -999.00
## 1169        1.67      -999.00
## 1170        2.33      -999.00
## 1171        3.20      -999.00
## 1172        3.33      -999.00
## 1173        3.50      -999.00
## 1174        6.00      -999.00
## 1175        3.53      -999.00
## 1176        1.78      -999.00
## 1177        2.50      -999.00
## 1178        2.75      -999.00
## 1179        3.00      -999.00
## 1180        3.00      -999.00
## 1181        3.00      -999.00
## 1182        3.00      -999.00
## 1183        3.00      -999.00
## 1184        3.15      -999.00
## 1185        3.50      -999.00
## 1186        3.50      -999.00
## 1187        3.00         1.00
## 1188        4.27         1.00
## 1189        3.20         1.50
## 1190        3.50         1.50
## 1191        4.50         3.00
## 1192        3.67         3.50
## 1193     -999.00      -999.00
## 1194     -999.00      -999.00
## 1195        3.35      -999.00
## 1196        3.50      -999.00
## 1197        4.00      -999.00
## 1198        5.00      -999.00
## 1199        5.75      -999.00
## 1200        6.00      -999.00
## 1201        6.94      -999.00
## 1202        4.91         2.53
## 1203        4.08         3.30
## 1204        3.63         3.37
## 1205        8.72         3.68
## 1206        5.95         4.28
## 1207        4.53      -999.00
## 1208        2.90      -999.00
## 1209        3.32      -999.00
## 1210        4.14      -999.00
## 1211        3.85         1.00
## 1212        3.10         2.00
## 1213        6.56         4.00
## 1214        2.00      -999.00
## 1215        3.80         3.50
## 1216     -999.00      -999.00
## 1217     -999.00      -999.00
## 1218        5.76         2.50
## 1219        6.99      -999.00
## 1220        2.79      -999.00
## 1221        3.03      -999.00
## 1222        2.85      -999.00
## 1223     -999.00      -999.00
## 1224        3.75      -999.00
## 1225        5.00      -999.00
## 1226        5.58         2.00
## 1227        5.00         5.00
## 1228        2.61         1.00
## 1229        4.40      -999.00
## 1230        4.67      -999.00
## 1231        3.00      -999.00
## 1232        3.80      -999.00
## 1233        3.34         2.50
## 1234        4.40         2.50
## 1235        1.50      -999.00
## 1236        1.44         2.07
## 1237     -999.00      -999.00
## 1238     -999.00      -999.00
## 1239        4.54      -999.00
## 1240        5.15      -999.00
## 1241        4.33         2.00
## 1242        2.83         4.00
## 1243        5.42         4.17
## 1244     -999.00         5.00
## 1245     -999.00         6.50
## 1246        3.50      -999.00
## 1247        4.00      -999.00
## 1248        4.50      -999.00
## 1249        3.00      -999.00
## 1250     -999.00      -999.00
## 1251        2.36      -999.00
## 1252        3.58      -999.00
## 1253        2.06      -999.00
## 1254        4.00      -999.00
## 1255        3.80      -999.00
## 1256        4.68      -999.00
## 1257        4.32         5.50
## 1258        2.50      -999.00
## 1259        2.50      -999.00
## 1260     -999.00         0.75
## 1261        4.88         2.32
## 1262     -999.00         1.00
## 1263        3.33         1.21
## 1264        4.89         1.21
## 1265        4.00         1.50
## 1266        2.00      -999.00
## 1267        3.00         2.00
## 1268        5.00         4.00
## 1269        4.33         1.50
## 1270        4.73         1.19
## 1271        5.28         1.75
## 1272        2.03      -999.00
## 1273        2.35         1.75
## 1274        1.00         3.60
## 1275        1.88         1.00
## 1276        6.75         1.00
## 1277        8.00         1.00
## 1278        9.50         1.00
## 1279        8.61         1.33
## 1280        1.80      -999.00
## 1281        2.20      -999.00
## 1282        2.20      -999.00
## 1283        3.07      -999.00
## 1284        4.00         1.00
## 1285        4.27         1.00
## 1286        4.95         1.00
## 1287        5.67         1.00
## 1288        6.00         1.00
## 1289        3.50      -999.00
## 1290        2.00      -999.00
## 1291        2.50      -999.00
## 1292        2.00      -999.00
## 1293        2.58      -999.00
## 1294        3.50         2.67
## 1295        1.50      -999.00
## 1296        1.80      -999.00
## 1297        1.80      -999.00
## 1298        2.00         2.00
## 1299        3.33         1.00
## 1300        3.17         1.33
## 1301        2.80      -999.00
## 1302        2.33      -999.00
## 1303        3.40         2.00
## 1304        2.38      -999.00
## 1305        3.00      -999.00
## 1306        5.50      -999.00
## 1307        3.33         0.50
## 1308        4.00         0.50
## 1309        4.20         0.50
## 1310        4.83         0.83
## 1311        4.40         0.94
## 1312     -999.00         1.00
## 1313        4.38         1.00
## 1314        4.50         1.00
## 1315        4.50         1.00
## 1316        4.73         1.00
## 1317        6.00         1.00
## 1318        2.00      -999.00
## 1319        1.33      -999.00
## 1320        1.43      -999.00
## 1321        2.50      -999.00
## 1322        1.58         1.00
## 1323        1.97         2.00
## 1324     -999.00      -999.00
## 1325        1.00      -999.00
## 1326        1.00      -999.00
## 1327        1.00      -999.00
## 1328        2.00      -999.00
## 1329        1.00      -999.00
## 1330        1.50      -999.00
## 1331        2.00      -999.00
## 1332        2.00      -999.00
## 1333        2.60         1.50
## 1334        1.00      -999.00
## 1335        3.33         1.50
## 1336        1.80         2.00
## 1337        1.43      -999.00
## 1338        2.00      -999.00
## 1339        2.00      -999.00
## 1340        3.00      -999.00
## 1341        3.00      -999.00
## 1342        3.05         1.00
## 1343        3.70         1.11
## 1344        3.52         1.50
## 1345        2.71         1.64
## 1346        3.46         1.83
## 1347        1.93         1.95
## 1348        5.10         2.22
## 1349        4.42         1.00
## 1350     -999.00      -999.00
## 1351        6.30      -999.00
## 1352        6.80      -999.00
## 1353     -999.00         0.91
## 1354        5.12         0.94
## 1355        5.23         0.94
## 1356        5.73         0.96
## 1357     -999.00         1.00
## 1358     -999.00         1.00
## 1359     -999.00         1.00
## 1360     -999.00         1.00
## 1361     -999.00         1.00
## 1362        2.50         1.00
## 1363        3.43         1.00
## 1364        4.16         1.00
## 1365        4.27         1.00
## 1366        5.00         1.00
## 1367        5.35         1.00
## 1368        5.40         1.00
## 1369        5.50         1.00
## 1370        5.66         1.00
## 1371        6.00         1.00
## 1372        6.00         1.00
## 1373        6.06         1.00
## 1374        7.52         1.00
## 1375        7.92         1.00
## 1376        9.00         1.00
## 1377        7.02         1.17
## 1378        6.00         1.33
## 1379        4.27         1.50
## 1380        5.92         1.75
## 1381        2.50      -999.00
## 1382        3.00      -999.00
## 1383        3.50      -999.00
## 1384        3.68      -999.00
## 1385        5.00      -999.00
## 1386        4.00         1.00
## 1387        4.00         1.00
## 1388        4.06         1.00
## 1389        4.10         1.00
## 1390        4.15         1.00
## 1391        4.33         1.00
## 1392        4.50         1.00
## 1393        4.94         1.00
## 1394        4.95         1.00
## 1395        5.10         1.00
## 1396        5.19         1.00
## 1397        4.85         1.14
## 1398        4.42         1.50
## 1399        5.16         1.50
## 1400        4.22         1.53
## 1401        9.78         1.50
## 1402        4.20         1.67
## 1403        1.55      -999.00
## 1404        3.75      -999.00
## 1405        2.18         1.00
## 1406     -999.00         2.00
## 1407        3.83         2.33
## 1408        1.50      -999.00
## 1409        1.98      -999.00
## 1410        2.17      -999.00
## 1411        2.44      -999.00
## 1412        2.00         7.50
## 1413        1.63      -999.00
## 1414        2.00      -999.00
## 1415        1.00         0.22
## 1416        1.00      -999.00
## 1417        1.00      -999.00
## 1418        1.00         0.37
## 1419        1.00         0.50
## 1420        1.03         1.00
## 1421        1.00      -999.00
## 1422        1.00         1.00
## 1423        1.00         1.00
## 1424        1.00      -999.00
## 1425        1.50      -999.00
## 1426        1.65         1.00
## 1427        2.00      -999.00
## 1428        4.00      -999.00
## 1429        4.00      -999.00
## 1430        6.00      -999.00
## 1431        4.00         1.00
## 1432        1.75      -999.00
## 1433        1.50      -999.00
## 1434        1.00         1.00
## 1435        2.00      -999.00
## 1436        1.00         0.70
## 1437        1.50         1.00
## 1438        1.00      -999.00
## 1439        1.00         1.17
## 1440        1.00         1.35
```


```r
library(janitor)
```

```
## 
## Attaching package: 'janitor'
```

```
## The following objects are masked from 'package:stats':
## 
##     chisq.test, fisher.test
```

```r
names(mammals)
```

```
##  [1] "order"        "family"       "Genus"        "species"      "mass"        
##  [6] "gestation"    "newborn"      "weaning"      "wean.mass"    "AFR"         
## [11] "max..life"    "litter.size"  "litters.year"
```


```r
mammals <- clean_names(mammals) # Cleans variable names
```

When naming columns, blank spaces are often added (don't do this, please). Here is a trick to remove these.  

```r
#select_all(mammals, ~str_replace(., " ", "_"))
```

# Lab 4.2-"Transforming data 2: `filter()`"
## `filter()`
Allows us to extract data that meet specific criteria in a variable.

+ `filter()` allows all of the expected operators; i.e. >, >=, <, <=, != (not equal), and == (equal).  

```r
filter(fish, lakeid == "AL") # use == "", using select is bad practice
```

```
## # A tibble: 383 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         299 EDGE         167            2.70        2.70
##  2 AL         299 2            167            2.04        2.70
##  3 AL         299 1            167            1.31        2.70
##  4 AL         300 EDGE         175            3.02        3.02
##  5 AL         300 3            175            2.67        3.02
##  6 AL         300 2            175            2.14        3.02
##  7 AL         300 1            175            1.23        3.02
##  8 AL         301 EDGE         194            3.34        3.34
##  9 AL         301 3            194            2.97        3.34
## 10 AL         301 2            194            2.29        3.34
## # ℹ 373 more rows
```


```r
filter(fish, length >= 350) # If only interested in fish length greater
```

```
## # A tibble: 890 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         306 EDGE         350            6.94        6.94
##  2 AL         306 10           350            6.46        6.94
##  3 AL         306 9            350            6.16        6.94
##  4 AL         306 8            350            5.88        6.94
##  5 AL         306 7            350            5.42        6.94
##  6 AL         306 6            350            4.90        6.94
##  7 AL         306 5            350            4.46        6.94
##  8 AL         306 4            350            3.75        6.94
##  9 AL         306 3            350            2.93        6.94
## 10 AL         306 2            350            2.14        6.94
## # ℹ 880 more rows
```


```r
not_AL <- filter(fish, lakeid != "AL") #! means not
```

## Using `filter()` with multiple observations 

```r
filter(fish, length %in% c(167, 175)) # filter multiple values within same variable
```

```
## # A tibble: 18 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         299 EDGE         167           2.70         2.70
##  2 AL         299 2            167           2.04         2.70
##  3 AL         299 1            167           1.31         2.70
##  4 AL         300 EDGE         175           3.02         3.02
##  5 AL         300 3            175           2.67         3.02
##  6 AL         300 2            175           2.14         3.02
##  7 AL         300 1            175           1.23         3.02
##  8 BO         397 EDGE         175           2.67         2.67
##  9 BO         397 3            175           2.39         2.67
## 10 BO         397 2            175           1.59         2.67
## 11 BO         397 1            175           0.830        2.67
## 12 LSG         45 EDGE         175           3.21         3.21
## 13 LSG         45 3            175           2.92         3.21
## 14 LSG         45 2            175           2.44         3.21
## 15 LSG         45 1            175           1.60         3.21
## 16 RD         103 EDGE         167           2.80         2.80
## 17 RD         103 2            167           2.10         2.80
## 18 RD         103 1            167           1.31         2.80
```


```r
filter(fish, between(scalelength, 2.5, 2.55)) # For range of specific values
```

```
## # A tibble: 10 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 LSG         56 EDGE         145            2.55        2.55
##  2 LSG         56 2            145            1.94        2.55
##  3 LSG         56 1            145            1.20        2.55
##  4 LSG         57 EDGE         143            2.52        2.52
##  5 LSG         57 2            143            2.13        2.52
##  6 LSG         57 1            143            1.19        2.52
##  7 UB          80 EDGE         153            2.55        2.55
##  8 UB          80 3            153            2.10        2.55
##  9 UB          80 2            153            1.62        2.55
## 10 UB          80 1            153            1.14        2.55
```


```r
filter(fish, near(radii_length_mm, 2, tol = 0.2)) #look for radii length near 2, but within 0.2 tolerance
```

```
## # A tibble: 291 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         299 2            167            2.04        2.70
##  2 AL         300 2            175            2.14        3.02
##  3 AL         302 2            324            2.19        6.07
##  4 AL         303 2            325            2.04        6.79
##  5 AL         306 2            350            2.14        6.94
##  6 AL         308 2            355            1.86        6.67
##  7 AL         312 2            367            2.17        6.81
##  8 AL         313 2            367            2.06        6.47
##  9 AL         315 2            372            2.04        6.47
## 10 AL         316 2            372            1.82        6.35
## # ℹ 281 more rows
```

## Using `filter()` on multiple conditions

```r
filter(fish, lakeid == "AL" & length > 350) # AND
```

```
## # A tibble: 314 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         307 EDGE         353            7.55        7.55
##  2 AL         307 13           353            7.28        7.55
##  3 AL         307 12           353            6.98        7.55
##  4 AL         307 11           353            6.73        7.55
##  5 AL         307 10           353            6.48        7.55
##  6 AL         307 9            353            6.22        7.55
##  7 AL         307 8            353            5.92        7.55
##  8 AL         307 7            353            5.44        7.55
##  9 AL         307 6            353            5.06        7.55
## 10 AL         307 5            353            4.37        7.55
## # ℹ 304 more rows
```


```r
filter(fish, lakeid == "AL" | length > 350) # OR
```

```
## # A tibble: 948 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         299 EDGE         167            2.70        2.70
##  2 AL         299 2            167            2.04        2.70
##  3 AL         299 1            167            1.31        2.70
##  4 AL         300 EDGE         175            3.02        3.02
##  5 AL         300 3            175            2.67        3.02
##  6 AL         300 2            175            2.14        3.02
##  7 AL         300 1            175            1.23        3.02
##  8 AL         301 EDGE         194            3.34        3.34
##  9 AL         301 3            194            2.97        3.34
## 10 AL         301 2            194            2.29        3.34
## # ℹ 938 more rows
```


```r
filter(fish, length > 400, (scalelength > 11 | radii_length_mm > 8)) # Can also nest to be more specific
```

```
## # A tibble: 23 × 6
##    lakeid fish_id annnumber length radii_length_mm scalelength
##    <chr>    <dbl> <chr>      <dbl>           <dbl>       <dbl>
##  1 AL         324 EDGE         406            8.21        8.21
##  2 AL         327 EDGE         413            8.33        8.33
##  3 AL         327 15           413            8.11        8.33
##  4 AL         328 EDGE         420            8.71        8.71
##  5 AL         328 16           420            8.41        8.71
##  6 AL         328 15           420            8.14        8.71
##  7 WS         180 EDGE         403           11.0        11.0 
##  8 WS         180 16           403           10.6        11.0 
##  9 WS         180 15           403           10.3        11.0 
## 10 WS         180 14           403            9.93       11.0 
## # ℹ 13 more rows
```

Rules:  
+ `filter(condition1, condition2)` will return rows where both conditions are met.  
+ `filter(condition1, !condition2)` will return all rows where condition one is true but condition 2 is not.  
+ `filter(condition1 | condition2)` will return rows where condition 1 or condition 2 is met.  
+ `filter(xor(condition1, condition2)` will return all rows where only one of the conditions is met, and not when both conditions are met.

# Lab 5.2-"Pipes, `arrange()`
## Pipes `%>%` 
Combines select and filter. 

```r
fish %>% #pipe, use fish data
  select(lakeid, scalelength) %>% #select lakeid and scalelength and use the output of that function
  filter(lakeid == "AL") #to filter out observation of interest (lake AL)
```

```
## # A tibble: 383 × 2
##    lakeid scalelength
##    <chr>        <dbl>
##  1 AL            2.70
##  2 AL            2.70
##  3 AL            2.70
##  4 AL            3.02
##  5 AL            3.02
##  6 AL            3.02
##  7 AL            3.02
##  8 AL            3.34
##  9 AL            3.34
## 10 AL            3.34
## # ℹ 373 more rows
```


```r
mammals %>% 
  select(family, genus, species, gestation) %>% 
  filter(gestation>=15)
```

```
##           family         genus       species gestation
## 1    Delphinidae  Globicephala macrorhynchus     15.25
## 2   Physeteridae      Physeter       catodon     15.80
## 3 Rhinocerotidae Ceratotherium         simum     15.87
## 4 Rhinocerotidae       Diceros      bicornis     16.12
## 5 Rhinocerotidae    Rhinoceros     unicornis     16.44
## 6 Rhinocerotidae    Rhinoceros     sondaicus     16.50
## 7   Elephantidae       Elephas       maximus     21.12
## 8   Elephantidae     Loxodonta      africana     21.46
```

## `arrange()`

```r
fish %>% 
  select(lakeid, scalelength) %>% 
  arrange(scalelength) # like a sort command in excel, default is ascending order
```

```
## # A tibble: 4,033 × 2
##    lakeid scalelength
##    <chr>        <dbl>
##  1 WS           0.628
##  2 WS           0.637
##  3 LSG          0.773
##  4 WS           0.832
##  5 LSG          1.15 
##  6 WS           1.41 
##  7 WS           1.41 
##  8 WS           1.41 
##  9 BO           1.43 
## 10 BO           1.43 
## # ℹ 4,023 more rows
```


```r
fish %>% 
  select(lakeid, scalelength) %>% 
  arrange(desc(scalelength)) # To sort in decreasing order
```

```
## # A tibble: 4,033 × 2
##    lakeid scalelength
##    <chr>        <dbl>
##  1 WS            11.0
##  2 WS            11.0
##  3 WS            11.0
##  4 WS            11.0
##  5 WS            11.0
##  6 WS            11.0
##  7 WS            11.0
##  8 WS            11.0
##  9 WS            11.0
## 10 WS            11.0
## # ℹ 4,023 more rows
```

# Lab 6.1-"`mutate()`, and `if_else()`"
## `mutate()` 

```r
fish %>% 
  mutate(length_mm = length*10) %>%  #Create a new column from existing columns
  select(fish_id, length, length_mm)
```

```
## # A tibble: 4,033 × 3
##    fish_id length length_mm
##      <dbl>  <dbl>     <dbl>
##  1     299    167      1670
##  2     299    167      1670
##  3     299    167      1670
##  4     300    175      1750
##  5     300    175      1750
##  6     300    175      1750
##  7     300    175      1750
##  8     301    194      1940
##  9     301    194      1940
## 10     301    194      1940
## # ℹ 4,023 more rows
```

## `mutate_all()`

```r
mammals %>%
  mutate_all(tolower) # Helpful when cleaning data, changes all entires to lowercase
```

```
##               order          family            genus           species
## 1      artiodactyla  antilocapridae      antilocapra         americana
## 2      artiodactyla         bovidae            addax     nasomaculatus
## 3      artiodactyla         bovidae        aepyceros          melampus
## 4      artiodactyla         bovidae       alcelaphus        buselaphus
## 5      artiodactyla         bovidae       ammodorcas           clarkei
## 6      artiodactyla         bovidae       ammotragus            lervia
## 7      artiodactyla         bovidae       antidorcas       marsupialis
## 8      artiodactyla         bovidae         antilope        cervicapra
## 9      artiodactyla         bovidae            bison             bison
## 10     artiodactyla         bovidae            bison           bonasus
## 11     artiodactyla         bovidae              bos         grunniens
## 12     artiodactyla         bovidae              bos         frontalis
## 13     artiodactyla         bovidae              bos         javanicus
## 14     artiodactyla         bovidae       boselaphus      tragocamelus
## 15     artiodactyla         bovidae          bubalus    depressicornis
## 16     artiodactyla         bovidae          bubalus       mindorensis
## 17     artiodactyla         bovidae          bubalus           bubalis
## 18     artiodactyla         bovidae         budorcas         taxicolor
## 19     artiodactyla         bovidae            capra         caucasica
## 20     artiodactyla         bovidae            capra         falconeri
## 21     artiodactyla         bovidae            capra              ibex
## 22     artiodactyla         bovidae            capra    cylindricornis
## 23     artiodactyla         bovidae            capra            hircus
## 24     artiodactyla         bovidae      cephalophus             niger
## 25     artiodactyla         bovidae      cephalophus        nigrifrons
## 26     artiodactyla         bovidae      cephalophus        natalensis
## 27     artiodactyla         bovidae      cephalophus       leucogaster
## 28     artiodactyla         bovidae      cephalophus           ogilbyi
## 29     artiodactyla         bovidae      cephalophus             zebra
## 30     artiodactyla         bovidae      cephalophus         rufilatus
## 31     artiodactyla         bovidae      cephalophus          dorsalis
## 32     artiodactyla         bovidae      cephalophus         monticola
## 33     artiodactyla         bovidae      cephalophus       silvicultor
## 34     artiodactyla         bovidae      cephalophus         maxwellii
## 35     artiodactyla         bovidae     connochaetes              gnou
## 36     artiodactyla         bovidae     connochaetes          taurinus
## 37     artiodactyla         bovidae       damaliscus           hunteri
## 38     artiodactyla         bovidae       damaliscus          pygargus
## 39     artiodactyla         bovidae       damaliscus           lunatus
## 40     artiodactyla         bovidae          gazella     soemmerringii
## 41     artiodactyla         bovidae          gazella         rufifrons
## 42     artiodactyla         bovidae          gazella              dama
## 43     artiodactyla         bovidae          gazella        leptoceros
## 44     artiodactyla         bovidae          gazella            granti
## 45     artiodactyla         bovidae          gazella            spekei
## 46     artiodactyla         bovidae          gazella           cuvieri
## 47     artiodactyla         bovidae          gazella            dorcas
## 48     artiodactyla         bovidae          gazella      subgutturosa
## 49     artiodactyla         bovidae          gazella         thomsonii
## 50     artiodactyla         bovidae          gazella           gazella
## 51     artiodactyla         bovidae       hemitragus         hylocrius
## 52     artiodactyla         bovidae       hemitragus        jemlahicus
## 53     artiodactyla         bovidae      hippotragus           equinus
## 54     artiodactyla         bovidae      hippotragus             niger
## 55     artiodactyla         bovidae            kobus         megaceros
## 56     artiodactyla         bovidae            kobus          vardonii
## 57     artiodactyla         bovidae            kobus             leche
## 58     artiodactyla         bovidae            kobus    ellipsiprymnus
## 59     artiodactyla         bovidae            kobus               kob
## 60     artiodactyla         bovidae      litocranius           walleri
## 61     artiodactyla         bovidae          madoqua          saltiana
## 62     artiodactyla         bovidae          madoqua         guentheri
## 63     artiodactyla         bovidae          madoqua            kirkii
## 64     artiodactyla         bovidae      naemorhedus           crispus
## 65     artiodactyla         bovidae      naemorhedus      sumatraensis
## 66     artiodactyla         bovidae      naemorhedus             goral
## 67     artiodactyla         bovidae        neotragus            batesi
## 68     artiodactyla         bovidae        neotragus         moschatus
## 69     artiodactyla         bovidae         oreamnos        americanus
## 70     artiodactyla         bovidae       oreotragus        oreotragus
## 71     artiodactyla         bovidae             oryx            dammah
## 72     artiodactyla         bovidae             oryx          leucoryx
## 73     artiodactyla         bovidae             oryx           gazella
## 74     artiodactyla         bovidae          ourebia            ourebi
## 75     artiodactyla         bovidae           ovibos         moschatus
## 76     artiodactyla         bovidae             ovis          nivicola
## 77     artiodactyla         bovidae             ovis            vignei
## 78     artiodactyla         bovidae             ovis             dalli
## 79     artiodactyla         bovidae             ovis        canadensis
## 80     artiodactyla         bovidae             ovis             ammon
## 81     artiodactyla         bovidae             ovis             aries
## 82     artiodactyla         bovidae       pantholops         hodgsonii
## 83     artiodactyla         bovidae            pelea         capreolus
## 84     artiodactyla         bovidae         procapra         gutturosa
## 85     artiodactyla         bovidae         pseudois            nayaur
## 86     artiodactyla         bovidae       raphicerus        campestris
## 87     artiodactyla         bovidae          redunca         arundinum
## 88     artiodactyla         bovidae          redunca           redunca
## 89     artiodactyla         bovidae          redunca       fulvorufula
## 90     artiodactyla         bovidae        rupicapra         rupicapra
## 91     artiodactyla         bovidae            saiga          tatarica
## 92     artiodactyla         bovidae       sigmoceros    lichtensteinii
## 93     artiodactyla         bovidae       sylvicapra           grimmia
## 94     artiodactyla         bovidae         syncerus            caffer
## 95     artiodactyla         bovidae      taurotragus         derbianus
## 96     artiodactyla         bovidae      taurotragus              oryx
## 97     artiodactyla         bovidae       tetracerus      quadricornis
## 98     artiodactyla         bovidae      tragelaphus           buxtoni
## 99     artiodactyla         bovidae      tragelaphus         eurycerus
## 100    artiodactyla         bovidae      tragelaphus            spekii
## 101    artiodactyla         bovidae      tragelaphus      strepsiceros
## 102    artiodactyla         bovidae      tragelaphus           angasii
## 103    artiodactyla         bovidae      tragelaphus          imberbis
## 104    artiodactyla         bovidae      tragelaphus          scriptus
## 105    artiodactyla       camelidae          camelus        bactrianus
## 106    artiodactyla       camelidae          camelus       dromedarius
## 107    artiodactyla       camelidae             lama             glama
## 108    artiodactyla       camelidae             lama             pacos
## 109    artiodactyla       camelidae             lama          guanicoe
## 110    artiodactyla       camelidae          vicugna           vicugna
## 111    artiodactyla        cervidae            alces             alces
## 112    artiodactyla        cervidae             axis          porcinus
## 113    artiodactyla        cervidae             axis              axis
## 114    artiodactyla        cervidae      blastocerus        dichotomus
## 115    artiodactyla        cervidae        capreolus         capreolus
## 116    artiodactyla        cervidae        capreolus          pygargus
## 117    artiodactyla        cervidae           cervus        duvaucelii
## 118    artiodactyla        cervidae           cervus           elaphus
## 119    artiodactyla        cervidae           cervus       albirostris
## 120    artiodactyla        cervidae           cervus        timorensis
## 121    artiodactyla        cervidae           cervus          unicolor
## 122    artiodactyla        cervidae           cervus             eldii
## 123    artiodactyla        cervidae           cervus            nippon
## 124    artiodactyla        cervidae             dama              dama
## 125    artiodactyla        cervidae        elaphodus       cephalophus
## 126    artiodactyla        cervidae        elaphurus        davidianus
## 127    artiodactyla        cervidae     hippocamelus          bisulcus
## 128    artiodactyla        cervidae     hippocamelus        antisensis
## 129    artiodactyla        cervidae       hydropotes           inermis
## 130    artiodactyla        cervidae           mazama            rufina
## 131    artiodactyla        cervidae           mazama       gouazoupira
## 132    artiodactyla        cervidae           mazama         americana
## 133    artiodactyla        cervidae        muntiacus           muntjak
## 134    artiodactyla        cervidae        muntiacus           reevesi
## 135    artiodactyla        cervidae       odocoileus          hemionus
## 136    artiodactyla        cervidae       odocoileus       virginianus
## 137    artiodactyla        cervidae       ozotoceros       bezoarticus
## 138    artiodactyla        cervidae             pudu    mephistophiles
## 139    artiodactyla        cervidae             pudu              puda
## 140    artiodactyla        cervidae         rangifer          tarandus
## 141    artiodactyla      giraffidae          giraffa    camelopardalis
## 142    artiodactyla      giraffidae           okapia         johnstoni
## 143    artiodactyla  hippopotamidae     hexaprotodon       liberiensis
## 144    artiodactyla  hippopotamidae     hippopotamus         amphibius
## 145    artiodactyla       moschidae          moschus      chrysogaster
## 146    artiodactyla       moschidae          moschus       berezovskii
## 147    artiodactyla       moschidae          moschus       moschiferus
## 148    artiodactyla          suidae        babyrousa         babyrussa
## 149    artiodactyla          suidae      hylochoerus    meinertzhageni
## 150    artiodactyla          suidae     phacochoerus       aethiopicus
## 151    artiodactyla          suidae    potamochoerus            porcus
## 152    artiodactyla          suidae              sus         salvanius
## 153    artiodactyla          suidae              sus          barbatus
## 154    artiodactyla          suidae              sus            scrofa
## 155    artiodactyla     tayassuidae        catagonus           wagneri
## 156    artiodactyla     tayassuidae           pecari            tajacu
## 157    artiodactyla     tayassuidae          tayassu            pecari
## 158    artiodactyla      tragulidae       hyemoschus         aquaticus
## 159    artiodactyla      tragulidae        moschiola           meminna
## 160    artiodactyla      tragulidae         tragulus         javanicus
## 161    artiodactyla      tragulidae         tragulus              napu
## 162       carnivora         canidae           alopex           lagopus
## 163       carnivora         canidae       atelocynus          microtis
## 164       carnivora         canidae            canis          simensis
## 165       carnivora         canidae            canis            aureus
## 166       carnivora         canidae            canis             rufus
## 167       carnivora         canidae            canis             lupus
## 168       carnivora         canidae            canis         mesomelas
## 169       carnivora         canidae            canis           latrans
## 170       carnivora         canidae            canis           adustus
## 171       carnivora         canidae        cerdocyon             thous
## 172       carnivora         canidae       chrysocyon        brachyurus
## 173       carnivora         canidae             cuon           alpinus
## 174       carnivora         canidae           lycaon            pictus
## 175       carnivora         canidae      nyctereutes      procyonoides
## 176       carnivora         canidae          otocyon         megalotis
## 177       carnivora         canidae      pseudalopex       gymnocercus
## 178       carnivora         canidae      pseudalopex           griseus
## 179       carnivora         canidae      pseudalopex          culpaeus
## 180       carnivora         canidae         speothos         venaticus
## 181       carnivora         canidae          urocyon  cinereoargenteus
## 182       carnivora         canidae          urocyon        littoralis
## 183       carnivora         canidae           vulpes              cana
## 184       carnivora         canidae           vulpes             chama
## 185       carnivora         canidae           vulpes         rueppelli
## 186       carnivora         canidae           vulpes         ferrilata
## 187       carnivora         canidae           vulpes           pallida
## 188       carnivora         canidae           vulpes       bengalensis
## 189       carnivora         canidae           vulpes            corsac
## 190       carnivora         canidae           vulpes            vulpes
## 191       carnivora         canidae           vulpes             zerda
## 192       carnivora         canidae           vulpes             velox
## 193       carnivora         felidae         acinonyx           jubatus
## 194       carnivora         felidae          caracal           caracal
## 195       carnivora         felidae         catopuma        temminckii
## 196       carnivora         felidae            felis             chaus
## 197       carnivora         felidae            felis         margarita
## 198       carnivora         felidae            felis        silvestris
## 199       carnivora         felidae            felis          nigripes
## 200       carnivora         felidae      herpailurus        yaguarondi
## 201       carnivora         felidae        leopardus            wiedii
## 202       carnivora         felidae        leopardus          tigrinus
## 203       carnivora         felidae        leopardus          pardalis
## 204       carnivora         felidae      leptailurus            serval
## 205       carnivora         felidae             lynx          pardinus
## 206       carnivora         felidae             lynx             rufus
## 207       carnivora         felidae             lynx              lynx
## 208       carnivora         felidae             lynx        canadensis
## 209       carnivora         felidae         neofelis          nebulosa
## 210       carnivora         felidae        oncifelis          colocolo
## 211       carnivora         felidae        oncifelis         geoffroyi
## 212       carnivora         felidae       otocolobus             manul
## 213       carnivora         felidae         panthera            tigris
## 214       carnivora         felidae         panthera              onca
## 215       carnivora         felidae         panthera               leo
## 216       carnivora         felidae         panthera            pardus
## 217       carnivora         felidae       pardofelis         marmorata
## 218       carnivora         felidae     prionailurus        viverrinus
## 219       carnivora         felidae     prionailurus       rubiginosus
## 220       carnivora         felidae     prionailurus       bengalensis
## 221       carnivora         felidae         profelis            aurata
## 222       carnivora         felidae             puma          concolor
## 223       carnivora         felidae            uncia             uncia
## 224       carnivora     herpestidae           atilax       paludinosus
## 225       carnivora     herpestidae         bdeogale       crassicauda
## 226       carnivora     herpestidae      crossarchus          obscurus
## 227       carnivora     herpestidae         cynictis       penicillata
## 228       carnivora     herpestidae        galerella      pulverulenta
## 229       carnivora     herpestidae        galerella         sanguinea
## 230       carnivora     herpestidae          galidia           elegans
## 231       carnivora     herpestidae       galidictis          fasciata
## 232       carnivora     herpestidae         helogale           parvula
## 233       carnivora     herpestidae        herpestes         javanicus
## 234       carnivora     herpestidae        herpestes         edwardsii
## 235       carnivora     herpestidae        herpestes         ichneumon
## 236       carnivora     herpestidae        ichneumia         albicauda
## 237       carnivora     herpestidae           mungos             mungo
## 238       carnivora     herpestidae      mungotictis      decemlineata
## 239       carnivora     herpestidae     paracynictis           selousi
## 240       carnivora     herpestidae         suricata         suricatta
## 241       carnivora       hyaenidae          crocuta           crocuta
## 242       carnivora       hyaenidae           hyaena            hyaena
## 243       carnivora       hyaenidae       parahyaena           brunnea
## 244       carnivora       hyaenidae         proteles         cristatus
## 245       carnivora      mustelidae         amblonyx          cinereus
## 246       carnivora      mustelidae            aonyx          congicus
## 247       carnivora      mustelidae            aonyx          capensis
## 248       carnivora      mustelidae         arctonyx          collaris
## 249       carnivora      mustelidae        conepatus        leuconotus
## 250       carnivora      mustelidae        conepatus      semistriatus
## 251       carnivora      mustelidae        conepatus        mesoleucus
## 252       carnivora      mustelidae             eira           barbara
## 253       carnivora      mustelidae          enhydra            lutris
## 254       carnivora      mustelidae         galictis           vittata
## 255       carnivora      mustelidae             gulo              gulo
## 256       carnivora      mustelidae          ictonyx            libyca
## 257       carnivora      mustelidae          ictonyx          striatus
## 258       carnivora      mustelidae           lontra       longicaudis
## 259       carnivora      mustelidae           lontra            felina
## 260       carnivora      mustelidae           lontra        canadensis
## 261       carnivora      mustelidae            lutra      maculicollis
## 262       carnivora      mustelidae            lutra             lutra
## 263       carnivora      mustelidae        lutrogale     perspicillata
## 264       carnivora      mustelidae           martes         flavigula
## 265       carnivora      mustelidae           martes         zibellina
## 266       carnivora      mustelidae           martes             foina
## 267       carnivora      mustelidae           martes         americana
## 268       carnivora      mustelidae           martes          pennanti
## 269       carnivora      mustelidae           martes            martes
## 270       carnivora      mustelidae            meles             meles
## 271       carnivora      mustelidae        mellivora          capensis
## 272       carnivora      mustelidae         melogale         personata
## 273       carnivora      mustelidae         mephitis          macroura
## 274       carnivora      mustelidae         mephitis          mephitis
## 275       carnivora      mustelidae          mustela          nigripes
## 276       carnivora      mustelidae          mustela          lutreola
## 277       carnivora      mustelidae          mustela           altaica
## 278       carnivora      mustelidae          mustela          sibirica
## 279       carnivora      mustelidae          mustela             vison
## 280       carnivora      mustelidae          mustela           frenata
## 281       carnivora      mustelidae          mustela           erminea
## 282       carnivora      mustelidae          mustela       eversmannii
## 283       carnivora      mustelidae          mustela          putorius
## 284       carnivora      mustelidae          mustela           nivalis
## 285       carnivora      mustelidae      poecilogale         albinucha
## 286       carnivora      mustelidae        pteronura      brasiliensis
## 287       carnivora      mustelidae        spilogale           pygmaea
## 288       carnivora      mustelidae        spilogale          putorius
## 289       carnivora      mustelidae          taxidea             taxus
## 290       carnivora      mustelidae          vormela         peregusna
## 291       carnivora      odobenidae         odobenus          rosmarus
## 292       carnivora       otariidae    arctocephalus     galapagoensis
## 293       carnivora       otariidae    arctocephalus        tropicalis
## 294       carnivora       otariidae    arctocephalus          forsteri
## 295       carnivora       otariidae    arctocephalus           gazella
## 296       carnivora       otariidae    arctocephalus          pusillus
## 297       carnivora       otariidae    arctocephalus         australis
## 298       carnivora       otariidae       eumetopias           jubatus
## 299       carnivora       otariidae         neophoca           cinerea
## 300       carnivora       otariidae           otaria           byronia
## 301       carnivora       otariidae       phocarctos           hookeri
## 302       carnivora       otariidae         zalophus     californianus
## 303       carnivora      otariidae       callorhinus           ursinus
## 304       carnivora        phocidae       cystophora          cristata
## 305       carnivora        phocidae       erignathus          barbatus
## 306       carnivora        phocidae      halichoerus            grypus
## 307       carnivora        phocidae         hydrurga          leptonyx
## 308       carnivora        phocidae    leptonychotes         weddellii
## 309       carnivora        phocidae          lobodon     carcinophagus
## 310       carnivora        phocidae         mirounga           leonina
## 311       carnivora        phocidae         mirounga    angustirostris
## 312       carnivora        phocidae         monachus          monachus
## 313       carnivora        phocidae         monachus     schauinslandi
## 314       carnivora        phocidae      ommatophoca            rossii
## 315       carnivora        phocidae            phoca            largha
## 316       carnivora        phocidae            phoca           caspica
## 317       carnivora        phocidae            phoca           hispida
## 318       carnivora        phocidae            phoca      groenlandica
## 319       carnivora        phocidae            phoca          fasciata
## 320       carnivora        phocidae            phoca          vitulina
## 321       carnivora        phocidae            phoca          sibirica
## 322       carnivora     procyonidae      bassaricyon            gabbii
## 323       carnivora     procyonidae      bassariscus       sumichrasti
## 324       carnivora     procyonidae      bassariscus           astutus
## 325       carnivora     procyonidae            nasua             nasua
## 326       carnivora     procyonidae            nasua            narica
## 327       carnivora     procyonidae            potos            flavus
## 328       carnivora     procyonidae          procyon       cancrivorus
## 329       carnivora     procyonidae          procyon             lotor
## 330       carnivora         ursidae       ailuropoda       melanoleuca
## 331       carnivora         ursidae          ailurus           fulgens
## 332       carnivora         ursidae        helarctos         malayanus
## 333       carnivora         ursidae         melursus           ursinus
## 334       carnivora         ursidae       tremarctos           ornatus
## 335       carnivora         ursidae            ursus        thibetanus
## 336       carnivora         ursidae            ursus         maritimus
## 337       carnivora         ursidae            ursus            arctos
## 338       carnivora         ursidae            ursus        americanus
## 339       carnivora      viverridae        arctictis         binturong
## 340       carnivora      viverridae     arctogalidia        trivirgata
## 341       carnivora      viverridae       chrotogale           owstoni
## 342       carnivora      viverridae      civettictis           civetta
## 343       carnivora      viverridae     cryptoprocta             ferox
## 344       carnivora      viverridae         cynogale         bennettii
## 345       carnivora      viverridae         eupleres          goudotii
## 346       carnivora      viverridae            fossa           fossana
## 347       carnivora      viverridae          genetta          maculata
## 348       carnivora      viverridae          genetta           genetta
## 349       carnivora      viverridae          genetta           tigrina
## 350       carnivora      viverridae        hemigalus         derbyanus
## 351       carnivora      viverridae         nandinia          binotata
## 352       carnivora      viverridae           paguma           larvata
## 353       carnivora      viverridae      paradoxurus       zeylonensis
## 354       carnivora      viverridae      paradoxurus    hermaphroditus
## 355       carnivora      viverridae        prionodon        pardicolor
## 356       carnivora      viverridae        prionodon           linsang
## 357       carnivora      viverridae          viverra           zibetha
## 358       carnivora      viverridae      viverricula            indica
## 359         cetacea      balaenidae          balaena        mysticetus
## 360         cetacea      balaenidae        eubalaena         australis
## 361         cetacea      balaenidae        eubalaena         glacialis
## 362         cetacea balaenopteridae     balaenoptera          physalus
## 363         cetacea balaenopteridae     balaenoptera          musculus
## 364         cetacea balaenopteridae     balaenoptera          borealis
## 365         cetacea balaenopteridae     balaenoptera             edeni
## 366         cetacea balaenopteridae     balaenoptera     acutorostrata
## 367         cetacea balaenopteridae        megaptera      novaeangliae
## 368         cetacea     delphinidae  cephalorhynchus        heavisidii
## 369         cetacea     delphinidae  cephalorhynchus       commersonii
## 370         cetacea     delphinidae  cephalorhynchus           hectori
## 371         cetacea     delphinidae        delphinus           delphis
## 372         cetacea     delphinidae           feresa         attenuata
## 373         cetacea     delphinidae     globicephala             melas
## 374         cetacea     delphinidae     globicephala     macrorhynchus
## 375         cetacea     delphinidae          grampus           griseus
## 376         cetacea     delphinidae    lagenodelphis             hosei
## 377         cetacea     delphinidae   lagenorhynchus       albirostris
## 378         cetacea     delphinidae   lagenorhynchus       obliquidens
## 379         cetacea     delphinidae   lagenorhynchus            acutus
## 380         cetacea     delphinidae   lagenorhynchus          obscurus
## 381         cetacea     delphinidae         orcaella      brevirostris
## 382         cetacea     delphinidae          orcinus              orca
## 383         cetacea     delphinidae    peponocephala           electra
## 384         cetacea     delphinidae        pseudorca        crassidens
## 385         cetacea     delphinidae          sotalia       fluviatilis
## 386         cetacea     delphinidae         stenella      coeruleoalba
## 387         cetacea     delphinidae         stenella      longirostris
## 388         cetacea     delphinidae         stenella         attenuata
## 389         cetacea     delphinidae            steno       bredanensis
## 390         cetacea     delphinidae         tursiops         truncatus
## 391         cetacea  eschrichtiidae     eschrichtius          robustus
## 392         cetacea    monodontidae   delphinapterus            leucas
## 393         cetacea    monodontidae          monodon         monoceros
## 394         cetacea   neobalaenidae          caperea         marginata
## 395         cetacea     phocoenidae      neophocaena      phocaenoides
## 396         cetacea     phocoenidae         phocoena             sinus
## 397         cetacea     phocoenidae         phocoena          phocoena
## 398         cetacea     phocoenidae     phocoenoides             dalli
## 399         cetacea    physeteridae            kogia             simus
## 400         cetacea    physeteridae            kogia         breviceps
## 401         cetacea    physeteridae         physeter           catodon
## 402         cetacea   platanistidae             inia       geoffrensis
## 403         cetacea   platanistidae          lipotes        vexillifer
## 404         cetacea   platanistidae       platanista             minor
## 405         cetacea   platanistidae       platanista         gangetica
## 406         cetacea   platanistidae       pontoporia       blainvillei
## 407         cetacea       ziphiidae        berardius           arnuxii
## 408         cetacea       ziphiidae        berardius           bairdii
## 409         cetacea       ziphiidae       hyperoodon        ampullatus
## 410         cetacea       ziphiidae       mesoplodon        carlhubbsi
## 411         cetacea       ziphiidae       mesoplodon      densirostris
## 412         cetacea       ziphiidae       mesoplodon            bidens
## 413         cetacea       ziphiidae          ziphius       cavirostris
## 414      dermoptera  cynocephalidae     cynocephalus        variegatus
## 415      dermoptera  cynocephalidae     cynocephalus            volans
## 416      hyracoidea     procaviidae      dendrohyrax          arboreus
## 417      hyracoidea     procaviidae      dendrohyrax          dorsalis
## 418      hyracoidea     procaviidae      heterohyrax            brucei
## 419      hyracoidea     procaviidae         procavia          capensis
## 420     insectivora chrysochloridae       amblysomus       hottentotus
## 421     insectivora chrysochloridae    chrysochloris        stuhlmanni
## 422     insectivora chrysochloridae    chrysochloris          asiatica
## 423     insectivora chrysochloridae     chrysospalax          villosus
## 424     insectivora chrysochloridae       eremitalpa            granti
## 425     insectivora     erinaceidae         atelerix           algirus
## 426     insectivora     erinaceidae         atelerix       albiventris
## 427     insectivora     erinaceidae         atelerix         frontalis
## 428     insectivora     erinaceidae      echinosorex           gymnura
## 429     insectivora     erinaceidae        erinaceus          concolor
## 430     insectivora     erinaceidae        erinaceus         europaeus
## 431     insectivora     erinaceidae      hemiechinus          micropus
## 432     insectivora     erinaceidae      hemiechinus         hypomelas
## 433     insectivora     erinaceidae      hemiechinus       aethiopicus
## 434     insectivora     erinaceidae      hemiechinus           auritus
## 435     insectivora     erinaceidae          hylomys           suillus
## 436     insectivora  solenodontidae        solenodon           cubanus
## 437     insectivora  solenodontidae        solenodon         paradoxus
## 438     insectivora       soricidae          blarina      carolinensis
## 439     insectivora       soricidae          blarina         hylophaga
## 440     insectivora       soricidae          blarina        brevicauda
## 441     insectivora       soricidae        crocidura        fuliginosa
## 442     insectivora       soricidae        crocidura             turba
## 443     insectivora       soricidae        crocidura       canariensis
## 444     insectivora       soricidae        crocidura       fuscomurina
## 445     insectivora       soricidae        crocidura         planiceps
## 446     insectivora       soricidae        crocidura           crossei
## 447     insectivora       soricidae        crocidura       mariquensis
## 448     insectivora       soricidae        crocidura            viaria
## 449     insectivora       soricidae        crocidura        flavescens
## 450     insectivora       soricidae        crocidura          leucodon
## 451     insectivora       soricidae        crocidura             hirta
## 452     insectivora       soricidae        crocidura           russula
## 453     insectivora       soricidae        crocidura        suaveolens
## 454     insectivora       soricidae        cryptotis             parva
## 455     insectivora       soricidae     diplomesodon        pulchellum
## 456     insectivora       soricidae         myosorex            varius
## 457     insectivora       soricidae         myosorex             cafer
## 458     insectivora       soricidae         myosorex             geata
## 459     insectivora       soricidae           neomys          anomalus
## 460     insectivora       soricidae           neomys           fodiens
## 461     insectivora       soricidae       notiosorex         crawfordi
## 462     insectivora       soricidae            sorex         mirabilis
## 463     insectivora       soricidae            sorex            dispar
## 464     insectivora       soricidae            sorex         pacificus
## 465     insectivora       soricidae            sorex           bairdii
## 466     insectivora       soricidae            sorex          bendirii
## 467     insectivora       soricidae            sorex         coronatus
## 468     insectivora       soricidae            sorex          merriami
## 469     insectivora       soricidae            sorex          cinereus
## 470     insectivora       soricidae            sorex          arcticus
## 471     insectivora       soricidae            sorex           ornatus
## 472     insectivora       soricidae            sorex              hoyi
## 473     insectivora       soricidae            sorex        monticolus
## 474     insectivora       soricidae            sorex       trowbridgii
## 475     insectivora       soricidae            sorex           minutus
## 476     insectivora       soricidae            sorex           haydeni
## 477     insectivora       soricidae            sorex           araneus
## 478     insectivora       soricidae            sorex      longirostris
## 479     insectivora       soricidae            sorex             nanus
## 480     insectivora       soricidae            sorex            fumeus
## 481     insectivora       soricidae            sorex           vagrans
## 482     insectivora       soricidae            sorex         palustris
## 483     insectivora       soricidae           suncus           murinus
## 484     insectivora       soricidae           suncus           varilla
## 485     insectivora       soricidae           suncus          etruscus
## 486     insectivora       soricidae       surdisorex             norae
## 487     insectivora       soricidae       surdisorex           polulus
## 488     insectivora       soricidae       sylvisorex            granti
## 489     insectivora        talpidae        condylura          cristata
## 490     insectivora        talpidae          desmana          moschata
## 491     insectivora        talpidae          galemys        pyrenaicus
## 492     insectivora        talpidae     neurotrichus           gibbsii
## 493     insectivora        talpidae      parascalops           breweri
## 494     insectivora        talpidae         scalopus         aquaticus
## 495     insectivora        talpidae         scapanus        townsendii
## 496     insectivora        talpidae         scapanus           orarius
## 497     insectivora        talpidae         scapanus         latimanus
## 498     insectivora        talpidae            talpa           altaica
## 499     insectivora        talpidae            talpa          europaea
## 500     insectivora        talpidae       urotrichus         talpoides
## 501     insectivora      tenrecidae         echinops          telfairi
## 502     insectivora      tenrecidae          geogale            aurita
## 503     insectivora      tenrecidae     hemicentetes      semispinosus
## 504     insectivora      tenrecidae        limnogale          mergulus
## 505     insectivora      tenrecidae        microgale           dobsoni
## 506     insectivora      tenrecidae        microgale          talazaci
## 507     insectivora      tenrecidae  micropotamogale          lamottei
## 508     insectivora      tenrecidae       potamogale             velox
## 509     insectivora      tenrecidae          setifer           setosus
## 510     insectivora      tenrecidae           tenrec         ecaudatus
## 511      lagomorpha       leporidae      brachylagus        idahoensis
## 512      lagomorpha       leporidae        bunolagus      monticularis
## 513      lagomorpha       leporidae       caprolagus          hispidus
## 514      lagomorpha       leporidae            lepus       nigricollis
## 515      lagomorpha       leporidae            lepus          callotis
## 516      lagomorpha       leporidae            lepus         insularis
## 517      lagomorpha       leporidae            lepus             tolai
## 518      lagomorpha       leporidae            lepus             othus
## 519      lagomorpha       leporidae            lepus          arcticus
## 520      lagomorpha       leporidae            lepus           timidus
## 521      lagomorpha       leporidae            lepus        americanus
## 522      lagomorpha       leporidae            lepus        townsendii
## 523      lagomorpha       leporidae            lepus          capensis
## 524      lagomorpha       leporidae            lepus            alleni
## 525      lagomorpha       leporidae            lepus      californicus
## 526      lagomorpha       leporidae            lepus         europaeus
## 527      lagomorpha       leporidae            lepus         saxatilis
## 528      lagomorpha       leporidae      oryctolagus         cuniculus
## 529      lagomorpha       leporidae         poelagus         marjorita
## 530      lagomorpha       leporidae       pronolagus         randensis
## 531      lagomorpha       leporidae       pronolagus    crassicaudatus
## 532      lagomorpha       leporidae       pronolagus         rupestris
## 533      lagomorpha       leporidae      romerolagus             diazi
## 534      lagomorpha       leporidae       sylvilagus      brasiliensis
## 535      lagomorpha      leporidae        sylvilagus         palustris
## 536      lagomorpha      leporidae        sylvilagus    transitionalis
## 537      lagomorpha      leporidae        sylvilagus         aquaticus
## 538      lagomorpha      leporidae        sylvilagus          bachmani
## 539      lagomorpha      leporidae        sylvilagus         nuttallii
## 540      lagomorpha      leporidae        sylvilagus        floridanus
## 541      lagomorpha      leporidae        sylvilagus         audubonii
## 542      lagomorpha     ochotonidae         ochotona          macrotis
## 543      lagomorpha     ochotonidae         ochotona         curzoniae
## 544      lagomorpha     ochotonidae         ochotona          collaris
## 545      lagomorpha     ochotonidae         ochotona            roylei
## 546      lagomorpha     ochotonidae         ochotona          dauurica
## 547      lagomorpha     ochotonidae         ochotona            alpina
## 548      lagomorpha     ochotonidae         ochotona          princeps
## 549      lagomorpha     ochotonidae         ochotona            rutila
## 550      lagomorpha     ochotonidae         ochotona           pallasi
## 551      lagomorpha     ochotonidae         ochotona           pusilla
## 552      lagomorpha     ochotonidae         ochotona         rufescens
## 553   macroscelidea macroscelididae     elephantulus         rupestris
## 554   macroscelidea macroscelididae     elephantulus            fuscus
## 555   macroscelidea macroscelididae     elephantulus            intufi
## 556   macroscelidea macroscelididae     elephantulus            myurus
## 557   macroscelidea macroscelididae     elephantulus            rozeti
## 558   macroscelidea macroscelididae     elephantulus         rufescens
## 559   macroscelidea macroscelididae     elephantulus    brachyrhynchus
## 560   macroscelidea macroscelididae    macroscelides      proboscideus
## 561   macroscelidea macroscelididae      petrodromus     tetradactylus
## 562   macroscelidea macroscelididae      rhynchocyon       chrysopygus
## 563  perissodactyla         equidae            equus            asinus
## 564  perissodactyla         equidae            equus             kiang
## 565  perissodactyla         equidae            equus            grevyi
## 566  perissodactyla         equidae            equus             zebra
## 567  perissodactyla         equidae            equus        burchellii
## 568  perissodactyla         equidae            equus          hemionus
## 569  perissodactyla  rhinocerotidae    ceratotherium             simum
## 570  perissodactyla  rhinocerotidae     dicerorhinus       sumatrensis
## 571  perissodactyla  rhinocerotidae          diceros          bicornis
## 572  perissodactyla  rhinocerotidae       rhinoceros         unicornis
## 573  perissodactyla  rhinocerotidae       rhinoceros         sondaicus
## 574  perissodactyla       tapiridae          tapirus         pinchaque
## 575  perissodactyla       tapiridae          tapirus        terrestris
## 576  perissodactyla       tapiridae          tapirus           indicus
## 577  perissodactyla       tapiridae          tapirus           bairdii
## 578       pholidota         manidae            manis          gigantea
## 579       pholidota         manidae            manis          javanica
## 580       pholidota         manidae            manis      pentadactyla
## 581       pholidota         manidae            manis         tricuspis
## 582       pholidota         manidae            manis     crassicaudata
## 583       pholidota         manidae            manis      tetradactyla
## 584       pholidota         manidae            manis        temminckii
## 585        primates  callitrichidae        callimico           goeldii
## 586        primates  callitrichidae       callithrix       humeralifer
## 587        primates  callitrichidae       callithrix         argentata
## 588        primates  callitrichidae       callithrix           pygmaea
## 589        primates  callitrichidae       callithrix       penicillata
## 590        primates  callitrichidae       callithrix         flaviceps
## 591        primates  callitrichidae       callithrix           jacchus
## 592        primates  callitrichidae   leontopithecus           rosalia
## 593        primates  callitrichidae         saguinus          leucopus
## 594        primates  callitrichidae         saguinus         imperator
## 595        primates  callitrichidae         saguinus           bicolor
## 596        primates  callitrichidae         saguinus       nigricollis
## 597        primates  callitrichidae         saguinus            mystax
## 598        primates  callitrichidae         saguinus         geoffroyi
## 599        primates  callitrichidae         saguinus       fuscicollis
## 600        primates  callitrichidae         saguinus           oedipus
## 601        primates  callitrichidae         saguinus          labiatus
## 602        primates  callitrichidae         saguinus             midas
## 603        primates         cebidae         alouatta             pigra
## 604        primates         cebidae         alouatta         seniculus
## 605        primates         cebidae         alouatta          palliata
## 606        primates         cebidae         alouatta            caraya
## 607        primates         cebidae            aotus       trivirgatus
## 608        primates         cebidae            aotus         lemurinus
## 609        primates         cebidae            aotus            azarai
## 610        primates         cebidae           ateles         belzebuth
## 611        primates         cebidae           ateles         geoffroyi
## 612        primates         cebidae           ateles          paniscus
## 613        primates         cebidae           ateles         fusciceps
## 614        primates         cebidae      brachyteles       arachnoides
## 615        primates         cebidae          cacajao            calvus
## 616        primates         cebidae       callicebus         torquatus
## 617        primates         cebidae       callicebus           cupreus
## 618        primates         cebidae       callicebus            moloch
## 619        primates         cebidae            cebus         olivaceus
## 620        primates         cebidae            cebus         capucinus
## 621        primates         cebidae            cebus            apella
## 622        primates         cebidae            cebus         albifrons
## 623        primates         cebidae       chiropotes         albinasus
## 624        primates         cebidae       chiropotes           satanas
## 625        primates         cebidae        lagothrix        lagotricha
## 626        primates         cebidae         pithecia          monachus
## 627        primates         cebidae         pithecia          pithecia
## 628        primates         cebidae          saimiri          oerstedi
## 629        primates         cebidae          saimiri          sciureus
## 630        primates cercopithecidae   allenopithecus      nigroviridis
## 631        primates cercopithecidae       cercocebus         galeritus
## 632        primates cercopithecidae       cercocebus         torquatus
## 633        primates cercopithecidae    cercopithecus             wolfi
## 634        primates cercopithecidae    cercopithecus           lhoesti
## 635        primates cercopithecidae    cercopithecus              mona
## 636        primates cercopithecidae    cercopithecus         nictitans
## 637        primates cercopithecidae    cercopithecus        erythrotis
## 638        primates cercopithecidae    cercopithecus            cephus
## 639        primates cercopithecidae    cercopithecus          pogonias
## 640        primates cercopithecidae    cercopithecus          ascanius
## 641        primates cercopithecidae    cercopithecus         campbelli
## 642        primates cercopithecidae    cercopithecus             mitis
## 643        primates cercopithecidae    cercopithecus           solatus
## 644        primates cercopithecidae    cercopithecus         neglectus
## 645        primates cercopithecidae    cercopithecus             diana
## 646        primates cercopithecidae      chlorocebus          aethiops
## 647        primates cercopithecidae          colobus        angolensis
## 648        primates cercopithecidae          colobus           satanas
## 649        primates cercopithecidae          colobus         polykomos
## 650        primates cercopithecidae          colobus           guereza
## 651        primates cercopithecidae     erythrocebus             patas
## 652        primates cercopithecidae       lophocebus          albigena
## 653        primates cercopithecidae           macaca         thibetana
## 654        primates cercopithecidae           macaca           fuscata
## 655        primates cercopithecidae           macaca             maura
## 656        primates cercopithecidae           macaca          sylvanus
## 657        primates cercopithecidae           macaca         arctoides
## 658        primates cercopithecidae           macaca             nigra
## 659        primates cercopithecidae           macaca            sinica
## 660        primates cercopithecidae           macaca           silenus
## 661        primates cercopithecidae           macaca           mulatta
## 662        primates cercopithecidae           macaca          cyclopis
## 663        primates cercopithecidae           macaca        nemestrina
## 664        primates cercopithecidae           macaca      fascicularis
## 665        primates cercopithecidae           macaca           radiata
## 666        primates cercopithecidae       mandrillus       leucophaeus
## 667        primates cercopithecidae       mandrillus            sphinx
## 668        primates cercopithecidae      miopithecus          talapoin
## 669        primates cercopithecidae          nasalis          larvatus
## 670        primates cercopithecidae            papio         hamadryas
## 671        primates cercopithecidae        presbytis            comata
## 672        primates cercopithecidae        presbytis         rubicunda
## 673        primates cercopithecidae        presbytis        potenziani
## 674        primates cercopithecidae        presbytis        melalophos
## 675        primates cercopithecidae       procolobus             verus
## 676        primates cercopithecidae       procolobus            badius
## 677        primates cercopithecidae        pygathrix             bieti
## 678        primates cercopithecidae        pygathrix           nemaeus
## 679        primates cercopithecidae    semnopithecus          entellus
## 680        primates cercopithecidae    theropithecus            gelada
## 681        primates cercopithecidae   trachypithecus         francoisi
## 682        primates cercopithecidae   trachypithecus              geei
## 683        primates cercopithecidae   trachypithecus            johnii
## 684        primates cercopithecidae   trachypithecus         cristatus
## 685        primates cercopithecidae   trachypithecus           vetulus
## 686        primates cercopithecidae   trachypithecus          obscurus
## 687        primates cercopithecidae   trachypithecus           phayrei
## 688        primates  cheirogaleidae     cheirogaleus             major
## 689        primates  cheirogaleidae     cheirogaleus            medius
## 690        primates  cheirogaleidae       microcebus             rufus
## 691        primates  cheirogaleidae       microcebus         coquereli
## 692        primates  cheirogaleidae       microcebus           murinus
## 693        primates  cheirogaleidae           phaner          furcifer
## 694        primates  daubentoniidae      daubentonia  madagascariensis
## 695        primates     galagonidae         euoticus       elegantulus
## 696        primates     galagonidae           galago            alleni
## 697        primates     galagonidae           galago            moholi
## 698        primates     galagonidae           galago      senegalensis
## 699        primates     galagonidae       galagoides          demidoff
## 700        primates     galagonidae       galagoides      zanzibaricus
## 701        primates     galagonidae         otolemur    crassicaudatus
## 702        primates     galagonidae         otolemur         garnettii
## 703        primates       hominidae          gorilla           gorilla
## 704        primates       hominidae              pan       troglodytes
## 705        primates       hominidae              pan          paniscus
## 706        primates       hominidae            pongo          pygmaeus
## 707        primates     hylobatidae        hylobates            moloch
## 708        primates     hylobatidae        hylobates           klossii
## 709        primates     hylobatidae        hylobates           hoolock
## 710        primates     hylobatidae        hylobates          concolor
## 711        primates     hylobatidae        hylobates            agilis
## 712        primates     hylobatidae        hylobates       syndactylus
## 713        primates     hylobatidae        hylobates               lar
## 714        primates        indridae            avahi           laniger
## 715        primates        indridae            indri             indri
## 716        primates        indridae      propithecus       tattersalli
## 717        primates        indridae      propithecus           diadema
## 718        primates        indridae      propithecus         verreauxi
## 719        primates       lemuridae          eulemur       rubriventer
## 720        primates       lemuridae          eulemur            macaco
## 721        primates       lemuridae          eulemur            mongoz
## 722        primates       lemuridae          eulemur         coronatus
## 723        primates       lemuridae          eulemur            fulvus
## 724        primates       lemuridae        hapalemur            aureus
## 725        primates       lemuridae        hapalemur           griseus
## 726        primates       lemuridae            lemur             catta
## 727        primates       lemuridae          varecia         variegata
## 728        primates         loridae       arctocebus      calabarensis
## 729        primates         loridae            loris       tardigradus
## 730        primates         loridae       nycticebus          pygmaeus
## 731        primates         loridae       nycticebus           coucang
## 732        primates         loridae     perodicticus             potto
## 733        primates   megaladapidae        lepilemur          leucopus
## 734        primates   megaladapidae        lepilemur      ruficaudatus
## 735        primates   megaladapidae        lepilemur        mustelinus
## 736        primates       tarsiidae          tarsius           pumilis
## 737        primates       tarsiidae          tarsius            dianae
## 738        primates       tarsiidae          tarsius          syrichta
## 739        primates       tarsiidae          tarsius          bancanus
## 740        primates       tarsiidae          tarsius          spectrum
## 741     proboscidea    elephantidae          elephas           maximus
## 742     proboscidea    elephantidae        loxodonta          africana
## 743        rodentia     abrocomidae         abrocoma           cinerea
## 744        rodentia     abrocomidae         abrocoma          bennetti
## 745        rodentia       agoutidae           agouti              paca
## 746        rodentia    anomaluridae       anomalurus         beecrofti
## 747        rodentia    anomaluridae       anomalurus         derbianus
## 748        rodentia    anomaluridae       anomalurus             pelii
## 749        rodentia    anomaluridae          idiurus           zenkeri
## 750        rodentia    aplodontidae       aplodontia              rufa
## 751        rodentia    bathyergidae       bathyergus           suillus
## 752        rodentia    bathyergidae       bathyergus           janetta
## 753        rodentia    bathyergidae        cryptomys        damarensis
## 754        rodentia    bathyergidae        cryptomys       hottentotus
## 755        rodentia    bathyergidae        cryptomys  ochraceocinereus
## 756        rodentia    bathyergidae        georychus          capensis
## 757        rodentia    bathyergidae     heliophobius  argenteocinereus
## 758        rodentia    bathyergidae   heterocephalus            glaber
## 759        rodentia     capromyidae         capromys         pilorides
## 760        rodentia     capromyidae      geocapromys         ingrahami
## 761        rodentia     capromyidae      geocapromys           brownii
## 762        rodentia     capromyidae        mysateles         melanurus
## 763        rodentia     capromyidae        mysateles       prehensilis
## 764        rodentia     capromyidae     plagiodontia            aedium
## 765        rodentia      castoridae           castor             fiber
## 766        rodentia      castoridae           castor        canadensis
## 767        rodentia        caviidae            cavia          tschudii
## 768        rodentia        caviidae            cavia            aperea
## 769        rodentia        caviidae            cavia         porcellus
## 770        rodentia        caviidae       dolichotis        salinicola
## 771        rodentia        caviidae       dolichotis         patagonum
## 772        rodentia        caviidae            galea            spixii
## 773        rodentia        caviidae            galea       musteloides
## 774        rodentia        caviidae          kerodon         rupestris
## 775        rodentia        caviidae       microcavia         australis
## 776        rodentia   chinchillidae       chinchilla      brevicaudata
## 777        rodentia   chinchillidae       chinchilla          lanigera
## 778        rodentia   chinchillidae         lagidium          viscacia
## 779        rodentia   chinchillidae         lagidium          peruanum
## 780        rodentia   chinchillidae       lagostomus           maximus
## 781        rodentia ctenodactylidae    ctenodactylus              vali
## 782        rodentia ctenodactylidae    ctenodactylus             gundi
## 783        rodentia ctenodactylidae      massoutiera             mzabi
## 784        rodentia     ctenomyidae         ctenomys         torquatus
## 785        rodentia     ctenomyidae         ctenomys             haigi
## 786        rodentia     ctenomyidae         ctenomys          peruanus
## 787        rodentia     ctenomyidae         ctenomys           talarum
## 788        rodentia     ctenomyidae         ctenomys            opimus
## 789        rodentia   dasyproctidae       dasyprocta          punctata
## 790        rodentia   dasyproctidae       dasyprocta          cristata
## 791        rodentia   dasyproctidae       dasyprocta          leporina
## 792        rodentia   dasyproctidae        myoprocta           acouchy
## 793        rodentia      dinomyidae          dinomys         branickii
## 794        rodentia       dipodidae        allactaga      tetradactyla
## 795        rodentia       dipodidae        allactaga        euphratica
## 796        rodentia       dipodidae        allactaga          sibirica
## 797        rodentia       dipodidae        allactaga            elater
## 798        rodentia       dipodidae            dipus           sagitta
## 799        rodentia       dipodidae       eremodipus     lichtensteini
## 800        rodentia       dipodidae          jaculus        orientalis
## 801        rodentia       dipodidae          jaculus           jaculus
## 802        rodentia       dipodidae          jaculus       turcmenicus
## 803        rodentia       dipodidae      napaeozapus          insignis
## 804        rodentia       dipodidae       pygeretmus         platyurus
## 805        rodentia       dipodidae       pygeretmus           pumilio
## 806        rodentia       dipodidae      salpingotus       crassicauda
## 807        rodentia       dipodidae          sicista            napaea
## 808        rodentia       dipodidae          sicista          betulina
## 809        rodentia       dipodidae       stylodipus             telum
## 810        rodentia       dipodidae            zapus          princeps
## 811        rodentia       dipodidae            zapus        trinotatus
## 812        rodentia       dipodidae            zapus         hudsonius
## 813        rodentia      echimyidae          echimys         chrysurus
## 814        rodentia      echimyidae         hoplomys          gymnurus
## 815        rodentia      echimyidae    kannabateomys         amblyonyx
## 816        rodentia      echimyidae         makalata            armata
## 817        rodentia      echimyidae       proechimys       cayennensis
## 818        rodentia      echimyidae       proechimys      semispinosus
## 819        rodentia      echimyidae       proechimys           guairae
## 820        rodentia      echimyidae       thrichomys        apereoides
## 821        rodentia  erethizontidae          coendou       prehensilis
## 822        rodentia  erethizontidae        erethizon          dorsatum
## 823        rodentia  erethizontidae       sphiggurus          villosus
## 824        rodentia  erethizontidae       sphiggurus         mexicanus
## 825        rodentia       geomyidae           geomys         bursarius
## 826        rodentia       geomyidae           geomys           pinetis
## 827        rodentia       geomyidae           geomys        personatus
## 828        rodentia       geomyidae           geomys         arenarius
## 829        rodentia       geomyidae      orthogeomys          hispidus
## 830        rodentia       geomyidae      orthogeomys          cherriei
## 831        rodentia       geomyidae      pappogeomys         castanops
## 832        rodentia       geomyidae         thomomys           clusius
## 833        rodentia       geomyidae         thomomys         monticola
## 834        rodentia       geomyidae         thomomys          umbrinus
## 835        rodentia       geomyidae         thomomys         talpoides
## 836        rodentia       geomyidae         thomomys        bulbivorus
## 837        rodentia       geomyidae         thomomys            bottae
## 838        rodentia       geomyidae         thomomys        townsendii
## 839        rodentia    heteromyidae      chaetodipus           nelsoni
## 840        rodentia    heteromyidae      chaetodipus      penicillatus
## 841        rodentia    heteromyidae      chaetodipus      californicus
## 842        rodentia    heteromyidae      chaetodipus       intermedius
## 843        rodentia    heteromyidae      chaetodipus            fallax
## 844        rodentia    heteromyidae      chaetodipus          formosus
## 845        rodentia    heteromyidae      chaetodipus          hispidus
## 846        rodentia    heteromyidae        dipodomys      elephantinus
## 847        rodentia    heteromyidae        dipodomys       nitratoides
## 848        rodentia    heteromyidae        dipodomys      panamintinus
## 849        rodentia    heteromyidae        dipodomys           microps
## 850        rodentia    heteromyidae        dipodomys            agilis
## 851        rodentia    heteromyidae        dipodomys         stephensi
## 852        rodentia    heteromyidae        dipodomys          venustus
## 853        rodentia    heteromyidae        dipodomys          merriami
## 854        rodentia    heteromyidae        dipodomys       spectabilis
## 855        rodentia    heteromyidae        dipodomys      californicus
## 856        rodentia    heteromyidae        dipodomys            ingens
## 857        rodentia    heteromyidae        dipodomys         heermanni
## 858        rodentia    heteromyidae        dipodomys             ordii
## 859        rodentia    heteromyidae        dipodomys           deserti
## 860        rodentia    heteromyidae        heteromys          anomalus
## 861        rodentia    heteromyidae        heteromys         oresterus
## 862        rodentia    heteromyidae        heteromys          goldmani
## 863        rodentia    heteromyidae        heteromys    desmarestianus
## 864        rodentia    heteromyidae           liomys            pictus
## 865        rodentia    heteromyidae           liomys         irroratus
## 866        rodentia    heteromyidae           liomys         adspersus
## 867        rodentia    heteromyidae           liomys           salvini
## 868        rodentia    heteromyidae    microdipodops          pallidus
## 869        rodentia    heteromyidae    microdipodops      megacephalus
## 870        rodentia    heteromyidae      perognathus         fasciatus
## 871        rodentia    heteromyidae      perognathus      longimembris
## 872        rodentia    heteromyidae      perognathus            flavus
## 873        rodentia    heteromyidae      perognathus        flavescens
## 874        rodentia    heteromyidae      perognathus            parvus
## 875        rodentia    heteromyidae      perognathus          merriami
## 876        rodentia    heteromyidae      perognathus         inornatus
## 877        rodentia  hydrochaeridae     hydrochaeris      hydrochaeris
## 878        rodentia     hystricidae        atherurus         macrourus
## 879        rodentia     hystricidae        atherurus         africanus
## 880        rodentia     hystricidae          hystrix            pumila
## 881        rodentia     hystricidae          hystrix         brachyura
## 882        rodentia     hystricidae          hystrix            indica
## 883        rodentia     hystricidae          hystrix          cristata
## 884        rodentia     hystricidae          hystrix  africaeaustralis
## 885        rodentia         muridae           acomys         percivali
## 886        rodentia         muridae           acomys          russatus
## 887        rodentia         muridae           acomys           wilsoni
## 888        rodentia         muridae           acomys         cahirinus
## 889        rodentia         muridae         aethomys            hindei
## 890        rodentia         muridae         aethomys           kaiseri
## 891        rodentia         muridae         aethomys      chrysophilus
## 892        rodentia         muridae         aethomys       namaquensis
## 893        rodentia         muridae           akodon            varius
## 894        rodentia         muridae           akodon            cursor
## 895        rodentia         muridae           akodon       boliviensis
## 896        rodentia         muridae           akodon           molinae
## 897        rodentia         muridae           akodon           dolores
## 898        rodentia         muridae           akodon            azarae
## 899        rodentia         muridae           akodon        longipilis
## 900        rodentia         muridae           akodon         olivaceus
## 901        rodentia         muridae           akodon            urichi
## 902        rodentia         muridae   allocricetulus        eversmanni
## 903        rodentia         muridae         alticola            roylei
## 904        rodentia         muridae         alticola         strelzowi
## 905        rodentia         muridae         alticola        argentatus
## 906        rodentia         muridae         apodemus         argenteus
## 907        rodentia         muridae         apodemus        peninsulae
## 908        rodentia         muridae         apodemus         uralensis
## 909        rodentia         muridae         apodemus        mystacinus
## 910        rodentia         muridae         apodemus       flavicollis
## 911        rodentia         muridae         apodemus          agrarius
## 912        rodentia         muridae         apodemus        sylvaticus
## 913        rodentia         muridae        arborimus              pomo
## 914        rodentia         muridae        arborimus       longicaudus
## 915        rodentia         muridae        arborimus           albipes
## 916        rodentia         muridae      arvicanthis         niloticus
## 917        rodentia         muridae         arvicola           sapidus
## 918        rodentia         muridae         arvicola        terrestris
## 919        rodentia         muridae       auliscomys          micropus
## 920        rodentia         muridae          baiomys           taylori
## 921        rodentia         muridae        bandicota            indica
## 922        rodentia         muridae        bandicota       bengalensis
## 923        rodentia         muridae           beamys            hindei
## 924        rodentia         muridae          bolomys          lasiurus
## 925        rodentia         muridae          calomys           lepidus
## 926        rodentia         muridae          calomys            laucha
## 927        rodentia         muridae          calomys       hummelincki
## 928        rodentia         muridae          calomys          callosus
## 929        rodentia         muridae          calomys        musculinus
## 930        rodentia         muridae       calomyscus         bailwardi
## 931        rodentia         muridae       calomyscus            mystax
## 932        rodentia         muridae         cannomys            badius
## 933        rodentia         muridae        chionomys           nivalis
## 934        rodentia         muridae        chionomys               gud
## 935        rodentia         muridae     chiropodomys         gliroides
## 936        rodentia         muridae       chiruromys             vates
## 937        rodentia         muridae    clethrionomys           gapperi
## 938        rodentia         muridae    clethrionomys         rufocanus
## 939        rodentia         muridae    clethrionomys         glareolus
## 940        rodentia         muridae    clethrionomys      californicus
## 941        rodentia         muridae    clethrionomys           rutilus
## 942        rodentia         muridae          colomys          goslingi
## 943        rodentia         muridae        conilurus      penicillatus
## 944        rodentia         muridae        cremnomys         blanfordi
## 945        rodentia         muridae        cremnomys         cutchicus
## 946        rodentia         muridae       cricetomys         gambianus
## 947        rodentia         muridae       cricetulus        barabensis
## 948        rodentia         muridae       cricetulus       migratorius
## 949        rodentia         muridae         cricetus          cricetus
## 950        rodentia         muridae          dasymys          incomtus
## 951        rodentia         muridae        dendromus         messorius
## 952        rodentia         muridae        dendromus       kahuziensis
## 953        rodentia         muridae        dendromus        mystacalis
## 954        rodentia         muridae        dendromus         mesomelas
## 955        rodentia         muridae        dendromus         melanotis
## 956        rodentia         muridae         dephomys             defua
## 957        rodentia         muridae   desmodilliscus           braueri
## 958        rodentia         muridae      desmodillus       auricularis
## 959        rodentia         muridae      dicrostonyx      unalascensis
## 960        rodentia         muridae      dicrostonyx       richardsoni
## 961        rodentia         muridae      dicrostonyx         hudsonius
## 962        rodentia         muridae      dicrostonyx         torquatus
## 963        rodentia         muridae      dicrostonyx     groenlandicus
## 964        rodentia         muridae        dinaromys         bogdanovi
## 965        rodentia         muridae     eligmodontia             typus
## 966        rodentia         muridae         ellobius     fuscocapillus
## 967        rodentia         muridae         ellobius          talpinus
## 968        rodentia         muridae        eolagurus            luteus
## 969        rodentia         muridae      gerbillurus           setzeri
## 970        rodentia         muridae      gerbillurus             paeba
## 971        rodentia         muridae      gerbillurus           tytonis
## 972        rodentia         muridae        gerbillus          gleadowi
## 973        rodentia         muridae        gerbillus         andersoni
## 974        rodentia         muridae        gerbillus           henleyi
## 975        rodentia         muridae        gerbillus         gerbillus
## 976        rodentia         muridae        gerbillus          dasyurus
## 977        rodentia         muridae        gerbillus       perpallidus
## 978        rodentia         muridae        gerbillus            simoni
## 979        rodentia         muridae        gerbillus         cheesmani
## 980        rodentia         muridae        gerbillus             nanus
## 981        rodentia         muridae        gerbillus         pyramidum
## 982        rodentia         muridae          golunda           ellioti
## 983        rodentia         muridae        grammomys          rutilans
## 984        rodentia         muridae        grammomys        dolichurus
## 985        rodentia         muridae        grammomys           cometes
## 986        rodentia         muridae          graomys      griseoflavus
## 987        rodentia         muridae          hodomys            alleni
## 988        rodentia         muridae       holochilus      brasiliensis
## 989        rodentia         muridae          hybomys       univittatus
## 990        rodentia         muridae         hydromys      chrysogaster
## 991        rodentia         muridae       hylomyscus            alleni
## 992        rodentia         muridae       hylomyscus            stella
## 993        rodentia         muridae           hyomys           goliath
## 994        rodentia         muridae      hyperacrius          fertilis
## 995        rodentia         muridae      hyperacrius            wynnei
## 996        rodentia         muridae       hypogeomys          antimena
## 997        rodentia         muridae          lagurus           lagurus
## 998        rodentia         muridae     lasiopodomys          brandtii
## 999        rodentia         muridae        leggadina     lakedownensis
## 1000       rodentia         muridae        leggadina          forresti
## 1001       rodentia         muridae        lemmiscus          curtatus
## 1002       rodentia         muridae           lemmus            lemmus
## 1003       rodentia         muridae           lemmus         sibiricus
## 1004       rodentia         muridae      lemniscomys          griselda
## 1005       rodentia         muridae      lemniscomys          striatus
## 1006       rodentia         muridae       leporillus          conditor
## 1007       rodentia         muridae        lophiomys           imhausi
## 1008       rodentia         muridae       lophuromys          woosnami
## 1009       rodentia         muridae       lophuromys       luteogaster
## 1010       rodentia         muridae       lophuromys    flavopunctatus
## 1011       rodentia         muridae       lophuromys          sikapusi
## 1012       rodentia         muridae    macrotarsomys          bastardi
## 1013       rodentia         muridae      malacothrix            typica
## 1014       rodentia         muridae         mastomys     erythroleucus
## 1015       rodentia         muridae         mastomys        natalensis
## 1016       rodentia         muridae     megadontomys           thomasi
## 1017       rodentia         muridae          melomys           levipes
## 1018       rodentia         muridae          melomys             rubex
## 1019       rodentia         muridae          melomys         rufescens
## 1020       rodentia         muridae          melomys         moncktoni
## 1021       rodentia         muridae          melomys       leucogaster
## 1022       rodentia         muridae          melomys          capensis
## 1023       rodentia         muridae          melomys           burtoni
## 1024       rodentia         muridae          melomys        cervinipes
## 1025       rodentia         muridae         meriones          persicus
## 1026       rodentia         muridae         meriones         tristrami
## 1027       rodentia         muridae         meriones           libycus
## 1028       rodentia         muridae         meriones             shawi
## 1029       rodentia         muridae         meriones       vinogradovi
## 1030       rodentia         muridae         meriones           crassus
## 1031       rodentia         muridae         meriones      tamariscinus
## 1032       rodentia         muridae         meriones        meridianus
## 1033       rodentia         muridae         meriones         hurrianae
## 1034       rodentia         muridae         meriones      unguiculatus
## 1035       rodentia         muridae     mesembriomys          macrurus
## 1036       rodentia         muridae     mesembriomys           gouldii
## 1037       rodentia         muridae     mesocricetus           brandti
## 1038       rodentia         muridae     mesocricetus            raddei
## 1039       rodentia         muridae     mesocricetus           auratus
## 1040       rodentia         muridae         micromys           minutus
## 1041       rodentia         muridae         microtus       lusitanicus
## 1042       rodentia         muridae         microtus     transcaspicus
## 1043       rodentia         muridae         microtus  duodecimcostatus
## 1044       rodentia         muridae         microtus       abbreviatus
## 1045       rodentia         muridae         microtus         mexicanus
## 1046       rodentia         muridae         microtus         juldaschi
## 1047       rodentia         muridae         microtus           breweri
## 1048       rodentia         muridae         microtus        montebelli
## 1049       rodentia         muridae         microtus        townsendii
## 1050       rodentia         muridae         microtus            miurus
## 1051       rodentia         muridae         microtus       longicaudus
## 1052       rodentia         muridae         microtus     chrotorrhinus
## 1053       rodentia         muridae         microtus        canicaudus
## 1054       rodentia         muridae         microtus       richardsoni
## 1055       rodentia         muridae         microtus     xanthognathus
## 1056       rodentia         muridae         microtus    pennsylvanicus
## 1057       rodentia         muridae         microtus         pinetorum
## 1058       rodentia         muridae         microtus          gregalis
## 1059       rodentia         muridae         microtus         guentheri
## 1060       rodentia         muridae         microtus         oeconomus
## 1061       rodentia         muridae         microtus          agrestis
## 1062       rodentia         muridae         microtus      subterraneus
## 1063       rodentia         muridae         microtus       ochrogaster
## 1064       rodentia         muridae         microtus           oregoni
## 1065       rodentia         muridae         microtus          montanus
## 1066       rodentia         muridae         microtus      californicus
## 1067       rodentia         muridae         microtus          socialis
## 1068       rodentia         muridae         microtus           arvalis
## 1069       rodentia         muridae         microtus            fortis
## 1070       rodentia         muridae        millardia           meltada
## 1071       rodentia         muridae              mus            caroli
## 1072       rodentia         muridae              mus           spretus
## 1073       rodentia         muridae              mus            mayori
## 1074       rodentia         muridae              mus        cervicolor
## 1075       rodentia         muridae              mus       musculoides
## 1076       rodentia         muridae              mus        platythrix
## 1077       rodentia         muridae              mus           booduga
## 1078       rodentia         muridae              mus            triton
## 1079       rodentia         muridae              mus        minutoides
## 1080       rodentia         muridae              mus          musculus
## 1081       rodentia         muridae           myomys           fumatus
## 1082       rodentia         muridae           myomys            derooi
## 1083       rodentia         muridae           myomys           daltoni
## 1084       rodentia         muridae           myopus      schisticolor
## 1085       rodentia         muridae        myospalax         myospalax
## 1086       rodentia         muridae        mystromys      albicaudatus
## 1087       rodentia         muridae      nannospalax          leucodon
## 1088       rodentia         muridae         neacomys          tenuipes
## 1089       rodentia         muridae         nectomys         squamipes
## 1090       rodentia         muridae         nectomys          parvipes
## 1091       rodentia         muridae         neofiber            alleni
## 1092       rodentia         muridae          neotoma             devia
## 1093       rodentia         muridae          neotoma          fuscipes
## 1094       rodentia         muridae          neotoma         stephensi
## 1095       rodentia         muridae          neotoma           cinerea
## 1096       rodentia         muridae          neotoma            phenax
## 1097       rodentia         muridae          neotoma          mexicana
## 1098       rodentia         muridae          neotoma          albigula
## 1099       rodentia         muridae          neotoma            lepida
## 1100       rodentia         muridae          neotoma          micropus
## 1101       rodentia         muridae          neotoma         floridana
## 1102       rodentia         muridae       neotomodon           alstoni
## 1103       rodentia         muridae          nesokia            indica
## 1104       rodentia         muridae       niviventer        niviventer
## 1105       rodentia         muridae          notomys          cervinus
## 1106       rodentia         muridae          notomys            fuscus
## 1107       rodentia         muridae          notomys            aquilo
## 1108       rodentia         muridae          notomys        mitchellii
## 1109       rodentia         muridae          notomys            alexis
## 1110       rodentia         muridae         nyctomys       sumichrasti
## 1111       rodentia         muridae       ochrotomys          nuttalli
## 1112       rodentia         muridae          oecomys          concolor
## 1113       rodentia         muridae          oenomys       hypoxanthus
## 1114       rodentia         muridae     oligoryzomys          nigripes
## 1115       rodentia         muridae     oligoryzomys        flavescens
## 1116       rodentia         muridae     oligoryzomys     longicaudatus
## 1117       rodentia         muridae          ondatra        zibethicus
## 1118       rodentia         muridae        onychomys       leucogaster
## 1119       rodentia         muridae        onychomys          torridus
## 1120       rodentia         muridae         oryzomys         subflavus
## 1121       rodentia         muridae         oryzomys         palustris
## 1122       rodentia         muridae         oryzomys            capito
## 1123       rodentia         muridae           otomys         sloggetti
## 1124       rodentia         muridae           otomys             typus
## 1125       rodentia         muridae           otomys             denti
## 1126       rodentia         muridae           otomys       angoniensis
## 1127       rodentia         muridae           otomys         irroratus
## 1128       rodentia         muridae       ototylomys         phyllotis
## 1129       rodentia         muridae      oxymycterus             rufus
## 1130       rodentia         muridae      pachyuromys           duprasi
## 1131       rodentia         muridae        parotomys          brantsii
## 1132       rodentia         muridae          pelomys             minor
## 1133       rodentia         muridae          pelomys            fallax
## 1134       rodentia         muridae       peromyscus           hooperi
## 1135       rodentia         muridae       peromyscus          megalops
## 1136       rodentia         muridae       peromyscus      melanocarpus
## 1137       rodentia         muridae       peromyscus         mexicanus
## 1138       rodentia         muridae       peromyscus   interparietalis
## 1139       rodentia         muridae       peromyscus         perfulvus
## 1140       rodentia         muridae       peromyscus       melanophrys
## 1141       rodentia         muridae       peromyscus        pectoralis
## 1142       rodentia         muridae       peromyscus            gratus
## 1143       rodentia         muridae       peromyscus            boylii
## 1144       rodentia         muridae       peromyscus       yucatanicus
## 1145       rodentia         muridae       peromyscus        gossypinus
## 1146       rodentia         muridae       peromyscus        difficilis
## 1147       rodentia         muridae       peromyscus         attwateri
## 1148       rodentia         muridae       peromyscus           nasutus
## 1149       rodentia         muridae       peromyscus         sitkensis
## 1150       rodentia         muridae       peromyscus          crinitus
## 1151       rodentia         muridae       peromyscus        polionotus
## 1152       rodentia         muridae       peromyscus             truei
## 1153       rodentia         muridae       peromyscus       maniculatus
## 1154       rodentia         muridae       peromyscus          eremicus
## 1155       rodentia         muridae       peromyscus          leucopus
## 1156       rodentia         muridae       peromyscus      californicus
## 1157       rodentia         muridae       peromyscus         melanotis
## 1158       rodentia         muridae      petromyscus          collinus
## 1159       rodentia         muridae       phenacomys            ungava
## 1160       rodentia         muridae       phenacomys       intermedius
## 1161       rodentia         muridae         phodopus         campbelli
## 1162       rodentia         muridae         phodopus          sungorus
## 1163       rodentia         muridae         phodopus       roborovskii
## 1164       rodentia         muridae        phyllotis           darwini
## 1165       rodentia         muridae       pithecheir            parvus
## 1166       rodentia         muridae          podomys        floridanus
## 1167       rodentia         muridae    pogonomelomys             sevia
## 1168       rodentia         muridae        pogonomys        sylvestris
## 1169       rodentia         muridae        pogonomys            loriae
## 1170       rodentia         muridae        pogonomys         macrourus
## 1171       rodentia         muridae          praomys          jacksoni
## 1172       rodentia         muridae          praomys             morio
## 1173       rodentia         muridae          praomys         tullbergi
## 1174       rodentia         muridae          praomys        delectorum
## 1175       rodentia         muridae        psammomys            obesus
## 1176       rodentia         muridae        pseudomys            fuscus
## 1177       rodentia         muridae        pseudomys            oralis
## 1178       rodentia         muridae        pseudomys hermannsburgensis
## 1179       rodentia         muridae        pseudomys      pilligaensis
## 1180       rodentia         muridae        pseudomys       delicatulus
## 1181       rodentia         muridae        pseudomys   gracilicaudatus
## 1182       rodentia         muridae        pseudomys          desertor
## 1183       rodentia         muridae        pseudomys             nanus
## 1184       rodentia         muridae        pseudomys         australis
## 1185       rodentia         muridae        pseudomys            fieldi
## 1186       rodentia         muridae        pseudomys         praeconis
## 1187       rodentia         muridae        pseudomys       shortridgei
## 1188       rodentia         muridae        pseudomys      albocinereus
## 1189       rodentia         muridae        pseudomys          higginsi
## 1190       rodentia         muridae        pseudomys            fumeus
## 1191       rodentia         muridae        pseudomys       apodemoides
## 1192       rodentia         muridae        pseudomys   novaehollandiae
## 1193       rodentia         muridae           rattus          colletti
## 1194       rodentia         muridae           rattus     villosissimus
## 1195       rodentia         muridae           rattus        tiomanicus
## 1196       rodentia         muridae           rattus          leucopus
## 1197       rodentia         muridae           rattus            steini
## 1198       rodentia         muridae           rattus           praetor
## 1199       rodentia         muridae           rattus           tunneyi
## 1200       rodentia         muridae           rattus          sordidus
## 1201       rodentia         muridae           rattus     argentiventer
## 1202       rodentia         muridae           rattus         lutreolus
## 1203       rodentia         muridae           rattus          fuscipes
## 1204       rodentia         muridae           rattus           exulans
## 1205       rodentia         muridae           rattus        norvegicus
## 1206       rodentia         muridae           rattus            rattus
## 1207       rodentia         muridae       reithrodon           auritus
## 1208       rodentia         muridae  reithrodontomys           humulis
## 1209       rodentia         muridae  reithrodontomys         megalotis
## 1210       rodentia         muridae  reithrodontomys          montanus
## 1211       rodentia         muridae  reithrodontomys       raviventris
## 1212       rodentia         muridae  reithrodontomys        fulvescens
## 1213       rodentia         muridae        rhabdomys           pumilio
## 1214       rodentia         muridae       rhipidomys         latimanus
## 1215       rodentia         muridae       rhipidomys        mastacalis
## 1216       rodentia         muridae         rhizomys       sumatrensis
## 1217       rodentia         muridae         rhizomys         pruinosus
## 1218       rodentia         muridae        rhombomys            opimus
## 1219       rodentia         muridae      saccostomus        campestris
## 1220       rodentia         muridae       scotinomys           teguina
## 1221       rodentia         muridae       scotinomys      xerampelinus
## 1222       rodentia         muridae       sekeetamys           calurus
## 1223       rodentia         muridae         sigmodon          leucotis
## 1224       rodentia         muridae         sigmodon      ochrognathus
## 1225       rodentia         muridae         sigmodon       fulviventer
## 1226       rodentia         muridae         sigmodon          hispidus
## 1227       rodentia         muridae         sigmodon           alstoni
## 1228       rodentia         muridae           spalax    microphthalmus
## 1229       rodentia         muridae        steatomys           krebsii
## 1230       rodentia         muridae        steatomys         pratensis
## 1231       rodentia         muridae        stochomys     longicaudatus
## 1232       rodentia         muridae         sundamys          muelleri
## 1233       rodentia         muridae       synaptomys           cooperi
## 1234       rodentia         muridae       synaptomys          borealis
## 1235       rodentia         muridae     tachyoryctes           ruandae
## 1236       rodentia         muridae     tachyoryctes         splendens
## 1237       rodentia         muridae         tateomys    rhinogradoides
## 1238       rodentia         muridae           tatera           inclusa
## 1239       rodentia         muridae           tatera       leucogaster
## 1240       rodentia         muridae           tatera           robusta
## 1241       rodentia         muridae           tatera            valida
## 1242       rodentia         muridae           tatera          brantsii
## 1243       rodentia         muridae           tatera            indica
## 1244       rodentia         muridae           tatera        nigricauda
## 1245       rodentia         muridae           tatera              afra
## 1246       rodentia         muridae       taterillus             emini
## 1247       rodentia         muridae       taterillus          pygargus
## 1248       rodentia         muridae       taterillus          gracilis
## 1249       rodentia         muridae        thallomys         paedulcus
## 1250       rodentia         muridae        thamnomys          venustus
## 1251       rodentia         muridae          tylomys        nudicaudus
## 1252       rodentia         muridae         uranomys             ruddi
## 1253       rodentia         muridae          uromys     caudimaculatus
## 1254       rodentia         muridae      vandeleuria         nolthenii
## 1255       rodentia         muridae         wiedomys      pyrrhorhinos
## 1256       rodentia         muridae        zelotomys          woosnami
## 1257       rodentia         muridae     zygodontomys        brevicauda
## 1258       rodentia         muridae          zyzomys             maini
## 1259       rodentia         muridae          zyzomys           argurus
## 1260       rodentia         muridae          zyzomys         woodwardi
## 1261       rodentia   myocastoridae        myocastor            coypus
## 1262       rodentia        myoxidae          dryomys           laniger
## 1263       rodentia        myoxidae          dryomys          nitedula
## 1264       rodentia        myoxidae          eliomys         quercinus
## 1265       rodentia        myoxidae         glirulus         japonicus
## 1266       rodentia        myoxidae       graphiurus    crassicaudatus
## 1267       rodentia        myoxidae       graphiurus           murinus
## 1268       rodentia        myoxidae       graphiurus          ocularis
## 1269       rodentia        myoxidae      muscardinus      avellanarius
## 1270       rodentia        myoxidae           myoxus              glis
## 1271       rodentia    octodontidae          octodon             degus
## 1272       rodentia    octodontidae     octodontomys         gliroides
## 1273       rodentia    octodontidae       spalacopus            cyanus
## 1274       rodentia       pedetidae          pedetes          capensis
## 1275       rodentia    petromuridae         petromus           typicus
## 1276       rodentia       sciuridae ammospermophilus          harrisii
## 1277       rodentia       sciuridae ammospermophilus           nelsoni
## 1278       rodentia       sciuridae ammospermophilus         interpres
## 1279       rodentia       sciuridae ammospermophilus          leucurus
## 1280       rodentia       sciuridae     callosciurus         prevostii
## 1281       rodentia       sciuridae     callosciurus          caniceps
## 1282       rodentia       sciuridae     callosciurus     nigrovittatus
## 1283       rodentia       sciuridae     callosciurus           notatus
## 1284       rodentia       sciuridae          cynomys      ludovicianus
## 1285       rodentia       sciuridae          cynomys         gunnisoni
## 1286       rodentia       sciuridae          cynomys         parvidens
## 1287       rodentia       sciuridae          cynomys          leucurus
## 1288       rodentia       sciuridae          cynomys         mexicanus
## 1289       rodentia       sciuridae         dremomys           lokriah
## 1290       rodentia       sciuridae         epixerus              ebii
## 1291       rodentia       sciuridae     exilisciurus            exilis
## 1292       rodentia       sciuridae       funambulus       sublineatus
## 1293       rodentia       sciuridae       funambulus          palmarum
## 1294       rodentia       sciuridae       funambulus         pennantii
## 1295       rodentia       sciuridae      funisciurus        anerythrus
## 1296       rodentia       sciuridae      funisciurus       lemniscatus
## 1297       rodentia       sciuridae      funisciurus          pyrropus
## 1298       rodentia       sciuridae      funisciurus          congicus
## 1299       rodentia       sciuridae        glaucomys          sabrinus
## 1300       rodentia       sciuridae        glaucomys            volans
## 1301       rodentia       sciuridae     heliosciurus      rufobrachium
## 1302       rodentia       sciuridae        hylopetes         alboniger
## 1303       rodentia       sciuridae        hylopetes        fimbriatus
## 1304       rodentia       sciuridae            iomys        horsfieldi
## 1305       rodentia       sciuridae          marmota         menzbieri
## 1306       rodentia       sciuridae          marmota      camtschatica
## 1307       rodentia       sciuridae          marmota    vancouverensis
## 1308       rodentia       sciuridae          marmota           olympus
## 1309       rodentia       sciuridae          marmota          caligata
## 1310       rodentia       sciuridae          marmota             bobak
## 1311       rodentia       sciuridae          marmota      flaviventris
## 1312       rodentia       sciuridae          marmota           broweri
## 1313       rodentia       sciuridae          marmota           marmota
## 1314       rodentia       sciuridae          marmota          sibirica
## 1315       rodentia       sciuridae          marmota             monax
## 1316       rodentia       sciuridae          marmota           caudata
## 1317       rodentia       sciuridae          marmota         baibacina
## 1318       rodentia       sciuridae       myosciurus           pumilio
## 1319       rodentia       sciuridae        paraxerus       flavovittis
## 1320       rodentia       sciuridae        paraxerus           poensis
## 1321       rodentia       sciuridae        paraxerus         ochraceus
## 1322       rodentia       sciuridae        paraxerus         palliatus
## 1323       rodentia       sciuridae        paraxerus            cepapi
## 1324       rodentia       sciuridae       petaurista        leucogenys
## 1325       rodentia       sciuridae       petaurista           elegans
## 1326       rodentia       sciuridae       petaurista        magnificus
## 1327       rodentia       sciuridae       petaurista      philippensis
## 1328       rodentia       sciuridae       petaurista        petaurista
## 1329       rodentia       sciuridae        petinomys        genibarbis
## 1330       rodentia       sciuridae        petinomys           setosus
## 1331       rodentia       sciuridae        petinomys       vordermanni
## 1332       rodentia       sciuridae        petinomys     fuscocapillus
## 1333       rodentia       sciuridae         pteromys            volans
## 1334       rodentia       sciuridae           ratufa            indica
## 1335       rodentia       sciuridae           ratufa          macroura
## 1336       rodentia       sciuridae           ratufa           bicolor
## 1337       rodentia       sciuridae     rhinosciurus      laticaudatus
## 1338       rodentia       sciuridae       sciurillus          pusillus
## 1339       rodentia       sciuridae          sciurus       aureogaster
## 1340       rodentia       sciuridae          sciurus      yucatanensis
## 1341       rodentia       sciuridae          sciurus            alleni
## 1342       rodentia       sciuridae          sciurus       arizonensis
## 1343       rodentia       sciuridae          sciurus           griseus
## 1344       rodentia       sciuridae          sciurus            aberti
## 1345       rodentia       sciuridae          sciurus             niger
## 1346       rodentia       sciuridae          sciurus      carolinensis
## 1347       rodentia       sciuridae          sciurus       granatensis
## 1348       rodentia       sciuridae          sciurus          vulgaris
## 1349       rodentia       sciuridae  spermophilopsis     leptodactylus
## 1350       rodentia       sciuridae     spermophilus          relictus
## 1351       rodentia       sciuridae     spermophilus           parryii
## 1352       rodentia       sciuridae     spermophilus        mohavensis
## 1353       rodentia       sciuridae     spermophilus          dauricus
## 1354       rodentia       sciuridae     spermophilus         lateralis
## 1355       rodentia       sciuridae     spermophilus          beldingi
## 1356       rodentia       sciuridae     spermophilus           armatus
## 1357       rodentia       sciuridae     spermophilus             canus
## 1358       rodentia       sciuridae     spermophilus      erythrogenys
## 1359       rodentia       sciuridae     spermophilus          pygmaeus
## 1360       rodentia       sciuridae     spermophilus             major
## 1361       rodentia       sciuridae     spermophilus            mollis
## 1362       rodentia       sciuridae     spermophilus      nayaritensis
## 1363       rodentia       sciuridae     spermophilus       columbianus
## 1364       rodentia       sciuridae     spermophilus         saturatus
## 1365       rodentia       sciuridae     spermophilus         undulatus
## 1366       rodentia       sciuridae     spermophilus         mexicanus
## 1367       rodentia       sciuridae     spermophilus           elegans
## 1368       rodentia       sciuridae     spermophilus      tereticaudus
## 1369       rodentia       sciuridae     spermophilus          brunneus
## 1370       rodentia       sciuridae     spermophilus          beecheyi
## 1371       rodentia       sciuridae     spermophilus            fulvus
## 1372       rodentia       sciuridae     spermophilus          suslicus
## 1373       rodentia       sciuridae     spermophilus      richardsonii
## 1374       rodentia       sciuridae     spermophilus        franklinii
## 1375       rodentia       sciuridae     spermophilus        townsendii
## 1376       rodentia       sciuridae     spermophilus       washingtoni
## 1377       rodentia       sciuridae     spermophilus  tridecemlineatus
## 1378       rodentia       sciuridae     spermophilus          citellus
## 1379       rodentia       sciuridae     spermophilus        variegatus
## 1380       rodentia       sciuridae     spermophilus         spilosoma
## 1381       rodentia       sciuridae     sundasciurus             lowii
## 1382       rodentia       sciuridae     sundasciurus            tenuis
## 1383       rodentia       sciuridae           tamias        ochrogenys
## 1384       rodentia       sciuridae           tamias           palmeri
## 1385       rodentia       sciuridae           tamias          siskiyou
## 1386       rodentia       sciuridae           tamias           canipes
## 1387       rodentia       sciuridae           tamias           sonomae
## 1388       rodentia       sciuridae           tamias        ruficaudus
## 1389       rodentia       sciuridae           tamias      panamintinus
## 1390       rodentia       sciuridae           tamias         speciosus
## 1391       rodentia       sciuridae           tamias        townsendii
## 1392       rodentia       sciuridae           tamias             senex
## 1393       rodentia       sciuridae           tamias           minimus
## 1394       rodentia       sciuridae           tamias     cinereicollis
## 1395       rodentia       sciuridae           tamias   quadrimaculatus
## 1396       rodentia       sciuridae           tamias           amoenus
## 1397       rodentia       sciuridae           tamias         sibiricus
## 1398       rodentia       sciuridae           tamias    quadrivittatus
## 1399       rodentia       sciuridae           tamias          dorsalis
## 1400       rodentia       sciuridae           tamias          striatus
## 1401       rodentia       sciuridae     tamiasciurus         douglasii
## 1402       rodentia       sciuridae     tamiasciurus        hudsonicus
## 1403       rodentia       sciuridae      trogopterus         xanthipes
## 1404       rodentia       sciuridae            xerus        erythropus
## 1405       rodentia       sciuridae            xerus           inauris
## 1406       rodentia   thryonomyidae       thryonomys       gregorianus
## 1407       rodentia   thryonomyidae       thryonomys      swinderianus
## 1408     scandentia       tupaiidae           tupaia           montana
## 1409     scandentia       tupaiidae           tupaia             minor
## 1410     scandentia       tupaiidae           tupaia              tana
## 1411     scandentia       tupaiidae           tupaia              glis
## 1412     scandentia       tupaiidae           tupaia         belangeri
## 1413     scandentia       tupaiidae          urogale          everetti
## 1414     scandentia      tupaiidae       ptilocercus             lowii
## 1415        sirenia      dugongidae           dugong             dugon
## 1416        sirenia      dugongidae     hydrodamalis             gigas
## 1417        sirenia    trichechidae       trichechus      senegalensis
## 1418        sirenia    trichechidae       trichechus           manatus
## 1419        sirenia    trichechidae       trichechus          inunguis
## 1420  tubulidentata orycteropodidae      orycteropus              afer
## 1421      xenarthra    bradypodidae         bradypus         torquatus
## 1422      xenarthra    bradypodidae         bradypus        variegatus
## 1423      xenarthra    bradypodidae         bradypus       tridactylus
## 1424      xenarthra     dasypodidae        cabassous         centralis
## 1425      xenarthra     dasypodidae   chaetophractus           nationi
## 1426      xenarthra     dasypodidae   chaetophractus          villosus
## 1427      xenarthra     dasypodidae          dasypus          kappleri
## 1428      xenarthra     dasypodidae          dasypus        sabanicola
## 1429      xenarthra     dasypodidae          dasypus          hybridus
## 1430      xenarthra     dasypodidae          dasypus     septemcinctus
## 1431      xenarthra     dasypodidae          dasypus      novemcinctus
## 1432      xenarthra     dasypodidae       euphractus        sexcinctus
## 1433      xenarthra     dasypodidae       priodontes           maximus
## 1434      xenarthra     dasypodidae       tolypeutes           matacus
## 1435      xenarthra     dasypodidae          zaedyus            pichiy
## 1436      xenarthra  megalonychidae        choloepus         hoffmanni
## 1437      xenarthra  megalonychidae        choloepus        didactylus
## 1438      xenarthra myrmecophagidae         cyclopes        didactylus
## 1439      xenarthra myrmecophagidae     myrmecophaga        tridactyla
## 1440      xenarthra myrmecophagidae         tamandua      tetradactyla
##             mass gestation   newborn weaning wean_mass    afr max_life
## 1          45375      8.13   3246.36       3      8900  13.53      142
## 2         182375      9.39      5480     6.5      -999  27.27      308
## 3          41480      6.35      5093    5.63     15900  16.66      213
## 4         150000       7.9  10166.67     6.5      -999  23.02      240
## 5          28500       6.8      -999    -999      -999   -999     -999
## 6          55500      5.08      3810       4      -999  14.89      251
## 7          30000      5.72      3910    4.04      -999  10.23      228
## 8          37500       5.5      3846    2.13      -999  20.13      255
## 9      497666.67      8.93     20000   10.71    157500  29.45      300
## 10         5e+05      9.14  23000.08     6.6      -999  29.99      324
## 11        333000      8.88     18000    7.33      -999  24.27      300
## 12         8e+05      9.02  23033.33     4.5      -999  24.16      314
## 13     666666.67      9.83      -999     9.5      -999  25.54      319
## 14        169000      8.51      5875    -999      -999  29.97      260
## 15          -999        10      -999    -999      -999   -999      433
## 16     233333.33      9.85      -999    -999      -999   -999      300
## 17        950000     10.47     37500     7.5      -999  19.88      348
## 18        302000      8.29      6000    -999      -999     30      235
## 19         55000      5.17      3850    -999      -999   -999     -999
## 20         41000      5.36      -999     5.5      -999   24.5      144
## 21         71500       5.6   2791.43     7.5      -999  29.24     -999
## 22         50000      5.29    3787.5       6      -999   33.5      264
## 23         60000      5.22      2200       5      -999     16      249
## 24         18100       4.2      -999    -999      -999   -999     -999
## 25         13900      -999      -999    -999      -999   -999      236
## 26         10000      -999      -999    -999      -999   -999     -999
## 27         12700      -999      -999    -999      -999   -999     -999
## 28         20000         4      -999    -999      -999   -999     -999
## 29          -999      7.47    1707.5    -999      -999   -999     -999
## 30         12500      7.82       965    -999      -999  13.78     -999
## 31         11600      7.75      1610    -999      -999     19     -999
## 32          6250      6.43       800    -999      -999     16      144
## 33         62500      5.43      2400    1.25   20512.5   -999     -999
## 34          9000         4       832       2      -999     32      120
## 35        132250       8.5     11000     7.5      -999   25.1      235
## 36        164500      8.32  17716.67       8      -999   20.4     -999
## 37        159000       9.3      8350    -999      -999   -999     -999
## 38         84500       8.2      6792       5      -999  23.26      260
## 39        128000      7.81     11100    -999      -999     21     -999
## 40         40000       6.5      -999    -999      -999   19.9     -999
## 41         27000      5.75      -999    -999      -999   -999     -999
## 42         73000      6.84      -999    -999      -999   -999     -999
## 43         23600      5.42      4640    -999      -999   5.17     -999
## 44      47636.36      6.45    5602.5    -999      -999   8.25     -999
## 45         20000      6.48   1253.33    -999      -999   16.8     -999
## 46         17500      5.61      -999    -999      -999  11.46     -999
## 47         16985      4.74   1500.63    2.75      7000  22.27     -999
## 48         25500      5.37   2426.67     3.5     13500   18.5      188
## 49         16300      5.37   2553.75    3.35      -999  12.18     -999
## 50         20750         6      -999       3      -999   13.2      219
## 51          -999      6.17      -999       5      -999   20.5     -999
## 52         35200         6      2000    4.97      -999     24      261
## 53        242000      9.32  15166.67       6      -999   23.5     -999
## 54        200500      8.87  15447.14       7      -999  24.51      267
## 55         17500      -999      -999    -999      -999  19.67     -999
## 56         63950       8.5      -999    -999      -999   -999     -999
## 57      81733.33      7.57      5100     4.5      -999  23.31      180
## 58     175333.33      8.91      9000    7.39      -999  25.34      222
## 59         58600      8.38    4937.5    6.39     31600   11.6      263
## 60      41333.33      6.76      -999    -999      -999  11.83      156
## 61          3250      -999       690     1.5      -999     10     -999
## 62          4550      5.84    681.67    2.75    2825.5   -999     -999
## 63       4876.67      5.77       654    2.35      1780   8.77      171
## 64         30000      7.15    3510.5    -999      -999     42      223
## 65         87500       7.5      -999    -999      -999   -999     -999
## 66      27666.67      7.69      2000    -999      -999   31.2     -999
## 67          2500         6       500    -999      -999   9.33     -999
## 68       7166.67         6      -999    -999      -999   6.05      162
## 69         82350      5.78   3176.67    2.67      -999  29.99      230
## 70         13000      6.79      1065     4.5      -999     12      214
## 71        177500      8.22  10316.67    -999      -999   21.3     -999
## 72        121350         8      -999     4.5      -999  26.11     -999
## 73        195000      9.01     12015    -999      -999  25.02      240
## 74         17500      6.95      2235     4.5      -999  12.62      190
## 75        258000      8.48   11077.4    6.21      -999  37.33      288
## 76         50500      -999      -999    -999      -999     24     -999
## 77         60000         6      -999    -999      -999   -999     -999
## 78      57666.67      5.62      3500    4.33      -999  26.57     -999
## 79      68166.67      5.99   4266.67    4.86  28666.67  23.07      240
## 80        180000      5.61      2375     4.5      -999  11.67     -999
## 81         50000      5.02   2277.08       6     17500  18.23     -999
## 82         27500         7      -999    -999      -999   -999     -999
## 83         25000       8.7      -999    -999      -999   -999      148
## 84         24000      6.43      2900    -999      -999   17.5       84
## 85      46666.67      5.16      -999       6      -999  18.61      180
## 86      11333.33      6.53       936       3      -999    7.5     -999
## 87         48850      7.32      4500    -999      -999   -999     -999
## 88         40000       7.5      -999    -999      -999    120      216
## 89         30000      7.57      2600    -999      -999  12.96      144
## 90         26100      5.83   2652.86     3.7      -999  30.55     -999
## 91         38250      4.94   3365.33    2.92     14500   9.15      144
## 92        153000      7.76     15000    -999      -999  16.58     -999
## 93         19000      5.08   1202.86    -999      -999    9.9      172
## 94     504666.67     11.03   42862.5    9.18    166000  47.92      354
## 95        680000      8.67      -999    -999      -999   36.4     -999
## 96        432500      8.64     28325       6      -999  26.99      282
## 97         19000      7.34      1033    -999      -999   13.2      130
## 98        218000      -999      -999    -999      -999   -999     -999
## 99        186250      9.57     19240    -999      -999  27.94      233
## 100        87500      8.13      4000    -999      -999  13.17      258
## 101       190000      7.41     16150       6      -999   18.4      267
## 102    100666.67      7.37    5232.5       7      -999  14.85      192
## 103        64500      8.01      5760    -999      -999  25.89     -999
## 104        36250      6.17      3800    -999      -999  16.32      144
## 105         -999     13.18     35000    10.5      -999     42     -999
## 106       434000     12.64  35808.46   14.63    253484   46.3      480
## 107       142500     11.01     12000       5      -999   -999     -999
## 108        60000     10.79      7584       7      -999     16     -999
## 109       110000     11.25  11666.67   11.33      -999     18      340
## 110        50000     11.55   5841.67       7      -999  22.75      344
## 111       351000      7.95  13018.18     3.8     94000  23.38      324
## 112        33500      7.45      2365       6      -999     10      240
## 113        55000      7.72    3378.5       4      -999  12.64      249
## 114       102500      8.89      4200    -999      -999   -999     -999
## 115     21666.67      6.54   1214.33    3.08    8692.5  15.41      180
## 116        39450      9.67      1750     4.5     28750   -999     -999
## 117       143000      8.21      -999    -999      -999     36      276
## 118    120333.33      8.03   8814.09    5.37     46900  28.36      324
## 119       125000      8.33      -999    -999      -999     24      228
## 120        53000      8.49      -999     7.5      -999  17.71      253
## 121       171000       8.2      9890       7      -999  23.23      317
## 122        73000      7.37      5008    7.88      -999  18.78      235
## 123        96500      7.59      3734    5.67     28590  22.12      305
## 124        54500      7.75   4511.17    6.01     22570  18.55      300
## 125        33500       6.5      -999    -999      -999     18      144
## 126       149000      9.41   11412.5     5.5      -999     27      279
## 127        70000       6.5      -999    -999      -999   -999     -999
## 128        68600         8      -999    -999      -999   -999     -999
## 129        14000      6.25   1028.33    -999      -999      7      167
## 130         8200      7.25      -999    -999      -999   -999     -999
## 131        16650      7.42    792.33    -999      -999   20.5     -999
## 132        23000      7.43     542.5       6      -999     12      166
## 133        14000      6.12    1310.8       2      -999   8.67      204
## 134        12000      6.86   1096.67    -999      -999      6      236
## 135     55766.67      6.85   2952.67    2.48  19516.67  14.24      264
## 136        59500      6.84   3154.67    4.29  33631.33   9.09      276
## 137        35000      7.25      2150     5.5      -999     12      253
## 138         9750      -999       400    -999      -999   -999     -999
## 139         8250      6.76       695       2      -999   5.73      252
## 140       113200      7.24   5773.67    2.84     26900  23.93      242
## 141        8e+05     14.89  59770.59    8.25      -999  48.71      434
## 142       287500     14.87     17375       7     77000  23.86      396
## 143       215000      6.84   5636.25    7.33      -999     48      526
## 144   1258333.33      7.75  39746.67   10.13    237500  89.93      732
## 145        11000      -999       800    -999      -999     21     -999
## 146        10900      -999       524    -999      -999   -999     -999
## 147        12500      5.33    458.75     3.5      -999  15.54      144
## 148        1e+05      5.16       715       7      -999     18      288
## 149       202500      4.39      1250    2.25      -999   17.5      216
## 150        71000      5.53    672.78    3.49      -999  18.55      225
## 151        71000      3.78       762       3      -999  28.24      240
## 152         8150      3.76     191.5    -999      -999     23     -999
## 153       102750         4      -999    -999      -999   -999     -999
## 154       100900      3.95   1040.31    3.38      8726   9.77      252
## 155        35300      -999       647    -999      -999  39.17     -999
## 156        19200      4.66    657.18     1.7   5220.67  10.64      296
## 157        33750      5.23      1225    1.63      -999     20      253
## 158        12250      5.86      -999    5.17      -999  13.38      156
## 159         2450      4.94       319    -999      -999   -999       81
## 160         3850      4.61       370    2.92      -999    5.2      144
## 161         5900       5.2    373.67       3      -999    4.5      192
## 162         4500      1.75     71.04    1.67      -999   9.94      194
## 163         9500      -999      -999    -999      -999   -999      132
## 164        12675      2.04      -999     2.5      -999     24     -999
## 165        11000      2.05     207.5    2.28      -999  10.46      192
## 166        26000      2.05      -999    -999      -999   -999      168
## 167        34875      2.16     418.6    1.55      5250  22.04      192
## 168         9750      2.08       159    2.13      -999   10.8      168
## 169        11800      2.05    249.75    1.74      1517  10.29      262
## 170         8250      2.17      -999     1.5      -999   7.67      144
## 171         6500      1.85       365       3      -999   9.07      138
## 172        23000      2.11    400.17    4.75      -999     24      188
## 173        12760      2.07    273.33    1.64      2350   11.5      186
## 174     27133.33      2.41     332.5    2.88      -999  25.25      204
## 175         4232      2.05     87.92    1.73       825  12.22      128
## 176         4150      2.26    120.88    2.06      -999     12      165
## 177         4690      1.95      -999    -999      -999     10      164
## 178         3990      1.85      -999    -999      -999   -999     -999
## 179        13000      1.99      -999       2      -999     12     -999
## 180         6000      2.35    152.43    3.33      -999     11      160
## 181         4220      2.14     95.33     1.8    519.67   10.5     -999
## 182      1890.67       1.7      -999       2      -999     12     -999
## 183         1000      1.84        29     1.5      -999   10.5     -999
## 184         4000      1.72      -999    -999      -999   -999     -999
## 185         2250      1.75      -999    -999      -999     12     -999
## 186         7000      -999      -999    -999      -999   -999     -999
## 187         2550      -999      -999    -999      -999   -999     -999
## 188         1800      1.69      58.5    -999      -999   -999     -999
## 189         2700      1.77      62.5    0.93      -999  16.81     -999
## 190       5662.5      1.73    101.25    1.81   1236.43   9.76      144
## 191         1200      1.71     26.28    2.18      -999   9.87      175
## 192      2766.67      1.71     39.65    1.69      -999  11.01      240
## 193        58750      3.35    403.96    3.67      1940  25.41      228
## 194        14000      2.43       165    4.17      -999  16.51      216
## 195        11500      2.67       250    -999      -999     21      240
## 196        10000      2.05    126.62       3    2212.5  15.82      240
## 197         2350       2.2      55.5    -999      -999      9      156
## 198         4150      2.15    101.87    2.25    630.79  10.24      180
## 199         2125       2.2     70.87    -999      -999  17.04     -999
## 200         6750      2.33      -999    -999      -999   26.4      180
## 201      3666.67      2.67       118    1.83     785.1  21.65      252
## 202         2250      2.51      -999    1.83      -999   -999     -999
## 203         8800      2.64     254.4     3.5      3400   21.8      257
## 204        13350      2.36     253.2     4.2      -999  26.75      237
## 205         9400      2.18      -999    -999      -999   -999      156
## 206         8600      1.86       301    2.55      1190  17.06      388
## 207     18026.67      2.33     269.5     3.1      1860  16.36      264
## 208         8900      2.18       204       5      -999   17.6      321
## 209        19500      3.06    215.33    4.26    5427.5   26.3      234
## 210         2950      -999      -999    -999      -999   -999     -999
## 211         4000      2.45     86.18    2.25      -999   -999      252
## 212         3500      2.37        89    -999      -999     12     -999
## 213       119700      3.51   1248.59    5.48     19556  41.12      315
## 214        81150      3.39    831.89    4.13    5033.5  35.56      264
## 215       139500      3.62   1377.45    7.22      8480  35.98      360
## 216        42325      3.22    363.49    2.88      1940   34.1      276
## 217         3500      -999        85    -999      -999   -999     -999
## 218        10850      2.29       170    2.92      -999   -999     -999
## 219         1350      2.23      -999    -999      -999   -999      192
## 220         4150      2.17     93.86    1.47       620  18.52      180
## 221        10650      -999    248.33    -999      -999   -999     -999
## 222        48000      3.07    388.22     4.2      3500  26.91      240
## 223        45625      3.28    463.45    2.54      7500  30.11      252
## 224         3300      2.49    100.23    1.43    631.85   -999      228
## 225         1570      -999      -999    -999      -999   -999     -999
## 226          727      2.25      -999    0.75      -999      9      108
## 227        598.5      1.84      -999       2      -999     24      182
## 228          683         2      -999    1.92      -999   -999     -999
## 229          448         2      -999    1.73      -999   -999     -999
## 230          800      2.61        50    1.94       183  24.22      293
## 231         -999      -999      -999    -999      -999   -999     -999
## 232        274.8       1.8      -999    -999      -999   13.5     -999
## 233          800      1.62     25.92    1.65       275    9.9     -999
## 234         1008      1.98      -999    -999      -999   -999     -999
## 235         2920      2.39      -999       2       800     24     -999
## 236         3150      -999      -999       9      -999   -999      121
## 237       1331.5      2.02      22.1    -999      -999  11.29      144
## 238          700      3.27        50    1.29      -999  24.39     -999
## 239         1800      -999      -999    -999      -999   -999     -999
## 240          776      2.57     31.33    1.44    212.75   10.8      152
## 241        63000      3.45   1353.33   10.57     14500     33      493
## 242        40000      3.01     669.5    9.17      -999  28.11      282
## 243        60200      3.08    727.28    7.67     27400     36      348
## 244        10000       2.9      -999    3.52      -999   -999      227
## 245         3000      2.07        57    2.67      -999   -999      192
## 246        24000      -999      -999    -999      -999   14.2     -999
## 247        11800       2.1      1050    1.75      3360     12      168
## 248        10500       1.5        58    3.42      -999   -999     -999
## 249         3500      -999      -999    -999      -999   -999     -999
## 250         1200         2      -999    -999      -999   -999     -999
## 251      1996.67       1.7      -999    -999      -999   10.5     -999
## 252         4500      2.19     82.25    2.71    1707.5   -999      216
## 253        21800       7.1   1909.17    5.77  12666.67  43.13      240
## 254         2350       1.3      -999    -999      -999   -999      126
## 255     16333.33      1.69     90.53     2.6      -999  26.76      208
## 256          500      1.68         5    1.25       250   -999     -999
## 257          765       1.2      12.5     2.6       170   9.26      160
## 258         7500      1.87      -999    -999      -999   -999     -999
## 259         -999      2.45      -999    -999      -999   -999     -999
## 260         6225      2.01       141    4.38      1510  29.97      276
## 261         4000         2      -999    -999      -999   -999     -999
## 262         6750       2.2      -999     1.9      -999     12     -999
## 263         9000      2.07      -999    -999      -999   -999      240
## 264         2500      -999      -999    -999      -999   -999      168
## 265      1066.67       1.5     31.25    1.79       600  17.34      180
## 266         1700      3.19      -999    1.42      -999     18      217
## 267       606.67      0.93     32.67     1.5       414  17.67      204
## 268         2600      1.33     34.78    2.61      -999  17.33      120
## 269         1300      1.73        30    1.87       680  24.09      204
## 270        13000      1.89     84.25    3.18      -999  13.25      194
## 271        10000      5.86       210    -999      -999   -999      317
## 272         2000      -999      -999    -999      -999   -999     -999
## 273          965         2      -999    -999      -999   -999     -999
## 274      1821.25      1.63      28.1    2.08     493.5  11.17       60
## 275          809      1.44      -999    -999      -999     12      144
## 276          440      3.32       7.5    1.88      -999  10.67      120
## 277          171      1.25      -999    1.63      -999   -999     -999
## 278          405      1.06      -999       2      -999   -999      106
## 279       899.75      1.19      8.64     1.6       110   8.59      120
## 280        150.6      0.82       3.1    1.22      34.6   5.33     -999
## 281       110.33      1.43       2.3    1.49     26.57   3.12       84
## 282         1350       1.2      5.73    1.67      -999   10.5     -999
## 283       588.67      1.05      9.26    1.64      -999     10      168
## 284        49.75      1.32      2.61    1.39        36   3.73      120
## 285        257.5      1.05         4    2.14        50  14.43     -999
## 286        24000      2.26    202.83    3.67      -999     24      174
## 287          260      1.57       6.9    -999      -999   -999     -999
## 288        511.5      2.19      13.8    1.64       160    7.5      118
## 289         6050      1.83    101.88    1.68      3000   7.35      312
## 290        542.5         2      -999       1      -999      3      107
## 291       650000      11.5  51883.33   20.37     2e+05  52.14      480
## 292        27000         7   3533.33    16.6     15000     42      264
## 293        50000     11.75      4420    7.85      -999   -999     -999
## 294        55000      7.75   3833.33      11      -999     60     -999
## 295        40500         9   5933.33     3.9     15800     34      240
## 296     77666.67      9.17   5955.56   11.57     26150  42.53      252
## 297        45000      7.75      4250    13.5      -999     36      360
## 298     288932.5      8.75     19215    9.71    106610  56.08      360
## 299     79633.33     11.75      7075   18.75     59724     36      192
## 300       140000        12  12763.33      12      -999  44.28      298
## 301         -999        12      7000    8.67      -999   -999      276
## 302     84666.67     11.14   6817.14   10.75     25000     68      300
## 303        49100      8.37   5182.73    3.22     12920   48.9      312
## 304       212000      8.01  15388.89     0.3     44980  35.88      420
## 305    286666.67      8.71     36950       1  72666.67  65.02      372
## 306       186000      7.87     12820    0.61  43077.78  50.52      552
## 307    398666.67       9.5     30875       1      -999   41.7      312
## 308    421666.67       9.6     28394    1.33 117917.14  48.51      300
## 309    238333.33       8.5  22333.33    1.09    120000  48.16      468
## 310       579400      7.63  39918.89    0.76 130192.31  31.29      276
## 311    716666.67      8.45     35250    0.88 138037.14  41.62      240
## 312       275000        10     19600    1.55      -999     48      284
## 313       173000        11     30675    1.24     64000     60      360
## 314    187666.67      8.13  20266.67       1      -999  41.51      252
## 315        80000      10.5      7100    0.78     21300     42      420
## 316        86000        11      5000       1      -999     61      600
## 317        86140       8.2   5909.09     1.6     11350  73.93      516
## 318    128786.67      7.63   8476.92    0.37  34377.78   49.8     -999
## 319        82500         9     10250    0.88     30000  29.43      240
## 320       101250      8.35  11083.64    1.13     23945  46.51      408
## 321     81666.67         9      3000    2.14     66900  57.88      672
## 322       1242.5      2.45        51    -999      -999  21.35     -999
## 323          900      2.15      -999    -999      -999   -999      281
## 324        975.5      1.81     28.58    2.26    219.35   10.7      192
## 325         4750      2.51    153.33    2.82       730     32     -999
## 326         3750      2.56       140    4.17      -999     23      204
## 327         3000      3.84    165.66    3.35      -999  27.65      384
## 328         6270      -999      -999    -999      -999   -999     -999
## 329         4400      2.13     76.14    2.95      1200  11.34      247
## 330       111600      4.31    109.29     6.7     15000  77.26      408
## 331         4325       4.3    120.17       4      1140  19.51      210
## 332        46000      3.68       275       3      -999     78      372
## 333        1e+05      6.42      -999     2.5      -999   -999      480
## 334        61000      7.33       320    2.96      -999   -999      464
## 335     76666.67         7    351.67    3.25      -999  31.33      432
## 336    286366.67      8.11    634.25   12.68     31156  55.22      540
## 337       203500      6.93    494.82   13.78     26000  60.01      472
## 338       110560      6.75    294.47    6.42     14050  40.71      372
## 339        12250      2.74    316.38    2.59      2100  30.34      311
## 340         2250       1.5      -999       2      -999     36      193
## 341         3250         2      81.5    -999      -999   -999     -999
## 342     13666.67      2.31       417    4.19   1955.75  14.62      336
## 343         9500         3       100    4.08      -999  49.17      240
## 344         4000      -999      -999    -999      -999   -999     -999
## 345         3000      -999       150    2.13      -999   -999     -999
## 346         1540       2.9      67.5    2.28      -999  23.92      132
## 347         2225      -999      -999    -999      -999   -999     -999
## 348      1866.67       2.5      74.2    2.75      -999  48.64      258
## 349         1820      2.32        71    1.94      -999   -999     -999
## 350         2375      -999       125    2.33      -999   -999      216
## 351         1900      2.13      -999    2.13      -999  36.27      190
## 352         4300      -999      -999    -999      -999   -999      240
## 353         2380      -999      -999    -999      -999   -999     -999
## 354         3100       1.5     87.08    -999      -999  11.22      300
## 355         4500      -999      -999    -999      -999   -999     -999
## 356          698      -999        40    -999      -999   -999      128
## 357        10000      -999      -999       1      -999   -999      240
## 358         3000      -999      -999    4.25      -999   -999      126
## 359        8e+07     12.37      -999   11.25      -999    210     1200
## 360      2.3e+07     12.55      -999    -999      -999    108     -999
## 361      2.3e+07      11.5      -999       7      -999    110      804
## 362     66800000     10.93   1850000     6.5      -999   89.7     1368
## 363     1.49e+08     10.71   2250000    7.08  19075000  72.34     1320
## 364  14766666.67      11.4    650000    7.56      -999  77.15      888
## 365        2e+07     12.35      -999       9      -999 105.25      864
## 366  16266666.67     10.15      -999       5      -999  98.73      564
## 367        3e+07     11.43   1325000    9.08      -999  64.28      924
## 368         -999      -999      9500    -999      -999   -999     -999
## 369        72400        12      5500    -999      -999     78      216
## 370         -999      -999      -999    -999      -999     93      240
## 371        76365      9.57      7050    10.5     40000  55.02      240
## 372       133000      -999      -999    -999      -999   -999     -999
## 373      1060000      14.8 109666.67   26.69      -999  81.22      720
## 374       726000     15.25     60000      48      -999  106.2      756
## 375       425000        12      -999    -999      -999   -999     -999
## 376       164000        11      -999    -999      -999     87      192
## 377       180000      -999      -999    -999      -999   -999     -999
## 378       103000        10      -999    -999      -999    126      552
## 379       182000      10.5     24000      18      -999  73.34      324
## 380       110000     11.63      -999      12      -999   -999     -999
## 381       190000        14     12300    15.5     45000   -999      360
## 382      4300000     14.89 159333.33    15.5      -999 138.22     1080
## 383       206000        12      -999    -999      -999    141      564
## 384      1360000     14.92      -999    16.5      -999 114.73      750
## 385     46666.67      10.7      -999    -999      -999   -999     -999
## 386       122950      12.1     11300   14.83      -999  94.65      684
## 387     70333.33      10.4      -999      18      -999  61.96     -999
## 388        68700      11.4      -999   17.95      -999  93.73      552
## 389       122500      -999      -999    -999      -999    120      384
## 390    173333.33     12.12     18920   18.94      -999  97.41      588
## 391  25066666.67     12.36 529666.67     6.1      -999  79.28      840
## 392       665000     13.44     71400    22.6      -999  56.21      360
## 393        9e+05     14.83     80000      17      -999     72      600
## 394      3200000        10      -999     5.5      -999   -999     -999
## 395        32500      10.5   7066.67    10.5     24500  68.67      276
## 396        45000      -999      -999    -999      -999   -999     -999
## 397     53183.33      9.66      6775     8.5      -999  34.71      156
## 398    101666.67      9.98      -999   11.43      -999  65.62      264
## 399    190233.33      -999      -999    -999      -999   -999     -999
## 400       363000        11     82000    -999      -999   -999     -999
## 401     15400000      15.8 942666.67    18.4      -999 103.36      924
## 402        96500      9.83      6800    -999      -999   -999      360
## 403        83500      10.5      -999    -999      -999     96      288
## 404         -999     10.25      7000    -999      -999   -999     -999
## 405        21000        10      -999      12      -999  80.95      240
## 406     40333.33     10.92      7900    10.5      -999  28.03      192
## 407         -999        10      -999    -999      -999   -999     -999
## 408      8200000     14.67      -999    -999      -999 124.29     1008
## 409   5266666.67        12      -999      12      -999 117.38      444
## 410      1500000        12      -999    -999      -999   -999     -999
## 411      1050000      -999      -999    -999      -999    108      324
## 412      3400000        12      -999      12      -999   -999     -999
## 413      2952500        12      -999    -999      -999   -999      432
## 414         1000         2      -999    -999      -999   -999     -999
## 415         -999       3.5      35.9    6.34      -999   -999      210
## 416         2950      7.59      -999       5      -999   -999      147
## 417      3116.67         7       236    -999      -999  13.33     -999
## 418      2456.67      7.57       225       3      -999     16     -999
## 419         3600      7.44    232.18    2.81       500  22.18      132
## 420         64.8      -999       4.5    -999      -999   -999     -999
## 421         39.8      -999      -999     2.5      -999   -999     -999
## 422           42      -999      -999     2.5      -999   -999     -999
## 423          104      -999      -999    -999      -999   -999     -999
## 424         23.2      -999      -999    -999      -999   -999     -999
## 425          745       1.3      -999    1.33      -999   -999     -999
## 426          334      1.24      7.92    1.45      -999   2.77     -999
## 427          309      1.22     10.49    1.17      -999     12     -999
## 428        956.5      1.25      14.5    -999      -999   -999       55
## 429          719      -999        22    -999      -999      7       49
## 430          771       1.2      15.7    1.37       203   10.8       96
## 431          171      1.24       8.5       2      -999     10     -999
## 432          292      -999      -999       2      -999   -999       86
## 433          358      -999       8.5    1.64      -999   -999     -999
## 434          342      1.26     10.14    1.17      -999      7     -999
## 435           64      1.08      -999    -999      -999   -999     -999
## 436         1000      -999      -999    -999      -999   -999       78
## 437          900       2.8     53.75     2.5      -999   -999      136
## 438         9.25      -999      -999    -999      -999   -999     -999
## 439         14.5      0.75      -999       1      14.5   -999       24
## 440        21.63      0.66      0.97    0.72      -999   2.21       33
## 441           12      -999      -999    -999      -999   -999     -999
## 442           15      -999      -999    -999      -999   -999     -999
## 443          7.5         1       0.8    -999      -999   -999     -999
## 444            5      -999      0.82    0.57       3.2   -999     -999
## 445          2.5      -999      -999    -999      -999   -999     -999
## 446          7.2      -999      -999    -999      -999   -999     -999
## 447          9.7      -999      -999    -999      -999   -999     -999
## 448         17.1      -999       1.4    0.67      13.7   -999     -999
## 449           22      0.84      2.26    -999      20.7   -999     -999
## 450         9.91      0.99      0.88     0.7      -999   4.98       36
## 451        13.67       0.6         1    0.59        10   -999     -999
## 452        11.63      0.97      0.88    0.84       7.7   4.34       38
## 453          7.7      0.93      0.63    0.83         4   5.75       48
## 454          6.2      0.67      0.34    0.69      3.85   1.63       31
## 455           10      -999      -999    -999      -999   -999     -999
## 456           11      -999         1     0.7      -999   -999       16
## 457           13      -999      -999    -999      -999   -999     -999
## 458         -999      -999      -999    -999      -999   -999     -999
## 459           16      0.75      0.58    0.97      -999   5.25       24
## 460        14.32      0.73      0.78     1.2        10   5.25       37
## 461         4.15      -999      0.41    1.42       3.6   -999     -999
## 462         -999      -999      -999    -999      -999     11     -999
## 463          4.9      -999      -999    -999      -999   -999     -999
## 464         6.71      -999      -999    -999      -999   -999     -999
## 465         8.34      -999      -999    -999      -999   -999     -999
## 466        15.88      -999      -999    -999      -999   -999     -999
## 467          9.6      0.77      0.58       1       8.6   -999       20
## 468            4      -999      -999    -999      -999   -999     -999
## 469         4.26      0.64      0.28    0.75       3.5   5.05       21
## 470          8.2      -999      -999    -999      -999     12       18
## 471         5.57       0.7       0.5    -999      -999     12       18
## 472         4.37      -999      -999    -999      -999   -999     -999
## 473            6      -999      -999     0.7      -999     12       18
## 474         4.44      -999      -999    -999      -999   -999       18
## 475         7.25      0.77      0.25    0.84      -999   9.92       24
## 476            3      0.68      -999    0.84      -999   -999     -999
## 477         8.98      0.69      0.47    0.85       8.5  10.71       24
## 478         3.68      -999      -999    0.88      -999   -999       14
## 479          2.5      -999      -999    -999      -999   -999     -999
## 480          8.2      0.55      -999    -999         4     10       17
## 481         5.58      0.67      0.42     0.7       5.5   -999       18
## 482        12.47      0.75      -999    -999      -999      3       18
## 483        45.87      1.05       2.6    0.65     19.08   1.54       30
## 484         -999      -999      -999    -999      -999   -999     -999
## 485          2.1      0.93      0.21    0.66      2.09    7.5       32
## 486         -999      -999      -999    -999      -999   -999     -999
## 487         -999      -999      -999    -999      -999   -999     -999
## 488         -999      -999      -999    -999      -999   -999     -999
## 489        55.33      -999      -999    0.79        30     10     -999
## 490          383      1.54      -999    1.17      -999    1.3     -999
## 491         61.3         1      -999    -999      -999     24       48
## 492           10      -999      0.67    -999      -999   -999     -999
## 493        50.18      1.21      10.1    0.98     34.77   10.5       60
## 494         74.6      1.35      5.36    1.17      -999  10.27       36
## 495        118.8      1.17         5       1        65     10     -999
## 496         76.9         1      -999       1      -999     10     -999
## 497           52      -999      -999    -999      -999   -999     -999
## 498           85      -999       3.5    1.03      -999   -999     -999
## 499        133.3      1.06      3.38    1.25      44.2  10.41       72
## 500         19.5      -999      -999       1      -999     12     -999
## 501          180       1.9      7.74    0.94        50   8.32      156
## 502          6.7      2.06       0.7    1.21      -999   -999       25
## 503        149.6      1.79      8.18    0.67      -999   1.44       32
## 504         79.5      -999      -999    -999      -999   -999     -999
## 505         37.8      2.06      3.95    0.94      -999     22       67
## 506         48.1      2.03      3.65    0.97      -999   21.5       70
## 507         69.6      -999      -999    -999      -999   -999     -999
## 508        761.7      -999      -999    -999      -999   -999     -999
## 509       259.45      1.89     24.85    0.75      -999   6.48      127
## 510          884      2.01     21.38    1.11       225   6.33       76
## 511       421.33      0.89      -999    -999      -999   8.42     -999
## 512         1250      -999        45    -999      -999   -999     -999
## 513         2500      -999      -999    -999      -999   -999     -999
## 514       2099.5       1.3      -999    -999      -999   5.92     -999
## 515         1820      -999      -999    -999      -999   -999     -999
## 516         -999       1.4      -999    -999      -999   -999     -999
## 517         2110      1.53       110    -999      -999   12.2     -999
## 518      4506.33      1.53     102.5    1.83      2042   12.2     -999
## 519         3766      1.72       105    2.13      -999  11.56     -999
## 520      3030.43      1.65    107.93    0.76    491.99   8.73      216
## 521      1489.25      1.22     61.03    0.66       362  10.12     -999
## 522       3035.5      1.29     94.32    0.88       737  10.95       96
## 523         2358      1.42     118.4    1.08    943.33   7.48     -999
## 524      3759.67       1.5     118.1    1.75      3000     24     -999
## 525         2317      1.43     84.34    1.34      1300      8       81
## 526      3673.33      1.42    119.67    0.94       390   7.77       89
## 527         2686      1.38        98    -999      -999   -999     -999
## 528      1558.25      1.02     39.61    0.85       214   5.13      120
## 529         2500      1.25      -999    -999      -999   -999     -999
## 530         2470      -999      -999    -999      -999   -999     -999
## 531         1945      -999      -999    -999      -999   -999     -999
## 532         1700      -999      -999    -999      -999   -999     -999
## 533        494.5      1.27     30.62    0.86     102.6   6.33     -999
## 534          950      1.19      -999    0.88      -999   4.17     -999
## 535         1233      1.11      -999    -999      -999   7.21     -999
## 536        902.6      0.93        30    0.53      -999   3.96     -999
## 537      2120.67      1.26     57.67    0.47       160   6.53     -999
## 538       707.67       0.9     28.17    0.63      -999   5.07     -999
## 539       759.96      0.97      -999    1.13      -999   3.97     -999
## 540         1269       0.9     34.33     0.8     118.5   4.06      108
## 541       909.38      0.94      34.5    0.92      -999   5.39     -999
## 542          167      -999      -999    -999      -999     12     -999
## 543         -999      0.75      11.2    -999      -999   -999     -999
## 544          129         1      -999    -999      -999     12       72
## 545          115      -999         7     0.7      -999   0.74     -999
## 546          128      -999      -999    -999      -999    0.7     -999
## 547         -999         1      7.87     0.7      -999   0.92     -999
## 548        140.2         1     10.67    0.91     81.12  11.42       84
## 549         -999      -999      -999    -999      -999   -999     -999
## 550         -999      0.83         7     0.7      -999   0.92     -999
## 551         -999      0.74         7    0.72      -999   1.02     -999
## 552          250      0.86      11.4    0.65      72.3   1.71     -999
## 553           60      1.87      -999    -999      -999   -999     -999
## 554         -999      -999      -999    -999      -999   -999     -999
## 555        51.95       1.7        10    1.25      -999     11      105
## 556        51.94       1.8       8.1       1      -999   2.26     -999
## 557           48       2.5      -999    -999      -999   -999       36
## 558           58      1.93     10.73    0.77     28.99    2.4       72
## 559        44.33      -999      -999    -999      -999   -999     -999
## 560           40      2.14         7    0.62      -999   1.45     -999
## 561          220      -999        31    -999      -999   -999     -999
## 562          540       1.4        80    0.49       180   1.25       60
## 563       250000     11.97  29166.67    -999      -999   22.8      564
## 564       275000      9.83      -999    -999      -999   -999      319
## 565       384000     13.32     40000    9.17      -999     48      345
## 566       296000     12.02     30000      10      -999  40.33      354
## 567       257000     12.16     32292   10.76    174500  25.73      480
## 568       230000     11.44      -999    12.5      -999  27.75      274
## 569   2233333.33     15.87  51166.67      12      -999  66.57      600
## 570   1266666.67      7.75     23000    16.5      -999     90      392
## 571    927766.67     16.12  34166.67   19.92      -999  59.51      550
## 572   1602333.33     16.44  58204.55      15 885812.33  72.85      564
## 573      1750000      16.5      -999      18      -999     42      252
## 574       148950     13.09      4270    -999      -999   -999     -999
## 575        2e+05     13.18    5417.5     9.5     86260     23      420
## 576       296250     12.76      7100    6.37      -999     46     -999
## 577        3e+05     13.17      9400    -999      -999   -999     -999
## 578        33000      -999       500    -999      6000   -999     -999
## 579         5150      -999      -999    -999      -999   -999     -999
## 580         2350      -999      92.5    2.87      -999   -999     -999
## 581         1480         4       120    4.83       675     24     -999
## 582         3900      2.25    331.75    -999      -999   -999      240
## 583         2750      -999      -999    -999       400   -999     -999
## 584         7230      4.63       338    1.17     948.7   -999     -999
## 585       558.33      5.18     49.07    2.07       215  17.33      215
## 586       343.33      -999      34.5     3.5      -999   -999     -999
## 587       357.25      -999      -999    -999      -999   -999     -999
## 588       116.83       4.6     16.16       3        70  20.55      216
## 589          307      -999      -999    -999      -999   -999     -999
## 590          406      -999      -999    -999      -999   -999     -999
## 591          309       4.9     27.12    5.42        97  16.33      144
## 592          558      4.35     55.07     4.3       165  25.01      338
## 593          490      -999        44    -999      -999   -999     -999
## 594        445.8      -999        35    -999      -999   -999      240
## 595          465      5.33      -999    -999      -999   -999     -999
## 596          411      -999      43.7     2.7       175  27.96     -999
## 597       526.13         5      46.9    5.62      -999   -999     -999
## 598       499.33      4.67     46.03    1.83      -999     18     -999
## 599          370      4.91      39.6       3      -999  20.37      288
## 600          401      5.84     40.22    7.79     102.5  25.33      300
## 601       501.33      4.83     42.33    7.46      -999   -999     -999
## 602       466.75       4.6        40    2.34      -999  21.06      156
## 603        11600      6.23       480    -999      -999   -999     -999
## 604      5555.29      6.37       295    12.3      -999  54.96     -999
## 605      5659.14      6.22    368.75   14.22      1100   42.3      240
## 606         5353      6.23     187.5    6.42      -999  41.51     -999
## 607       833.56      4.67     91.18    3.14       360  29.46      324
## 608          874      4.43        98     2.5      -999   -999     -999
## 609         1230      -999      -999     7.7      -999   -999     -999
## 610         5400      4.63      -999    -999      -999   -999     -999
## 611       6265.8      7.39     447.5   23.47      2000  72.34      576
## 612       7758.8      7.39    461.67   26.15      3790  54.73     -999
## 613       7761.8      7.47       235    12.9      -999  56.28      240
## 614      11142.5      7.76      -999   21.75      -999     90     -999
## 615         4092         6      -999   21.14      -999   32.9      372
## 616         1050      -999      -999       5      -999   48.8     -999
## 617         1120      4.33        74    6.77      -999   -999     -999
## 618          850      5.49      72.2     3.5      -999     36      300
## 619         2410      -999      -999   24.33      -999     72     -999
## 620      2602.57       5.7    237.25   17.12      1350     48      660
## 621       2528.5      5.33    225.42   10.09      1000  57.56      540
## 622      2539.07      5.17    232.42    8.15      -999  45.66      480
## 623         2900         5      -999    -999      -999     48     -999
## 624         2750         5      -999    -999      -999     48      216
## 625      6076.25      8.35    213.96   11.57      -999  81.49      311
## 626      1926.67      -999    120.67    -999      -999   -999      168
## 627       1377.2      5.32      -999       4      -999  25.48      420
## 628          580      -999      -999    -999      -999   -999     -999
## 629        607.8      5.71    113.25     6.4     410.5  38.71      252
## 630      3301.67      -999       221     2.5      -999   -999      276
## 631      5425.75      5.85      -999      12      2170  74.54      228
## 632      7036.67      5.61      -999    -999      -999   57.6      246
## 633         2870      -999       435    -999      -999   -999     -999
## 634         4700      -999      -999    -999      -999   -999     -999
## 635      3833.33      -999       283    -999      -999   -999     -999
## 636      4225.33      5.67       406    -999      -999   -999     -999
## 637         -999      -999      -999      16      -999   -999     -999
## 638      2866.25      5.67       339    -999      -999     60     -999
## 639      2973.67      5.67       339    -999      -999     60     -999
## 640       3392.6         5       371       6      -999     60     -999
## 641         3150         6      -999      12      -999   -999      351
## 642      5685.71       4.5    391.65   10.37      -999  60.62     -999
## 643         3920      -999      -999    -999      -999     57     -999
## 644      4670.17      5.75       305      13      1640   50.8     -999
## 645       4216.5      -999       463      12      -999   64.5      418
## 646      3732.64      5.62    337.79    6.99    1036.5  47.37      372
## 647         9000      -999      -999    -999      -999   -999     -999
## 648         9500       6.5      -999      16      -999   -999     -999
## 649         8508      6.26     573.4    8.87      1240  79.79      312
## 650      9725.17      5.67       497   12.38      1600   53.4      288
## 651       5883.4      5.56     546.5    5.33      1950  32.84      287
## 652       6725.8      5.97     462.5    7.67      2170  57.58      392
## 653     10036.67      5.67    533.33    18.8      2400   -999     -999
## 654       8857.5      5.72    504.96   12.06    1767.5  55.02     -999
## 655         5575      5.43     389.5   16.67      -999     60     -999
## 656       9752.6      5.49       450       7      2420  49.81     -999
## 657      7307.67         6     486.2    11.2      2300  47.76     -999
## 658      6211.67      5.78    457.67       7      -999  63.21      216
## 659         3495      -999       446   13.03      -999     54      420
## 660         4875      5.94       418      12      -999  53.16     -999
## 661       5413.4      5.47     476.2    9.47      1454  41.08      259
## 662      6316.67       5.4       401    6.87      -999   -999     -999
## 663       6133.1      5.71    476.24   10.66    1416.5  43.64      316
## 664      3456.29      5.49    407.82    9.58    990.33  43.56      445
## 665         3735      5.43    391.33   10.72      2000  45.35     -999
## 666       9087.5      6.19       772      16      -999  56.85      343
## 667     11916.67      6.02     751.5   11.64      3000  48.21      349
## 668      1093.33       5.4     187.5    5.43       450  53.13      332
## 669       9462.6      5.53       452    7.62      2000     54      276
## 670     14028.57      5.94    836.97    8.59      3950  55.17      540
## 671         6200      -999      -999    -999      -999   -999     -999
## 672         6300      -999      -999    -999      -999   -999     -999
## 673         6400      -999      -999    -999      -999   -999     -999
## 674         6600      -999      -999    -999      -999   -999     -999
## 675         3600      -999      -999    -999      -999   -999     -999
## 676       6163.5      5.63      -999   21.88      -999  48.96     -999
## 677         9960      -999       427    -999      -999   -999     -999
## 678         8310      6.25       463    -999      -999   -999     -999
## 679     11253.33       6.3       500   11.48      2100  40.64      300
## 680     12242.33      5.81     464.5    15.4      3900   46.3      360
## 681         7325      -999       457    13.1      -999     48     -999
## 682         8100      -999      -999    -999      -999   -999     -999
## 683        12000      -999      -999    -999      -999   -999     -999
## 684         6572      -999      -999      12      -999     48     -999
## 685      7081.75      6.95    432.33    8.23      1100     42     -999
## 686         6426      4.92    329.83      12      -999     48     -999
## 687         8400       5.5      -999   10.17      -999   -999     -999
## 688        394.2      2.35     18.04    1.55      -999   -999      106
## 689        170.6      2.16     16.33    2.03      -999  13.77      230
## 690           69      -999       6.5    1.33      -999   -999     -999
## 691       306.67      2.95      14.5    4.54      -999   18.2      183
## 692           71      1.84      5.78     1.3      -999   12.9      186
## 693          400      -999      -999    -999      -999   -999      144
## 694      2610.33      5.53       123    7.71      1535     39      279
## 695          280       4.5      -999    -999      -999   -999     -999
## 696        289.2      4.47        24    -999      -999  10.11     -999
## 697          180       4.1      12.1    3.07        95  10.62     -999
## 698       171.38      4.23     14.05    2.93    116.67  11.33      226
## 699           66      3.12     10.58     1.5      -999  13.88      168
## 700          144       4.1     14.55    -999      -999  10.67      198
## 701      1143.33      4.41     51.21    4.53       500  22.16      216
## 702       731.33       4.4        49    -999      -999  19.48      216
## 703    101386.11      8.47    2077.5   27.44     12595  89.33      472
## 704     37618.18      7.36   1669.92   36.54      8500 131.87      726
## 705     32733.33      7.75    1411.2   20.87      8500    108     -999
## 706      37115.6      8.67   1671.93   36.79     11000 110.12      672
## 707       6048.4       7.5      -999    -999      -999   -999     -999
## 708         5900         7      -999      11      -999   -999     -999
## 709         6500      -999      -999    23.3      -999     84     -999
## 710      6389.67      6.84      -999    -999      -999  100.5     -999
## 711      5666.67      -999      -999    -999      -999   -999      528
## 712      9554.67      7.74    527.33    21.1      -999   89.4      300
## 713      5050.56      7.08    325.71   19.73      1070 103.27      378
## 714      1094.43       4.5      -999    5.33      -999  30.96     -999
## 715         7918      4.85       300   10.41      -999     96     -999
## 716         3545      -999        98     5.1      -999     54     -999
## 717         6260      5.93       135     9.1      -999  51.06     -999
## 718      3657.13       4.7     77.64    6.04      -999  39.62      280
## 719      1765.33      4.28      85.5    -999      -999   -999     -999
## 720      2171.83      4.37     74.67    5.17      -999  26.14      325
## 721       1666.2      4.29     58.93    5.07      -999  26.17     -999
## 722      1389.25      4.12        59    -999      -999     20     -999
## 723      2426.29      4.02      78.4    5.03      -999  22.59      432
## 724         1390      -999      -999    -999      -999   -999     -999
## 725      1202.71      4.73      44.8    4.84      -999  28.93      204
## 726      2466.67      4.43     72.14    4.79      -999  24.75      396
## 727      3431.43      3.34     91.99    3.67      2893  24.28      396
## 728       314.14      4.46     29.69    3.69       160  10.36      156
## 729          237      5.56     12.34    5.92       139  13.37      185
## 730          307      6.17      21.5    -999      -999   -999     -999
## 731        966.2      6.34     49.94    5.82       520  23.42      174
## 732       1083.5      6.44     40.51    4.34      -999  18.74      312
## 733          700      -999      -999    -999      -999   11.2     -999
## 734          779      -999      -999       4      -999  19.56     -999
## 735          713      4.38     37.17    2.81      -999  20.84      144
## 736         -999      -999      -999    -999      -999   -999     -999
## 737          107      -999      -999    -999      -999   -999     -999
## 738          112      5.98     25.62    2.73      -999   -999      161
## 739        101.2      5.93     25.42    2.02      -999  30.24     -999
## 740        179.6      5.62      25.7    2.27      -999  13.38      144
## 741      3178000     21.12  100038.9      18      -999 126.53      960
## 742      3507000     21.46  99006.25   39.35     6e+05 147.51      840
## 743          250      3.78     12.25    -999      -999   -999     -999
## 744          307      -999      -999    -999      -999   -999       28
## 745         9000      3.77     682.4    2.41      -999   10.5      192
## 746          389      -999      -999    -999      -999   -999     -999
## 747          770      -999      -999    -999      -999   -999     -999
## 748         1650      -999      -999    -999      -999   -999     -999
## 749        15.75      -999      -999    -999      -999   -999     -999
## 750          687      0.98     23.58    1.75    392.52  23.45       72
## 751          635      2.26        34     0.7      -999   -999     -999
## 752          332      -999      15.4    0.93      -999   -999     -999
## 753          144      3.05         9    2.73      -999   2.43     -999
## 754        132.5      2.67      8.63     1.5     26.05  14.78      115
## 755          200      -999      -999    -999      -999   -999     -999
## 756          181      1.47       8.4    0.57        36     10       36
## 757          160       2.9         7    -999      -999   -999     -999
## 758           35      2.23      1.88    1.17        11    7.5      192
## 759      4683.33      4.25     209.5     3.3      -999   8.38      136
## 760          660      3.85        78    -999       250   -999     -999
## 761         1500      3.23      -999    -999      -999     12      118
## 762         -999      6.63      -999    6.63      -999   -999     -999
## 763         -999      -999      -999    -999      -999   -999     -999
## 764         1267       4.5    105.85    -999      -999   -999      119
## 765        19000      3.51    537.94    2.33      4200  31.22      420
## 766     19606.67      3.76    455.43    1.85      -999   21.6     -999
## 767        637.5      2.11      -999    -999      -999   2.03     -999
## 768          341      2.07     59.66    0.56    171.05   2.44     -999
## 769          728      2.24     85.14     0.6       228   2.25     -999
## 770         1600      2.57       196    -999      -999   -999     -999
## 771        12500      2.81    561.94    2.13      -999      5      168
## 772          326      1.78      -999    -999      -999   -999       55
## 773       337.85      1.78     37.99    1.27    136.75   2.18       22
## 774          950      2.53     80.33    -999      -999   3.12      132
## 775          350       1.8      30.4    1.28      -999   3.19     -999
## 776          500      4.27      -999    -999      -999      8      240
## 777        642.5       3.7     39.27    1.78      -999   6.45     -999
## 778          600      4.39       260    -999      -999   -999     -999
## 779         1270      4.04       180    1.94      -999   7.18      234
## 780         3250      5.14       196    1.78    652.25    7.4      113
## 781       174.75         2      18.3    -999      -999      9     -999
## 782        288.8      2.44      29.9    -999      -999   10.5     -999
## 783          194      -999      20.5    -999      -999   -999     -999
## 784          275      3.53      -999    -999      -999   -999     -999
## 785          164      -999      -999    -999      -999   -999     -999
## 786          490         4      34.7    -999      -999   -999     -999
## 787          100      3.87         8     1.2      -999   8.07     -999
## 788          400      -999      -999    -999      -999   -999     -999
## 789         2675       2.8      22.7    -999      -999     16     -999
## 790         2650      -999      -999    -999      -999   -999     -999
## 791         3265      3.47      -999    -999      -999   6.36      213
## 792          775       3.3      76.8    1.75       350   8.22     -999
## 793        12500      8.42    730.54     0.5      -999   -999      156
## 794           52      -999      -999    -999      -999   -999     -999
## 795         35.9      -999      -999    -999      -999   -999       50
## 796        117.5      -999      -999    -999      -999   -999     -999
## 797        58.67      -999      -999    1.09      -999   4.67     -999
## 798           87      0.92      -999    -999      -999   2.75     -999
## 799           51      -999      -999    -999      -999   -999     -999
## 800          134      1.15      -999    -999      -999   -999     -999
## 801           55      1.28         2    1.67        20  10.74       75
## 802         -999      -999      -999    -999      -999   -999     -999
## 803        21.33      0.77      0.96    1.19       8.9    8.4       48
## 804         -999      -999      -999    -999      -999   -999     -999
## 805        52.33      0.92      -999    -999      -999   5.18     -999
## 806         -999      -999      -999    -999      -999   -999     -999
## 807         -999      0.69      -999    -999      -999   -999     -999
## 808            8      0.97      -999    1.25      -999  11.61       40
## 809           55      -999      -999    -999      -999   -999     -999
## 810        28.75       0.6       0.8    0.98      -999   -999       48
## 811           24      0.69      0.81       1      -999     12     -999
## 812        18.25      0.63      0.82    0.92       7.8   1.59       60
## 813          640      -999      -999    -999      -999   -999     -999
## 814          504      -999      24.3    -999      -999   -999     -999
## 815          460      -999      -999    -999      -999   -999     -999
## 816          276      -999      -999    -999      -999   -999       37
## 817        356.5       2.1      24.7    0.94      -999   4.85       42
## 818          500      2.01        23     0.7      -999   6.57     -999
## 819          350      2.09     21.63    0.73      -999    2.8       84
## 820        373.5       3.1      21.1     1.5      -999   5.85     -999
## 821         3900      6.67     407.9    3.13      -999     19      208
## 822         9000      6.78     678.2    1.28    936.84  24.74      120
## 823         1750      -999      -999    -999      -999   -999     -999
## 824         2000      -999      -999    -999      -999   -999     -999
## 825       176.67      0.88      5.51    1.11      22.5   3.93       86
## 826        142.5      0.93       5.8       1        45   5.87     -999
## 827          397      -999      -999    -999      -999   -999       24
## 828          210      -999      -999    -999      -999   -999     -999
## 829          650      -999      -999    -999      -999   2.77     -999
## 830          225      -999      -999    -999      -999   -999     -999
## 831          266      -999      6.07    -999      68.8   10.2     -999
## 832         -999      -999      -999    -999      -999   -999     -999
## 833           80      -999      -999    -999      -999   -999     -999
## 834          100      -999      -999    -999      -999   7.97     -999
## 835         91.4      0.87      3.12    1.32      -999   11.7       72
## 836        359.9      -999      6.11     1.5        86   -999     -999
## 837        103.5      0.87       3.3    -999      -999   -999     -999
## 838          233      -999      -999    -999      -999   -999     -999
## 839         14.4         1      -999    -999      -999   -999       31
## 840        15.23      0.84      -999    0.75      -999   -999     -999
## 841         25.5      0.83      1.75    0.76        11      3     -999
## 842         16.5      -999      -999     0.8      -999   -999     -999
## 843         18.7      0.84      -999    -999      -999   5.53      100
## 844        19.45         1         1    0.75         8     12     -999
## 845        35.25      -999      -999    -999      -999   -999     -999
## 846           85         1      -999    -999      -999   -999     -999
## 847         35.5      1.13      3.18    0.89        20    2.9     -999
## 848         72.4      0.99       4.5    0.93      -999   1.34     -999
## 849        55.16      1.04         4    0.75        21   -999     -999
## 850        60.57      -999      -999    -999      -999   -999     -999
## 851         64.5      -999       4.4    0.67     27.67   -999     -999
## 852           82      -999      -999    -999      -999   -999     -999
## 853           40      0.91      2.92    0.67      17.6   3.35     -999
## 854        119.6      0.78      7.75    0.81      30.3   -999     -999
## 855        84.96      -999      -999    -999      -999   -999     -999
## 856          132      -999      -999    1.07      -999   -999     -999
## 857           65      1.03      3.91    1.02      28.1   -999     -999
## 858         54.5      0.99      -999    1.13      -999   2.59      118
## 859          112      1.01      3.04    0.67        38   -999      108
## 860           70      -999       3.3    -999      -999   1.67     -999
## 861           81      -999      -999    -999      -999   -999     -999
## 862           85      -999      -999    -999      -999   -999     -999
## 863           77      0.92         3    -999      -999   7.61     -999
## 864           50      0.83      2.75    0.87      22.5   3.26     -999
## 865         42.5      -999      -999    -999      -999   -999     -999
## 866           65      -999      -999    -999      -999   6.33       18
## 867           41      0.92       1.9    -999      -999   2.15     -999
## 868        13.55      -999         1    -999      -999   -999     -999
## 869        13.45      -999      -999    -999      -999   -999       65
## 870        11.55         1      -999    -999      -999   -999     -999
## 871            9      0.77      0.78    0.66      4.75   4.96      100
## 872         7.83      0.83      -999       1      -999   -999       60
## 873            9      0.85      -999    -999      -999   2.75       60
## 874         20.1       0.8       1.5    0.75      -999   3.28     -999
## 875            8      -999      -999    0.75      -999   -999       48
## 876         8.65      -999      -999    -999      -999   -999     -999
## 877        55000      8.82    1537.5    3.38      8299   15.1      144
## 878         2000      -999      -999    -999      -999   -999     -999
## 879         3180       3.5    148.13    -999      -999   -999      275
## 880         2740      -999      -999    -999      -999   -999      114
## 881         8000         4       445    -999      -999   -999      327
## 882        14650      3.73      -999    -999      -999   -999     -999
## 883     18333.33       2.5      1000    -999      -999   -999     -999
## 884        15680      2.42    331.15    2.53      -999   15.2     -999
## 885         -999      1.27      -999    -999      -999   -999     -999
## 886        54.43      1.13         7    -999      -999      3       60
## 887           20      1.27      -999    -999        10   -999     -999
## 888        45.25      1.23      5.77    0.81     12.58   2.02       60
## 889          107      0.82      -999    -999      -999   -999     -999
## 890          198       0.9       6.1    0.87     47.57   -999     -999
## 891        78.55      0.83      4.45    0.98        31   3.77     -999
## 892        47.56      -999       2.5     0.8      12.5   -999     -999
## 893         37.3      -999      -999    -999      -999   -999     -999
## 894         39.7      -999      -999    -999      -999   -999     -999
## 895        25.95      -999      -999    -999      -999   -999     -999
## 896           33      0.77         3    0.87      -999   -999     -999
## 897           50      -999         3    -999      -999   -999     -999
## 898        27.33      0.79       2.2    0.49      -999   2.16     -999
## 899        37.55      -999       3.3    -999      -999   2.25     -999
## 900        28.03      -999      -999    -999      -999      7     -999
## 901           50      -999      -999    -999      -999    2.7     -999
## 902         -999      -999      -999    -999      -999   -999     -999
## 903           35      -999      -999    -999      -999   -999     -999
## 904           50      0.67         3    0.57        15   -999     -999
## 905         37.7      -999      -999    -999      -999   -999     -999
## 906         -999      -999      -999    -999      -999      2     -999
## 907         32.9      -999         2    -999      -999   -999     -999
## 908         -999      -999      -999    -999      -999   -999     -999
## 909         45.6      0.77         3    0.88      -999   -999     -999
## 910        29.35      0.85       2.4    0.73       8.7   1.67       48
## 911         21.5      0.71       1.9    0.88      -999    2.5       48
## 912        23.38      0.77       1.5    0.68      -999   2.34       48
## 913           36      -999      -999    -999      -999   -999     -999
## 914           23      1.15      2.57    1.01        21   -999     -999
## 915           23      -999      -999    -999      -999   -999     -999
## 916         64.5      0.73      4.15    0.75     21.67   1.82     -999
## 917        187.5      0.73         6    -999      -999   -999     -999
## 918          120      0.71      5.86    0.51        42   1.69       60
## 919         72.6      -999      -999    -999      -999      2     -999
## 920         7.83      0.74      1.16    0.68      3.59   1.95       43
## 921          545      0.69      9.99    0.92        41   8.39     -999
## 922       166.67      0.64      4.43    0.97      22.9    2.6     -999
## 923       101.67      0.83       3.2    1.38      59.2   6.85     -999
## 924        39.93      0.74      3.45    -999      -999   2.28     -999
## 925         26.6      -999      2.05    -999      -999   -999     -999
## 926           34      0.83      -999    -999      -999   -999     -999
## 927           27      0.83      -999    -999      -999   -999     -999
## 928           41      0.73      2.34    0.58     14.25   1.72     -999
## 929         17.6      0.74      -999    -999      -999   2.41     -999
## 930         20.4      -999      -999    -999      -999   -999     -999
## 931         20.4      -999      -999    -999      -999   -999     -999
## 932          650      1.38         7       2      -999   -999       39
## 933           54      0.69       3.7    0.75      -999   -999     -999
## 934         -999      -999      -999    -999      -999   -999     -999
## 935         25.5      0.67       2.8    0.79        10   3.33       43
## 936         43.4      -999      -999    -999      -999   -999     -999
## 937        20.57      0.59      1.61    0.55     10.89      4     -999
## 938         29.5      -999      -999    -999        10   2.03     -999
## 939        20.77      0.69      1.82    0.72       9.4    3.1       59
## 940         23.6      0.62      -999    -999      -999   -999     -999
## 941           25      0.77      2.95    -999      -999      4     -999
## 942         58.5      -999      -999    -999      -999   -999       36
## 943          144      1.16      -999    1.02      -999   -999       60
## 944         14.1      -999      -999    -999      -999   -999     -999
## 945         59.8      -999      -999    -999      -999   -999     -999
## 946       1092.6      1.17      23.1    1.02      -999   5.32     -999
## 947         -999      -999         2    0.67        14   -999     -999
## 948         30.8      0.49      -999    -999      -999   -999     -999
## 949       506.67      0.71      5.05    0.83    105.05   3.34       48
## 950       106.18      -999      -999       1        30   2.34     -999
## 951         -999      -999      -999    -999      -999   -999     -999
## 952         -999      -999      -999    -999      -999   -999     -999
## 953          7.2      -999      -999    -999      -999   -999     -999
## 954         10.6      -999      -999    -999      -999   -999       39
## 955         7.36      0.83      -999    -999      -999   -999     -999
## 956           45      -999      -999    -999      -999   -999     -999
## 957           10      0.96       0.9    -999      -999   -999     -999
## 958         54.5      0.94      3.12     1.1      -999   -999     -999
## 959         -999       0.7       5.2    -999      -999   -999     -999
## 960           55      0.68         4    0.63      -999      3       24
## 961           57      0.67      -999    -999      -999   -999     -999
## 962           85       0.6      2.97       1      25.5      3       45
## 963        55.05      0.71      4.35    0.53        23   1.32     -999
## 964           56         1      -999    -999      -999   -999     -999
## 965         21.4      -999      1.73     0.6      -999   1.75     -999
## 966           80      -999      -999    -999      -999   -999     -999
## 967           38      0.87      -999       2      -999   3.15     -999
## 968           26      -999      -999    -999      -999   0.97     -999
## 969         38.6       0.7       2.3    0.85     20.15   -999     -999
## 970         28.5      0.79       2.1    0.82      13.5   2.49     -999
## 971           24      -999       1.9    0.97        13   -999     -999
## 972         26.1      0.67       1.9    -999      -999   -999     -999
## 973           22      -999      -999    -999      -999   -999     -999
## 974         11.7      -999      -999    -999      -999   -999     -999
## 975           25      -999      -999    -999      -999   -999     -999
## 976         24.4      0.84      -999    -999      -999   -999     -999
## 977         -999      0.67      2.24    -999     17.23   -999     -999
## 978         -999      -999      -999    0.88      -999   3.06     -999
## 979        43.35      -999      -999    -999      -999   -999     -999
## 980         18.5      0.72      -999    -999      -999   -999     -999
## 981           37      0.95      2.55    0.92        11   2.59       98
## 982           65      -999      -999    -999      -999   -999     -999
## 983           53      0.83      -999    -999      -999   -999     -999
## 984         43.7       0.8       4.2    0.82      -999    2.4       53
## 985         -999      -999      -999    0.75      -999   -999     -999
## 986           66      -999      -999    -999      -999   -999     -999
## 987          368      -999      -999    -999      -999   -999     -999
## 988          155      0.94         5    0.75      -999   3.25     -999
## 989         51.8         1       4.4    -999      -999   2.93     -999
## 990          606      1.17     24.39    1.05       150   5.36     -999
## 991           20      0.97       1.5    -999      -999   -999     -999
## 992         16.7      0.97      1.49    -999      -999   1.27     -999
## 993          882      -999      -999    -999      -999   -999     -999
## 994         -999      -999      -999    -999      -999   -999     -999
## 995         52.6      -999      -999    -999      -999   -999     -999
## 996         1250         4      -999    -999      -999   -999     -999
## 997         20.3      0.66      1.35    -999      5.75   1.24     -999
## 998         -999      -999       1.9    -999      -999      2     -999
## 999         17.5      1.05      -999       1      -999      3     -999
## 1000          20      -999      -999       1      -999      3     -999
## 1001       27.17      0.82      1.16     0.7      -999   1.89     -999
## 1002       51.67      0.68      3.92     0.5      -999   1.29       24
## 1003        59.2       0.7      3.78    -999        27   1.86     -999
## 1004          59      -999      -999    -999      -999   -999     -999
## 1005        42.3      0.83       1.7       1        15   5.51       30
## 1006       332.5      1.24      -999    1.17      -999   7.47     -999
## 1007         755      -999      -999    1.33      -999   -999       90
## 1008        -999      1.07       9.5    -999      -999   -999     -999
## 1009        -999      -999      -999    -999      -999   -999     -999
## 1010          55      1.01       6.5    1.67     15.33      2     -999
## 1011        44.5         1       7.5     0.4     13.61   -999     -999
## 1012        -999      -999      -999    -999      -999   -999     -999
## 1013       12.33      0.88       1.2    1.07      -999   2.12     -999
## 1014       37.77       0.7      -999    -999      22.5    4.5     -999
## 1015       44.97      0.77      2.07    0.69     13.28   2.77     -999
## 1016         111      -999       4.5       1      -999   -999     -999
## 1017        81.6      -999      -999    -999      -999   -999     -999
## 1018        45.9      -999      -999    -999      -999   -999     -999
## 1019        57.4      -999      -999    -999      -999   -999     -999
## 1020        89.8      -999      -999    -999      -999   -999     -999
## 1021          96      -999      -999    -999      -999   -999     -999
## 1022          65      -999       6.5    -999      -999   -999     -999
## 1023          62      -999      -999    0.75      30.5   -999     -999
## 1024          94       1.3      -999    1.08      17.5   6.42     -999
## 1025         100      0.84         5    0.64      -999   -999     -999
## 1026         105      0.85         3    -999      -999   -999     -999
## 1027          77      0.84      5.33       1        45      3     -999
## 1028         185      0.86      4.46    0.75        25   3.36     -999
## 1029         150      0.72         3    -999      -999   -999     -999
## 1030        48.3      0.82       3.4    0.67      -999      3       67
## 1031        -999      -999      3.03    0.56     15.75   -999     -999
## 1032          53      0.77      -999     0.7      -999   -999     -999
## 1033          70      0.97       3.5    0.82      20.5   3.61     -999
## 1034        53.2      0.84       2.9    0.87     14.95   2.64       24
## 1035       268.5      1.57      -999    1.63      -999   -999     -999
## 1036         900      1.46      34.9    1.56     440.5   2.32       47
## 1037       197.5       0.5      -999    -999      -999   1.17     -999
## 1038        -999      -999      -999    -999      -999   -999     -999
## 1039         105      0.54      2.31    0.74     22.93   1.54       36
## 1040           6      0.65       0.9    0.59      -999   1.41       60
## 1041        -999      0.67       1.7    -999      -999   1.25     -999
## 1042        -999      -999       2.8    -999      -999   -999     -999
## 1043        -999      -999      2.21    -999      -999   -999       33
## 1044          50       0.7      3.45     0.5      -999   -999     -999
## 1045          35      -999      -999    -999      -999   -999     -999
## 1046        -999      -999      -999    -999      -999   -999     -999
## 1047          54      0.73       3.5     0.5      -999   -999     -999
## 1048       39.85      0.97      2.45    0.67      17.6      2     -999
## 1049        54.8      0.75      -999    0.53      15.1   -999     -999
## 1050        39.5       0.7       2.6    -999      -999   -999     -999
## 1051        36.7      -999      -999    -999      -999   -999       14
## 1052          39      0.67      -999    -999      -999   -999     -999
## 1053        35.3      0.73      2.43     0.6     13.98   1.83     -999
## 1054       106.2       0.9      5.05     0.7     31.09   -999     -999
## 1055       141.5      -999       3.5       1      -999   -999     -999
## 1056       43.67       0.7      2.46    0.48      13.6   0.94       16
## 1057        25.5      0.75      2.32    0.68      9.63   3.21     -999
## 1058        47.5      -999      -999    -999      -999   -999     -999
## 1059        51.6       0.7         3    0.59        15   6.17       47
## 1060       93.33      0.71      2.43    0.71      15.9   0.94       21
## 1061          46      0.68       2.3    0.44      8.94   1.17       39
## 1062        19.5      0.71       1.6    0.79      9.44   3.17       34
## 1063          40      0.74      3.02    0.67     16.68   1.56       35
## 1064        20.5      0.78      1.63    0.46        10   1.05     -999
## 1065        49.5       0.7      3.05    0.54      9.33   0.82     -999
## 1066        53.5      0.71      2.83     0.6     17.67   2.18     -999
## 1067          48      0.65       2.1    -999      -999    1.1     -999
## 1068        27.5      0.69      1.85    0.58      8.87   1.57       36
## 1069          63      -999      -999    -999      -999   3.75     -999
## 1070          70      0.62      -999    -999      -999   2.96     -999
## 1071       11.25      0.69       1.2    -999      -999   -999     -999
## 1072        12.8      -999      -999    -999      -999   1.34     -999
## 1073        -999      -999      -999    -999      -999   -999     -999
## 1074        17.7      0.65       1.5    -999      -999   -999     -999
## 1075           6      -999      -999    -999      -999   -999     -999
## 1076        28.2      -999      -999    -999      -999   -999     -999
## 1077        9.22      -999      -999    -999      -999   -999     -999
## 1078       12.45      0.67       1.3    0.92       4.5   1.67     -999
## 1079        7.25      0.67      0.97    0.69      3.34   1.98       37
## 1080        20.5      0.69      1.25    0.72      8.95   2.37       72
## 1081          30      -999      -999    -999      -999   -999     -999
## 1082          32      -999      -999    -999      -999   -999     -999
## 1083        33.5      0.97       1.5    -999         8   4.54     -999
## 1084          25      0.71       3.2    0.67     15.65   1.07       12
## 1085        -999      -999      -999    -999      -999   -999     -999
## 1086         106      1.26      6.25    1.07        39   3.28       72
## 1087         178      -999         5     1.5      -999   -999     -999
## 1088          19      -999      -999    -999      -999      1     -999
## 1089         290      -999      -999    -999      -999   -999     -999
## 1090       257.5      -999      -999    -999      -999   -999     -999
## 1091         269      0.93     11.08    0.75      -999   2.98     -999
## 1092        96.7       1.2        10     0.7      -999    2.5     -999
## 1093      233.58      1.02      12.1    0.88      -999      6     -999
## 1094         142      1.03      10.6    1.31        35    9.5     -999
## 1095       335.5      0.98      13.5     0.9    107.03  11.59       36
## 1096       227.5      -999      -999    -999      -999   -999     -999
## 1097         203      1.09      10.4    -999      -999      2     -999
## 1098         198      1.19     11.35    0.96     78.15      5       92
## 1099      125.33       1.1      8.96    0.95     34.63   4.21       67
## 1100      236.33      1.14      11.7    0.87      35.6   4.48       40
## 1101       370.5       1.2     13.28    0.73     50.45   4.71       36
## 1102          50      0.91       3.4    -999      -999   3.99     -999
## 1103       143.5      0.57      -999    -999      -999   -999     -999
## 1104        66.4      -999      3.75    -999      -999   -999     -999
## 1105          35       1.4         3    1.09      -999    5.3     -999
## 1106          35      1.14      -999       1      -999    2.7     -999
## 1107          39      1.75      -999    -999      -999   -999     -999
## 1108          52      1.21      -999       1      -999    2.4     -999
## 1109          35      1.16      2.83    0.98      12.5    2.5       62
## 1110       53.33      1.09       5.2     0.7        40   -999       62
## 1111          22      0.95      2.63    0.63      10.9   -999      101
## 1112       60.67      -999      -999    -999      -999      3     -999
## 1113        85.5      -999      -999       1        30   3.83     -999
## 1114       22.65      0.83       3.3    0.49      -999   1.93     -999
## 1115          21      -999      -999    -999      -999   -999     -999
## 1116       27.75      -999      -999    -999      -999   -999     -999
## 1117      1135.8      0.91     21.92    0.84     152.1   4.96      120
## 1118          40      1.08      2.65    0.91      13.2   4.06       60
## 1119          19      0.97      2.32    0.69      9.35    2.1       55
## 1120         7.5      -999      -999       1      -999   -999     -999
## 1121       47.67       0.8      3.42     0.5     22.25   1.78     -999
## 1122       63.15      0.88      3.85    -999      -999   1.45     -999
## 1123         121      1.27      11.4     0.6      27.5   2.75     -999
## 1124        -999      -999      12.5    -999      -999   -999     -999
## 1125        -999      -999        20    -999      -999   -999     -999
## 1126      150.95      -999      -999    -999      -999   -999     -999
## 1127      146.85       1.3      14.5    0.42        30    2.7       22
## 1128         101      1.81      10.2    1.08      -999   0.86     -999
## 1129        85.5      -999      -999    0.47      -999   3.54     -999
## 1130        32.5      0.71      -999    0.97      -999   -999       53
## 1131         120      -999      -999    -999      -999   4.07     -999
## 1132          50      -999      -999    -999      -999   -999     -999
## 1133         118      -999      -999    -999      -999   -999     -999
## 1134          36      1.12      2.62    0.76     10.07    2.3     -999
## 1135          71      -999       3.9    0.74        16   1.57     -999
## 1136          59      1.12       4.5    0.73      -999   -999     -999
## 1137        60.5      1.09       4.4    -999      -999   -999     -999
## 1138        -999      -999      2.74    0.62      -999   -999     -999
## 1139          40      1.44         3    -999      -999   -999     -999
## 1140          40      0.82      -999    1.05      -999   -999     -999
## 1141        31.5      0.77      -999    -999      -999   -999     -999
## 1142        26.9      0.87      -999    -999      -999   -999     -999
## 1143        28.7      0.82       2.2    0.88      -999   1.62     -999
## 1144        26.3      1.03       2.5    -999      13.1   -999     -999
## 1145          29      0.83       2.2    0.81     13.69   1.68     -999
## 1146          28      -999      -999    0.87      -999   -999     -999
## 1147          30      -999      -999    -999      -999   -999     -999
## 1148          28      -999      -999    -999      -999   -999     -999
## 1149        28.3      -999      -999    -999      -999   -999     -999
## 1150       16.33      0.82       2.2    0.87     13.87   3.77     -999
## 1151          14      0.79      1.63    0.76      6.77   0.99     -999
## 1152          27      0.99      2.32    0.85      10.5   1.18     -999
## 1153        20.5      0.88      1.83    0.84      8.95   2.58      100
## 1154          25      0.85      2.33    0.82      -999   4.23     -999
## 1155          23      0.83      1.89    0.77      9.58   2.33     -999
## 1156          42      0.97      4.46    0.98     18.65    1.5     -999
## 1157        39.6      0.84      1.67    -999      -999   -999     -999
## 1158          21      -999       2.1    1.05      -999   -999     -999
## 1159          27      0.75       2.4    0.68        10   1.25       48
## 1160          33      0.71      2.18    0.63     15.28   1.21       48
## 1161        23.4      -999      -999    -999      -999    1.5     -999
## 1162        23.4      0.65      1.77    0.65      14.8   3.95       38
## 1163        -999       0.7      1.45    0.63      18.1      8     -999
## 1164       50.83      1.12      -999    -999      -999   -999     -999
## 1165         104      -999      -999    -999      -999   -999     -999
## 1166       31.25      0.77       2.4    0.84      11.5   -999       89
## 1167        60.9      -999      -999    -999      -999   -999     -999
## 1168        39.1      -999      -999    -999      -999   -999     -999
## 1169          95      -999      -999    -999      -999   -999     -999
## 1170        45.1      -999      -999    -999      -999   -999       29
## 1171          40      1.18      -999       1        20   2.37     -999
## 1172          21      1.04       2.7    0.94      -999   3.04     -999
## 1173       36.97       0.8       2.7    0.82      10.5   2.69       62
## 1174          27      -999      -999    -999      -999   -999     -999
## 1175      177.33      0.88      6.25    0.89        40   5.49     -999
## 1176         148      1.28      7.25    1.29      -999   -999     -999
## 1177          95      -999      -999    -999      -999   -999     -999
## 1178          12      1.06      -999       1      -999   2.51     -999
## 1179          11      0.93      -999    -999      -999   -999     -999
## 1180          11      0.99         1       1      -999   -999     -999
## 1181          63       0.9      4.35    0.94        24   -999     -999
## 1182          25      0.98      -999    0.84      -999    2.5     -999
## 1183          34       0.8      -999    0.77      -999   3.33     -999
## 1184          65      1.02         4    0.87      12.5   3.59       67
## 1185          45      0.82      -999       1      -999   -999     -999
## 1186          45         1      -999       1      -999   -999     -999
## 1187          64      -999      -999    -999      -999     11     -999
## 1188          26      1.27      -999       1      -999    2.5     -999
## 1189        60.1      1.07         5    0.98      -999      9       48
## 1190          70      -999      -999    -999      -999   -999     -999
## 1191          20      1.48      -999    1.17        11   -999     -999
## 1192          18      1.06       1.8    0.91      -999   3.01     -999
## 1193          61      -999      -999    -999      -999      2     -999
## 1194         200      -999      -999    -999      -999   2.33     -999
## 1195       127.5      0.77       4.1    -999      -999   -999     -999
## 1196         124      0.75      -999    0.83      -999   3.69     -999
## 1197         155      -999      -999    -999      -999   -999     -999
## 1198      139.35      -999      -999    -999      -999   -999     -999
## 1199       113.5      0.72      -999    0.75      -999   1.24     -999
## 1200         125      0.72         3    -999      -999   2.07     -999
## 1201         202      0.71      -999    -999      -999    1.6     -999
## 1202         115      0.88      4.87    0.83        25    2.6       29
## 1203         133      0.86       4.5    0.97     21.28   3.51     -999
## 1204          70      0.73      2.62    0.78     22.76   4.08     -999
## 1205         280      0.71      5.81    0.82     63.75   2.22     -999
## 1206       246.5      0.74      4.55    0.86     39.68   3.82       50
## 1207       72.17      -999      -999    -999      -999      2     -999
## 1208        10.3      0.75      1.09    0.76      -999   3.44       27
## 1209       11.03      0.76      1.33     0.7      -999   3.53     -999
## 1210           9      0.74      1.04    0.49       5.4   2.46     -999
## 1211       11.05      -999      -999    -999      -999   -999     -999
## 1212        12.5      -999      1.08    0.48      3.25   -999     -999
## 1213          51      0.83      2.67    0.49      8.45   1.78       35
## 1214        57.5      -999      -999    -999      -999   -999     -999
## 1215          75      -999      -999    -999      -999   -999     -999
## 1216        3000      -999      -999       3      -999   -999     -999
## 1217        2450      -999      -999       4      -999   -999     -999
## 1218         143      0.92      4.75    0.73      -999    3.5       48
## 1219       47.38      0.69       2.6       1      -999   2.17       33
## 1220          12      1.01      1.35    0.68      -999   1.13     -999
## 1221          15      1.09      1.35    0.79      -999   1.73     -999
## 1222        38.5      -999      -999    -999      -999   -999       65
## 1223       135.5      1.17      -999    -999      -999   -999     -999
## 1224      113.67      1.15      5.55     0.5     35.55   1.36     -999
## 1225         211      1.17      -999    -999      -999    1.5     -999
## 1226         185      0.89      6.69    0.49     23.56   1.31       62
## 1227        55.7      -999      -999    -999      -999      2     -999
## 1228        -999      -999      -999    -999      -999   -999     -999
## 1229          24      -999      -999    -999      -999   -999     -999
## 1230       25.53      -999      1.55    -999      -999   -999     -999
## 1231        74.5      -999      -999    -999      -999   -999     -999
## 1232         334      -999      -999    -999      -999   -999       24
## 1233       37.05      0.77      3.46    0.75        20   -999       30
## 1234        21.3      -999      -999    -999      -999   -999     -999
## 1235        -999      1.58        14    -999      -999   -999     -999
## 1236       207.5      1.36        20     1.3      -999   4.99       37
## 1237          84      -999      -999    -999      82.8   -999     -999
## 1238         131      0.77      -999    0.73      -999    3.4     -999
## 1239       64.86      -999       2.8    0.93        19   -999     -999
## 1240          93      -999      -999    -999      -999   -999     -999
## 1241         113      -999      -999    -999        30   3.25     -999
## 1242          75      0.75      5.13    0.83        45    5.5     -999
## 1243      146.67      0.87         3    0.79      -999   2.86       84
## 1244         114      -999      -999    -999      -999   -999     -999
## 1245        74.8      0.75       4.5    -999      -999      5     -999
## 1246        -999      -999      -999    -999      -999   -999     -999
## 1247        48.1      0.88      -999    0.75      -999      3     -999
## 1248       51.85      0.87      -999    -999      -999      3     -999
## 1249       77.43      -999      2.65    0.98      -999   3.57     -999
## 1250          65       0.8      -999     0.8      -999   2.74     -999
## 1251         280      1.32     16.77    0.87        40   3.15       65
## 1252          47      -999      -999    -999      -999   -999     -999
## 1253         625      1.29        20    1.33      -999      6     -999
## 1254        56.6      -999      -999    -999      -999   -999     -999
## 1255          47      -999      -999    -999      -999   -999     -999
## 1256        54.5      1.03      -999    -999      -999   -999     -999
## 1257          58      0.87      3.64    0.48        22   1.44     -999
## 1258          94      -999      -999    -999      -999   -999     -999
## 1259          50         1      -999    1.17        14   -999     -999
## 1260         130      -999      -999    1.17      -999   -999     -999
## 1261        7150      4.43    196.36     1.9   1533.33   5.25       79
## 1262        -999      -999      -999    -999      -999   -999     -999
## 1263          25      0.81       1.6       1      -999   -999       48
## 1264         115      0.74      -999       1      -999     18       60
## 1265          27         1      -999    -999      -999   -999     -999
## 1266        -999      -999      -999    -999      -999   -999     -999
## 1267          24       0.8       3.5    -999      -999   -999       69
## 1268        68.8      -999      -999    -999      25.6   -999     -999
## 1269       27.33      0.79       0.8    1.27      -999   16.5       72
## 1270         125      0.94       1.5    1.07      -999   10.6      104
## 1271         235      2.96      14.1    1.19      71.2   10.9       85
## 1272         158      3.39     16.67    1.38      -999   -999       88
## 1273       98.05      -999      -999    -999      -999   -999       70
## 1274        3500      2.53     264.5    1.64      1300     34      228
## 1275         200      -999      -999    -999      -999   -999     -999
## 1276         126      0.97       3.8    1.69        45   10.5     -999
## 1277       154.5      0.87      4.88    -999        41   -999       68
## 1278       110.2      -999      -999    -999      27.5   -999     -999
## 1279        97.5      1.04      3.36     2.2        60     12       70
## 1280         400      1.57     16.35    -999      -999   -999     -999
## 1281          30      -999      -999    -999      -999   -999     -999
## 1282         202      -999      -999    -999      -999   -999     -999
## 1283         190      -999      -999    -999      -999   -999      115
## 1284         863      1.11     15.38    1.89    140.57  26.24      102
## 1285      816.67         1      -999     1.5      -999  11.59     -999
## 1286         516      -999      -999    -999      -999     12     -999
## 1287       873.5         1      -999    -999      -999  23.75     -999
## 1288       828.1      -999      -999    1.52      -999   -999     -999
## 1289       172.5      -999      -999    -999      -999   -999       85
## 1290         388      -999      -999    -999      -999   -999     -999
## 1291        14.6      -999      -999    -999      -999   -999     -999
## 1292        -999      -999      -999    -999      -999   -999     -999
## 1293        -999      1.13      -999    -999      -999   -999     -999
## 1294      147.65      1.33      -999       2      -999   7.68     -999
## 1295         218      -999      -999    -999      -999   -999     -999
## 1296         141      -999      -999    -999      -999   -999     -999
## 1297      271.67      -999      -999    -999      -999   -999     -999
## 1298         106      1.73      9.96    1.67      -999   -999      114
## 1299      132.17      1.32      5.62    2.12     33.87   7.83      156
## 1300       65.38      1.32      3.49    1.75      44.6  10.84      170
## 1301       326.5      -999      -999    -999      -999   -999     -999
## 1302         240      -999      -999    -999      -999   -999     -999
## 1303         510      -999      -999     2.5      -999   -999     -999
## 1304         120      -999      -999    -999      -999   -999     -999
## 1305        -999      -999      -999    -999      -999   -999     -999
## 1306        -999      -999        33    -999      -999     36     -999
## 1307        4750         1      -999    -999      -999     39     -999
## 1308        6300         1      -999    -999      -999     32     -999
## 1309     6343.33      0.94      -999    0.92      -999  29.85     -999
## 1310        -999      1.35      35.5    -999      -999     36      180
## 1311        2930         1      33.8    0.89    478.83  26.83     -999
## 1312        3180      -999      -999    -999      -999   -999     -999
## 1313        2010      1.17     29.67    1.77      -999     30      180
## 1314        8000      1.37      -999    -999      -999   -999     -999
## 1315        3413      1.09     27.43    1.57       248  17.81      116
## 1316        4100         1      -999    -999      -999   -999     -999
## 1317        -999      1.33      -999    -999      -999   -999     -999
## 1318        16.5      -999      -999    -999      -999   -999     -999
## 1319        -999      -999      -999    -999      -999   -999     -999
## 1320         134      -999      9.91    -999      -999    4.2     -999
## 1321        -999      -999      -999    -999      -999   -999     -999
## 1322         295      2.05     15.21    -999      -999   -999     -999
## 1323         216      1.88     12.88    1.33      -999   6.09     -999
## 1324        -999      -999         5    -999      -999   -999     -999
## 1325     1273.33      -999      -999    -999      -999   -999     -999
## 1326        1780      -999      -999    -999      -999   -999     -999
## 1327        -999       1.5        56       3      -999   -999     -999
## 1328        1330      -999      -999    2.25      -999   -999      192
## 1329         110      1.77      -999    -999      -999   -999     -999
## 1330       42.25      -999      -999    -999      -999   -999     -999
## 1331          37      -999      -999    -999      -999   -999     -999
## 1332         712      -999      -999    -999      -999   -999     -999
## 1333         130         1      -999     1.5      -999   -999     -999
## 1334        1060      2.75      -999    -999      -999   -999      240
## 1335        1280      0.93      -999    2.25      -999     24     -999
## 1336        2150      1.05        77    -999      -999  35.45     -999
## 1337         221      -999      -999    -999      -999   -999     -999
## 1338          39      -999      -999    -999      -999   -999     -999
## 1339         595      -999      -999    -999      -999   -999     -999
## 1340         225      -999      -999    -999      -999   -999     -999
## 1341         461      -999      -999    -999      -999   -999     -999
## 1342       760.5      -999      -999    -999      -999   -999     -999
## 1343      751.67      1.44      -999       2      -999   10.5      120
## 1344       702.5      1.43        12     2.5       355  10.75     -999
## 1345       803.7      1.49     15.44     2.5      -999  11.81     -999
## 1346      540.33      1.43     15.15    2.14       165  10.48      283
## 1347         374      -999       9.5       2      -999   -999       84
## 1348      324.75      1.25      9.57    2.15      -999   9.52      144
## 1349        -999       1.5      -999    -999      -999   -999     -999
## 1350         600      -999      -999    -999      -999     12     -999
## 1351         751      0.83      -999    -999      -999  11.34     -999
## 1352         190      0.92       4.5     1.2        30   -999     -999
## 1353         200      -999      -999    -999      -999   -999     -999
## 1354       157.6         1      6.26    1.22     74.16  20.94       84
## 1355       278.5      0.87      6.94    0.86      60.5  11.64      132
## 1356         308      0.79      -999     0.7    102.25  11.37     -999
## 1357        -999      -999      -999    -999      -999   -999     -999
## 1358        -999      -999      -999    -999      -999   -999     -999
## 1359         136      0.88      -999    -999      -999   -999     -999
## 1360        -999      -999      -999    -999       200   -999     -999
## 1361       165.4      0.78      3.95    1.13      -999     12     -999
## 1362         707      -999      -999    -999      -999   -999     -999
## 1363      466.33      0.84      9.37    0.96     98.62  17.63     -999
## 1364         275      0.93      5.97    1.43    113.47     12       48
## 1365         840      0.92     11.08    -999     109.9   -999     -999
## 1366      130.95      0.97       4.1       3      -999     12     -999
## 1367      401.05       0.8      6.02    1.25        80   -999     -999
## 1368      163.33      0.93       3.9    1.28        75  10.69     -999
## 1369         205      -999      -999    -999      -999   -999     -999
## 1370      609.33      0.97        10    1.35        89   11.6     -999
## 1371         596         1      -999    -999      -999   -999     -999
## 1372        -999       0.8      -999    1.13      -999     12     -999
## 1373       342.5      0.78      6.35    1.17     92.75  11.26       72
## 1374         459      0.92      -999    1.39      -999  10.74     -999
## 1375         155       0.8      3.61    0.92     42.16  11.69     -999
## 1376         203      -999      -999       1        33     12     -999
## 1377      172.67      0.92      3.24    1.07        16  11.63     -999
## 1378         217      0.89      -999    1.13      -999  10.33     -999
## 1379      663.03         1       7.8    1.75       100   -999     -999
## 1380       119.5      0.93      -999    -999        45     12     -999
## 1381          67      -999      -999    -999      -999   -999     -999
## 1382          75      -999      -999    -999      -999   -999     -999
## 1383        94.1      -999      -999    -999      -999   -999     -999
## 1384        59.7       1.1      -999     1.5      22.7   -999     -999
## 1385          75      -999      -999    -999      -999   -999     -999
## 1386          70      -999      -999    -999      -999   -999     -999
## 1387          75      -999      -999    0.75      -999   -999     -999
## 1388       57.29      1.03      -999    -999      -999     12       96
## 1389       54.15       1.2         4    1.38      19.2   -999     -999
## 1390          60      -999      -999    -999      -999     12     -999
## 1391          84      0.93      3.55    1.64      34.5  11.62      123
## 1392       94.81      0.93      -999    -999      -999   -999     -999
## 1393       44.15      0.97       2.3    1.46      -999   -999     -999
## 1394        62.1         1      -999    1.33      -999   -999     -999
## 1395       88.45      1.03      -999    -999      -999  11.14     -999
## 1396       48.25      0.98      2.62    1.45        19  11.73       62
## 1397          85      1.14         4     1.3      -999   11.5     -999
## 1398       58.13      1.05       2.6    -999      -999     11     -999
## 1399        62.8      0.99      -999    -999      -999   -999     -999
## 1400        95.7      1.03       3.5    1.17     39.55      5       96
## 1401       229.8      1.29         5    -999      -999      4     -999
## 1402       194.5      1.22         7    2.06     83.75  11.24      120
## 1403        -999      2.71      -999     3.5      -999     22      144
## 1404         502      -999      -999    1.75      -999      6       72
## 1405         588      1.54        20    1.73      -999  11.32       72
## 1406        1880         3      -999    -999      -999   -999     -999
## 1407      3687.5      3.56       105       1      -999  10.94       52
## 1408         283      1.65        11    -999      -999   -999     -999
## 1409         700      -999      -999    -999      -999   -999     -999
## 1410         797      -999      -999    1.02      -999   -999     -999
## 1411         159      1.52     12.94    1.17       100   4.53      149
## 1412        -999       1.5        10    1.17      -999   -999     -999
## 1413         350      1.85     19.98    1.25     104.4   -999      138
## 1414        42.5      -999        10    -999      -999   -999       32
## 1415      479500     12.21     27500      18      -999 112.93      876
## 1416       4e+06      -999      -999    -999      -999   -999     -999
## 1417       5e+05      -999      -999    -999      -999   -999     -999
## 1418      387500      9.94  28633.33      18      -999  49.31      528
## 1419      480000     10.25     12500      24     67500     36      150
## 1420       60000      7.08      1734    3.37      6250     26      288
## 1421        3900      -999      -999    -999      -999   -999      144
## 1422        4860      5.37       290    1.05      -999  37.42     -999
## 1423        3770      4.63      -999    1.25      -999   3.53      480
## 1424        2750      -999      -999    -999      -999   -999     -999
## 1425        2150      -999      -999    -999      -999   -999     -999
## 1426        2020      2.18     131.4    1.83      -999      9      282
## 1427       10150      -999      -999    -999      -999   -999     -999
## 1428        1150         3      -999    -999      -999   -999     -999
## 1429        1500         4      -999    -999      -999   -999     -999
## 1430        1475      4.34      -999    -999      -999      9     -999
## 1431        4300      4.36     66.33     4.5      -999  13.33      268
## 1432        4600      2.09       105    1.02       420      9      226
## 1433       50000         4       113    1.25      -999   10.5      156
## 1434        1225      4.75        99    1.72      -999   -999     -999
## 1435        1500         2       105     1.5      -999   10.5      108
## 1436        4750      9.41    387.25    0.69      -999  30.12      385
## 1437        6070      8.67    354.77     2.5      -999     36      333
## 1438        5070      8.92      -999       5      -999   -999     -999
## 1439       28500      6.19   1491.17    1.83      -999     39      310
## 1440        5030      5.22      -999    -999      -999     12      114
##      litter_size litters_year
## 1           1.85            1
## 2              1         0.99
## 3              1         0.95
## 4              1         -999
## 5              1         -999
## 6           1.37            2
## 7              1         -999
## 8              1         1.89
## 9              1            1
## 10             1            1
## 11             1         0.75
## 12          1.17         0.89
## 13          1.33            1
## 14          1.51         1.13
## 15             1         -999
## 16             1          0.5
## 17          1.33          0.5
## 18          1.17            1
## 19             1         -999
## 20             2         -999
## 21          1.25         0.75
## 22           1.1            1
## 23          1.61            1
## 24          -999         -999
## 25          -999         -999
## 26             1         -999
## 27             1         -999
## 28             1         -999
## 29             1         -999
## 30             1         -999
## 31             1         -999
## 32             1         -999
## 33             1            1
## 34             1            1
## 35          1.01         -999
## 36             1            1
## 37             1         -999
## 38          1.25         -999
## 39             1         0.57
## 40          -999         -999
## 41             1         -999
## 42             1         -999
## 43             1         -999
## 44             1         -999
## 45             1         -999
## 46          1.46         -999
## 47          1.18            1
## 48          1.44            1
## 49             1          1.5
## 50           1.6          1.5
## 51             1         -999
## 52          1.03            1
## 53             1         -999
## 54             1            1
## 55          -999         -999
## 56             1         -999
## 57             1         -999
## 58           1.1          1.1
## 59             1          1.3
## 60             1         -999
## 61             1         -999
## 62             1            2
## 63             1            2
## 64             1         -999
## 65             1            1
## 66             1            1
## 67          -999         -999
## 68             1         -999
## 69          1.32            1
## 70             1         -999
## 71             1         -999
## 72             1            1
## 73             1         1.33
## 74             1         1.53
## 75          1.01         0.75
## 76             1         -999
## 77           1.5         -999
## 78          1.18         0.75
## 79          1.06            1
## 80           1.2            1
## 81          1.35            1
## 82             1         -999
## 83             1         -999
## 84          1.33         -999
## 85           1.5         -999
## 86             1         -999
## 87             1         -999
## 88             1         -999
## 89             1         1.09
## 90             1         0.94
## 91          1.65            1
## 92             1         -999
## 93          1.01         1.38
## 94          1.08          0.4
## 95             1         -999
## 96             1         -999
## 97          1.57         -999
## 98             1         -999
## 99             1         0.73
## 100            1            1
## 101            1            1
## 102            1         1.21
## 103            1         1.33
## 104            1          1.5
## 105            1          0.5
## 106            1         0.65
## 107            1         -999
## 108            1         -999
## 109            1          0.5
## 110            1         0.67
## 111         1.29         0.77
## 112         1.01         -999
## 113         1.03         -999
## 114            1            1
## 115         1.78         -999
## 116            2            1
## 117            1         -999
## 118         1.07         0.91
## 119            1            1
## 120            1            1
## 121            1            1
## 122         1.01            1
## 123         1.02            1
## 124         1.14            1
## 125            1         -999
## 126         1.11            1
## 127            1         -999
## 128            1         -999
## 129         3.32         -999
## 130            1         -999
## 131            1         -999
## 132            1            1
## 133         1.33         -999
## 134            1          1.5
## 135         1.62         0.97
## 136         1.71            1
## 137            1            1
## 138            1         -999
## 139         1.03         -999
## 140          1.2         0.91
## 141         1.12         0.54
## 142            1         0.75
## 143            1         0.42
## 144            1         0.61
## 145            1         -999
## 146         1.71         -999
## 147         1.49            1
## 148          1.4            2
## 149          4.7         -999
## 150         3.53         1.11
## 151         4.33         -999
## 152          3.2         -999
## 153            4         -999
## 154         5.76         1.36
## 155         2.42         -999
## 156         1.82            2
## 157            2         -999
## 158         1.25            1
## 159          1.5         -999
## 160            1         -999
## 161            1         -999
## 162         8.12         0.92
## 163         -999         -999
## 164            4         -999
## 165         4.16         -999
## 166         4.51         -999
## 167         4.82         0.82
## 168         3.95            1
## 169         5.49            1
## 170         4.29            2
## 171          4.1          1.9
## 172         3.09         -999
## 173         4.13         -999
## 174         6.99         0.93
## 175         9.46            1
## 176         3.74            2
## 177          2.5         -999
## 178         4.17         -999
## 179            4            1
## 180         4.26            2
## 181         4.17         0.98
## 182          2.6            1
## 183            2         -999
## 184         3.25         -999
## 185         3.26         -999
## 186          3.5         -999
## 187            4         -999
## 188            4         -999
## 189         4.71         -999
## 190         4.34         0.91
## 191         2.45            1
## 192         4.44            1
## 193         3.04         0.65
## 194         3.08         -999
## 195         1.28         -999
## 196         3.48            2
## 197          4.5            2
## 198         3.69         2.02
## 199         1.91          2.5
## 200         2.34            2
## 201         1.38         -999
## 202          1.5         -999
## 203         1.54         0.75
## 204         2.18            2
## 205          2.5         -999
## 206         2.82         0.94
## 207         2.25            1
## 208         3.19            1
## 209         2.47         -999
## 210          2.5         -999
## 211         2.04         1.33
## 212         4.14         -999
## 213         2.57          0.4
## 214         2.46          0.5
## 215          2.9         0.66
## 216         2.38         0.83
## 217            2         -999
## 218         2.12         -999
## 219         2.13         -999
## 220         2.64         -999
## 221            2         -999
## 222         2.85         0.47
## 223         2.22            1
## 224         2.42         -999
## 225            1         -999
## 226            4          2.5
## 227         1.67            2
## 228          2.6         -999
## 229         2.23            2
## 230            1            1
## 231            1            1
## 232         3.38         2.33
## 233         2.24         -999
## 234          2.6         -999
## 235         2.91            1
## 236         2.33         -999
## 237         3.24            1
## 238            1         -999
## 239          2.5         -999
## 240         3.63            1
## 241            2            1
## 242         2.61         -999
## 243         2.28          0.4
## 244         2.77         -999
## 245         1.42            2
## 246         -999         -999
## 247         2.56         -999
## 248          3.5         -999
## 249            3         -999
## 250          4.5         -999
## 251         3.83          1.5
## 252         1.92         -999
## 253            1         0.83
## 254            2         -999
## 255         2.84         0.45
## 256            2         -999
## 257         2.17            1
## 258          2.5         -999
## 259         3.25         -999
## 260         2.72         0.94
## 261            2         -999
## 262         2.06            1
## 263            5         -999
## 264          2.5         -999
## 265          3.2         -999
## 266         3.79         -999
## 267         2.73            1
## 268         2.92            1
## 269          3.8            1
## 270         3.11         0.75
## 271         2.33            2
## 272            3         -999
## 273         5.33         -999
## 274          5.1         1.21
## 275         3.43         -999
## 276          4.5         -999
## 277          6.1         -999
## 278            7         -999
## 279         4.76            1
## 280         6.22            1
## 281         6.77            1
## 282         9.41            1
## 283         7.68         1.26
## 284         5.37         1.67
## 285          2.2         1.25
## 286         1.94            1
## 287         3.67            1
## 288         4.73          1.5
## 289         3.07         0.74
## 290         5.76         -999
## 291         1.14          0.5
## 292            1          0.5
## 293            1            1
## 294            1            1
## 295            1            1
## 296            1            1
## 297            1            1
## 298            1            1
## 299            1         0.69
## 300            1            1
## 301            1            1
## 302            1            1
## 303            1         0.89
## 304            1            1
## 305            1            1
## 306            1         0.93
## 307            1         -999
## 308            1         -999
## 309            1            1
## 310            1         0.86
## 311            1            1
## 312            1         -999
## 313            1          0.5
## 314            1            1
## 315            1         -999
## 316            1         -999
## 317            1          0.8
## 318            1            1
## 319            1            1
## 320            1            1
## 321         1.01            1
## 322            1         -999
## 323          1.5         -999
## 324          2.7            1
## 325         3.81         -999
## 326         4.17         -999
## 327            1            1
## 328         2.75         -999
## 329         3.39            1
## 330         1.54          0.7
## 331         2.02            1
## 332         1.16         -999
## 333         1.69         -999
## 334         1.65         -999
## 335         1.67         -999
## 336         1.66         0.36
## 337         2.36         0.36
## 338         2.54         0.38
## 339         2.63            2
## 340          2.5            2
## 341            2          1.5
## 342         2.26         2.25
## 343            3         -999
## 344            2         -999
## 345          1.5         -999
## 346            1         -999
## 347         2.33         -999
## 348         2.34            2
## 349         2.38            2
## 350            2         -999
## 351            2            2
## 352         2.39            2
## 353          2.5         -999
## 354         3.29            2
## 355            2         -999
## 356            2         -999
## 357          2.6            2
## 358         3.88         -999
## 359            1         0.29
## 360            1         -999
## 361            1         0.29
## 362         1.01         0.36
## 363         1.01         0.41
## 364         1.01         0.45
## 365            1          0.5
## 366         1.01            1
## 367         1.01          0.5
## 368         -999         -999
## 369            1         -999
## 370            1         0.42
## 371            1         0.42
## 372            1         -999
## 373            1          0.2
## 374            1         0.24
## 375         -999         -999
## 376            1         -999
## 377            1         -999
## 378            1         -999
## 379            1          0.4
## 380            1         0.42
## 381            1         -999
## 382            1         0.21
## 383         -999         -999
## 384         -999         0.14
## 385            1         -999
## 386          1.5         0.31
## 387            1         0.33
## 388            1         0.35
## 389         -999         -999
## 390            1          0.5
## 391            1          0.5
## 392         1.02         0.33
## 393            1         0.33
## 394            1         -999
## 395            1          0.5
## 396            1         -999
## 397            1         -999
## 398            1         0.71
## 399            1         -999
## 400            1            1
## 401            1         0.17
## 402            1         -999
## 403            1          0.5
## 404            1         -999
## 405            1         -999
## 406            1          0.5
## 407         -999         -999
## 408         -999         -999
## 409            1         0.75
## 410         -999         -999
## 411         -999         -999
## 412            1         -999
## 413            1         -999
## 414            1         -999
## 415            1         -999
## 416         1.35         -999
## 417          1.5         -999
## 418         1.94         -999
## 419         2.38         -999
## 420            2         -999
## 421         -999         -999
## 422         2.75         -999
## 423            2         -999
## 424            1         -999
## 425            5         -999
## 426         3.81            1
## 427          5.4          1.5
## 428          1.8            2
## 429          4.5         -999
## 430         4.64         1.58
## 431         3.13            1
## 432          3.2            1
## 433         3.75            1
## 434         4.05            1
## 435         2.43            2
## 436          1.5         -999
## 437         1.86            2
## 438            4         -999
## 439          6.5          1.5
## 440         5.73            3
## 441          1.5         -999
## 442            2         -999
## 443          2.1         -999
## 444          2.8         -999
## 445            3         -999
## 446            3         -999
## 447          3.5         -999
## 448          3.5         -999
## 449          3.5         -999
## 450         4.72         -999
## 451         3.45            2
## 452         4.88          3.5
## 453         5.61          3.5
## 454         5.13         -999
## 455            5         -999
## 456         2.95         -999
## 457            3         -999
## 458            4         -999
## 459         5.53         -999
## 460         5.51          1.8
## 461         3.83            2
## 462         -999         -999
## 463          3.5         -999
## 464         4.24         -999
## 465          4.8         -999
## 466            5         -999
## 467         5.05         -999
## 468            6         -999
## 469         6.22         -999
## 470         6.57         -999
## 471            5            1
## 472         5.28            1
## 473         5.68         1.33
## 474          4.4          1.5
## 475         5.77          1.5
## 476            7          1.5
## 477         6.03          1.9
## 478         5.75            2
## 479          6.5            2
## 480            5          2.5
## 481         5.25          2.5
## 482          5.7          2.5
## 483         2.96         -999
## 484          3.3         -999
## 485         3.91         -999
## 486            1         -999
## 487          1.5         -999
## 488            2         -999
## 489         4.42            1
## 490         3.86            2
## 491         3.75            2
## 492         2.63         -999
## 493         4.38            1
## 494         3.61            1
## 495         2.86            1
## 496         3.25            1
## 497         3.58            1
## 498         4.35         0.82
## 499         4.09         1.15
## 500         3.53          1.5
## 501         5.01            1
## 502          3.9            2
## 503         5.02            2
## 504            3            1
## 505         1.99         -999
## 506         2.25         -999
## 507            4         -999
## 508         1.63            2
## 509         3.04            1
## 510        13.89          1.5
## 511            6          2.5
## 512            1         -999
## 513         -999          2.5
## 514         1.42         -999
## 515          2.2         -999
## 516          3.5         -999
## 517          3.8         -999
## 518          6.3            1
## 519         5.03          1.8
## 520         3.96         2.07
## 521         3.28          2.6
## 522         4.32         2.76
## 523         2.58         3.28
## 524         2.21          3.5
## 525         2.93         3.73
## 526         2.82         3.75
## 527         1.58          3.9
## 528         5.54         4.33
## 529          1.5         -999
## 530          1.1         -999
## 531          1.5         -999
## 532            2         -999
## 533         2.18         -999
## 534          3.2          4.5
## 535         2.34         -999
## 536         4.75          2.5
## 537         3.14         3.23
## 538         3.64         3.25
## 539         3.63          3.5
## 540         5.13         3.89
## 541         2.97            5
## 542         3.52         -999
## 543         3.93         -999
## 544            4          1.5
## 545            3         1.75
## 546          6.5            2
## 547         3.78         2.11
## 548          2.9         2.17
## 549         -999          2.5
## 550          5.6         2.67
## 551         8.41         2.78
## 552         5.75         3.33
## 553         -999         -999
## 554            1         -999
## 555          1.6         -999
## 556         1.91         -999
## 557          2.5            2
## 558         1.42         5.25
## 559         1.75          5.5
## 560          1.6         -999
## 561         1.17         -999
## 562            1          4.5
## 563            1         -999
## 564         -999          0.5
## 565            1          0.5
## 566            1          0.6
## 567            1         0.64
## 568            1         0.67
## 569            1         0.42
## 570            1         0.29
## 571            1         0.39
## 572            1          0.3
## 573            1         0.32
## 574            1         -999
## 575            1         -999
## 576            1          0.5
## 577            1         0.71
## 578         -999         -999
## 579            1         -999
## 580            1         -999
## 581            1         -999
## 582            1         -999
## 583         1.05         -999
## 584            1            1
## 585            1         1.17
## 586         -999         -999
## 587         1.87         -999
## 588         1.98         -999
## 589            2         -999
## 590            2         -999
## 591         2.24            2
## 592         1.95         1.75
## 593         -999         -999
## 594         -999         -999
## 595          1.5         -999
## 596         1.66         -999
## 597         1.89         -999
## 598         1.97         -999
## 599          1.8            1
## 600         1.92            1
## 601         1.91          1.2
## 602          1.8         1.36
## 603            1         -999
## 604          1.2         -999
## 605            1          0.6
## 606            1         0.98
## 607         1.12         -999
## 608            1            1
## 609            1            1
## 610            1         -999
## 611            1         0.32
## 612            1          0.5
## 613            1          0.5
## 614            1         0.34
## 615            1          0.5
## 616            1         -999
## 617            1         0.93
## 618         1.17            1
## 619            1         -999
## 620            1         0.46
## 621            1         0.55
## 622            1         0.67
## 623            1         -999
## 624            1         -999
## 625            1          0.5
## 626            1         -999
## 627            1         -999
## 628            1         -999
## 629            1         1.33
## 630            1         -999
## 631            1         -999
## 632            1         -999
## 633         -999         -999
## 634            1         -999
## 635            1         -999
## 636            1         -999
## 637            1         -999
## 638            1         -999
## 639            1         -999
## 640            1         -999
## 641            1         -999
## 642            1          0.5
## 643            1         0.67
## 644            1            1
## 645            1            1
## 646            1            1
## 647            1         -999
## 648            1         -999
## 649            1         0.55
## 650            1         0.59
## 651            1         0.97
## 652            1         0.36
## 653            1          0.5
## 654         1.33          0.5
## 655            1         0.55
## 656          1.5         0.55
## 657            1         0.61
## 658            1         0.67
## 659            1         0.69
## 660            1          0.7
## 661            1         0.75
## 662            1          0.8
## 663            1         0.85
## 664            1         0.93
## 665            1            1
## 666            1         -999
## 667         1.07         0.83
## 668            1            1
## 669            1         0.67
## 670            1          0.8
## 671            1         -999
## 672            1         -999
## 673            1         -999
## 674            1         -999
## 675            1         -999
## 676            1         -999
## 677         -999         -999
## 678            1         -999
## 679         1.14         0.67
## 680            1          0.5
## 681         -999         -999
## 682            1         -999
## 683            1         -999
## 684            1         -999
## 685            1         0.37
## 686            1          0.5
## 687            1          0.8
## 688         2.25         -999
## 689         2.14            1
## 690          2.5         -999
## 691          1.7            1
## 692         2.41            1
## 693            1         -999
## 694            1         1.04
## 695         -999         -999
## 696         1.15         -999
## 697            1            2
## 698         1.59            2
## 699         1.57            1
## 700         1.32            2
## 701         1.57            1
## 702            1         1.36
## 703         1.01         0.26
## 704          1.1          0.2
## 705            1         0.22
## 706         1.21         0.22
## 707            1         -999
## 708            1         -999
## 709            1         -999
## 710            1         -999
## 711            1         -999
## 712         1.17         0.36
## 713            1         0.45
## 714            1            1
## 715            1          0.4
## 716         -999         -999
## 717         -999         0.48
## 718         1.17            1
## 719            1         -999
## 720         1.06            1
## 721         1.21            1
## 722         1.32            1
## 723         1.08            2
## 724         -999            1
## 725          1.2         1.09
## 726         1.11         0.93
## 727         2.23            1
## 728            1          1.5
## 729         1.37          1.5
## 730            2         -999
## 731         1.07            1
## 732         1.03            1
## 733         -999         -999
## 734         -999         -999
## 735            1            1
## 736            1         -999
## 737            1         -999
## 738            1         -999
## 739            1         1.49
## 740            1         2.38
## 741            1         0.23
## 742         1.02         0.21
## 743          1.8         -999
## 744            3            2
## 745         1.26          1.5
## 746            1         -999
## 747         1.17            2
## 748            2            2
## 749            1         -999
## 750         3.14            1
## 751         3.13          1.5
## 752          3.5          1.5
## 753          2.5            1
## 754         2.86          1.5
## 755         -999            2
## 756         5.95            2
## 757          2.6         1.25
## 758         8.95          3.5
## 759         2.08         -999
## 760            1         -999
## 761          1.8            2
## 762         1.75         -999
## 763            2         -999
## 764         1.22         -999
## 765         3.16         -999
## 766         3.56            1
## 767          1.9         -999
## 768         2.48         -999
## 769          4.3         -999
## 770         1.25         -999
## 771         1.71          3.5
## 772          2.4         -999
## 773         2.63         -999
## 774         1.57         -999
## 775         2.36            4
## 776         1.45          1.5
## 777         1.62            2
## 778          1.5         -999
## 779            1            2
## 780         2.05         1.75
## 781            2         -999
## 782         1.85            1
## 783            2         -999
## 784          2.5         -999
## 785          2.6         -999
## 786            3         -999
## 787         4.25         -999
## 788            2            1
## 789         1.64         -999
## 790            2         -999
## 791          2.1         -999
## 792         1.75         -999
## 793         1.85         -999
## 794         -999         -999
## 795            5         -999
## 796         -999            1
## 797         4.55            2
## 798         3.38            2
## 799         -999            1
## 800          2.5         -999
## 801         4.33          1.5
## 802          4.5            3
## 803         4.42         1.33
## 804            6         -999
## 805            3            2
## 806         2.57            2
## 807          3.5            1
## 808         4.86            1
## 809            3            1
## 810         4.89          0.9
## 811          5.5            1
## 812         5.17         2.07
## 813            2         -999
## 814          2.1         -999
## 815            1         -999
## 816         1.33         -999
## 817          2.4         -999
## 818         2.67         4.04
## 819         2.83          4.4
## 820         3.15          2.5
## 821            1         -999
## 822            1            1
## 823            1         -999
## 824            1         -999
## 825         3.39            1
## 826         1.86         1.73
## 827          3.3            2
## 828            5            2
## 829            2         -999
## 830          2.5            2
## 831            2         -999
## 832          6.5         -999
## 833          3.5            1
## 834          3.9            1
## 835         5.09         1.13
## 836          5.7         1.25
## 837         4.33          1.5
## 838         5.67            2
## 839         3.68         -999
## 840         3.69         -999
## 841            4         -999
## 842          4.5         -999
## 843         -999            1
## 844         5.53            1
## 845          4.9         1.75
## 846            2         -999
## 847         2.27         -999
## 848          3.5         -999
## 849          2.4            1
## 850         2.55            1
## 851         2.62          1.5
## 852            3          1.5
## 853          2.3         1.63
## 854         2.65            2
## 855         2.75            2
## 856         2.75            2
## 857         3.12            2
## 858          3.3            2
## 859         3.29         2.42
## 860            2         -999
## 861            4         -999
## 862         -999          3.5
## 863         3.31            5
## 864          3.5         -999
## 865            4         -999
## 866          3.2         1.44
## 867         3.43          1.8
## 868          3.9         -999
## 869          3.9         -999
## 870          4.5            1
## 871         4.33         1.33
## 872         4.43         1.33
## 873         4.75          1.5
## 874         4.77          1.6
## 875          4.5            2
## 876         4.67            2
## 877         3.48         1.25
## 878         1.67         -999
## 879          1.5          2.5
## 880         -999         -999
## 881         -999         -999
## 882            2         -999
## 883         2.43         -999
## 884          2.1         1.67
## 885         -999         -999
## 886          2.5         -999
## 887         -999          3.5
## 888         2.47          3.5
## 889         1.68         -999
## 890          2.8         -999
## 891          3.6         -999
## 892         3.75            2
## 893            3         -999
## 894            3         -999
## 895          3.5         -999
## 896         3.78         -999
## 897          3.9         -999
## 898         4.05            1
## 899          3.7          2.5
## 900          5.5          2.5
## 901            5          3.6
## 902         -999            2
## 903          4.3         -999
## 904          7.7          2.2
## 905          3.6          2.5
## 906         4.12         -999
## 907         4.67         -999
## 908          6.4         -999
## 909         2.84            2
## 910         5.54          2.8
## 911         5.72         3.17
## 912         5.18         3.83
## 913          1.5         -999
## 914         2.57         -999
## 915          2.8         -999
## 916         5.03          3.5
## 917            5         -999
## 918         5.08         3.22
## 919         -999         -999
## 920         2.67         -999
## 921         7.44         -999
## 922         7.96          5.9
## 923         4.26         -999
## 924         4.17         -999
## 925         4.15         -999
## 926         4.65         -999
## 927            5         -999
## 928         5.06         -999
## 929          5.4         -999
## 930         3.33            1
## 931         -999            2
## 932         1.75         -999
## 933         2.67            2
## 934         -999          2.5
## 935         2.17         -999
## 936            1         -999
## 937         5.04         2.71
## 938         4.13         2.84
## 939         4.29         3.17
## 940          3.3          3.3
## 941            7          3.8
## 942            2         -999
## 943            2         -999
## 944          2.5         -999
## 945         4.67         -999
## 946         3.33         4.33
## 947         5.33         -999
## 948          4.1            2
## 949         7.73            2
## 950          2.5         -999
## 951            3         -999
## 952          3.5         -999
## 953         4.29         -999
## 954         4.44         -999
## 955         4.56         -999
## 956         2.75         -999
## 957         2.53         -999
## 958         3.29         -999
## 959          2.8         -999
## 960          3.5         -999
## 961         -999          1.5
## 962         4.07            2
## 963         3.27          2.5
## 964          2.5          1.5
## 965            4         -999
## 966         3.67         -999
## 967          3.6         4.75
## 968          7.5          3.5
## 969            3         -999
## 970         3.63         -999
## 971          4.4         -999
## 972          3.5         -999
## 973          3.9         -999
## 974            4         -999
## 975          4.1         -999
## 976          4.4         -999
## 977         4.46         -999
## 978         4.68         -999
## 979            8         -999
## 980            5            3
## 981         3.47            5
## 982          3.5         -999
## 983            1         -999
## 984         2.74         -999
## 985         -999            3
## 986         7.05         -999
## 987            2         -999
## 988            3         -999
## 989          2.5         -999
## 990          3.8         2.12
## 991            3         -999
## 992         3.13         -999
## 993            1         -999
## 994         -999          2.5
## 995         1.67          2.5
## 996            1         -999
## 997          4.5            5
## 998            6         2.67
## 999            3         -999
## 1000         3.5         -999
## 1001        6.11            3
## 1002        5.12          2.5
## 1003        5.15            3
## 1004        3.25         -999
## 1005        4.54            2
## 1006        2.17         -999
## 1007           2         -999
## 1008         1.5         -999
## 1009           2         -999
## 1010        2.31         -999
## 1011         3.5         -999
## 1012        2.48         -999
## 1013         4.1         -999
## 1014         6.5         -999
## 1015       14.18            2
## 1016         2.7         -999
## 1017         1.5         -999
## 1018           2         -999
## 1019           2         -999
## 1020           2         -999
## 1021           2         -999
## 1022           2         -999
## 1023         2.4         -999
## 1024         2.5          1.3
## 1025        4.33         -999
## 1026         4.6         -999
## 1027        4.97         -999
## 1028        5.41         -999
## 1029           7         -999
## 1030        3.83            2
## 1031        4.21            2
## 1032        5.56            3
## 1033        4.46          3.5
## 1034        4.89         3.84
## 1035           2         -999
## 1036        1.96            4
## 1037        6.49         -999
## 1038        -999            2
## 1039        8.59         3.75
## 1040        5.15          2.6
## 1041           2         -999
## 1042         2.1         -999
## 1043        2.53         -999
## 1044        2.57         -999
## 1045        2.72         -999
## 1046        3.53         -999
## 1047        3.98         -999
## 1048         4.3         -999
## 1049        5.28         -999
## 1050        5.96         -999
## 1051        5.22          1.9
## 1052        3.56            2
## 1053        4.33            2
## 1054         5.8            2
## 1055        8.25            2
## 1056        4.96         2.58
## 1057        2.89         2.74
## 1058        -999            3
## 1059        5.96         3.33
## 1060        5.76         3.38
## 1061        4.42         3.61
## 1062        2.68            4
## 1063         3.8            4
## 1064        3.28          4.4
## 1065        4.82          4.5
## 1066        4.54         4.83
## 1067        4.96            5
## 1068        5.11          5.5
## 1069           5            6
## 1070        5.62          4.5
## 1071        -999         -999
## 1072        -999         -999
## 1073           3         -999
## 1074        4.13         -999
## 1075         4.5         -999
## 1076         5.7         -999
## 1077        6.72         -999
## 1078           6            3
## 1079        3.83            4
## 1080        6.07         4.57
## 1081           3         -999
## 1082         3.5         -999
## 1083        5.64         -999
## 1084        4.63            2
## 1085           3            1
## 1086        3.18         -999
## 1087         3.5            1
## 1088         3.8          6.1
## 1089        4.13         -999
## 1090         4.5         -999
## 1091        2.34         4.53
## 1092         2.1         -999
## 1093        2.65         1.17
## 1094        1.08         1.95
## 1095        3.68            2
## 1096           2            2
## 1097         2.1            2
## 1098        2.15            2
## 1099        2.92            2
## 1100        2.51          2.4
## 1101         3.1          2.5
## 1102        3.25            2
## 1103        4.09         -999
## 1104        -999         -999
## 1105        2.83         -999
## 1106         2.9         -999
## 1107           3         -999
## 1108        3.27         -999
## 1109        3.89         -999
## 1110           2         -999
## 1111        2.55         -999
## 1112         3.6          4.2
## 1113        3.92         -999
## 1114         3.3         -999
## 1115         3.4         -999
## 1116           4         -999
## 1117        6.28         2.68
## 1118        3.63          2.5
## 1119        3.58          2.6
## 1120         4.8         -999
## 1121        3.77          5.5
## 1122        3.33         5.93
## 1123        1.44         -999
## 1124         1.5         -999
## 1125        1.79         -999
## 1126        2.92         -999
## 1127        1.78         4.25
## 1128         2.3         -999
## 1129        3.02         -999
## 1130        4.06         -999
## 1131        -999         -999
## 1132         2.5         -999
## 1133        2.67         -999
## 1134        -999         -999
## 1135         1.8         -999
## 1136         1.9         -999
## 1137        2.27         -999
## 1138         2.4         -999
## 1139         2.6         -999
## 1140        2.95         -999
## 1141           3         -999
## 1142           3         -999
## 1143        3.19         -999
## 1144         3.5         -999
## 1145         3.6         -999
## 1146         3.9         -999
## 1147           4         -999
## 1148           5         -999
## 1149        -999            2
## 1150        3.08         2.05
## 1151         3.6          2.7
## 1152         3.5          3.4
## 1153        4.73          3.4
## 1154        2.63          3.5
## 1155        4.42          3.9
## 1156        2.02         4.56
## 1157        4.26          7.5
## 1158        2.56            1
## 1159         4.9         -999
## 1160        4.58          2.3
## 1161        -999          3.5
## 1162           5          3.5
## 1163           6          3.5
## 1164        -999         -999
## 1165           2         -999
## 1166        2.74         -999
## 1167           1         -999
## 1168        1.67         -999
## 1169        1.67         -999
## 1170        2.33         -999
## 1171         3.2         -999
## 1172        3.33         -999
## 1173         3.5         -999
## 1174           6         -999
## 1175        3.53         -999
## 1176        1.78         -999
## 1177         2.5         -999
## 1178        2.75         -999
## 1179           3         -999
## 1180           3         -999
## 1181           3         -999
## 1182           3         -999
## 1183           3         -999
## 1184        3.15         -999
## 1185         3.5         -999
## 1186         3.5         -999
## 1187           3            1
## 1188        4.27            1
## 1189         3.2          1.5
## 1190         3.5          1.5
## 1191         4.5            3
## 1192        3.67          3.5
## 1193        -999         -999
## 1194        -999         -999
## 1195        3.35         -999
## 1196         3.5         -999
## 1197           4         -999
## 1198           5         -999
## 1199        5.75         -999
## 1200           6         -999
## 1201        6.94         -999
## 1202        4.91         2.53
## 1203        4.08          3.3
## 1204        3.63         3.37
## 1205        8.72         3.68
## 1206        5.95         4.28
## 1207        4.53         -999
## 1208         2.9         -999
## 1209        3.32         -999
## 1210        4.14         -999
## 1211        3.85            1
## 1212         3.1            2
## 1213        6.56            4
## 1214           2         -999
## 1215         3.8          3.5
## 1216        -999         -999
## 1217        -999         -999
## 1218        5.76          2.5
## 1219        6.99         -999
## 1220        2.79         -999
## 1221        3.03         -999
## 1222        2.85         -999
## 1223        -999         -999
## 1224        3.75         -999
## 1225           5         -999
## 1226        5.58            2
## 1227           5            5
## 1228        2.61            1
## 1229         4.4         -999
## 1230        4.67         -999
## 1231           3         -999
## 1232         3.8         -999
## 1233        3.34          2.5
## 1234         4.4          2.5
## 1235         1.5         -999
## 1236        1.44         2.07
## 1237        -999         -999
## 1238        -999         -999
## 1239        4.54         -999
## 1240        5.15         -999
## 1241        4.33            2
## 1242        2.83            4
## 1243        5.42         4.17
## 1244        -999            5
## 1245        -999          6.5
## 1246         3.5         -999
## 1247           4         -999
## 1248         4.5         -999
## 1249           3         -999
## 1250        -999         -999
## 1251        2.36         -999
## 1252        3.58         -999
## 1253        2.06         -999
## 1254           4         -999
## 1255         3.8         -999
## 1256        4.68         -999
## 1257        4.32          5.5
## 1258         2.5         -999
## 1259         2.5         -999
## 1260        -999         0.75
## 1261        4.88         2.32
## 1262        -999            1
## 1263        3.33         1.21
## 1264        4.89         1.21
## 1265           4          1.5
## 1266           2         -999
## 1267           3            2
## 1268           5            4
## 1269        4.33          1.5
## 1270        4.73         1.19
## 1271        5.28         1.75
## 1272        2.03         -999
## 1273        2.35         1.75
## 1274           1          3.6
## 1275        1.88            1
## 1276        6.75            1
## 1277           8            1
## 1278         9.5            1
## 1279        8.61         1.33
## 1280         1.8         -999
## 1281         2.2         -999
## 1282         2.2         -999
## 1283        3.07         -999
## 1284           4            1
## 1285        4.27            1
## 1286        4.95            1
## 1287        5.67            1
## 1288           6            1
## 1289         3.5         -999
## 1290           2         -999
## 1291         2.5         -999
## 1292           2         -999
## 1293        2.58         -999
## 1294         3.5         2.67
## 1295         1.5         -999
## 1296         1.8         -999
## 1297         1.8         -999
## 1298           2            2
## 1299        3.33            1
## 1300        3.17         1.33
## 1301         2.8         -999
## 1302        2.33         -999
## 1303         3.4            2
## 1304        2.38         -999
## 1305           3         -999
## 1306         5.5         -999
## 1307        3.33          0.5
## 1308           4          0.5
## 1309         4.2          0.5
## 1310        4.83         0.83
## 1311         4.4         0.94
## 1312        -999            1
## 1313        4.38            1
## 1314         4.5            1
## 1315         4.5            1
## 1316        4.73            1
## 1317           6            1
## 1318           2         -999
## 1319        1.33         -999
## 1320        1.43         -999
## 1321         2.5         -999
## 1322        1.58            1
## 1323        1.97            2
## 1324        -999         -999
## 1325           1         -999
## 1326           1         -999
## 1327           1         -999
## 1328           2         -999
## 1329           1         -999
## 1330         1.5         -999
## 1331           2         -999
## 1332           2         -999
## 1333         2.6          1.5
## 1334           1         -999
## 1335        3.33          1.5
## 1336         1.8            2
## 1337        1.43         -999
## 1338           2         -999
## 1339           2         -999
## 1340           3         -999
## 1341           3         -999
## 1342        3.05            1
## 1343         3.7         1.11
## 1344        3.52          1.5
## 1345        2.71         1.64
## 1346        3.46         1.83
## 1347        1.93         1.95
## 1348         5.1         2.22
## 1349        4.42            1
## 1350        -999         -999
## 1351         6.3         -999
## 1352         6.8         -999
## 1353        -999         0.91
## 1354        5.12         0.94
## 1355        5.23         0.94
## 1356        5.73         0.96
## 1357        -999            1
## 1358        -999            1
## 1359        -999            1
## 1360        -999            1
## 1361        -999            1
## 1362         2.5            1
## 1363        3.43            1
## 1364        4.16            1
## 1365        4.27            1
## 1366           5            1
## 1367        5.35            1
## 1368         5.4            1
## 1369         5.5            1
## 1370        5.66            1
## 1371           6            1
## 1372           6            1
## 1373        6.06            1
## 1374        7.52            1
## 1375        7.92            1
## 1376           9            1
## 1377        7.02         1.17
## 1378           6         1.33
## 1379        4.27          1.5
## 1380        5.92         1.75
## 1381         2.5         -999
## 1382           3         -999
## 1383         3.5         -999
## 1384        3.68         -999
## 1385           5         -999
## 1386           4            1
## 1387           4            1
## 1388        4.06            1
## 1389         4.1            1
## 1390        4.15            1
## 1391        4.33            1
## 1392         4.5            1
## 1393        4.94            1
## 1394        4.95            1
## 1395         5.1            1
## 1396        5.19            1
## 1397        4.85         1.14
## 1398        4.42          1.5
## 1399        5.16          1.5
## 1400        4.22         1.53
## 1401        9.78          1.5
## 1402         4.2         1.67
## 1403        1.55         -999
## 1404        3.75         -999
## 1405        2.18            1
## 1406        -999            2
## 1407        3.83         2.33
## 1408         1.5         -999
## 1409        1.98         -999
## 1410        2.17         -999
## 1411        2.44         -999
## 1412           2          7.5
## 1413        1.63         -999
## 1414           2         -999
## 1415           1         0.22
## 1416           1         -999
## 1417           1         -999
## 1418           1         0.37
## 1419           1          0.5
## 1420        1.03            1
## 1421           1         -999
## 1422           1            1
## 1423           1            1
## 1424           1         -999
## 1425         1.5         -999
## 1426        1.65            1
## 1427           2         -999
## 1428           4         -999
## 1429           4         -999
## 1430           6         -999
## 1431           4            1
## 1432        1.75         -999
## 1433         1.5         -999
## 1434           1            1
## 1435           2         -999
## 1436           1          0.7
## 1437         1.5            1
## 1438           1         -999
## 1439           1         1.17
## 1440           1         1.35
```


```r
mammals %>% 
  mutate(across(c("order", "family"), tolower)) # Using across function to specify individual columns
```

```
##               order          family            genus           species
## 1      artiodactyla  antilocapridae      Antilocapra         americana
## 2      artiodactyla         bovidae            Addax     nasomaculatus
## 3      artiodactyla         bovidae        Aepyceros          melampus
## 4      artiodactyla         bovidae       Alcelaphus        buselaphus
## 5      artiodactyla         bovidae       Ammodorcas           clarkei
## 6      artiodactyla         bovidae       Ammotragus            lervia
## 7      artiodactyla         bovidae       Antidorcas       marsupialis
## 8      artiodactyla         bovidae         Antilope        cervicapra
## 9      artiodactyla         bovidae            Bison             bison
## 10     artiodactyla         bovidae            Bison           bonasus
## 11     artiodactyla         bovidae              Bos         grunniens
## 12     artiodactyla         bovidae              Bos         frontalis
## 13     artiodactyla         bovidae              Bos         javanicus
## 14     artiodactyla         bovidae       Boselaphus      tragocamelus
## 15     artiodactyla         bovidae          Bubalus    depressicornis
## 16     artiodactyla         bovidae          Bubalus       mindorensis
## 17     artiodactyla         bovidae          Bubalus           bubalis
## 18     artiodactyla         bovidae         Budorcas         taxicolor
## 19     artiodactyla         bovidae            Capra         caucasica
## 20     artiodactyla         bovidae            Capra         falconeri
## 21     artiodactyla         bovidae            Capra              ibex
## 22     artiodactyla         bovidae            Capra    cylindricornis
## 23     artiodactyla         bovidae            Capra            hircus
## 24     artiodactyla         bovidae      Cephalophus             niger
## 25     artiodactyla         bovidae      Cephalophus        nigrifrons
## 26     artiodactyla         bovidae      Cephalophus        natalensis
## 27     artiodactyla         bovidae      Cephalophus       leucogaster
## 28     artiodactyla         bovidae      Cephalophus           ogilbyi
## 29     artiodactyla         bovidae      Cephalophus             zebra
## 30     artiodactyla         bovidae      Cephalophus         rufilatus
## 31     artiodactyla         bovidae      Cephalophus          dorsalis
## 32     artiodactyla         bovidae      Cephalophus         monticola
## 33     artiodactyla         bovidae      Cephalophus       silvicultor
## 34     artiodactyla         bovidae      Cephalophus         maxwellii
## 35     artiodactyla         bovidae     Connochaetes              gnou
## 36     artiodactyla         bovidae     Connochaetes          taurinus
## 37     artiodactyla         bovidae       Damaliscus           hunteri
## 38     artiodactyla         bovidae       Damaliscus          pygargus
## 39     artiodactyla         bovidae       Damaliscus           lunatus
## 40     artiodactyla         bovidae          Gazella     soemmerringii
## 41     artiodactyla         bovidae          Gazella         rufifrons
## 42     artiodactyla         bovidae          Gazella              dama
## 43     artiodactyla         bovidae          Gazella        leptoceros
## 44     artiodactyla         bovidae          Gazella            granti
## 45     artiodactyla         bovidae          Gazella            spekei
## 46     artiodactyla         bovidae          Gazella           cuvieri
## 47     artiodactyla         bovidae          Gazella            dorcas
## 48     artiodactyla         bovidae          Gazella      subgutturosa
## 49     artiodactyla         bovidae          Gazella         thomsonii
## 50     artiodactyla         bovidae          Gazella           gazella
## 51     artiodactyla         bovidae       Hemitragus         hylocrius
## 52     artiodactyla         bovidae       Hemitragus        jemlahicus
## 53     artiodactyla         bovidae      Hippotragus           equinus
## 54     artiodactyla         bovidae      Hippotragus             niger
## 55     artiodactyla         bovidae            Kobus         megaceros
## 56     artiodactyla         bovidae            Kobus          vardonii
## 57     artiodactyla         bovidae            Kobus             leche
## 58     artiodactyla         bovidae            Kobus    ellipsiprymnus
## 59     artiodactyla         bovidae            Kobus               kob
## 60     artiodactyla         bovidae      Litocranius           walleri
## 61     artiodactyla         bovidae          Madoqua          saltiana
## 62     artiodactyla         bovidae          Madoqua         guentheri
## 63     artiodactyla         bovidae          Madoqua            kirkii
## 64     artiodactyla         bovidae      Naemorhedus           crispus
## 65     artiodactyla         bovidae      Naemorhedus      sumatraensis
## 66     artiodactyla         bovidae      Naemorhedus             goral
## 67     artiodactyla         bovidae        Neotragus            batesi
## 68     artiodactyla         bovidae        Neotragus         moschatus
## 69     artiodactyla         bovidae         Oreamnos        americanus
## 70     artiodactyla         bovidae       Oreotragus        oreotragus
## 71     artiodactyla         bovidae             Oryx            dammah
## 72     artiodactyla         bovidae             Oryx          leucoryx
## 73     artiodactyla         bovidae             Oryx           gazella
## 74     artiodactyla         bovidae          Ourebia            ourebi
## 75     artiodactyla         bovidae           Ovibos         moschatus
## 76     artiodactyla         bovidae             Ovis          nivicola
## 77     artiodactyla         bovidae             Ovis            vignei
## 78     artiodactyla         bovidae             Ovis             dalli
## 79     artiodactyla         bovidae             Ovis        canadensis
## 80     artiodactyla         bovidae             Ovis             ammon
## 81     artiodactyla         bovidae             Ovis             aries
## 82     artiodactyla         bovidae       Pantholops         hodgsonii
## 83     artiodactyla         bovidae            Pelea         capreolus
## 84     artiodactyla         bovidae         Procapra         gutturosa
## 85     artiodactyla         bovidae         Pseudois            nayaur
## 86     artiodactyla         bovidae       Raphicerus        campestris
## 87     artiodactyla         bovidae          Redunca         arundinum
## 88     artiodactyla         bovidae          Redunca           redunca
## 89     artiodactyla         bovidae          Redunca       fulvorufula
## 90     artiodactyla         bovidae        Rupicapra         rupicapra
## 91     artiodactyla         bovidae            Saiga          tatarica
## 92     artiodactyla         bovidae       Sigmoceros    lichtensteinii
## 93     artiodactyla         bovidae       Sylvicapra           grimmia
## 94     artiodactyla         bovidae         Syncerus            caffer
## 95     artiodactyla         bovidae      Taurotragus         derbianus
## 96     artiodactyla         bovidae      Taurotragus              oryx
## 97     artiodactyla         bovidae       Tetracerus      quadricornis
## 98     artiodactyla         bovidae      Tragelaphus           buxtoni
## 99     artiodactyla         bovidae      Tragelaphus         eurycerus
## 100    artiodactyla         bovidae      Tragelaphus            spekii
## 101    artiodactyla         bovidae      Tragelaphus      strepsiceros
## 102    artiodactyla         bovidae      Tragelaphus           angasii
## 103    artiodactyla         bovidae      Tragelaphus          imberbis
## 104    artiodactyla         bovidae      Tragelaphus          scriptus
## 105    artiodactyla       camelidae          Camelus        bactrianus
## 106    artiodactyla       camelidae          Camelus       dromedarius
## 107    artiodactyla       camelidae             Lama             glama
## 108    artiodactyla       camelidae             Lama             pacos
## 109    artiodactyla       camelidae             Lama          guanicoe
## 110    artiodactyla       camelidae          Vicugna           vicugna
## 111    artiodactyla        cervidae            Alces             alces
## 112    artiodactyla        cervidae             Axis          porcinus
## 113    artiodactyla        cervidae             Axis              axis
## 114    artiodactyla        cervidae      Blastocerus        dichotomus
## 115    artiodactyla        cervidae        Capreolus         capreolus
## 116    artiodactyla        cervidae        Capreolus          pygargus
## 117    artiodactyla        cervidae           Cervus        duvaucelii
## 118    artiodactyla        cervidae           Cervus           elaphus
## 119    artiodactyla        cervidae           Cervus       albirostris
## 120    artiodactyla        cervidae           Cervus        timorensis
## 121    artiodactyla        cervidae           Cervus          unicolor
## 122    artiodactyla        cervidae           Cervus             eldii
## 123    artiodactyla        cervidae           Cervus            nippon
## 124    artiodactyla        cervidae             Dama              dama
## 125    artiodactyla        cervidae        Elaphodus       cephalophus
## 126    artiodactyla        cervidae        Elaphurus        davidianus
## 127    artiodactyla        cervidae     Hippocamelus          bisulcus
## 128    artiodactyla        cervidae     Hippocamelus        antisensis
## 129    artiodactyla        cervidae       Hydropotes           inermis
## 130    artiodactyla        cervidae           Mazama            rufina
## 131    artiodactyla        cervidae           Mazama       gouazoupira
## 132    artiodactyla        cervidae           Mazama         americana
## 133    artiodactyla        cervidae        Muntiacus           muntjak
## 134    artiodactyla        cervidae        Muntiacus           reevesi
## 135    artiodactyla        cervidae       Odocoileus          hemionus
## 136    artiodactyla        cervidae       Odocoileus       virginianus
## 137    artiodactyla        cervidae       Ozotoceros       bezoarticus
## 138    artiodactyla        cervidae             Pudu    mephistophiles
## 139    artiodactyla        cervidae             Pudu              puda
## 140    artiodactyla        cervidae         Rangifer          tarandus
## 141    artiodactyla      giraffidae          Giraffa    camelopardalis
## 142    artiodactyla      giraffidae           Okapia         johnstoni
## 143    artiodactyla  hippopotamidae     Hexaprotodon       liberiensis
## 144    artiodactyla  hippopotamidae     Hippopotamus         amphibius
## 145    artiodactyla       moschidae          Moschus      chrysogaster
## 146    artiodactyla       moschidae          Moschus       berezovskii
## 147    artiodactyla       moschidae          Moschus       moschiferus
## 148    artiodactyla          suidae        Babyrousa         babyrussa
## 149    artiodactyla          suidae      Hylochoerus    meinertzhageni
## 150    artiodactyla          suidae     Phacochoerus       aethiopicus
## 151    artiodactyla          suidae    Potamochoerus            porcus
## 152    artiodactyla          suidae              Sus         salvanius
## 153    artiodactyla          suidae              Sus          barbatus
## 154    artiodactyla          suidae              Sus            scrofa
## 155    artiodactyla     tayassuidae        Catagonus           wagneri
## 156    artiodactyla     tayassuidae           Pecari            tajacu
## 157    artiodactyla     tayassuidae          Tayassu            pecari
## 158    artiodactyla      tragulidae       Hyemoschus         aquaticus
## 159    artiodactyla      tragulidae        Moschiola           meminna
## 160    artiodactyla      tragulidae         Tragulus         javanicus
## 161    artiodactyla      tragulidae         Tragulus              napu
## 162       carnivora         canidae           Alopex           lagopus
## 163       carnivora         canidae       Atelocynus          microtis
## 164       carnivora         canidae            Canis          simensis
## 165       carnivora         canidae            Canis            aureus
## 166       carnivora         canidae            Canis             rufus
## 167       carnivora         canidae            Canis             lupus
## 168       carnivora         canidae            Canis         mesomelas
## 169       carnivora         canidae            Canis           latrans
## 170       carnivora         canidae            Canis           adustus
## 171       carnivora         canidae        Cerdocyon             thous
## 172       carnivora         canidae       Chrysocyon        brachyurus
## 173       carnivora         canidae             Cuon           alpinus
## 174       carnivora         canidae           Lycaon            pictus
## 175       carnivora         canidae      Nyctereutes      procyonoides
## 176       carnivora         canidae          Otocyon         megalotis
## 177       carnivora         canidae      Pseudalopex       gymnocercus
## 178       carnivora         canidae      Pseudalopex           griseus
## 179       carnivora         canidae      Pseudalopex          culpaeus
## 180       carnivora         canidae         Speothos         venaticus
## 181       carnivora         canidae          Urocyon  cinereoargenteus
## 182       carnivora         canidae          Urocyon        littoralis
## 183       carnivora         canidae           Vulpes              cana
## 184       carnivora         canidae           Vulpes             chama
## 185       carnivora         canidae           Vulpes         rueppelli
## 186       carnivora         canidae           Vulpes         ferrilata
## 187       carnivora         canidae           Vulpes           pallida
## 188       carnivora         canidae           Vulpes       bengalensis
## 189       carnivora         canidae           Vulpes            corsac
## 190       carnivora         canidae           Vulpes            vulpes
## 191       carnivora         canidae           Vulpes             zerda
## 192       carnivora         canidae           Vulpes             velox
## 193       carnivora         felidae         Acinonyx           jubatus
## 194       carnivora         felidae          Caracal           caracal
## 195       carnivora         felidae         Catopuma        temminckii
## 196       carnivora         felidae            Felis             chaus
## 197       carnivora         felidae            Felis         margarita
## 198       carnivora         felidae            Felis        silvestris
## 199       carnivora         felidae            Felis          nigripes
## 200       carnivora         felidae      Herpailurus        yaguarondi
## 201       carnivora         felidae        Leopardus            wiedii
## 202       carnivora         felidae        Leopardus          tigrinus
## 203       carnivora         felidae        Leopardus          pardalis
## 204       carnivora         felidae      Leptailurus            serval
## 205       carnivora         felidae             Lynx          pardinus
## 206       carnivora         felidae             Lynx             rufus
## 207       carnivora         felidae             Lynx              lynx
## 208       carnivora         felidae             Lynx        canadensis
## 209       carnivora         felidae         Neofelis          nebulosa
## 210       carnivora         felidae        Oncifelis          colocolo
## 211       carnivora         felidae        Oncifelis         geoffroyi
## 212       carnivora         felidae       Otocolobus             manul
## 213       carnivora         felidae         Panthera            tigris
## 214       carnivora         felidae         Panthera              onca
## 215       carnivora         felidae         Panthera               leo
## 216       carnivora         felidae         Panthera            pardus
## 217       carnivora         felidae       Pardofelis         marmorata
## 218       carnivora         felidae     Prionailurus        viverrinus
## 219       carnivora         felidae     Prionailurus       rubiginosus
## 220       carnivora         felidae     Prionailurus       bengalensis
## 221       carnivora         felidae         Profelis            aurata
## 222       carnivora         felidae             Puma          concolor
## 223       carnivora         felidae            Uncia             uncia
## 224       carnivora     herpestidae           Atilax       paludinosus
## 225       carnivora     herpestidae         Bdeogale       crassicauda
## 226       carnivora     herpestidae      Crossarchus          obscurus
## 227       carnivora     herpestidae         Cynictis       penicillata
## 228       carnivora     herpestidae        Galerella      pulverulenta
## 229       carnivora     herpestidae        Galerella         sanguinea
## 230       carnivora     herpestidae          Galidia           elegans
## 231       carnivora     herpestidae       Galidictis          fasciata
## 232       carnivora     herpestidae         Helogale           parvula
## 233       carnivora     herpestidae        Herpestes         javanicus
## 234       carnivora     herpestidae        Herpestes         edwardsii
## 235       carnivora     herpestidae        Herpestes         ichneumon
## 236       carnivora     herpestidae        Ichneumia         albicauda
## 237       carnivora     herpestidae           Mungos             mungo
## 238       carnivora     herpestidae      Mungotictis      decemlineata
## 239       carnivora     herpestidae     Paracynictis           selousi
## 240       carnivora     herpestidae         Suricata         suricatta
## 241       carnivora       hyaenidae          Crocuta           crocuta
## 242       carnivora       hyaenidae           Hyaena            hyaena
## 243       carnivora       hyaenidae       Parahyaena           brunnea
## 244       carnivora       hyaenidae         Proteles         cristatus
## 245       carnivora      mustelidae         Amblonyx          cinereus
## 246       carnivora      mustelidae            Aonyx          congicus
## 247       carnivora      mustelidae            Aonyx          capensis
## 248       carnivora      mustelidae         Arctonyx          collaris
## 249       carnivora      mustelidae        Conepatus        leuconotus
## 250       carnivora      mustelidae        Conepatus      semistriatus
## 251       carnivora      mustelidae        Conepatus        mesoleucus
## 252       carnivora      mustelidae             Eira           barbara
## 253       carnivora      mustelidae          Enhydra            lutris
## 254       carnivora      mustelidae         Galictis           vittata
## 255       carnivora      mustelidae             Gulo              gulo
## 256       carnivora      mustelidae          Ictonyx            libyca
## 257       carnivora      mustelidae          Ictonyx          striatus
## 258       carnivora      mustelidae           Lontra       longicaudis
## 259       carnivora      mustelidae           Lontra            felina
## 260       carnivora      mustelidae           Lontra        canadensis
## 261       carnivora      mustelidae            Lutra      maculicollis
## 262       carnivora      mustelidae            Lutra             lutra
## 263       carnivora      mustelidae        Lutrogale     perspicillata
## 264       carnivora      mustelidae           Martes         flavigula
## 265       carnivora      mustelidae           Martes         zibellina
## 266       carnivora      mustelidae           Martes             foina
## 267       carnivora      mustelidae           Martes         americana
## 268       carnivora      mustelidae           Martes          pennanti
## 269       carnivora      mustelidae           Martes            martes
## 270       carnivora      mustelidae            Meles             meles
## 271       carnivora      mustelidae        Mellivora          capensis
## 272       carnivora      mustelidae         Melogale         personata
## 273       carnivora      mustelidae         Mephitis          macroura
## 274       carnivora      mustelidae         Mephitis          mephitis
## 275       carnivora      mustelidae          Mustela          nigripes
## 276       carnivora      mustelidae          Mustela          lutreola
## 277       carnivora      mustelidae          Mustela           altaica
## 278       carnivora      mustelidae          Mustela          sibirica
## 279       carnivora      mustelidae          Mustela             vison
## 280       carnivora      mustelidae          Mustela           frenata
## 281       carnivora      mustelidae          Mustela           erminea
## 282       carnivora      mustelidae          Mustela       eversmannii
## 283       carnivora      mustelidae          Mustela          putorius
## 284       carnivora      mustelidae          Mustela           nivalis
## 285       carnivora      mustelidae      Poecilogale         albinucha
## 286       carnivora      mustelidae        Pteronura      brasiliensis
## 287       carnivora      mustelidae        Spilogale           pygmaea
## 288       carnivora      mustelidae        Spilogale          putorius
## 289       carnivora      mustelidae          Taxidea             taxus
## 290       carnivora      mustelidae          Vormela         peregusna
## 291       carnivora      odobenidae         Odobenus          rosmarus
## 292       carnivora       otariidae    Arctocephalus     galapagoensis
## 293       carnivora       otariidae    Arctocephalus        tropicalis
## 294       carnivora       otariidae    Arctocephalus          forsteri
## 295       carnivora       otariidae    Arctocephalus           gazella
## 296       carnivora       otariidae    Arctocephalus          pusillus
## 297       carnivora       otariidae    Arctocephalus         australis
## 298       carnivora       otariidae       Eumetopias           jubatus
## 299       carnivora       otariidae         Neophoca           cinerea
## 300       carnivora       otariidae           Otaria           byronia
## 301       carnivora       otariidae       Phocarctos           hookeri
## 302       carnivora       otariidae         Zalophus     californianus
## 303       carnivora      otariidae       Callorhinus           ursinus
## 304       carnivora        phocidae       Cystophora          cristata
## 305       carnivora        phocidae       Erignathus          barbatus
## 306       carnivora        phocidae      Halichoerus            grypus
## 307       carnivora        phocidae         Hydrurga          leptonyx
## 308       carnivora        phocidae    Leptonychotes         weddellii
## 309       carnivora        phocidae          Lobodon     carcinophagus
## 310       carnivora        phocidae         Mirounga           leonina
## 311       carnivora        phocidae         Mirounga    angustirostris
## 312       carnivora        phocidae         Monachus          monachus
## 313       carnivora        phocidae         Monachus     schauinslandi
## 314       carnivora        phocidae      Ommatophoca            rossii
## 315       carnivora        phocidae            Phoca            largha
## 316       carnivora        phocidae            Phoca           caspica
## 317       carnivora        phocidae            Phoca           hispida
## 318       carnivora        phocidae            Phoca      groenlandica
## 319       carnivora        phocidae            Phoca          fasciata
## 320       carnivora        phocidae            Phoca          vitulina
## 321       carnivora        phocidae            Phoca          sibirica
## 322       carnivora     procyonidae      Bassaricyon            gabbii
## 323       carnivora     procyonidae      Bassariscus       sumichrasti
## 324       carnivora     procyonidae      Bassariscus           astutus
## 325       carnivora     procyonidae            Nasua             nasua
## 326       carnivora     procyonidae            Nasua            narica
## 327       carnivora     procyonidae            Potos            flavus
## 328       carnivora     procyonidae          Procyon       cancrivorus
## 329       carnivora     procyonidae          Procyon             lotor
## 330       carnivora         ursidae       Ailuropoda       melanoleuca
## 331       carnivora         ursidae          Ailurus           fulgens
## 332       carnivora         ursidae        Helarctos         malayanus
## 333       carnivora         ursidae         Melursus           ursinus
## 334       carnivora         ursidae       Tremarctos           ornatus
## 335       carnivora         ursidae            Ursus        thibetanus
## 336       carnivora         ursidae            Ursus         maritimus
## 337       carnivora         ursidae            Ursus            arctos
## 338       carnivora         ursidae            Ursus        americanus
## 339       carnivora      viverridae        Arctictis         binturong
## 340       carnivora      viverridae     Arctogalidia        trivirgata
## 341       carnivora      viverridae       Chrotogale           owstoni
## 342       carnivora      viverridae      Civettictis           civetta
## 343       carnivora      viverridae     Cryptoprocta             ferox
## 344       carnivora      viverridae         Cynogale         bennettii
## 345       carnivora      viverridae         Eupleres          goudotii
## 346       carnivora      viverridae            Fossa           fossana
## 347       carnivora      viverridae          Genetta          maculata
## 348       carnivora      viverridae          Genetta           genetta
## 349       carnivora      viverridae          Genetta           tigrina
## 350       carnivora      viverridae        Hemigalus         derbyanus
## 351       carnivora      viverridae         Nandinia          binotata
## 352       carnivora      viverridae           Paguma           larvata
## 353       carnivora      viverridae      Paradoxurus       zeylonensis
## 354       carnivora      viverridae      Paradoxurus    hermaphroditus
## 355       carnivora      viverridae        Prionodon        pardicolor
## 356       carnivora      viverridae        Prionodon           linsang
## 357       carnivora      viverridae          Viverra           zibetha
## 358       carnivora      viverridae      Viverricula            indica
## 359         cetacea      balaenidae          Balaena        mysticetus
## 360         cetacea      balaenidae        Eubalaena         australis
## 361         cetacea      balaenidae        Eubalaena         glacialis
## 362         cetacea balaenopteridae     Balaenoptera          physalus
## 363         cetacea balaenopteridae     Balaenoptera          musculus
## 364         cetacea balaenopteridae     Balaenoptera          borealis
## 365         cetacea balaenopteridae     Balaenoptera             edeni
## 366         cetacea balaenopteridae     Balaenoptera     acutorostrata
## 367         cetacea balaenopteridae        Megaptera      novaeangliae
## 368         cetacea     delphinidae  Cephalorhynchus        heavisidii
## 369         cetacea     delphinidae  Cephalorhynchus       commersonii
## 370         cetacea     delphinidae  Cephalorhynchus           hectori
## 371         cetacea     delphinidae        Delphinus           delphis
## 372         cetacea     delphinidae           Feresa         attenuata
## 373         cetacea     delphinidae     Globicephala             melas
## 374         cetacea     delphinidae     Globicephala     macrorhynchus
## 375         cetacea     delphinidae          Grampus           griseus
## 376         cetacea     delphinidae    Lagenodelphis             hosei
## 377         cetacea     delphinidae   Lagenorhynchus       albirostris
## 378         cetacea     delphinidae   Lagenorhynchus       obliquidens
## 379         cetacea     delphinidae   Lagenorhynchus            acutus
## 380         cetacea     delphinidae   Lagenorhynchus          obscurus
## 381         cetacea     delphinidae         Orcaella      brevirostris
## 382         cetacea     delphinidae          Orcinus              orca
## 383         cetacea     delphinidae    Peponocephala           electra
## 384         cetacea     delphinidae        Pseudorca        crassidens
## 385         cetacea     delphinidae          Sotalia       fluviatilis
## 386         cetacea     delphinidae         Stenella      coeruleoalba
## 387         cetacea     delphinidae         Stenella      longirostris
## 388         cetacea     delphinidae         Stenella         attenuata
## 389         cetacea     delphinidae            Steno       bredanensis
## 390         cetacea     delphinidae         Tursiops         truncatus
## 391         cetacea  eschrichtiidae     Eschrichtius          robustus
## 392         cetacea    monodontidae   Delphinapterus            leucas
## 393         cetacea    monodontidae          Monodon         monoceros
## 394         cetacea   neobalaenidae          Caperea         marginata
## 395         cetacea     phocoenidae      Neophocaena      phocaenoides
## 396         cetacea     phocoenidae         Phocoena             sinus
## 397         cetacea     phocoenidae         Phocoena          phocoena
## 398         cetacea     phocoenidae     Phocoenoides             dalli
## 399         cetacea    physeteridae            Kogia             simus
## 400         cetacea    physeteridae            Kogia         breviceps
## 401         cetacea    physeteridae         Physeter           catodon
## 402         cetacea   platanistidae             Inia       geoffrensis
## 403         cetacea   platanistidae          Lipotes        vexillifer
## 404         cetacea   platanistidae       Platanista             minor
## 405         cetacea   platanistidae       Platanista         gangetica
## 406         cetacea   platanistidae       Pontoporia       blainvillei
## 407         cetacea       ziphiidae        Berardius           arnuxii
## 408         cetacea       ziphiidae        Berardius           bairdii
## 409         cetacea       ziphiidae       Hyperoodon        ampullatus
## 410         cetacea       ziphiidae       Mesoplodon        carlhubbsi
## 411         cetacea       ziphiidae       Mesoplodon      densirostris
## 412         cetacea       ziphiidae       Mesoplodon            bidens
## 413         cetacea       ziphiidae          Ziphius       cavirostris
## 414      dermoptera  cynocephalidae     Cynocephalus        variegatus
## 415      dermoptera  cynocephalidae     Cynocephalus            volans
## 416      hyracoidea     procaviidae      Dendrohyrax          arboreus
## 417      hyracoidea     procaviidae      Dendrohyrax          dorsalis
## 418      hyracoidea     procaviidae      Heterohyrax            brucei
## 419      hyracoidea     procaviidae         Procavia          capensis
## 420     insectivora chrysochloridae       Amblysomus       hottentotus
## 421     insectivora chrysochloridae    Chrysochloris        stuhlmanni
## 422     insectivora chrysochloridae    Chrysochloris          asiatica
## 423     insectivora chrysochloridae     Chrysospalax          villosus
## 424     insectivora chrysochloridae       Eremitalpa            granti
## 425     insectivora     erinaceidae         Atelerix           algirus
## 426     insectivora     erinaceidae         Atelerix       albiventris
## 427     insectivora     erinaceidae         Atelerix         frontalis
## 428     insectivora     erinaceidae      Echinosorex           gymnura
## 429     insectivora     erinaceidae        Erinaceus          concolor
## 430     insectivora     erinaceidae        Erinaceus         europaeus
## 431     insectivora     erinaceidae      Hemiechinus          micropus
## 432     insectivora     erinaceidae      Hemiechinus         hypomelas
## 433     insectivora     erinaceidae      Hemiechinus       aethiopicus
## 434     insectivora     erinaceidae      Hemiechinus           auritus
## 435     insectivora     erinaceidae          Hylomys           suillus
## 436     insectivora  solenodontidae        Solenodon           cubanus
## 437     insectivora  solenodontidae        Solenodon         paradoxus
## 438     insectivora       soricidae          Blarina      carolinensis
## 439     insectivora       soricidae          Blarina         hylophaga
## 440     insectivora       soricidae          Blarina        brevicauda
## 441     insectivora       soricidae        Crocidura        fuliginosa
## 442     insectivora       soricidae        Crocidura             turba
## 443     insectivora       soricidae        Crocidura       canariensis
## 444     insectivora       soricidae        Crocidura       fuscomurina
## 445     insectivora       soricidae        Crocidura         planiceps
## 446     insectivora       soricidae        Crocidura           crossei
## 447     insectivora       soricidae        Crocidura       mariquensis
## 448     insectivora       soricidae        Crocidura            viaria
## 449     insectivora       soricidae        Crocidura        flavescens
## 450     insectivora       soricidae        Crocidura          leucodon
## 451     insectivora       soricidae        Crocidura             hirta
## 452     insectivora       soricidae        Crocidura           russula
## 453     insectivora       soricidae        Crocidura        suaveolens
## 454     insectivora       soricidae        Cryptotis             parva
## 455     insectivora       soricidae     Diplomesodon        pulchellum
## 456     insectivora       soricidae         Myosorex            varius
## 457     insectivora       soricidae         Myosorex             cafer
## 458     insectivora       soricidae         Myosorex             geata
## 459     insectivora       soricidae           Neomys          anomalus
## 460     insectivora       soricidae           Neomys           fodiens
## 461     insectivora       soricidae       Notiosorex         crawfordi
## 462     insectivora       soricidae            Sorex         mirabilis
## 463     insectivora       soricidae            Sorex            dispar
## 464     insectivora       soricidae            Sorex         pacificus
## 465     insectivora       soricidae            Sorex           bairdii
## 466     insectivora       soricidae            Sorex          bendirii
## 467     insectivora       soricidae            Sorex         coronatus
## 468     insectivora       soricidae            Sorex          merriami
## 469     insectivora       soricidae            Sorex          cinereus
## 470     insectivora       soricidae            Sorex          arcticus
## 471     insectivora       soricidae            Sorex           ornatus
## 472     insectivora       soricidae            Sorex              hoyi
## 473     insectivora       soricidae            Sorex        monticolus
## 474     insectivora       soricidae            Sorex       trowbridgii
## 475     insectivora       soricidae            Sorex           minutus
## 476     insectivora       soricidae            Sorex           haydeni
## 477     insectivora       soricidae            Sorex           araneus
## 478     insectivora       soricidae            Sorex      longirostris
## 479     insectivora       soricidae            Sorex             nanus
## 480     insectivora       soricidae            Sorex            fumeus
## 481     insectivora       soricidae            Sorex           vagrans
## 482     insectivora       soricidae            Sorex         palustris
## 483     insectivora       soricidae           Suncus           murinus
## 484     insectivora       soricidae           Suncus           varilla
## 485     insectivora       soricidae           Suncus          etruscus
## 486     insectivora       soricidae       Surdisorex             norae
## 487     insectivora       soricidae       Surdisorex           polulus
## 488     insectivora       soricidae       Sylvisorex            granti
## 489     insectivora        talpidae        Condylura          cristata
## 490     insectivora        talpidae          Desmana          moschata
## 491     insectivora        talpidae          Galemys        pyrenaicus
## 492     insectivora        talpidae     Neurotrichus           gibbsii
## 493     insectivora        talpidae      Parascalops           breweri
## 494     insectivora        talpidae         Scalopus         aquaticus
## 495     insectivora        talpidae         Scapanus        townsendii
## 496     insectivora        talpidae         Scapanus           orarius
## 497     insectivora        talpidae         Scapanus         latimanus
## 498     insectivora        talpidae            Talpa           altaica
## 499     insectivora        talpidae            Talpa          europaea
## 500     insectivora        talpidae       Urotrichus         talpoides
## 501     insectivora      tenrecidae         Echinops          telfairi
## 502     insectivora      tenrecidae          Geogale            aurita
## 503     insectivora      tenrecidae     Hemicentetes      semispinosus
## 504     insectivora      tenrecidae        Limnogale          mergulus
## 505     insectivora      tenrecidae        Microgale           dobsoni
## 506     insectivora      tenrecidae        Microgale          talazaci
## 507     insectivora      tenrecidae  Micropotamogale          lamottei
## 508     insectivora      tenrecidae       Potamogale             velox
## 509     insectivora      tenrecidae          Setifer           setosus
## 510     insectivora      tenrecidae           Tenrec         ecaudatus
## 511      lagomorpha       leporidae      Brachylagus        idahoensis
## 512      lagomorpha       leporidae        Bunolagus      monticularis
## 513      lagomorpha       leporidae       Caprolagus          hispidus
## 514      lagomorpha       leporidae            Lepus       nigricollis
## 515      lagomorpha       leporidae            Lepus          callotis
## 516      lagomorpha       leporidae            Lepus         insularis
## 517      lagomorpha       leporidae            Lepus             tolai
## 518      lagomorpha       leporidae            Lepus             othus
## 519      lagomorpha       leporidae            Lepus          arcticus
## 520      lagomorpha       leporidae            Lepus           timidus
## 521      lagomorpha       leporidae            Lepus        americanus
## 522      lagomorpha       leporidae            Lepus        townsendii
## 523      lagomorpha       leporidae            Lepus          capensis
## 524      lagomorpha       leporidae            Lepus            alleni
## 525      lagomorpha       leporidae            Lepus      californicus
## 526      lagomorpha       leporidae            Lepus         europaeus
## 527      lagomorpha       leporidae            Lepus         saxatilis
## 528      lagomorpha       leporidae      Oryctolagus         cuniculus
## 529      lagomorpha       leporidae         Poelagus         marjorita
## 530      lagomorpha       leporidae       Pronolagus         randensis
## 531      lagomorpha       leporidae       Pronolagus    crassicaudatus
## 532      lagomorpha       leporidae       Pronolagus         rupestris
## 533      lagomorpha       leporidae      Romerolagus             diazi
## 534      lagomorpha       leporidae       Sylvilagus      brasiliensis
## 535      lagomorpha      leporidae        Sylvilagus         palustris
## 536      lagomorpha      leporidae        Sylvilagus    transitionalis
## 537      lagomorpha      leporidae        Sylvilagus         aquaticus
## 538      lagomorpha      leporidae        Sylvilagus          bachmani
## 539      lagomorpha      leporidae        Sylvilagus         nuttallii
## 540      lagomorpha      leporidae        Sylvilagus        floridanus
## 541      lagomorpha      leporidae        Sylvilagus         audubonii
## 542      lagomorpha     ochotonidae         Ochotona          macrotis
## 543      lagomorpha     ochotonidae         Ochotona         curzoniae
## 544      lagomorpha     ochotonidae         Ochotona          collaris
## 545      lagomorpha     ochotonidae         Ochotona            roylei
## 546      lagomorpha     ochotonidae         Ochotona          dauurica
## 547      lagomorpha     ochotonidae         Ochotona            alpina
## 548      lagomorpha     ochotonidae         Ochotona          princeps
## 549      lagomorpha     ochotonidae         Ochotona            rutila
## 550      lagomorpha     ochotonidae         Ochotona           pallasi
## 551      lagomorpha     ochotonidae         Ochotona           pusilla
## 552      lagomorpha     ochotonidae         Ochotona         rufescens
## 553   macroscelidea macroscelididae     Elephantulus         rupestris
## 554   macroscelidea macroscelididae     Elephantulus            fuscus
## 555   macroscelidea macroscelididae     Elephantulus            intufi
## 556   macroscelidea macroscelididae     Elephantulus            myurus
## 557   macroscelidea macroscelididae     Elephantulus            rozeti
## 558   macroscelidea macroscelididae     Elephantulus         rufescens
## 559   macroscelidea macroscelididae     Elephantulus    brachyrhynchus
## 560   macroscelidea macroscelididae    Macroscelides      proboscideus
## 561   macroscelidea macroscelididae      Petrodromus     tetradactylus
## 562   macroscelidea macroscelididae      Rhynchocyon       chrysopygus
## 563  perissodactyla         equidae            Equus            asinus
## 564  perissodactyla         equidae            Equus             kiang
## 565  perissodactyla         equidae            Equus            grevyi
## 566  perissodactyla         equidae            Equus             zebra
## 567  perissodactyla         equidae            Equus        burchellii
## 568  perissodactyla         equidae            Equus          hemionus
## 569  perissodactyla  rhinocerotidae    Ceratotherium             simum
## 570  perissodactyla  rhinocerotidae     Dicerorhinus       sumatrensis
## 571  perissodactyla  rhinocerotidae          Diceros          bicornis
## 572  perissodactyla  rhinocerotidae       Rhinoceros         unicornis
## 573  perissodactyla  rhinocerotidae       Rhinoceros         sondaicus
## 574  perissodactyla       tapiridae          Tapirus         pinchaque
## 575  perissodactyla       tapiridae          Tapirus        terrestris
## 576  perissodactyla       tapiridae          Tapirus           indicus
## 577  perissodactyla       tapiridae          Tapirus           bairdii
## 578       pholidota         manidae            Manis          gigantea
## 579       pholidota         manidae            Manis          javanica
## 580       pholidota         manidae            Manis      pentadactyla
## 581       pholidota         manidae            Manis         tricuspis
## 582       pholidota         manidae            Manis     crassicaudata
## 583       pholidota         manidae            Manis      tetradactyla
## 584       pholidota         manidae            Manis        temminckii
## 585        primates  callitrichidae        Callimico           goeldii
## 586        primates  callitrichidae       Callithrix       humeralifer
## 587        primates  callitrichidae       Callithrix         argentata
## 588        primates  callitrichidae       Callithrix           pygmaea
## 589        primates  callitrichidae       Callithrix       penicillata
## 590        primates  callitrichidae       Callithrix         flaviceps
## 591        primates  callitrichidae       Callithrix           jacchus
## 592        primates  callitrichidae   Leontopithecus           rosalia
## 593        primates  callitrichidae         Saguinus          leucopus
## 594        primates  callitrichidae         Saguinus         imperator
## 595        primates  callitrichidae         Saguinus           bicolor
## 596        primates  callitrichidae         Saguinus       nigricollis
## 597        primates  callitrichidae         Saguinus            mystax
## 598        primates  callitrichidae         Saguinus         geoffroyi
## 599        primates  callitrichidae         Saguinus       fuscicollis
## 600        primates  callitrichidae         Saguinus           oedipus
## 601        primates  callitrichidae         Saguinus          labiatus
## 602        primates  callitrichidae         Saguinus             midas
## 603        primates         cebidae         Alouatta             pigra
## 604        primates         cebidae         Alouatta         seniculus
## 605        primates         cebidae         Alouatta          palliata
## 606        primates         cebidae         Alouatta            caraya
## 607        primates         cebidae            Aotus       trivirgatus
## 608        primates         cebidae            Aotus         lemurinus
## 609        primates         cebidae            Aotus            azarai
## 610        primates         cebidae           Ateles         belzebuth
## 611        primates         cebidae           Ateles         geoffroyi
## 612        primates         cebidae           Ateles          paniscus
## 613        primates         cebidae           Ateles         fusciceps
## 614        primates         cebidae      Brachyteles       arachnoides
## 615        primates         cebidae          Cacajao            calvus
## 616        primates         cebidae       Callicebus         torquatus
## 617        primates         cebidae       Callicebus           cupreus
## 618        primates         cebidae       Callicebus            moloch
## 619        primates         cebidae            Cebus         olivaceus
## 620        primates         cebidae            Cebus         capucinus
## 621        primates         cebidae            Cebus            apella
## 622        primates         cebidae            Cebus         albifrons
## 623        primates         cebidae       Chiropotes         albinasus
## 624        primates         cebidae       Chiropotes           satanas
## 625        primates         cebidae        Lagothrix        lagotricha
## 626        primates         cebidae         Pithecia          monachus
## 627        primates         cebidae         Pithecia          pithecia
## 628        primates         cebidae          Saimiri          oerstedi
## 629        primates         cebidae          Saimiri          sciureus
## 630        primates cercopithecidae   Allenopithecus      nigroviridis
## 631        primates cercopithecidae       Cercocebus         galeritus
## 632        primates cercopithecidae       Cercocebus         torquatus
## 633        primates cercopithecidae    Cercopithecus             wolfi
## 634        primates cercopithecidae    Cercopithecus           lhoesti
## 635        primates cercopithecidae    Cercopithecus              mona
## 636        primates cercopithecidae    Cercopithecus         nictitans
## 637        primates cercopithecidae    Cercopithecus        erythrotis
## 638        primates cercopithecidae    Cercopithecus            cephus
## 639        primates cercopithecidae    Cercopithecus          pogonias
## 640        primates cercopithecidae    Cercopithecus          ascanius
## 641        primates cercopithecidae    Cercopithecus         campbelli
## 642        primates cercopithecidae    Cercopithecus             mitis
## 643        primates cercopithecidae    Cercopithecus           solatus
## 644        primates cercopithecidae    Cercopithecus         neglectus
## 645        primates cercopithecidae    Cercopithecus             diana
## 646        primates cercopithecidae      Chlorocebus          aethiops
## 647        primates cercopithecidae          Colobus        angolensis
## 648        primates cercopithecidae          Colobus           satanas
## 649        primates cercopithecidae          Colobus         polykomos
## 650        primates cercopithecidae          Colobus           guereza
## 651        primates cercopithecidae     Erythrocebus             patas
## 652        primates cercopithecidae       Lophocebus          albigena
## 653        primates cercopithecidae           Macaca         thibetana
## 654        primates cercopithecidae           Macaca           fuscata
## 655        primates cercopithecidae           Macaca             maura
## 656        primates cercopithecidae           Macaca          sylvanus
## 657        primates cercopithecidae           Macaca         arctoides
## 658        primates cercopithecidae           Macaca             nigra
## 659        primates cercopithecidae           Macaca            sinica
## 660        primates cercopithecidae           Macaca           silenus
## 661        primates cercopithecidae           Macaca           mulatta
## 662        primates cercopithecidae           Macaca          cyclopis
## 663        primates cercopithecidae           Macaca        nemestrina
## 664        primates cercopithecidae           Macaca      fascicularis
## 665        primates cercopithecidae           Macaca           radiata
## 666        primates cercopithecidae       Mandrillus       leucophaeus
## 667        primates cercopithecidae       Mandrillus            sphinx
## 668        primates cercopithecidae      Miopithecus          talapoin
## 669        primates cercopithecidae          Nasalis          larvatus
## 670        primates cercopithecidae            Papio         hamadryas
## 671        primates cercopithecidae        Presbytis            comata
## 672        primates cercopithecidae        Presbytis         rubicunda
## 673        primates cercopithecidae        Presbytis        potenziani
## 674        primates cercopithecidae        Presbytis        melalophos
## 675        primates cercopithecidae       Procolobus             verus
## 676        primates cercopithecidae       Procolobus            badius
## 677        primates cercopithecidae        Pygathrix             bieti
## 678        primates cercopithecidae        Pygathrix           nemaeus
## 679        primates cercopithecidae    Semnopithecus          entellus
## 680        primates cercopithecidae    Theropithecus            gelada
## 681        primates cercopithecidae   Trachypithecus         francoisi
## 682        primates cercopithecidae   Trachypithecus              geei
## 683        primates cercopithecidae   Trachypithecus            johnii
## 684        primates cercopithecidae   Trachypithecus         cristatus
## 685        primates cercopithecidae   Trachypithecus           vetulus
## 686        primates cercopithecidae   Trachypithecus          obscurus
## 687        primates cercopithecidae   Trachypithecus           phayrei
## 688        primates  cheirogaleidae     Cheirogaleus             major
## 689        primates  cheirogaleidae     Cheirogaleus            medius
## 690        primates  cheirogaleidae       Microcebus             rufus
## 691        primates  cheirogaleidae       Microcebus         coquereli
## 692        primates  cheirogaleidae       Microcebus           murinus
## 693        primates  cheirogaleidae           Phaner          furcifer
## 694        primates  daubentoniidae      Daubentonia  madagascariensis
## 695        primates     galagonidae         Euoticus       elegantulus
## 696        primates     galagonidae           Galago            alleni
## 697        primates     galagonidae           Galago            moholi
## 698        primates     galagonidae           Galago      senegalensis
## 699        primates     galagonidae       Galagoides          demidoff
## 700        primates     galagonidae       Galagoides      zanzibaricus
## 701        primates     galagonidae         Otolemur    crassicaudatus
## 702        primates     galagonidae         Otolemur         garnettii
## 703        primates       hominidae          Gorilla           gorilla
## 704        primates       hominidae              Pan       troglodytes
## 705        primates       hominidae              Pan          paniscus
## 706        primates       hominidae            Pongo          pygmaeus
## 707        primates     hylobatidae        Hylobates            moloch
## 708        primates     hylobatidae        Hylobates           klossii
## 709        primates     hylobatidae        Hylobates           hoolock
## 710        primates     hylobatidae        Hylobates          concolor
## 711        primates     hylobatidae        Hylobates            agilis
## 712        primates     hylobatidae        Hylobates       syndactylus
## 713        primates     hylobatidae        Hylobates               lar
## 714        primates        indridae            Avahi           laniger
## 715        primates        indridae            Indri             indri
## 716        primates        indridae      Propithecus       tattersalli
## 717        primates        indridae      Propithecus           diadema
## 718        primates        indridae      Propithecus         verreauxi
## 719        primates       lemuridae          Eulemur       rubriventer
## 720        primates       lemuridae          Eulemur            macaco
## 721        primates       lemuridae          Eulemur            mongoz
## 722        primates       lemuridae          Eulemur         coronatus
## 723        primates       lemuridae          Eulemur            fulvus
## 724        primates       lemuridae        Hapalemur            aureus
## 725        primates       lemuridae        Hapalemur           griseus
## 726        primates       lemuridae            Lemur             catta
## 727        primates       lemuridae          Varecia         variegata
## 728        primates         loridae       Arctocebus      calabarensis
## 729        primates         loridae            Loris       tardigradus
## 730        primates         loridae       Nycticebus          pygmaeus
## 731        primates         loridae       Nycticebus           coucang
## 732        primates         loridae     Perodicticus             potto
## 733        primates   megaladapidae        Lepilemur          leucopus
## 734        primates   megaladapidae        Lepilemur      ruficaudatus
## 735        primates   megaladapidae        Lepilemur        mustelinus
## 736        primates       tarsiidae          Tarsius           pumilis
## 737        primates       tarsiidae          Tarsius            dianae
## 738        primates       tarsiidae          Tarsius          syrichta
## 739        primates       tarsiidae          Tarsius          bancanus
## 740        primates       tarsiidae          Tarsius          spectrum
## 741     proboscidea    elephantidae          Elephas           maximus
## 742     proboscidea    elephantidae        Loxodonta          africana
## 743        rodentia     abrocomidae         Abrocoma           cinerea
## 744        rodentia     abrocomidae         Abrocoma          bennetti
## 745        rodentia       agoutidae           Agouti              paca
## 746        rodentia    anomaluridae       Anomalurus         beecrofti
## 747        rodentia    anomaluridae       Anomalurus         derbianus
## 748        rodentia    anomaluridae       Anomalurus             pelii
## 749        rodentia    anomaluridae          Idiurus           zenkeri
## 750        rodentia    aplodontidae       Aplodontia              rufa
## 751        rodentia    bathyergidae       Bathyergus           suillus
## 752        rodentia    bathyergidae       Bathyergus           janetta
## 753        rodentia    bathyergidae        Cryptomys        damarensis
## 754        rodentia    bathyergidae        Cryptomys       hottentotus
## 755        rodentia    bathyergidae        Cryptomys  ochraceocinereus
## 756        rodentia    bathyergidae        Georychus          capensis
## 757        rodentia    bathyergidae     Heliophobius  argenteocinereus
## 758        rodentia    bathyergidae   Heterocephalus            glaber
## 759        rodentia     capromyidae         Capromys         pilorides
## 760        rodentia     capromyidae      Geocapromys         ingrahami
## 761        rodentia     capromyidae      Geocapromys           brownii
## 762        rodentia     capromyidae        Mysateles         melanurus
## 763        rodentia     capromyidae        Mysateles       prehensilis
## 764        rodentia     capromyidae     Plagiodontia            aedium
## 765        rodentia      castoridae           Castor             fiber
## 766        rodentia      castoridae           Castor        canadensis
## 767        rodentia        caviidae            Cavia          tschudii
## 768        rodentia        caviidae            Cavia            aperea
## 769        rodentia        caviidae            Cavia         porcellus
## 770        rodentia        caviidae       Dolichotis        salinicola
## 771        rodentia        caviidae       Dolichotis         patagonum
## 772        rodentia        caviidae            Galea            spixii
## 773        rodentia        caviidae            Galea       musteloides
## 774        rodentia        caviidae          Kerodon         rupestris
## 775        rodentia        caviidae       Microcavia         australis
## 776        rodentia   chinchillidae       Chinchilla      brevicaudata
## 777        rodentia   chinchillidae       Chinchilla          lanigera
## 778        rodentia   chinchillidae         Lagidium          viscacia
## 779        rodentia   chinchillidae         Lagidium          peruanum
## 780        rodentia   chinchillidae       Lagostomus           maximus
## 781        rodentia ctenodactylidae    Ctenodactylus              vali
## 782        rodentia ctenodactylidae    Ctenodactylus             gundi
## 783        rodentia ctenodactylidae      Massoutiera             mzabi
## 784        rodentia     ctenomyidae         Ctenomys         torquatus
## 785        rodentia     ctenomyidae         Ctenomys             haigi
## 786        rodentia     ctenomyidae         Ctenomys          peruanus
## 787        rodentia     ctenomyidae         Ctenomys           talarum
## 788        rodentia     ctenomyidae         Ctenomys            opimus
## 789        rodentia   dasyproctidae       Dasyprocta          punctata
## 790        rodentia   dasyproctidae       Dasyprocta          cristata
## 791        rodentia   dasyproctidae       Dasyprocta          leporina
## 792        rodentia   dasyproctidae        Myoprocta           acouchy
## 793        rodentia      dinomyidae          Dinomys         branickii
## 794        rodentia       dipodidae        Allactaga      tetradactyla
## 795        rodentia       dipodidae        Allactaga        euphratica
## 796        rodentia       dipodidae        Allactaga          sibirica
## 797        rodentia       dipodidae        Allactaga            elater
## 798        rodentia       dipodidae            Dipus           sagitta
## 799        rodentia       dipodidae       Eremodipus     lichtensteini
## 800        rodentia       dipodidae          Jaculus        orientalis
## 801        rodentia       dipodidae          Jaculus           jaculus
## 802        rodentia       dipodidae          Jaculus       turcmenicus
## 803        rodentia       dipodidae      Napaeozapus          insignis
## 804        rodentia       dipodidae       Pygeretmus         platyurus
## 805        rodentia       dipodidae       Pygeretmus           pumilio
## 806        rodentia       dipodidae      Salpingotus       crassicauda
## 807        rodentia       dipodidae          Sicista            napaea
## 808        rodentia       dipodidae          Sicista          betulina
## 809        rodentia       dipodidae       Stylodipus             telum
## 810        rodentia       dipodidae            Zapus          princeps
## 811        rodentia       dipodidae            Zapus        trinotatus
## 812        rodentia       dipodidae            Zapus         hudsonius
## 813        rodentia      echimyidae          Echimys         chrysurus
## 814        rodentia      echimyidae         Hoplomys          gymnurus
## 815        rodentia      echimyidae    Kannabateomys         amblyonyx
## 816        rodentia      echimyidae         Makalata            armata
## 817        rodentia      echimyidae       Proechimys       cayennensis
## 818        rodentia      echimyidae       Proechimys      semispinosus
## 819        rodentia      echimyidae       Proechimys           guairae
## 820        rodentia      echimyidae       Thrichomys        apereoides
## 821        rodentia  erethizontidae          Coendou       prehensilis
## 822        rodentia  erethizontidae        Erethizon          dorsatum
## 823        rodentia  erethizontidae       Sphiggurus          villosus
## 824        rodentia  erethizontidae       Sphiggurus         mexicanus
## 825        rodentia       geomyidae           Geomys         bursarius
## 826        rodentia       geomyidae           Geomys           pinetis
## 827        rodentia       geomyidae           Geomys        personatus
## 828        rodentia       geomyidae           Geomys         arenarius
## 829        rodentia       geomyidae      Orthogeomys          hispidus
## 830        rodentia       geomyidae      Orthogeomys          cherriei
## 831        rodentia       geomyidae      Pappogeomys         castanops
## 832        rodentia       geomyidae         Thomomys           clusius
## 833        rodentia       geomyidae         Thomomys         monticola
## 834        rodentia       geomyidae         Thomomys          umbrinus
## 835        rodentia       geomyidae         Thomomys         talpoides
## 836        rodentia       geomyidae         Thomomys        bulbivorus
## 837        rodentia       geomyidae         Thomomys            bottae
## 838        rodentia       geomyidae         Thomomys        townsendii
## 839        rodentia    heteromyidae      Chaetodipus           nelsoni
## 840        rodentia    heteromyidae      Chaetodipus      penicillatus
## 841        rodentia    heteromyidae      Chaetodipus      californicus
## 842        rodentia    heteromyidae      Chaetodipus       intermedius
## 843        rodentia    heteromyidae      Chaetodipus            fallax
## 844        rodentia    heteromyidae      Chaetodipus          formosus
## 845        rodentia    heteromyidae      Chaetodipus          hispidus
## 846        rodentia    heteromyidae        Dipodomys      elephantinus
## 847        rodentia    heteromyidae        Dipodomys       nitratoides
## 848        rodentia    heteromyidae        Dipodomys      panamintinus
## 849        rodentia    heteromyidae        Dipodomys           microps
## 850        rodentia    heteromyidae        Dipodomys            agilis
## 851        rodentia    heteromyidae        Dipodomys         stephensi
## 852        rodentia    heteromyidae        Dipodomys          venustus
## 853        rodentia    heteromyidae        Dipodomys          merriami
## 854        rodentia    heteromyidae        Dipodomys       spectabilis
## 855        rodentia    heteromyidae        Dipodomys      californicus
## 856        rodentia    heteromyidae        Dipodomys            ingens
## 857        rodentia    heteromyidae        Dipodomys         heermanni
## 858        rodentia    heteromyidae        Dipodomys             ordii
## 859        rodentia    heteromyidae        Dipodomys           deserti
## 860        rodentia    heteromyidae        Heteromys          anomalus
## 861        rodentia    heteromyidae        Heteromys         oresterus
## 862        rodentia    heteromyidae        Heteromys          goldmani
## 863        rodentia    heteromyidae        Heteromys    desmarestianus
## 864        rodentia    heteromyidae           Liomys            pictus
## 865        rodentia    heteromyidae           Liomys         irroratus
## 866        rodentia    heteromyidae           Liomys         adspersus
## 867        rodentia    heteromyidae           Liomys           salvini
## 868        rodentia    heteromyidae    Microdipodops          pallidus
## 869        rodentia    heteromyidae    Microdipodops      megacephalus
## 870        rodentia    heteromyidae      Perognathus         fasciatus
## 871        rodentia    heteromyidae      Perognathus      longimembris
## 872        rodentia    heteromyidae      Perognathus            flavus
## 873        rodentia    heteromyidae      Perognathus        flavescens
## 874        rodentia    heteromyidae      Perognathus            parvus
## 875        rodentia    heteromyidae      Perognathus          merriami
## 876        rodentia    heteromyidae      Perognathus         inornatus
## 877        rodentia  hydrochaeridae     Hydrochaeris      hydrochaeris
## 878        rodentia     hystricidae        Atherurus         macrourus
## 879        rodentia     hystricidae        Atherurus         africanus
## 880        rodentia     hystricidae          Hystrix            pumila
## 881        rodentia     hystricidae          Hystrix         brachyura
## 882        rodentia     hystricidae          Hystrix            indica
## 883        rodentia     hystricidae          Hystrix          cristata
## 884        rodentia     hystricidae          Hystrix  africaeaustralis
## 885        rodentia         muridae           Acomys         percivali
## 886        rodentia         muridae           Acomys          russatus
## 887        rodentia         muridae           Acomys           wilsoni
## 888        rodentia         muridae           Acomys         cahirinus
## 889        rodentia         muridae         Aethomys            hindei
## 890        rodentia         muridae         Aethomys           kaiseri
## 891        rodentia         muridae         Aethomys      chrysophilus
## 892        rodentia         muridae         Aethomys       namaquensis
## 893        rodentia         muridae           Akodon            varius
## 894        rodentia         muridae           Akodon            cursor
## 895        rodentia         muridae           Akodon       boliviensis
## 896        rodentia         muridae           Akodon           molinae
## 897        rodentia         muridae           Akodon           dolores
## 898        rodentia         muridae           Akodon            azarae
## 899        rodentia         muridae           Akodon        longipilis
## 900        rodentia         muridae           Akodon         olivaceus
## 901        rodentia         muridae           Akodon            urichi
## 902        rodentia         muridae   Allocricetulus        eversmanni
## 903        rodentia         muridae         Alticola            roylei
## 904        rodentia         muridae         Alticola         strelzowi
## 905        rodentia         muridae         Alticola        argentatus
## 906        rodentia         muridae         Apodemus         argenteus
## 907        rodentia         muridae         Apodemus        peninsulae
## 908        rodentia         muridae         Apodemus         uralensis
## 909        rodentia         muridae         Apodemus        mystacinus
## 910        rodentia         muridae         Apodemus       flavicollis
## 911        rodentia         muridae         Apodemus          agrarius
## 912        rodentia         muridae         Apodemus        sylvaticus
## 913        rodentia         muridae        Arborimus              pomo
## 914        rodentia         muridae        Arborimus       longicaudus
## 915        rodentia         muridae        Arborimus           albipes
## 916        rodentia         muridae      Arvicanthis         niloticus
## 917        rodentia         muridae         Arvicola           sapidus
## 918        rodentia         muridae         Arvicola        terrestris
## 919        rodentia         muridae       Auliscomys          micropus
## 920        rodentia         muridae          Baiomys           taylori
## 921        rodentia         muridae        Bandicota            indica
## 922        rodentia         muridae        Bandicota       bengalensis
## 923        rodentia         muridae           Beamys            hindei
## 924        rodentia         muridae          Bolomys          lasiurus
## 925        rodentia         muridae          Calomys           lepidus
## 926        rodentia         muridae          Calomys            laucha
## 927        rodentia         muridae          Calomys       hummelincki
## 928        rodentia         muridae          Calomys          callosus
## 929        rodentia         muridae          Calomys        musculinus
## 930        rodentia         muridae       Calomyscus         bailwardi
## 931        rodentia         muridae       Calomyscus            mystax
## 932        rodentia         muridae         Cannomys            badius
## 933        rodentia         muridae        Chionomys           nivalis
## 934        rodentia         muridae        Chionomys               gud
## 935        rodentia         muridae     Chiropodomys         gliroides
## 936        rodentia         muridae       Chiruromys             vates
## 937        rodentia         muridae    Clethrionomys           gapperi
## 938        rodentia         muridae    Clethrionomys         rufocanus
## 939        rodentia         muridae    Clethrionomys         glareolus
## 940        rodentia         muridae    Clethrionomys      californicus
## 941        rodentia         muridae    Clethrionomys           rutilus
## 942        rodentia         muridae          Colomys          goslingi
## 943        rodentia         muridae        Conilurus      penicillatus
## 944        rodentia         muridae        Cremnomys         blanfordi
## 945        rodentia         muridae        Cremnomys         cutchicus
## 946        rodentia         muridae       Cricetomys         gambianus
## 947        rodentia         muridae       Cricetulus        barabensis
## 948        rodentia         muridae       Cricetulus       migratorius
## 949        rodentia         muridae         Cricetus          cricetus
## 950        rodentia         muridae          Dasymys          incomtus
## 951        rodentia         muridae        Dendromus         messorius
## 952        rodentia         muridae        Dendromus       kahuziensis
## 953        rodentia         muridae        Dendromus        mystacalis
## 954        rodentia         muridae        Dendromus         mesomelas
## 955        rodentia         muridae        Dendromus         melanotis
## 956        rodentia         muridae         Dephomys             defua
## 957        rodentia         muridae   Desmodilliscus           braueri
## 958        rodentia         muridae      Desmodillus       auricularis
## 959        rodentia         muridae      Dicrostonyx      unalascensis
## 960        rodentia         muridae      Dicrostonyx       richardsoni
## 961        rodentia         muridae      Dicrostonyx         hudsonius
## 962        rodentia         muridae      Dicrostonyx         torquatus
## 963        rodentia         muridae      Dicrostonyx     groenlandicus
## 964        rodentia         muridae        Dinaromys         bogdanovi
## 965        rodentia         muridae     Eligmodontia             typus
## 966        rodentia         muridae         Ellobius     fuscocapillus
## 967        rodentia         muridae         Ellobius          talpinus
## 968        rodentia         muridae        Eolagurus            luteus
## 969        rodentia         muridae      Gerbillurus           setzeri
## 970        rodentia         muridae      Gerbillurus             paeba
## 971        rodentia         muridae      Gerbillurus           tytonis
## 972        rodentia         muridae        Gerbillus          gleadowi
## 973        rodentia         muridae        Gerbillus         andersoni
## 974        rodentia         muridae        Gerbillus           henleyi
## 975        rodentia         muridae        Gerbillus         gerbillus
## 976        rodentia         muridae        Gerbillus          dasyurus
## 977        rodentia         muridae        Gerbillus       perpallidus
## 978        rodentia         muridae        Gerbillus            simoni
## 979        rodentia         muridae        Gerbillus         cheesmani
## 980        rodentia         muridae        Gerbillus             nanus
## 981        rodentia         muridae        Gerbillus         pyramidum
## 982        rodentia         muridae          Golunda           ellioti
## 983        rodentia         muridae        Grammomys          rutilans
## 984        rodentia         muridae        Grammomys        dolichurus
## 985        rodentia         muridae        Grammomys           cometes
## 986        rodentia         muridae          Graomys      griseoflavus
## 987        rodentia         muridae          Hodomys            alleni
## 988        rodentia         muridae       Holochilus      brasiliensis
## 989        rodentia         muridae          Hybomys       univittatus
## 990        rodentia         muridae         Hydromys      chrysogaster
## 991        rodentia         muridae       Hylomyscus            alleni
## 992        rodentia         muridae       Hylomyscus            stella
## 993        rodentia         muridae           Hyomys           goliath
## 994        rodentia         muridae      Hyperacrius          fertilis
## 995        rodentia         muridae      Hyperacrius            wynnei
## 996        rodentia         muridae       Hypogeomys          antimena
## 997        rodentia         muridae          Lagurus           lagurus
## 998        rodentia         muridae     Lasiopodomys          brandtii
## 999        rodentia         muridae        Leggadina     lakedownensis
## 1000       rodentia         muridae        Leggadina          forresti
## 1001       rodentia         muridae        Lemmiscus          curtatus
## 1002       rodentia         muridae           Lemmus            lemmus
## 1003       rodentia         muridae           Lemmus         sibiricus
## 1004       rodentia         muridae      Lemniscomys          griselda
## 1005       rodentia         muridae      Lemniscomys          striatus
## 1006       rodentia         muridae       Leporillus          conditor
## 1007       rodentia         muridae        Lophiomys           imhausi
## 1008       rodentia         muridae       Lophuromys          woosnami
## 1009       rodentia         muridae       Lophuromys       luteogaster
## 1010       rodentia         muridae       Lophuromys    flavopunctatus
## 1011       rodentia         muridae       Lophuromys          sikapusi
## 1012       rodentia         muridae    Macrotarsomys          bastardi
## 1013       rodentia         muridae      Malacothrix            typica
## 1014       rodentia         muridae         Mastomys     erythroleucus
## 1015       rodentia         muridae         Mastomys        natalensis
## 1016       rodentia         muridae     Megadontomys           thomasi
## 1017       rodentia         muridae          Melomys           levipes
## 1018       rodentia         muridae          Melomys             rubex
## 1019       rodentia         muridae          Melomys         rufescens
## 1020       rodentia         muridae          Melomys         moncktoni
## 1021       rodentia         muridae          Melomys       leucogaster
## 1022       rodentia         muridae          Melomys          capensis
## 1023       rodentia         muridae          Melomys           burtoni
## 1024       rodentia         muridae          Melomys        cervinipes
## 1025       rodentia         muridae         Meriones          persicus
## 1026       rodentia         muridae         Meriones         tristrami
## 1027       rodentia         muridae         Meriones           libycus
## 1028       rodentia         muridae         Meriones             shawi
## 1029       rodentia         muridae         Meriones       vinogradovi
## 1030       rodentia         muridae         Meriones           crassus
## 1031       rodentia         muridae         Meriones      tamariscinus
## 1032       rodentia         muridae         Meriones        meridianus
## 1033       rodentia         muridae         Meriones         hurrianae
## 1034       rodentia         muridae         Meriones      unguiculatus
## 1035       rodentia         muridae     Mesembriomys          macrurus
## 1036       rodentia         muridae     Mesembriomys           gouldii
## 1037       rodentia         muridae     Mesocricetus           brandti
## 1038       rodentia         muridae     Mesocricetus            raddei
## 1039       rodentia         muridae     Mesocricetus           auratus
## 1040       rodentia         muridae         Micromys           minutus
## 1041       rodentia         muridae         Microtus       lusitanicus
## 1042       rodentia         muridae         Microtus     transcaspicus
## 1043       rodentia         muridae         Microtus  duodecimcostatus
## 1044       rodentia         muridae         Microtus       abbreviatus
## 1045       rodentia         muridae         Microtus         mexicanus
## 1046       rodentia         muridae         Microtus         juldaschi
## 1047       rodentia         muridae         Microtus           breweri
## 1048       rodentia         muridae         Microtus        montebelli
## 1049       rodentia         muridae         Microtus        townsendii
## 1050       rodentia         muridae         Microtus            miurus
## 1051       rodentia         muridae         Microtus       longicaudus
## 1052       rodentia         muridae         Microtus     chrotorrhinus
## 1053       rodentia         muridae         Microtus        canicaudus
## 1054       rodentia         muridae         Microtus       richardsoni
## 1055       rodentia         muridae         Microtus     xanthognathus
## 1056       rodentia         muridae         Microtus    pennsylvanicus
## 1057       rodentia         muridae         Microtus         pinetorum
## 1058       rodentia         muridae         Microtus          gregalis
## 1059       rodentia         muridae         Microtus         guentheri
## 1060       rodentia         muridae         Microtus         oeconomus
## 1061       rodentia         muridae         Microtus          agrestis
## 1062       rodentia         muridae         Microtus      subterraneus
## 1063       rodentia         muridae         Microtus       ochrogaster
## 1064       rodentia         muridae         Microtus           oregoni
## 1065       rodentia         muridae         Microtus          montanus
## 1066       rodentia         muridae         Microtus      californicus
## 1067       rodentia         muridae         Microtus          socialis
## 1068       rodentia         muridae         Microtus           arvalis
## 1069       rodentia         muridae         Microtus            fortis
## 1070       rodentia         muridae        Millardia           meltada
## 1071       rodentia         muridae              Mus            caroli
## 1072       rodentia         muridae              Mus           spretus
## 1073       rodentia         muridae              Mus            mayori
## 1074       rodentia         muridae              Mus        cervicolor
## 1075       rodentia         muridae              Mus       musculoides
## 1076       rodentia         muridae              Mus        platythrix
## 1077       rodentia         muridae              Mus           booduga
## 1078       rodentia         muridae              Mus            triton
## 1079       rodentia         muridae              Mus        minutoides
## 1080       rodentia         muridae              Mus          musculus
## 1081       rodentia         muridae           Myomys           fumatus
## 1082       rodentia         muridae           Myomys            derooi
## 1083       rodentia         muridae           Myomys           daltoni
## 1084       rodentia         muridae           Myopus      schisticolor
## 1085       rodentia         muridae        Myospalax         myospalax
## 1086       rodentia         muridae        Mystromys      albicaudatus
## 1087       rodentia         muridae      Nannospalax          leucodon
## 1088       rodentia         muridae         Neacomys          tenuipes
## 1089       rodentia         muridae         Nectomys         squamipes
## 1090       rodentia         muridae         Nectomys          parvipes
## 1091       rodentia         muridae         Neofiber            alleni
## 1092       rodentia         muridae          Neotoma             devia
## 1093       rodentia         muridae          Neotoma          fuscipes
## 1094       rodentia         muridae          Neotoma         stephensi
## 1095       rodentia         muridae          Neotoma           cinerea
## 1096       rodentia         muridae          Neotoma            phenax
## 1097       rodentia         muridae          Neotoma          mexicana
## 1098       rodentia         muridae          Neotoma          albigula
## 1099       rodentia         muridae          Neotoma            lepida
## 1100       rodentia         muridae          Neotoma          micropus
## 1101       rodentia         muridae          Neotoma         floridana
## 1102       rodentia         muridae       Neotomodon           alstoni
## 1103       rodentia         muridae          Nesokia            indica
## 1104       rodentia         muridae       Niviventer        niviventer
## 1105       rodentia         muridae          Notomys          cervinus
## 1106       rodentia         muridae          Notomys            fuscus
## 1107       rodentia         muridae          Notomys            aquilo
## 1108       rodentia         muridae          Notomys        mitchellii
## 1109       rodentia         muridae          Notomys            alexis
## 1110       rodentia         muridae         Nyctomys       sumichrasti
## 1111       rodentia         muridae       Ochrotomys          nuttalli
## 1112       rodentia         muridae          Oecomys          concolor
## 1113       rodentia         muridae          Oenomys       hypoxanthus
## 1114       rodentia         muridae     Oligoryzomys          nigripes
## 1115       rodentia         muridae     Oligoryzomys        flavescens
## 1116       rodentia         muridae     Oligoryzomys     longicaudatus
## 1117       rodentia         muridae          Ondatra        zibethicus
## 1118       rodentia         muridae        Onychomys       leucogaster
## 1119       rodentia         muridae        Onychomys          torridus
## 1120       rodentia         muridae         Oryzomys         subflavus
## 1121       rodentia         muridae         Oryzomys         palustris
## 1122       rodentia         muridae         Oryzomys            capito
## 1123       rodentia         muridae           Otomys         sloggetti
## 1124       rodentia         muridae           Otomys             typus
## 1125       rodentia         muridae           Otomys             denti
## 1126       rodentia         muridae           Otomys       angoniensis
## 1127       rodentia         muridae           Otomys         irroratus
## 1128       rodentia         muridae       Ototylomys         phyllotis
## 1129       rodentia         muridae      Oxymycterus             rufus
## 1130       rodentia         muridae      Pachyuromys           duprasi
## 1131       rodentia         muridae        Parotomys          brantsii
## 1132       rodentia         muridae          Pelomys             minor
## 1133       rodentia         muridae          Pelomys            fallax
## 1134       rodentia         muridae       Peromyscus           hooperi
## 1135       rodentia         muridae       Peromyscus          megalops
## 1136       rodentia         muridae       Peromyscus      melanocarpus
## 1137       rodentia         muridae       Peromyscus         mexicanus
## 1138       rodentia         muridae       Peromyscus   interparietalis
## 1139       rodentia         muridae       Peromyscus         perfulvus
## 1140       rodentia         muridae       Peromyscus       melanophrys
## 1141       rodentia         muridae       Peromyscus        pectoralis
## 1142       rodentia         muridae       Peromyscus            gratus
## 1143       rodentia         muridae       Peromyscus            boylii
## 1144       rodentia         muridae       Peromyscus       yucatanicus
## 1145       rodentia         muridae       Peromyscus        gossypinus
## 1146       rodentia         muridae       Peromyscus        difficilis
## 1147       rodentia         muridae       Peromyscus         attwateri
## 1148       rodentia         muridae       Peromyscus           nasutus
## 1149       rodentia         muridae       Peromyscus         sitkensis
## 1150       rodentia         muridae       Peromyscus          crinitus
## 1151       rodentia         muridae       Peromyscus        polionotus
## 1152       rodentia         muridae       Peromyscus             truei
## 1153       rodentia         muridae       Peromyscus       maniculatus
## 1154       rodentia         muridae       Peromyscus          eremicus
## 1155       rodentia         muridae       Peromyscus          leucopus
## 1156       rodentia         muridae       Peromyscus      californicus
## 1157       rodentia         muridae       Peromyscus         melanotis
## 1158       rodentia         muridae      Petromyscus          collinus
## 1159       rodentia         muridae       Phenacomys            ungava
## 1160       rodentia         muridae       Phenacomys       intermedius
## 1161       rodentia         muridae         Phodopus         campbelli
## 1162       rodentia         muridae         Phodopus          sungorus
## 1163       rodentia         muridae         Phodopus       roborovskii
## 1164       rodentia         muridae        Phyllotis           darwini
## 1165       rodentia         muridae       Pithecheir            parvus
## 1166       rodentia         muridae          Podomys        floridanus
## 1167       rodentia         muridae    Pogonomelomys             sevia
## 1168       rodentia         muridae        Pogonomys        sylvestris
## 1169       rodentia         muridae        Pogonomys            loriae
## 1170       rodentia         muridae        Pogonomys         macrourus
## 1171       rodentia         muridae          Praomys          jacksoni
## 1172       rodentia         muridae          Praomys             morio
## 1173       rodentia         muridae          Praomys         tullbergi
## 1174       rodentia         muridae          Praomys        delectorum
## 1175       rodentia         muridae        Psammomys            obesus
## 1176       rodentia         muridae        Pseudomys            fuscus
## 1177       rodentia         muridae        Pseudomys            oralis
## 1178       rodentia         muridae        Pseudomys hermannsburgensis
## 1179       rodentia         muridae        Pseudomys      pilligaensis
## 1180       rodentia         muridae        Pseudomys       delicatulus
## 1181       rodentia         muridae        Pseudomys   gracilicaudatus
## 1182       rodentia         muridae        Pseudomys          desertor
## 1183       rodentia         muridae        Pseudomys             nanus
## 1184       rodentia         muridae        Pseudomys         australis
## 1185       rodentia         muridae        Pseudomys            fieldi
## 1186       rodentia         muridae        Pseudomys         praeconis
## 1187       rodentia         muridae        Pseudomys       shortridgei
## 1188       rodentia         muridae        Pseudomys      albocinereus
## 1189       rodentia         muridae        Pseudomys          higginsi
## 1190       rodentia         muridae        Pseudomys            fumeus
## 1191       rodentia         muridae        Pseudomys       apodemoides
## 1192       rodentia         muridae        Pseudomys   novaehollandiae
## 1193       rodentia         muridae           Rattus          colletti
## 1194       rodentia         muridae           Rattus     villosissimus
## 1195       rodentia         muridae           Rattus        tiomanicus
## 1196       rodentia         muridae           Rattus          leucopus
## 1197       rodentia         muridae           Rattus            steini
## 1198       rodentia         muridae           Rattus           praetor
## 1199       rodentia         muridae           Rattus           tunneyi
## 1200       rodentia         muridae           Rattus          sordidus
## 1201       rodentia         muridae           Rattus     argentiventer
## 1202       rodentia         muridae           Rattus         lutreolus
## 1203       rodentia         muridae           Rattus          fuscipes
## 1204       rodentia         muridae           Rattus           exulans
## 1205       rodentia         muridae           Rattus        norvegicus
## 1206       rodentia         muridae           Rattus            rattus
## 1207       rodentia         muridae       Reithrodon           auritus
## 1208       rodentia         muridae  Reithrodontomys           humulis
## 1209       rodentia         muridae  Reithrodontomys         megalotis
## 1210       rodentia         muridae  Reithrodontomys          montanus
## 1211       rodentia         muridae  Reithrodontomys       raviventris
## 1212       rodentia         muridae  Reithrodontomys        fulvescens
## 1213       rodentia         muridae        Rhabdomys           pumilio
## 1214       rodentia         muridae       Rhipidomys         latimanus
## 1215       rodentia         muridae       Rhipidomys        mastacalis
## 1216       rodentia         muridae         Rhizomys       sumatrensis
## 1217       rodentia         muridae         Rhizomys         pruinosus
## 1218       rodentia         muridae        Rhombomys            opimus
## 1219       rodentia         muridae      Saccostomus        campestris
## 1220       rodentia         muridae       Scotinomys           teguina
## 1221       rodentia         muridae       Scotinomys      xerampelinus
## 1222       rodentia         muridae       Sekeetamys           calurus
## 1223       rodentia         muridae         Sigmodon          leucotis
## 1224       rodentia         muridae         Sigmodon      ochrognathus
## 1225       rodentia         muridae         Sigmodon       fulviventer
## 1226       rodentia         muridae         Sigmodon          hispidus
## 1227       rodentia         muridae         Sigmodon           alstoni
## 1228       rodentia         muridae           Spalax    microphthalmus
## 1229       rodentia         muridae        Steatomys           krebsii
## 1230       rodentia         muridae        Steatomys         pratensis
## 1231       rodentia         muridae        Stochomys     longicaudatus
## 1232       rodentia         muridae         Sundamys          muelleri
## 1233       rodentia         muridae       Synaptomys           cooperi
## 1234       rodentia         muridae       Synaptomys          borealis
## 1235       rodentia         muridae     Tachyoryctes           ruandae
## 1236       rodentia         muridae     Tachyoryctes         splendens
## 1237       rodentia         muridae         Tateomys    rhinogradoides
## 1238       rodentia         muridae           Tatera           inclusa
## 1239       rodentia         muridae           Tatera       leucogaster
## 1240       rodentia         muridae           Tatera           robusta
## 1241       rodentia         muridae           Tatera            valida
## 1242       rodentia         muridae           Tatera          brantsii
## 1243       rodentia         muridae           Tatera            indica
## 1244       rodentia         muridae           Tatera        nigricauda
## 1245       rodentia         muridae           Tatera              afra
## 1246       rodentia         muridae       Taterillus             emini
## 1247       rodentia         muridae       Taterillus          pygargus
## 1248       rodentia         muridae       Taterillus          gracilis
## 1249       rodentia         muridae        Thallomys         paedulcus
## 1250       rodentia         muridae        Thamnomys          venustus
## 1251       rodentia         muridae          Tylomys        nudicaudus
## 1252       rodentia         muridae         Uranomys             ruddi
## 1253       rodentia         muridae          Uromys     caudimaculatus
## 1254       rodentia         muridae      Vandeleuria         nolthenii
## 1255       rodentia         muridae         Wiedomys      pyrrhorhinos
## 1256       rodentia         muridae        Zelotomys          woosnami
## 1257       rodentia         muridae     Zygodontomys        brevicauda
## 1258       rodentia         muridae          Zyzomys             maini
## 1259       rodentia         muridae          Zyzomys           argurus
## 1260       rodentia         muridae          Zyzomys         woodwardi
## 1261       rodentia   myocastoridae        Myocastor            coypus
## 1262       rodentia        myoxidae          Dryomys           laniger
## 1263       rodentia        myoxidae          Dryomys          nitedula
## 1264       rodentia        myoxidae          Eliomys         quercinus
## 1265       rodentia        myoxidae         Glirulus         japonicus
## 1266       rodentia        myoxidae       Graphiurus    crassicaudatus
## 1267       rodentia        myoxidae       Graphiurus           murinus
## 1268       rodentia        myoxidae       Graphiurus          ocularis
## 1269       rodentia        myoxidae      Muscardinus      avellanarius
## 1270       rodentia        myoxidae           Myoxus              glis
## 1271       rodentia    octodontidae          Octodon             degus
## 1272       rodentia    octodontidae     Octodontomys         gliroides
## 1273       rodentia    octodontidae       Spalacopus            cyanus
## 1274       rodentia       pedetidae          Pedetes          capensis
## 1275       rodentia    petromuridae         Petromus           typicus
## 1276       rodentia       sciuridae Ammospermophilus          harrisii
## 1277       rodentia       sciuridae Ammospermophilus           nelsoni
## 1278       rodentia       sciuridae Ammospermophilus         interpres
## 1279       rodentia       sciuridae Ammospermophilus          leucurus
## 1280       rodentia       sciuridae     Callosciurus         prevostii
## 1281       rodentia       sciuridae     Callosciurus          caniceps
## 1282       rodentia       sciuridae     Callosciurus     nigrovittatus
## 1283       rodentia       sciuridae     Callosciurus           notatus
## 1284       rodentia       sciuridae          Cynomys      ludovicianus
## 1285       rodentia       sciuridae          Cynomys         gunnisoni
## 1286       rodentia       sciuridae          Cynomys         parvidens
## 1287       rodentia       sciuridae          Cynomys          leucurus
## 1288       rodentia       sciuridae          Cynomys         mexicanus
## 1289       rodentia       sciuridae         Dremomys           lokriah
## 1290       rodentia       sciuridae         Epixerus              ebii
## 1291       rodentia       sciuridae     Exilisciurus            exilis
## 1292       rodentia       sciuridae       Funambulus       sublineatus
## 1293       rodentia       sciuridae       Funambulus          palmarum
## 1294       rodentia       sciuridae       Funambulus         pennantii
## 1295       rodentia       sciuridae      Funisciurus        anerythrus
## 1296       rodentia       sciuridae      Funisciurus       lemniscatus
## 1297       rodentia       sciuridae      Funisciurus          pyrropus
## 1298       rodentia       sciuridae      Funisciurus          congicus
## 1299       rodentia       sciuridae        Glaucomys          sabrinus
## 1300       rodentia       sciuridae        Glaucomys            volans
## 1301       rodentia       sciuridae     Heliosciurus      rufobrachium
## 1302       rodentia       sciuridae        Hylopetes         alboniger
## 1303       rodentia       sciuridae        Hylopetes        fimbriatus
## 1304       rodentia       sciuridae            Iomys        horsfieldi
## 1305       rodentia       sciuridae          Marmota         menzbieri
## 1306       rodentia       sciuridae          Marmota      camtschatica
## 1307       rodentia       sciuridae          Marmota    vancouverensis
## 1308       rodentia       sciuridae          Marmota           olympus
## 1309       rodentia       sciuridae          Marmota          caligata
## 1310       rodentia       sciuridae          Marmota             bobak
## 1311       rodentia       sciuridae          Marmota      flaviventris
## 1312       rodentia       sciuridae          Marmota           broweri
## 1313       rodentia       sciuridae          Marmota           marmota
## 1314       rodentia       sciuridae          Marmota          sibirica
## 1315       rodentia       sciuridae          Marmota             monax
## 1316       rodentia       sciuridae          Marmota           caudata
## 1317       rodentia       sciuridae          Marmota         baibacina
## 1318       rodentia       sciuridae       Myosciurus           pumilio
## 1319       rodentia       sciuridae        Paraxerus       flavovittis
## 1320       rodentia       sciuridae        Paraxerus           poensis
## 1321       rodentia       sciuridae        Paraxerus         ochraceus
## 1322       rodentia       sciuridae        Paraxerus         palliatus
## 1323       rodentia       sciuridae        Paraxerus            cepapi
## 1324       rodentia       sciuridae       Petaurista        leucogenys
## 1325       rodentia       sciuridae       Petaurista           elegans
## 1326       rodentia       sciuridae       Petaurista        magnificus
## 1327       rodentia       sciuridae       Petaurista      philippensis
## 1328       rodentia       sciuridae       Petaurista        petaurista
## 1329       rodentia       sciuridae        Petinomys        genibarbis
## 1330       rodentia       sciuridae        Petinomys           setosus
## 1331       rodentia       sciuridae        Petinomys       vordermanni
## 1332       rodentia       sciuridae        Petinomys     fuscocapillus
## 1333       rodentia       sciuridae         Pteromys            volans
## 1334       rodentia       sciuridae           Ratufa            indica
## 1335       rodentia       sciuridae           Ratufa          macroura
## 1336       rodentia       sciuridae           Ratufa           bicolor
## 1337       rodentia       sciuridae     Rhinosciurus      laticaudatus
## 1338       rodentia       sciuridae       Sciurillus          pusillus
## 1339       rodentia       sciuridae          Sciurus       aureogaster
## 1340       rodentia       sciuridae          Sciurus      yucatanensis
## 1341       rodentia       sciuridae          Sciurus            alleni
## 1342       rodentia       sciuridae          Sciurus       arizonensis
## 1343       rodentia       sciuridae          Sciurus           griseus
## 1344       rodentia       sciuridae          Sciurus            aberti
## 1345       rodentia       sciuridae          Sciurus             niger
## 1346       rodentia       sciuridae          Sciurus      carolinensis
## 1347       rodentia       sciuridae          Sciurus       granatensis
## 1348       rodentia       sciuridae          Sciurus          vulgaris
## 1349       rodentia       sciuridae  Spermophilopsis     leptodactylus
## 1350       rodentia       sciuridae     Spermophilus          relictus
## 1351       rodentia       sciuridae     Spermophilus           parryii
## 1352       rodentia       sciuridae     Spermophilus        mohavensis
## 1353       rodentia       sciuridae     Spermophilus          dauricus
## 1354       rodentia       sciuridae     Spermophilus         lateralis
## 1355       rodentia       sciuridae     Spermophilus          beldingi
## 1356       rodentia       sciuridae     Spermophilus           armatus
## 1357       rodentia       sciuridae     Spermophilus             canus
## 1358       rodentia       sciuridae     Spermophilus      erythrogenys
## 1359       rodentia       sciuridae     Spermophilus          pygmaeus
## 1360       rodentia       sciuridae     Spermophilus             major
## 1361       rodentia       sciuridae     Spermophilus            mollis
## 1362       rodentia       sciuridae     Spermophilus      nayaritensis
## 1363       rodentia       sciuridae     Spermophilus       columbianus
## 1364       rodentia       sciuridae     Spermophilus         saturatus
## 1365       rodentia       sciuridae     Spermophilus         undulatus
## 1366       rodentia       sciuridae     Spermophilus         mexicanus
## 1367       rodentia       sciuridae     Spermophilus           elegans
## 1368       rodentia       sciuridae     Spermophilus      tereticaudus
## 1369       rodentia       sciuridae     Spermophilus          brunneus
## 1370       rodentia       sciuridae     Spermophilus          beecheyi
## 1371       rodentia       sciuridae     Spermophilus            fulvus
## 1372       rodentia       sciuridae     Spermophilus          suslicus
## 1373       rodentia       sciuridae     Spermophilus      richardsonii
## 1374       rodentia       sciuridae     Spermophilus        franklinii
## 1375       rodentia       sciuridae     Spermophilus        townsendii
## 1376       rodentia       sciuridae     Spermophilus       washingtoni
## 1377       rodentia       sciuridae     Spermophilus  tridecemlineatus
## 1378       rodentia       sciuridae     Spermophilus          citellus
## 1379       rodentia       sciuridae     Spermophilus        variegatus
## 1380       rodentia       sciuridae     Spermophilus         spilosoma
## 1381       rodentia       sciuridae     Sundasciurus             lowii
## 1382       rodentia       sciuridae     Sundasciurus            tenuis
## 1383       rodentia       sciuridae           Tamias        ochrogenys
## 1384       rodentia       sciuridae           Tamias           palmeri
## 1385       rodentia       sciuridae           Tamias          siskiyou
## 1386       rodentia       sciuridae           Tamias           canipes
## 1387       rodentia       sciuridae           Tamias           sonomae
## 1388       rodentia       sciuridae           Tamias        ruficaudus
## 1389       rodentia       sciuridae           Tamias      panamintinus
## 1390       rodentia       sciuridae           Tamias         speciosus
## 1391       rodentia       sciuridae           Tamias        townsendii
## 1392       rodentia       sciuridae           Tamias             senex
## 1393       rodentia       sciuridae           Tamias           minimus
## 1394       rodentia       sciuridae           Tamias     cinereicollis
## 1395       rodentia       sciuridae           Tamias   quadrimaculatus
## 1396       rodentia       sciuridae           Tamias           amoenus
## 1397       rodentia       sciuridae           Tamias         sibiricus
## 1398       rodentia       sciuridae           Tamias    quadrivittatus
## 1399       rodentia       sciuridae           Tamias          dorsalis
## 1400       rodentia       sciuridae           Tamias          striatus
## 1401       rodentia       sciuridae     Tamiasciurus         douglasii
## 1402       rodentia       sciuridae     Tamiasciurus        hudsonicus
## 1403       rodentia       sciuridae      Trogopterus         xanthipes
## 1404       rodentia       sciuridae            Xerus        erythropus
## 1405       rodentia       sciuridae            Xerus           inauris
## 1406       rodentia   thryonomyidae       Thryonomys       gregorianus
## 1407       rodentia   thryonomyidae       Thryonomys      swinderianus
## 1408     scandentia       tupaiidae           Tupaia           montana
## 1409     scandentia       tupaiidae           Tupaia             minor
## 1410     scandentia       tupaiidae           Tupaia              tana
## 1411     scandentia       tupaiidae           Tupaia              glis
## 1412     scandentia       tupaiidae           Tupaia         belangeri
## 1413     scandentia       tupaiidae          Urogale          everetti
## 1414     scandentia      tupaiidae       Ptilocercus             lowii
## 1415        sirenia      dugongidae           Dugong             dugon
## 1416        sirenia      dugongidae     Hydrodamalis             gigas
## 1417        sirenia    trichechidae       Trichechus      senegalensis
## 1418        sirenia    trichechidae       Trichechus           manatus
## 1419        sirenia    trichechidae       Trichechus          inunguis
## 1420  tubulidentata orycteropodidae      Orycteropus              afer
## 1421      xenarthra    bradypodidae         Bradypus         torquatus
## 1422      xenarthra    bradypodidae         Bradypus        variegatus
## 1423      xenarthra    bradypodidae         Bradypus       tridactylus
## 1424      xenarthra     dasypodidae        Cabassous         centralis
## 1425      xenarthra     dasypodidae   Chaetophractus           nationi
## 1426      xenarthra     dasypodidae   Chaetophractus          villosus
## 1427      xenarthra     dasypodidae          Dasypus          kappleri
## 1428      xenarthra     dasypodidae          Dasypus        sabanicola
## 1429      xenarthra     dasypodidae          Dasypus          hybridus
## 1430      xenarthra     dasypodidae          Dasypus     septemcinctus
## 1431      xenarthra     dasypodidae          Dasypus      novemcinctus
## 1432      xenarthra     dasypodidae       Euphractus        sexcinctus
## 1433      xenarthra     dasypodidae       Priodontes           maximus
## 1434      xenarthra     dasypodidae       Tolypeutes           matacus
## 1435      xenarthra     dasypodidae          Zaedyus            pichiy
## 1436      xenarthra  megalonychidae        Choloepus         hoffmanni
## 1437      xenarthra  megalonychidae        Choloepus        didactylus
## 1438      xenarthra myrmecophagidae         Cyclopes        didactylus
## 1439      xenarthra myrmecophagidae     Myrmecophaga        tridactyla
## 1440      xenarthra myrmecophagidae         Tamandua      tetradactyla
##              mass gestation    newborn weaning   wean_mass     afr max_life
## 1        45375.00      8.13    3246.36    3.00     8900.00   13.53      142
## 2       182375.00      9.39    5480.00    6.50     -999.00   27.27      308
## 3        41480.00      6.35    5093.00    5.63    15900.00   16.66      213
## 4       150000.00      7.90   10166.67    6.50     -999.00   23.02      240
## 5        28500.00      6.80    -999.00 -999.00     -999.00 -999.00     -999
## 6        55500.00      5.08    3810.00    4.00     -999.00   14.89      251
## 7        30000.00      5.72    3910.00    4.04     -999.00   10.23      228
## 8        37500.00      5.50    3846.00    2.13     -999.00   20.13      255
## 9       497666.67      8.93   20000.00   10.71   157500.00   29.45      300
## 10      500000.00      9.14   23000.08    6.60     -999.00   29.99      324
## 11      333000.00      8.88   18000.00    7.33     -999.00   24.27      300
## 12      800000.00      9.02   23033.33    4.50     -999.00   24.16      314
## 13      666666.67      9.83    -999.00    9.50     -999.00   25.54      319
## 14      169000.00      8.51    5875.00 -999.00     -999.00   29.97      260
## 15        -999.00     10.00    -999.00 -999.00     -999.00 -999.00      433
## 16      233333.33      9.85    -999.00 -999.00     -999.00 -999.00      300
## 17      950000.00     10.47   37500.00    7.50     -999.00   19.88      348
## 18      302000.00      8.29    6000.00 -999.00     -999.00   30.00      235
## 19       55000.00      5.17    3850.00 -999.00     -999.00 -999.00     -999
## 20       41000.00      5.36    -999.00    5.50     -999.00   24.50      144
## 21       71500.00      5.60    2791.43    7.50     -999.00   29.24     -999
## 22       50000.00      5.29    3787.50    6.00     -999.00   33.50      264
## 23       60000.00      5.22    2200.00    5.00     -999.00   16.00      249
## 24       18100.00      4.20    -999.00 -999.00     -999.00 -999.00     -999
## 25       13900.00   -999.00    -999.00 -999.00     -999.00 -999.00      236
## 26       10000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 27       12700.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 28       20000.00      4.00    -999.00 -999.00     -999.00 -999.00     -999
## 29        -999.00      7.47    1707.50 -999.00     -999.00 -999.00     -999
## 30       12500.00      7.82     965.00 -999.00     -999.00   13.78     -999
## 31       11600.00      7.75    1610.00 -999.00     -999.00   19.00     -999
## 32        6250.00      6.43     800.00 -999.00     -999.00   16.00      144
## 33       62500.00      5.43    2400.00    1.25    20512.50 -999.00     -999
## 34        9000.00      4.00     832.00    2.00     -999.00   32.00      120
## 35      132250.00      8.50   11000.00    7.50     -999.00   25.10      235
## 36      164500.00      8.32   17716.67    8.00     -999.00   20.40     -999
## 37      159000.00      9.30    8350.00 -999.00     -999.00 -999.00     -999
## 38       84500.00      8.20    6792.00    5.00     -999.00   23.26      260
## 39      128000.00      7.81   11100.00 -999.00     -999.00   21.00     -999
## 40       40000.00      6.50    -999.00 -999.00     -999.00   19.90     -999
## 41       27000.00      5.75    -999.00 -999.00     -999.00 -999.00     -999
## 42       73000.00      6.84    -999.00 -999.00     -999.00 -999.00     -999
## 43       23600.00      5.42    4640.00 -999.00     -999.00    5.17     -999
## 44       47636.36      6.45    5602.50 -999.00     -999.00    8.25     -999
## 45       20000.00      6.48    1253.33 -999.00     -999.00   16.80     -999
## 46       17500.00      5.61    -999.00 -999.00     -999.00   11.46     -999
## 47       16985.00      4.74    1500.63    2.75     7000.00   22.27     -999
## 48       25500.00      5.37    2426.67    3.50    13500.00   18.50      188
## 49       16300.00      5.37    2553.75    3.35     -999.00   12.18     -999
## 50       20750.00      6.00    -999.00    3.00     -999.00   13.20      219
## 51        -999.00      6.17    -999.00    5.00     -999.00   20.50     -999
## 52       35200.00      6.00    2000.00    4.97     -999.00   24.00      261
## 53      242000.00      9.32   15166.67    6.00     -999.00   23.50     -999
## 54      200500.00      8.87   15447.14    7.00     -999.00   24.51      267
## 55       17500.00   -999.00    -999.00 -999.00     -999.00   19.67     -999
## 56       63950.00      8.50    -999.00 -999.00     -999.00 -999.00     -999
## 57       81733.33      7.57    5100.00    4.50     -999.00   23.31      180
## 58      175333.33      8.91    9000.00    7.39     -999.00   25.34      222
## 59       58600.00      8.38    4937.50    6.39    31600.00   11.60      263
## 60       41333.33      6.76    -999.00 -999.00     -999.00   11.83      156
## 61        3250.00   -999.00     690.00    1.50     -999.00   10.00     -999
## 62        4550.00      5.84     681.67    2.75     2825.50 -999.00     -999
## 63        4876.67      5.77     654.00    2.35     1780.00    8.77      171
## 64       30000.00      7.15    3510.50 -999.00     -999.00   42.00      223
## 65       87500.00      7.50    -999.00 -999.00     -999.00 -999.00     -999
## 66       27666.67      7.69    2000.00 -999.00     -999.00   31.20     -999
## 67        2500.00      6.00     500.00 -999.00     -999.00    9.33     -999
## 68        7166.67      6.00    -999.00 -999.00     -999.00    6.05      162
## 69       82350.00      5.78    3176.67    2.67     -999.00   29.99      230
## 70       13000.00      6.79    1065.00    4.50     -999.00   12.00      214
## 71      177500.00      8.22   10316.67 -999.00     -999.00   21.30     -999
## 72      121350.00      8.00    -999.00    4.50     -999.00   26.11     -999
## 73      195000.00      9.01   12015.00 -999.00     -999.00   25.02      240
## 74       17500.00      6.95    2235.00    4.50     -999.00   12.62      190
## 75      258000.00      8.48   11077.40    6.21     -999.00   37.33      288
## 76       50500.00   -999.00    -999.00 -999.00     -999.00   24.00     -999
## 77       60000.00      6.00    -999.00 -999.00     -999.00 -999.00     -999
## 78       57666.67      5.62    3500.00    4.33     -999.00   26.57     -999
## 79       68166.67      5.99    4266.67    4.86    28666.67   23.07      240
## 80      180000.00      5.61    2375.00    4.50     -999.00   11.67     -999
## 81       50000.00      5.02    2277.08    6.00    17500.00   18.23     -999
## 82       27500.00      7.00    -999.00 -999.00     -999.00 -999.00     -999
## 83       25000.00      8.70    -999.00 -999.00     -999.00 -999.00      148
## 84       24000.00      6.43    2900.00 -999.00     -999.00   17.50       84
## 85       46666.67      5.16    -999.00    6.00     -999.00   18.61      180
## 86       11333.33      6.53     936.00    3.00     -999.00    7.50     -999
## 87       48850.00      7.32    4500.00 -999.00     -999.00 -999.00     -999
## 88       40000.00      7.50    -999.00 -999.00     -999.00  120.00      216
## 89       30000.00      7.57    2600.00 -999.00     -999.00   12.96      144
## 90       26100.00      5.83    2652.86    3.70     -999.00   30.55     -999
## 91       38250.00      4.94    3365.33    2.92    14500.00    9.15      144
## 92      153000.00      7.76   15000.00 -999.00     -999.00   16.58     -999
## 93       19000.00      5.08    1202.86 -999.00     -999.00    9.90      172
## 94      504666.67     11.03   42862.50    9.18   166000.00   47.92      354
## 95      680000.00      8.67    -999.00 -999.00     -999.00   36.40     -999
## 96      432500.00      8.64   28325.00    6.00     -999.00   26.99      282
## 97       19000.00      7.34    1033.00 -999.00     -999.00   13.20      130
## 98      218000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 99      186250.00      9.57   19240.00 -999.00     -999.00   27.94      233
## 100      87500.00      8.13    4000.00 -999.00     -999.00   13.17      258
## 101     190000.00      7.41   16150.00    6.00     -999.00   18.40      267
## 102     100666.67      7.37    5232.50    7.00     -999.00   14.85      192
## 103      64500.00      8.01    5760.00 -999.00     -999.00   25.89     -999
## 104      36250.00      6.17    3800.00 -999.00     -999.00   16.32      144
## 105       -999.00     13.18   35000.00   10.50     -999.00   42.00     -999
## 106     434000.00     12.64   35808.46   14.63   253484.00   46.30      480
## 107     142500.00     11.01   12000.00    5.00     -999.00 -999.00     -999
## 108      60000.00     10.79    7584.00    7.00     -999.00   16.00     -999
## 109     110000.00     11.25   11666.67   11.33     -999.00   18.00      340
## 110      50000.00     11.55    5841.67    7.00     -999.00   22.75      344
## 111     351000.00      7.95   13018.18    3.80    94000.00   23.38      324
## 112      33500.00      7.45    2365.00    6.00     -999.00   10.00      240
## 113      55000.00      7.72    3378.50    4.00     -999.00   12.64      249
## 114     102500.00      8.89    4200.00 -999.00     -999.00 -999.00     -999
## 115      21666.67      6.54    1214.33    3.08     8692.50   15.41      180
## 116      39450.00      9.67    1750.00    4.50    28750.00 -999.00     -999
## 117     143000.00      8.21    -999.00 -999.00     -999.00   36.00      276
## 118     120333.33      8.03    8814.09    5.37    46900.00   28.36      324
## 119     125000.00      8.33    -999.00 -999.00     -999.00   24.00      228
## 120      53000.00      8.49    -999.00    7.50     -999.00   17.71      253
## 121     171000.00      8.20    9890.00    7.00     -999.00   23.23      317
## 122      73000.00      7.37    5008.00    7.88     -999.00   18.78      235
## 123      96500.00      7.59    3734.00    5.67    28590.00   22.12      305
## 124      54500.00      7.75    4511.17    6.01    22570.00   18.55      300
## 125      33500.00      6.50    -999.00 -999.00     -999.00   18.00      144
## 126     149000.00      9.41   11412.50    5.50     -999.00   27.00      279
## 127      70000.00      6.50    -999.00 -999.00     -999.00 -999.00     -999
## 128      68600.00      8.00    -999.00 -999.00     -999.00 -999.00     -999
## 129      14000.00      6.25    1028.33 -999.00     -999.00    7.00      167
## 130       8200.00      7.25    -999.00 -999.00     -999.00 -999.00     -999
## 131      16650.00      7.42     792.33 -999.00     -999.00   20.50     -999
## 132      23000.00      7.43     542.50    6.00     -999.00   12.00      166
## 133      14000.00      6.12    1310.80    2.00     -999.00    8.67      204
## 134      12000.00      6.86    1096.67 -999.00     -999.00    6.00      236
## 135      55766.67      6.85    2952.67    2.48    19516.67   14.24      264
## 136      59500.00      6.84    3154.67    4.29    33631.33    9.09      276
## 137      35000.00      7.25    2150.00    5.50     -999.00   12.00      253
## 138       9750.00   -999.00     400.00 -999.00     -999.00 -999.00     -999
## 139       8250.00      6.76     695.00    2.00     -999.00    5.73      252
## 140     113200.00      7.24    5773.67    2.84    26900.00   23.93      242
## 141     800000.00     14.89   59770.59    8.25     -999.00   48.71      434
## 142     287500.00     14.87   17375.00    7.00    77000.00   23.86      396
## 143     215000.00      6.84    5636.25    7.33     -999.00   48.00      526
## 144    1258333.33      7.75   39746.67   10.13   237500.00   89.93      732
## 145      11000.00   -999.00     800.00 -999.00     -999.00   21.00     -999
## 146      10900.00   -999.00     524.00 -999.00     -999.00 -999.00     -999
## 147      12500.00      5.33     458.75    3.50     -999.00   15.54      144
## 148     100000.00      5.16     715.00    7.00     -999.00   18.00      288
## 149     202500.00      4.39    1250.00    2.25     -999.00   17.50      216
## 150      71000.00      5.53     672.78    3.49     -999.00   18.55      225
## 151      71000.00      3.78     762.00    3.00     -999.00   28.24      240
## 152       8150.00      3.76     191.50 -999.00     -999.00   23.00     -999
## 153     102750.00      4.00    -999.00 -999.00     -999.00 -999.00     -999
## 154     100900.00      3.95    1040.31    3.38     8726.00    9.77      252
## 155      35300.00   -999.00     647.00 -999.00     -999.00   39.17     -999
## 156      19200.00      4.66     657.18    1.70     5220.67   10.64      296
## 157      33750.00      5.23    1225.00    1.63     -999.00   20.00      253
## 158      12250.00      5.86    -999.00    5.17     -999.00   13.38      156
## 159       2450.00      4.94     319.00 -999.00     -999.00 -999.00       81
## 160       3850.00      4.61     370.00    2.92     -999.00    5.20      144
## 161       5900.00      5.20     373.67    3.00     -999.00    4.50      192
## 162       4500.00      1.75      71.04    1.67     -999.00    9.94      194
## 163       9500.00   -999.00    -999.00 -999.00     -999.00 -999.00      132
## 164      12675.00      2.04    -999.00    2.50     -999.00   24.00     -999
## 165      11000.00      2.05     207.50    2.28     -999.00   10.46      192
## 166      26000.00      2.05    -999.00 -999.00     -999.00 -999.00      168
## 167      34875.00      2.16     418.60    1.55     5250.00   22.04      192
## 168       9750.00      2.08     159.00    2.13     -999.00   10.80      168
## 169      11800.00      2.05     249.75    1.74     1517.00   10.29      262
## 170       8250.00      2.17    -999.00    1.50     -999.00    7.67      144
## 171       6500.00      1.85     365.00    3.00     -999.00    9.07      138
## 172      23000.00      2.11     400.17    4.75     -999.00   24.00      188
## 173      12760.00      2.07     273.33    1.64     2350.00   11.50      186
## 174      27133.33      2.41     332.50    2.88     -999.00   25.25      204
## 175       4232.00      2.05      87.92    1.73      825.00   12.22      128
## 176       4150.00      2.26     120.88    2.06     -999.00   12.00      165
## 177       4690.00      1.95    -999.00 -999.00     -999.00   10.00      164
## 178       3990.00      1.85    -999.00 -999.00     -999.00 -999.00     -999
## 179      13000.00      1.99    -999.00    2.00     -999.00   12.00     -999
## 180       6000.00      2.35     152.43    3.33     -999.00   11.00      160
## 181       4220.00      2.14      95.33    1.80      519.67   10.50     -999
## 182       1890.67      1.70    -999.00    2.00     -999.00   12.00     -999
## 183       1000.00      1.84      29.00    1.50     -999.00   10.50     -999
## 184       4000.00      1.72    -999.00 -999.00     -999.00 -999.00     -999
## 185       2250.00      1.75    -999.00 -999.00     -999.00   12.00     -999
## 186       7000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 187       2550.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 188       1800.00      1.69      58.50 -999.00     -999.00 -999.00     -999
## 189       2700.00      1.77      62.50    0.93     -999.00   16.81     -999
## 190       5662.50      1.73     101.25    1.81     1236.43    9.76      144
## 191       1200.00      1.71      26.28    2.18     -999.00    9.87      175
## 192       2766.67      1.71      39.65    1.69     -999.00   11.01      240
## 193      58750.00      3.35     403.96    3.67     1940.00   25.41      228
## 194      14000.00      2.43     165.00    4.17     -999.00   16.51      216
## 195      11500.00      2.67     250.00 -999.00     -999.00   21.00      240
## 196      10000.00      2.05     126.62    3.00     2212.50   15.82      240
## 197       2350.00      2.20      55.50 -999.00     -999.00    9.00      156
## 198       4150.00      2.15     101.87    2.25      630.79   10.24      180
## 199       2125.00      2.20      70.87 -999.00     -999.00   17.04     -999
## 200       6750.00      2.33    -999.00 -999.00     -999.00   26.40      180
## 201       3666.67      2.67     118.00    1.83      785.10   21.65      252
## 202       2250.00      2.51    -999.00    1.83     -999.00 -999.00     -999
## 203       8800.00      2.64     254.40    3.50     3400.00   21.80      257
## 204      13350.00      2.36     253.20    4.20     -999.00   26.75      237
## 205       9400.00      2.18    -999.00 -999.00     -999.00 -999.00      156
## 206       8600.00      1.86     301.00    2.55     1190.00   17.06      388
## 207      18026.67      2.33     269.50    3.10     1860.00   16.36      264
## 208       8900.00      2.18     204.00    5.00     -999.00   17.60      321
## 209      19500.00      3.06     215.33    4.26     5427.50   26.30      234
## 210       2950.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 211       4000.00      2.45      86.18    2.25     -999.00 -999.00      252
## 212       3500.00      2.37      89.00 -999.00     -999.00   12.00     -999
## 213     119700.00      3.51    1248.59    5.48    19556.00   41.12      315
## 214      81150.00      3.39     831.89    4.13     5033.50   35.56      264
## 215     139500.00      3.62    1377.45    7.22     8480.00   35.98      360
## 216      42325.00      3.22     363.49    2.88     1940.00   34.10      276
## 217       3500.00   -999.00      85.00 -999.00     -999.00 -999.00     -999
## 218      10850.00      2.29     170.00    2.92     -999.00 -999.00     -999
## 219       1350.00      2.23    -999.00 -999.00     -999.00 -999.00      192
## 220       4150.00      2.17      93.86    1.47      620.00   18.52      180
## 221      10650.00   -999.00     248.33 -999.00     -999.00 -999.00     -999
## 222      48000.00      3.07     388.22    4.20     3500.00   26.91      240
## 223      45625.00      3.28     463.45    2.54     7500.00   30.11      252
## 224       3300.00      2.49     100.23    1.43      631.85 -999.00      228
## 225       1570.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 226        727.00      2.25    -999.00    0.75     -999.00    9.00      108
## 227        598.50      1.84    -999.00    2.00     -999.00   24.00      182
## 228        683.00      2.00    -999.00    1.92     -999.00 -999.00     -999
## 229        448.00      2.00    -999.00    1.73     -999.00 -999.00     -999
## 230        800.00      2.61      50.00    1.94      183.00   24.22      293
## 231       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 232        274.80      1.80    -999.00 -999.00     -999.00   13.50     -999
## 233        800.00      1.62      25.92    1.65      275.00    9.90     -999
## 234       1008.00      1.98    -999.00 -999.00     -999.00 -999.00     -999
## 235       2920.00      2.39    -999.00    2.00      800.00   24.00     -999
## 236       3150.00   -999.00    -999.00    9.00     -999.00 -999.00      121
## 237       1331.50      2.02      22.10 -999.00     -999.00   11.29      144
## 238        700.00      3.27      50.00    1.29     -999.00   24.39     -999
## 239       1800.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 240        776.00      2.57      31.33    1.44      212.75   10.80      152
## 241      63000.00      3.45    1353.33   10.57    14500.00   33.00      493
## 242      40000.00      3.01     669.50    9.17     -999.00   28.11      282
## 243      60200.00      3.08     727.28    7.67    27400.00   36.00      348
## 244      10000.00      2.90    -999.00    3.52     -999.00 -999.00      227
## 245       3000.00      2.07      57.00    2.67     -999.00 -999.00      192
## 246      24000.00   -999.00    -999.00 -999.00     -999.00   14.20     -999
## 247      11800.00      2.10    1050.00    1.75     3360.00   12.00      168
## 248      10500.00      1.50      58.00    3.42     -999.00 -999.00     -999
## 249       3500.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 250       1200.00      2.00    -999.00 -999.00     -999.00 -999.00     -999
## 251       1996.67      1.70    -999.00 -999.00     -999.00   10.50     -999
## 252       4500.00      2.19      82.25    2.71     1707.50 -999.00      216
## 253      21800.00      7.10    1909.17    5.77    12666.67   43.13      240
## 254       2350.00      1.30    -999.00 -999.00     -999.00 -999.00      126
## 255      16333.33      1.69      90.53    2.60     -999.00   26.76      208
## 256        500.00      1.68       5.00    1.25      250.00 -999.00     -999
## 257        765.00      1.20      12.50    2.60      170.00    9.26      160
## 258       7500.00      1.87    -999.00 -999.00     -999.00 -999.00     -999
## 259       -999.00      2.45    -999.00 -999.00     -999.00 -999.00     -999
## 260       6225.00      2.01     141.00    4.38     1510.00   29.97      276
## 261       4000.00      2.00    -999.00 -999.00     -999.00 -999.00     -999
## 262       6750.00      2.20    -999.00    1.90     -999.00   12.00     -999
## 263       9000.00      2.07    -999.00 -999.00     -999.00 -999.00      240
## 264       2500.00   -999.00    -999.00 -999.00     -999.00 -999.00      168
## 265       1066.67      1.50      31.25    1.79      600.00   17.34      180
## 266       1700.00      3.19    -999.00    1.42     -999.00   18.00      217
## 267        606.67      0.93      32.67    1.50      414.00   17.67      204
## 268       2600.00      1.33      34.78    2.61     -999.00   17.33      120
## 269       1300.00      1.73      30.00    1.87      680.00   24.09      204
## 270      13000.00      1.89      84.25    3.18     -999.00   13.25      194
## 271      10000.00      5.86     210.00 -999.00     -999.00 -999.00      317
## 272       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 273        965.00      2.00    -999.00 -999.00     -999.00 -999.00     -999
## 274       1821.25      1.63      28.10    2.08      493.50   11.17       60
## 275        809.00      1.44    -999.00 -999.00     -999.00   12.00      144
## 276        440.00      3.32       7.50    1.88     -999.00   10.67      120
## 277        171.00      1.25    -999.00    1.63     -999.00 -999.00     -999
## 278        405.00      1.06    -999.00    2.00     -999.00 -999.00      106
## 279        899.75      1.19       8.64    1.60      110.00    8.59      120
## 280        150.60      0.82       3.10    1.22       34.60    5.33     -999
## 281        110.33      1.43       2.30    1.49       26.57    3.12       84
## 282       1350.00      1.20       5.73    1.67     -999.00   10.50     -999
## 283        588.67      1.05       9.26    1.64     -999.00   10.00      168
## 284         49.75      1.32       2.61    1.39       36.00    3.73      120
## 285        257.50      1.05       4.00    2.14       50.00   14.43     -999
## 286      24000.00      2.26     202.83    3.67     -999.00   24.00      174
## 287        260.00      1.57       6.90 -999.00     -999.00 -999.00     -999
## 288        511.50      2.19      13.80    1.64      160.00    7.50      118
## 289       6050.00      1.83     101.88    1.68     3000.00    7.35      312
## 290        542.50      2.00    -999.00    1.00     -999.00    3.00      107
## 291     650000.00     11.50   51883.33   20.37   200000.00   52.14      480
## 292      27000.00      7.00    3533.33   16.60    15000.00   42.00      264
## 293      50000.00     11.75    4420.00    7.85     -999.00 -999.00     -999
## 294      55000.00      7.75    3833.33   11.00     -999.00   60.00     -999
## 295      40500.00      9.00    5933.33    3.90    15800.00   34.00      240
## 296      77666.67      9.17    5955.56   11.57    26150.00   42.53      252
## 297      45000.00      7.75    4250.00   13.50     -999.00   36.00      360
## 298     288932.50      8.75   19215.00    9.71   106610.00   56.08      360
## 299      79633.33     11.75    7075.00   18.75    59724.00   36.00      192
## 300     140000.00     12.00   12763.33   12.00     -999.00   44.28      298
## 301       -999.00     12.00    7000.00    8.67     -999.00 -999.00      276
## 302      84666.67     11.14    6817.14   10.75    25000.00   68.00      300
## 303      49100.00      8.37    5182.73    3.22    12920.00   48.90      312
## 304     212000.00      8.01   15388.89    0.30    44980.00   35.88      420
## 305     286666.67      8.71   36950.00    1.00    72666.67   65.02      372
## 306     186000.00      7.87   12820.00    0.61    43077.78   50.52      552
## 307     398666.67      9.50   30875.00    1.00     -999.00   41.70      312
## 308     421666.67      9.60   28394.00    1.33   117917.14   48.51      300
## 309     238333.33      8.50   22333.33    1.09   120000.00   48.16      468
## 310     579400.00      7.63   39918.89    0.76   130192.31   31.29      276
## 311     716666.67      8.45   35250.00    0.88   138037.14   41.62      240
## 312     275000.00     10.00   19600.00    1.55     -999.00   48.00      284
## 313     173000.00     11.00   30675.00    1.24    64000.00   60.00      360
## 314     187666.67      8.13   20266.67    1.00     -999.00   41.51      252
## 315      80000.00     10.50    7100.00    0.78    21300.00   42.00      420
## 316      86000.00     11.00    5000.00    1.00     -999.00   61.00      600
## 317      86140.00      8.20    5909.09    1.60    11350.00   73.93      516
## 318     128786.67      7.63    8476.92    0.37    34377.78   49.80     -999
## 319      82500.00      9.00   10250.00    0.88    30000.00   29.43      240
## 320     101250.00      8.35   11083.64    1.13    23945.00   46.51      408
## 321      81666.67      9.00    3000.00    2.14    66900.00   57.88      672
## 322       1242.50      2.45      51.00 -999.00     -999.00   21.35     -999
## 323        900.00      2.15    -999.00 -999.00     -999.00 -999.00      281
## 324        975.50      1.81      28.58    2.26      219.35   10.70      192
## 325       4750.00      2.51     153.33    2.82      730.00   32.00     -999
## 326       3750.00      2.56     140.00    4.17     -999.00   23.00      204
## 327       3000.00      3.84     165.66    3.35     -999.00   27.65      384
## 328       6270.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 329       4400.00      2.13      76.14    2.95     1200.00   11.34      247
## 330     111600.00      4.31     109.29    6.70    15000.00   77.26      408
## 331       4325.00      4.30     120.17    4.00     1140.00   19.51      210
## 332      46000.00      3.68     275.00    3.00     -999.00   78.00      372
## 333     100000.00      6.42    -999.00    2.50     -999.00 -999.00      480
## 334      61000.00      7.33     320.00    2.96     -999.00 -999.00      464
## 335      76666.67      7.00     351.67    3.25     -999.00   31.33      432
## 336     286366.67      8.11     634.25   12.68    31156.00   55.22      540
## 337     203500.00      6.93     494.82   13.78    26000.00   60.01      472
## 338     110560.00      6.75     294.47    6.42    14050.00   40.71      372
## 339      12250.00      2.74     316.38    2.59     2100.00   30.34      311
## 340       2250.00      1.50    -999.00    2.00     -999.00   36.00      193
## 341       3250.00      2.00      81.50 -999.00     -999.00 -999.00     -999
## 342      13666.67      2.31     417.00    4.19     1955.75   14.62      336
## 343       9500.00      3.00     100.00    4.08     -999.00   49.17      240
## 344       4000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 345       3000.00   -999.00     150.00    2.13     -999.00 -999.00     -999
## 346       1540.00      2.90      67.50    2.28     -999.00   23.92      132
## 347       2225.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 348       1866.67      2.50      74.20    2.75     -999.00   48.64      258
## 349       1820.00      2.32      71.00    1.94     -999.00 -999.00     -999
## 350       2375.00   -999.00     125.00    2.33     -999.00 -999.00      216
## 351       1900.00      2.13    -999.00    2.13     -999.00   36.27      190
## 352       4300.00   -999.00    -999.00 -999.00     -999.00 -999.00      240
## 353       2380.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 354       3100.00      1.50      87.08 -999.00     -999.00   11.22      300
## 355       4500.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 356        698.00   -999.00      40.00 -999.00     -999.00 -999.00      128
## 357      10000.00   -999.00    -999.00    1.00     -999.00 -999.00      240
## 358       3000.00   -999.00    -999.00    4.25     -999.00 -999.00      126
## 359   80000000.00     12.37    -999.00   11.25     -999.00  210.00     1200
## 360   23000000.00     12.55    -999.00 -999.00     -999.00  108.00     -999
## 361   23000000.00     11.50    -999.00    7.00     -999.00  110.00      804
## 362   66800000.00     10.93 1850000.00    6.50     -999.00   89.70     1368
## 363  149000000.00     10.71 2250000.00    7.08 19075000.00   72.34     1320
## 364   14766666.67     11.40  650000.00    7.56     -999.00   77.15      888
## 365   20000000.00     12.35    -999.00    9.00     -999.00  105.25      864
## 366   16266666.67     10.15    -999.00    5.00     -999.00   98.73      564
## 367   30000000.00     11.43 1325000.00    9.08     -999.00   64.28      924
## 368       -999.00   -999.00    9500.00 -999.00     -999.00 -999.00     -999
## 369      72400.00     12.00    5500.00 -999.00     -999.00   78.00      216
## 370       -999.00   -999.00    -999.00 -999.00     -999.00   93.00      240
## 371      76365.00      9.57    7050.00   10.50    40000.00   55.02      240
## 372     133000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 373    1060000.00     14.80  109666.67   26.69     -999.00   81.22      720
## 374     726000.00     15.25   60000.00   48.00     -999.00  106.20      756
## 375     425000.00     12.00    -999.00 -999.00     -999.00 -999.00     -999
## 376     164000.00     11.00    -999.00 -999.00     -999.00   87.00      192
## 377     180000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 378     103000.00     10.00    -999.00 -999.00     -999.00  126.00      552
## 379     182000.00     10.50   24000.00   18.00     -999.00   73.34      324
## 380     110000.00     11.63    -999.00   12.00     -999.00 -999.00     -999
## 381     190000.00     14.00   12300.00   15.50    45000.00 -999.00      360
## 382    4300000.00     14.89  159333.33   15.50     -999.00  138.22     1080
## 383     206000.00     12.00    -999.00 -999.00     -999.00  141.00      564
## 384    1360000.00     14.92    -999.00   16.50     -999.00  114.73      750
## 385      46666.67     10.70    -999.00 -999.00     -999.00 -999.00     -999
## 386     122950.00     12.10   11300.00   14.83     -999.00   94.65      684
## 387      70333.33     10.40    -999.00   18.00     -999.00   61.96     -999
## 388      68700.00     11.40    -999.00   17.95     -999.00   93.73      552
## 389     122500.00   -999.00    -999.00 -999.00     -999.00  120.00      384
## 390     173333.33     12.12   18920.00   18.94     -999.00   97.41      588
## 391   25066666.67     12.36  529666.67    6.10     -999.00   79.28      840
## 392     665000.00     13.44   71400.00   22.60     -999.00   56.21      360
## 393     900000.00     14.83   80000.00   17.00     -999.00   72.00      600
## 394    3200000.00     10.00    -999.00    5.50     -999.00 -999.00     -999
## 395      32500.00     10.50    7066.67   10.50    24500.00   68.67      276
## 396      45000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 397      53183.33      9.66    6775.00    8.50     -999.00   34.71      156
## 398     101666.67      9.98    -999.00   11.43     -999.00   65.62      264
## 399     190233.33   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 400     363000.00     11.00   82000.00 -999.00     -999.00 -999.00     -999
## 401   15400000.00     15.80  942666.67   18.40     -999.00  103.36      924
## 402      96500.00      9.83    6800.00 -999.00     -999.00 -999.00      360
## 403      83500.00     10.50    -999.00 -999.00     -999.00   96.00      288
## 404       -999.00     10.25    7000.00 -999.00     -999.00 -999.00     -999
## 405      21000.00     10.00    -999.00   12.00     -999.00   80.95      240
## 406      40333.33     10.92    7900.00   10.50     -999.00   28.03      192
## 407       -999.00     10.00    -999.00 -999.00     -999.00 -999.00     -999
## 408    8200000.00     14.67    -999.00 -999.00     -999.00  124.29     1008
## 409    5266666.67     12.00    -999.00   12.00     -999.00  117.38      444
## 410    1500000.00     12.00    -999.00 -999.00     -999.00 -999.00     -999
## 411    1050000.00   -999.00    -999.00 -999.00     -999.00  108.00      324
## 412    3400000.00     12.00    -999.00   12.00     -999.00 -999.00     -999
## 413    2952500.00     12.00    -999.00 -999.00     -999.00 -999.00      432
## 414       1000.00      2.00    -999.00 -999.00     -999.00 -999.00     -999
## 415       -999.00      3.50      35.90    6.34     -999.00 -999.00      210
## 416       2950.00      7.59    -999.00    5.00     -999.00 -999.00      147
## 417       3116.67      7.00     236.00 -999.00     -999.00   13.33     -999
## 418       2456.67      7.57     225.00    3.00     -999.00   16.00     -999
## 419       3600.00      7.44     232.18    2.81      500.00   22.18      132
## 420         64.80   -999.00       4.50 -999.00     -999.00 -999.00     -999
## 421         39.80   -999.00    -999.00    2.50     -999.00 -999.00     -999
## 422         42.00   -999.00    -999.00    2.50     -999.00 -999.00     -999
## 423        104.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 424         23.20   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 425        745.00      1.30    -999.00    1.33     -999.00 -999.00     -999
## 426        334.00      1.24       7.92    1.45     -999.00    2.77     -999
## 427        309.00      1.22      10.49    1.17     -999.00   12.00     -999
## 428        956.50      1.25      14.50 -999.00     -999.00 -999.00       55
## 429        719.00   -999.00      22.00 -999.00     -999.00    7.00       49
## 430        771.00      1.20      15.70    1.37      203.00   10.80       96
## 431        171.00      1.24       8.50    2.00     -999.00   10.00     -999
## 432        292.00   -999.00    -999.00    2.00     -999.00 -999.00       86
## 433        358.00   -999.00       8.50    1.64     -999.00 -999.00     -999
## 434        342.00      1.26      10.14    1.17     -999.00    7.00     -999
## 435         64.00      1.08    -999.00 -999.00     -999.00 -999.00     -999
## 436       1000.00   -999.00    -999.00 -999.00     -999.00 -999.00       78
## 437        900.00      2.80      53.75    2.50     -999.00 -999.00      136
## 438          9.25   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 439         14.50      0.75    -999.00    1.00       14.50 -999.00       24
## 440         21.63      0.66       0.97    0.72     -999.00    2.21       33
## 441         12.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 442         15.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 443          7.50      1.00       0.80 -999.00     -999.00 -999.00     -999
## 444          5.00   -999.00       0.82    0.57        3.20 -999.00     -999
## 445          2.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 446          7.20   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 447          9.70   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 448         17.10   -999.00       1.40    0.67       13.70 -999.00     -999
## 449         22.00      0.84       2.26 -999.00       20.70 -999.00     -999
## 450          9.91      0.99       0.88    0.70     -999.00    4.98       36
## 451         13.67      0.60       1.00    0.59       10.00 -999.00     -999
## 452         11.63      0.97       0.88    0.84        7.70    4.34       38
## 453          7.70      0.93       0.63    0.83        4.00    5.75       48
## 454          6.20      0.67       0.34    0.69        3.85    1.63       31
## 455         10.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 456         11.00   -999.00       1.00    0.70     -999.00 -999.00       16
## 457         13.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 458       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 459         16.00      0.75       0.58    0.97     -999.00    5.25       24
## 460         14.32      0.73       0.78    1.20       10.00    5.25       37
## 461          4.15   -999.00       0.41    1.42        3.60 -999.00     -999
## 462       -999.00   -999.00    -999.00 -999.00     -999.00   11.00     -999
## 463          4.90   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 464          6.71   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 465          8.34   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 466         15.88   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 467          9.60      0.77       0.58    1.00        8.60 -999.00       20
## 468          4.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 469          4.26      0.64       0.28    0.75        3.50    5.05       21
## 470          8.20   -999.00    -999.00 -999.00     -999.00   12.00       18
## 471          5.57      0.70       0.50 -999.00     -999.00   12.00       18
## 472          4.37   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 473          6.00   -999.00    -999.00    0.70     -999.00   12.00       18
## 474          4.44   -999.00    -999.00 -999.00     -999.00 -999.00       18
## 475          7.25      0.77       0.25    0.84     -999.00    9.92       24
## 476          3.00      0.68    -999.00    0.84     -999.00 -999.00     -999
## 477          8.98      0.69       0.47    0.85        8.50   10.71       24
## 478          3.68   -999.00    -999.00    0.88     -999.00 -999.00       14
## 479          2.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 480          8.20      0.55    -999.00 -999.00        4.00   10.00       17
## 481          5.58      0.67       0.42    0.70        5.50 -999.00       18
## 482         12.47      0.75    -999.00 -999.00     -999.00    3.00       18
## 483         45.87      1.05       2.60    0.65       19.08    1.54       30
## 484       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 485          2.10      0.93       0.21    0.66        2.09    7.50       32
## 486       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 487       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 488       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 489         55.33   -999.00    -999.00    0.79       30.00   10.00     -999
## 490        383.00      1.54    -999.00    1.17     -999.00    1.30     -999
## 491         61.30      1.00    -999.00 -999.00     -999.00   24.00       48
## 492         10.00   -999.00       0.67 -999.00     -999.00 -999.00     -999
## 493         50.18      1.21      10.10    0.98       34.77   10.50       60
## 494         74.60      1.35       5.36    1.17     -999.00   10.27       36
## 495        118.80      1.17       5.00    1.00       65.00   10.00     -999
## 496         76.90      1.00    -999.00    1.00     -999.00   10.00     -999
## 497         52.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 498         85.00   -999.00       3.50    1.03     -999.00 -999.00     -999
## 499        133.30      1.06       3.38    1.25       44.20   10.41       72
## 500         19.50   -999.00    -999.00    1.00     -999.00   12.00     -999
## 501        180.00      1.90       7.74    0.94       50.00    8.32      156
## 502          6.70      2.06       0.70    1.21     -999.00 -999.00       25
## 503        149.60      1.79       8.18    0.67     -999.00    1.44       32
## 504         79.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 505         37.80      2.06       3.95    0.94     -999.00   22.00       67
## 506         48.10      2.03       3.65    0.97     -999.00   21.50       70
## 507         69.60   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 508        761.70   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 509        259.45      1.89      24.85    0.75     -999.00    6.48      127
## 510        884.00      2.01      21.38    1.11      225.00    6.33       76
## 511        421.33      0.89    -999.00 -999.00     -999.00    8.42     -999
## 512       1250.00   -999.00      45.00 -999.00     -999.00 -999.00     -999
## 513       2500.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 514       2099.50      1.30    -999.00 -999.00     -999.00    5.92     -999
## 515       1820.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 516       -999.00      1.40    -999.00 -999.00     -999.00 -999.00     -999
## 517       2110.00      1.53     110.00 -999.00     -999.00   12.20     -999
## 518       4506.33      1.53     102.50    1.83     2042.00   12.20     -999
## 519       3766.00      1.72     105.00    2.13     -999.00   11.56     -999
## 520       3030.43      1.65     107.93    0.76      491.99    8.73      216
## 521       1489.25      1.22      61.03    0.66      362.00   10.12     -999
## 522       3035.50      1.29      94.32    0.88      737.00   10.95       96
## 523       2358.00      1.42     118.40    1.08      943.33    7.48     -999
## 524       3759.67      1.50     118.10    1.75     3000.00   24.00     -999
## 525       2317.00      1.43      84.34    1.34     1300.00    8.00       81
## 526       3673.33      1.42     119.67    0.94      390.00    7.77       89
## 527       2686.00      1.38      98.00 -999.00     -999.00 -999.00     -999
## 528       1558.25      1.02      39.61    0.85      214.00    5.13      120
## 529       2500.00      1.25    -999.00 -999.00     -999.00 -999.00     -999
## 530       2470.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 531       1945.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 532       1700.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 533        494.50      1.27      30.62    0.86      102.60    6.33     -999
## 534        950.00      1.19    -999.00    0.88     -999.00    4.17     -999
## 535       1233.00      1.11    -999.00 -999.00     -999.00    7.21     -999
## 536        902.60      0.93      30.00    0.53     -999.00    3.96     -999
## 537       2120.67      1.26      57.67    0.47      160.00    6.53     -999
## 538        707.67      0.90      28.17    0.63     -999.00    5.07     -999
## 539        759.96      0.97    -999.00    1.13     -999.00    3.97     -999
## 540       1269.00      0.90      34.33    0.80      118.50    4.06      108
## 541        909.38      0.94      34.50    0.92     -999.00    5.39     -999
## 542        167.00   -999.00    -999.00 -999.00     -999.00   12.00     -999
## 543       -999.00      0.75      11.20 -999.00     -999.00 -999.00     -999
## 544        129.00      1.00    -999.00 -999.00     -999.00   12.00       72
## 545        115.00   -999.00       7.00    0.70     -999.00    0.74     -999
## 546        128.00   -999.00    -999.00 -999.00     -999.00    0.70     -999
## 547       -999.00      1.00       7.87    0.70     -999.00    0.92     -999
## 548        140.20      1.00      10.67    0.91       81.12   11.42       84
## 549       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 550       -999.00      0.83       7.00    0.70     -999.00    0.92     -999
## 551       -999.00      0.74       7.00    0.72     -999.00    1.02     -999
## 552        250.00      0.86      11.40    0.65       72.30    1.71     -999
## 553         60.00      1.87    -999.00 -999.00     -999.00 -999.00     -999
## 554       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 555         51.95      1.70      10.00    1.25     -999.00   11.00      105
## 556         51.94      1.80       8.10    1.00     -999.00    2.26     -999
## 557         48.00      2.50    -999.00 -999.00     -999.00 -999.00       36
## 558         58.00      1.93      10.73    0.77       28.99    2.40       72
## 559         44.33   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 560         40.00      2.14       7.00    0.62     -999.00    1.45     -999
## 561        220.00   -999.00      31.00 -999.00     -999.00 -999.00     -999
## 562        540.00      1.40      80.00    0.49      180.00    1.25       60
## 563     250000.00     11.97   29166.67 -999.00     -999.00   22.80      564
## 564     275000.00      9.83    -999.00 -999.00     -999.00 -999.00      319
## 565     384000.00     13.32   40000.00    9.17     -999.00   48.00      345
## 566     296000.00     12.02   30000.00   10.00     -999.00   40.33      354
## 567     257000.00     12.16   32292.00   10.76   174500.00   25.73      480
## 568     230000.00     11.44    -999.00   12.50     -999.00   27.75      274
## 569    2233333.33     15.87   51166.67   12.00     -999.00   66.57      600
## 570    1266666.67      7.75   23000.00   16.50     -999.00   90.00      392
## 571     927766.67     16.12   34166.67   19.92     -999.00   59.51      550
## 572    1602333.33     16.44   58204.55   15.00   885812.33   72.85      564
## 573    1750000.00     16.50    -999.00   18.00     -999.00   42.00      252
## 574     148950.00     13.09    4270.00 -999.00     -999.00 -999.00     -999
## 575     200000.00     13.18    5417.50    9.50    86260.00   23.00      420
## 576     296250.00     12.76    7100.00    6.37     -999.00   46.00     -999
## 577     300000.00     13.17    9400.00 -999.00     -999.00 -999.00     -999
## 578      33000.00   -999.00     500.00 -999.00     6000.00 -999.00     -999
## 579       5150.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 580       2350.00   -999.00      92.50    2.87     -999.00 -999.00     -999
## 581       1480.00      4.00     120.00    4.83      675.00   24.00     -999
## 582       3900.00      2.25     331.75 -999.00     -999.00 -999.00      240
## 583       2750.00   -999.00    -999.00 -999.00      400.00 -999.00     -999
## 584       7230.00      4.63     338.00    1.17      948.70 -999.00     -999
## 585        558.33      5.18      49.07    2.07      215.00   17.33      215
## 586        343.33   -999.00      34.50    3.50     -999.00 -999.00     -999
## 587        357.25   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 588        116.83      4.60      16.16    3.00       70.00   20.55      216
## 589        307.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 590        406.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 591        309.00      4.90      27.12    5.42       97.00   16.33      144
## 592        558.00      4.35      55.07    4.30      165.00   25.01      338
## 593        490.00   -999.00      44.00 -999.00     -999.00 -999.00     -999
## 594        445.80   -999.00      35.00 -999.00     -999.00 -999.00      240
## 595        465.00      5.33    -999.00 -999.00     -999.00 -999.00     -999
## 596        411.00   -999.00      43.70    2.70      175.00   27.96     -999
## 597        526.13      5.00      46.90    5.62     -999.00 -999.00     -999
## 598        499.33      4.67      46.03    1.83     -999.00   18.00     -999
## 599        370.00      4.91      39.60    3.00     -999.00   20.37      288
## 600        401.00      5.84      40.22    7.79      102.50   25.33      300
## 601        501.33      4.83      42.33    7.46     -999.00 -999.00     -999
## 602        466.75      4.60      40.00    2.34     -999.00   21.06      156
## 603      11600.00      6.23     480.00 -999.00     -999.00 -999.00     -999
## 604       5555.29      6.37     295.00   12.30     -999.00   54.96     -999
## 605       5659.14      6.22     368.75   14.22     1100.00   42.30      240
## 606       5353.00      6.23     187.50    6.42     -999.00   41.51     -999
## 607        833.56      4.67      91.18    3.14      360.00   29.46      324
## 608        874.00      4.43      98.00    2.50     -999.00 -999.00     -999
## 609       1230.00   -999.00    -999.00    7.70     -999.00 -999.00     -999
## 610       5400.00      4.63    -999.00 -999.00     -999.00 -999.00     -999
## 611       6265.80      7.39     447.50   23.47     2000.00   72.34      576
## 612       7758.80      7.39     461.67   26.15     3790.00   54.73     -999
## 613       7761.80      7.47     235.00   12.90     -999.00   56.28      240
## 614      11142.50      7.76    -999.00   21.75     -999.00   90.00     -999
## 615       4092.00      6.00    -999.00   21.14     -999.00   32.90      372
## 616       1050.00   -999.00    -999.00    5.00     -999.00   48.80     -999
## 617       1120.00      4.33      74.00    6.77     -999.00 -999.00     -999
## 618        850.00      5.49      72.20    3.50     -999.00   36.00      300
## 619       2410.00   -999.00    -999.00   24.33     -999.00   72.00     -999
## 620       2602.57      5.70     237.25   17.12     1350.00   48.00      660
## 621       2528.50      5.33     225.42   10.09     1000.00   57.56      540
## 622       2539.07      5.17     232.42    8.15     -999.00   45.66      480
## 623       2900.00      5.00    -999.00 -999.00     -999.00   48.00     -999
## 624       2750.00      5.00    -999.00 -999.00     -999.00   48.00      216
## 625       6076.25      8.35     213.96   11.57     -999.00   81.49      311
## 626       1926.67   -999.00     120.67 -999.00     -999.00 -999.00      168
## 627       1377.20      5.32    -999.00    4.00     -999.00   25.48      420
## 628        580.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 629        607.80      5.71     113.25    6.40      410.50   38.71      252
## 630       3301.67   -999.00     221.00    2.50     -999.00 -999.00      276
## 631       5425.75      5.85    -999.00   12.00     2170.00   74.54      228
## 632       7036.67      5.61    -999.00 -999.00     -999.00   57.60      246
## 633       2870.00   -999.00     435.00 -999.00     -999.00 -999.00     -999
## 634       4700.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 635       3833.33   -999.00     283.00 -999.00     -999.00 -999.00     -999
## 636       4225.33      5.67     406.00 -999.00     -999.00 -999.00     -999
## 637       -999.00   -999.00    -999.00   16.00     -999.00 -999.00     -999
## 638       2866.25      5.67     339.00 -999.00     -999.00   60.00     -999
## 639       2973.67      5.67     339.00 -999.00     -999.00   60.00     -999
## 640       3392.60      5.00     371.00    6.00     -999.00   60.00     -999
## 641       3150.00      6.00    -999.00   12.00     -999.00 -999.00      351
## 642       5685.71      4.50     391.65   10.37     -999.00   60.62     -999
## 643       3920.00   -999.00    -999.00 -999.00     -999.00   57.00     -999
## 644       4670.17      5.75     305.00   13.00     1640.00   50.80     -999
## 645       4216.50   -999.00     463.00   12.00     -999.00   64.50      418
## 646       3732.64      5.62     337.79    6.99     1036.50   47.37      372
## 647       9000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 648       9500.00      6.50    -999.00   16.00     -999.00 -999.00     -999
## 649       8508.00      6.26     573.40    8.87     1240.00   79.79      312
## 650       9725.17      5.67     497.00   12.38     1600.00   53.40      288
## 651       5883.40      5.56     546.50    5.33     1950.00   32.84      287
## 652       6725.80      5.97     462.50    7.67     2170.00   57.58      392
## 653      10036.67      5.67     533.33   18.80     2400.00 -999.00     -999
## 654       8857.50      5.72     504.96   12.06     1767.50   55.02     -999
## 655       5575.00      5.43     389.50   16.67     -999.00   60.00     -999
## 656       9752.60      5.49     450.00    7.00     2420.00   49.81     -999
## 657       7307.67      6.00     486.20   11.20     2300.00   47.76     -999
## 658       6211.67      5.78     457.67    7.00     -999.00   63.21      216
## 659       3495.00   -999.00     446.00   13.03     -999.00   54.00      420
## 660       4875.00      5.94     418.00   12.00     -999.00   53.16     -999
## 661       5413.40      5.47     476.20    9.47     1454.00   41.08      259
## 662       6316.67      5.40     401.00    6.87     -999.00 -999.00     -999
## 663       6133.10      5.71     476.24   10.66     1416.50   43.64      316
## 664       3456.29      5.49     407.82    9.58      990.33   43.56      445
## 665       3735.00      5.43     391.33   10.72     2000.00   45.35     -999
## 666       9087.50      6.19     772.00   16.00     -999.00   56.85      343
## 667      11916.67      6.02     751.50   11.64     3000.00   48.21      349
## 668       1093.33      5.40     187.50    5.43      450.00   53.13      332
## 669       9462.60      5.53     452.00    7.62     2000.00   54.00      276
## 670      14028.57      5.94     836.97    8.59     3950.00   55.17      540
## 671       6200.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 672       6300.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 673       6400.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 674       6600.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 675       3600.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 676       6163.50      5.63    -999.00   21.88     -999.00   48.96     -999
## 677       9960.00   -999.00     427.00 -999.00     -999.00 -999.00     -999
## 678       8310.00      6.25     463.00 -999.00     -999.00 -999.00     -999
## 679      11253.33      6.30     500.00   11.48     2100.00   40.64      300
## 680      12242.33      5.81     464.50   15.40     3900.00   46.30      360
## 681       7325.00   -999.00     457.00   13.10     -999.00   48.00     -999
## 682       8100.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 683      12000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 684       6572.00   -999.00    -999.00   12.00     -999.00   48.00     -999
## 685       7081.75      6.95     432.33    8.23     1100.00   42.00     -999
## 686       6426.00      4.92     329.83   12.00     -999.00   48.00     -999
## 687       8400.00      5.50    -999.00   10.17     -999.00 -999.00     -999
## 688        394.20      2.35      18.04    1.55     -999.00 -999.00      106
## 689        170.60      2.16      16.33    2.03     -999.00   13.77      230
## 690         69.00   -999.00       6.50    1.33     -999.00 -999.00     -999
## 691        306.67      2.95      14.50    4.54     -999.00   18.20      183
## 692         71.00      1.84       5.78    1.30     -999.00   12.90      186
## 693        400.00   -999.00    -999.00 -999.00     -999.00 -999.00      144
## 694       2610.33      5.53     123.00    7.71     1535.00   39.00      279
## 695        280.00      4.50    -999.00 -999.00     -999.00 -999.00     -999
## 696        289.20      4.47      24.00 -999.00     -999.00   10.11     -999
## 697        180.00      4.10      12.10    3.07       95.00   10.62     -999
## 698        171.38      4.23      14.05    2.93      116.67   11.33      226
## 699         66.00      3.12      10.58    1.50     -999.00   13.88      168
## 700        144.00      4.10      14.55 -999.00     -999.00   10.67      198
## 701       1143.33      4.41      51.21    4.53      500.00   22.16      216
## 702        731.33      4.40      49.00 -999.00     -999.00   19.48      216
## 703     101386.11      8.47    2077.50   27.44    12595.00   89.33      472
## 704      37618.18      7.36    1669.92   36.54     8500.00  131.87      726
## 705      32733.33      7.75    1411.20   20.87     8500.00  108.00     -999
## 706      37115.60      8.67    1671.93   36.79    11000.00  110.12      672
## 707       6048.40      7.50    -999.00 -999.00     -999.00 -999.00     -999
## 708       5900.00      7.00    -999.00   11.00     -999.00 -999.00     -999
## 709       6500.00   -999.00    -999.00   23.30     -999.00   84.00     -999
## 710       6389.67      6.84    -999.00 -999.00     -999.00  100.50     -999
## 711       5666.67   -999.00    -999.00 -999.00     -999.00 -999.00      528
## 712       9554.67      7.74     527.33   21.10     -999.00   89.40      300
## 713       5050.56      7.08     325.71   19.73     1070.00  103.27      378
## 714       1094.43      4.50    -999.00    5.33     -999.00   30.96     -999
## 715       7918.00      4.85     300.00   10.41     -999.00   96.00     -999
## 716       3545.00   -999.00      98.00    5.10     -999.00   54.00     -999
## 717       6260.00      5.93     135.00    9.10     -999.00   51.06     -999
## 718       3657.13      4.70      77.64    6.04     -999.00   39.62      280
## 719       1765.33      4.28      85.50 -999.00     -999.00 -999.00     -999
## 720       2171.83      4.37      74.67    5.17     -999.00   26.14      325
## 721       1666.20      4.29      58.93    5.07     -999.00   26.17     -999
## 722       1389.25      4.12      59.00 -999.00     -999.00   20.00     -999
## 723       2426.29      4.02      78.40    5.03     -999.00   22.59      432
## 724       1390.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 725       1202.71      4.73      44.80    4.84     -999.00   28.93      204
## 726       2466.67      4.43      72.14    4.79     -999.00   24.75      396
## 727       3431.43      3.34      91.99    3.67     2893.00   24.28      396
## 728        314.14      4.46      29.69    3.69      160.00   10.36      156
## 729        237.00      5.56      12.34    5.92      139.00   13.37      185
## 730        307.00      6.17      21.50 -999.00     -999.00 -999.00     -999
## 731        966.20      6.34      49.94    5.82      520.00   23.42      174
## 732       1083.50      6.44      40.51    4.34     -999.00   18.74      312
## 733        700.00   -999.00    -999.00 -999.00     -999.00   11.20     -999
## 734        779.00   -999.00    -999.00    4.00     -999.00   19.56     -999
## 735        713.00      4.38      37.17    2.81     -999.00   20.84      144
## 736       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 737        107.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 738        112.00      5.98      25.62    2.73     -999.00 -999.00      161
## 739        101.20      5.93      25.42    2.02     -999.00   30.24     -999
## 740        179.60      5.62      25.70    2.27     -999.00   13.38      144
## 741    3178000.00     21.12  100038.90   18.00     -999.00  126.53      960
## 742    3507000.00     21.46   99006.25   39.35   600000.00  147.51      840
## 743        250.00      3.78      12.25 -999.00     -999.00 -999.00     -999
## 744        307.00   -999.00    -999.00 -999.00     -999.00 -999.00       28
## 745       9000.00      3.77     682.40    2.41     -999.00   10.50      192
## 746        389.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 747        770.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 748       1650.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 749         15.75   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 750        687.00      0.98      23.58    1.75      392.52   23.45       72
## 751        635.00      2.26      34.00    0.70     -999.00 -999.00     -999
## 752        332.00   -999.00      15.40    0.93     -999.00 -999.00     -999
## 753        144.00      3.05       9.00    2.73     -999.00    2.43     -999
## 754        132.50      2.67       8.63    1.50       26.05   14.78      115
## 755        200.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 756        181.00      1.47       8.40    0.57       36.00   10.00       36
## 757        160.00      2.90       7.00 -999.00     -999.00 -999.00     -999
## 758         35.00      2.23       1.88    1.17       11.00    7.50      192
## 759       4683.33      4.25     209.50    3.30     -999.00    8.38      136
## 760        660.00      3.85      78.00 -999.00      250.00 -999.00     -999
## 761       1500.00      3.23    -999.00 -999.00     -999.00   12.00      118
## 762       -999.00      6.63    -999.00    6.63     -999.00 -999.00     -999
## 763       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 764       1267.00      4.50     105.85 -999.00     -999.00 -999.00      119
## 765      19000.00      3.51     537.94    2.33     4200.00   31.22      420
## 766      19606.67      3.76     455.43    1.85     -999.00   21.60     -999
## 767        637.50      2.11    -999.00 -999.00     -999.00    2.03     -999
## 768        341.00      2.07      59.66    0.56      171.05    2.44     -999
## 769        728.00      2.24      85.14    0.60      228.00    2.25     -999
## 770       1600.00      2.57     196.00 -999.00     -999.00 -999.00     -999
## 771      12500.00      2.81     561.94    2.13     -999.00    5.00      168
## 772        326.00      1.78    -999.00 -999.00     -999.00 -999.00       55
## 773        337.85      1.78      37.99    1.27      136.75    2.18       22
## 774        950.00      2.53      80.33 -999.00     -999.00    3.12      132
## 775        350.00      1.80      30.40    1.28     -999.00    3.19     -999
## 776        500.00      4.27    -999.00 -999.00     -999.00    8.00      240
## 777        642.50      3.70      39.27    1.78     -999.00    6.45     -999
## 778        600.00      4.39     260.00 -999.00     -999.00 -999.00     -999
## 779       1270.00      4.04     180.00    1.94     -999.00    7.18      234
## 780       3250.00      5.14     196.00    1.78      652.25    7.40      113
## 781        174.75      2.00      18.30 -999.00     -999.00    9.00     -999
## 782        288.80      2.44      29.90 -999.00     -999.00   10.50     -999
## 783        194.00   -999.00      20.50 -999.00     -999.00 -999.00     -999
## 784        275.00      3.53    -999.00 -999.00     -999.00 -999.00     -999
## 785        164.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 786        490.00      4.00      34.70 -999.00     -999.00 -999.00     -999
## 787        100.00      3.87       8.00    1.20     -999.00    8.07     -999
## 788        400.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 789       2675.00      2.80      22.70 -999.00     -999.00   16.00     -999
## 790       2650.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 791       3265.00      3.47    -999.00 -999.00     -999.00    6.36      213
## 792        775.00      3.30      76.80    1.75      350.00    8.22     -999
## 793      12500.00      8.42     730.54    0.50     -999.00 -999.00      156
## 794         52.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 795         35.90   -999.00    -999.00 -999.00     -999.00 -999.00       50
## 796        117.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 797         58.67   -999.00    -999.00    1.09     -999.00    4.67     -999
## 798         87.00      0.92    -999.00 -999.00     -999.00    2.75     -999
## 799         51.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 800        134.00      1.15    -999.00 -999.00     -999.00 -999.00     -999
## 801         55.00      1.28       2.00    1.67       20.00   10.74       75
## 802       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 803         21.33      0.77       0.96    1.19        8.90    8.40       48
## 804       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 805         52.33      0.92    -999.00 -999.00     -999.00    5.18     -999
## 806       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 807       -999.00      0.69    -999.00 -999.00     -999.00 -999.00     -999
## 808          8.00      0.97    -999.00    1.25     -999.00   11.61       40
## 809         55.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 810         28.75      0.60       0.80    0.98     -999.00 -999.00       48
## 811         24.00      0.69       0.81    1.00     -999.00   12.00     -999
## 812         18.25      0.63       0.82    0.92        7.80    1.59       60
## 813        640.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 814        504.00   -999.00      24.30 -999.00     -999.00 -999.00     -999
## 815        460.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 816        276.00   -999.00    -999.00 -999.00     -999.00 -999.00       37
## 817        356.50      2.10      24.70    0.94     -999.00    4.85       42
## 818        500.00      2.01      23.00    0.70     -999.00    6.57     -999
## 819        350.00      2.09      21.63    0.73     -999.00    2.80       84
## 820        373.50      3.10      21.10    1.50     -999.00    5.85     -999
## 821       3900.00      6.67     407.90    3.13     -999.00   19.00      208
## 822       9000.00      6.78     678.20    1.28      936.84   24.74      120
## 823       1750.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 824       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 825        176.67      0.88       5.51    1.11       22.50    3.93       86
## 826        142.50      0.93       5.80    1.00       45.00    5.87     -999
## 827        397.00   -999.00    -999.00 -999.00     -999.00 -999.00       24
## 828        210.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 829        650.00   -999.00    -999.00 -999.00     -999.00    2.77     -999
## 830        225.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 831        266.00   -999.00       6.07 -999.00       68.80   10.20     -999
## 832       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 833         80.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 834        100.00   -999.00    -999.00 -999.00     -999.00    7.97     -999
## 835         91.40      0.87       3.12    1.32     -999.00   11.70       72
## 836        359.90   -999.00       6.11    1.50       86.00 -999.00     -999
## 837        103.50      0.87       3.30 -999.00     -999.00 -999.00     -999
## 838        233.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 839         14.40      1.00    -999.00 -999.00     -999.00 -999.00       31
## 840         15.23      0.84    -999.00    0.75     -999.00 -999.00     -999
## 841         25.50      0.83       1.75    0.76       11.00    3.00     -999
## 842         16.50   -999.00    -999.00    0.80     -999.00 -999.00     -999
## 843         18.70      0.84    -999.00 -999.00     -999.00    5.53      100
## 844         19.45      1.00       1.00    0.75        8.00   12.00     -999
## 845         35.25   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 846         85.00      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 847         35.50      1.13       3.18    0.89       20.00    2.90     -999
## 848         72.40      0.99       4.50    0.93     -999.00    1.34     -999
## 849         55.16      1.04       4.00    0.75       21.00 -999.00     -999
## 850         60.57   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 851         64.50   -999.00       4.40    0.67       27.67 -999.00     -999
## 852         82.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 853         40.00      0.91       2.92    0.67       17.60    3.35     -999
## 854        119.60      0.78       7.75    0.81       30.30 -999.00     -999
## 855         84.96   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 856        132.00   -999.00    -999.00    1.07     -999.00 -999.00     -999
## 857         65.00      1.03       3.91    1.02       28.10 -999.00     -999
## 858         54.50      0.99    -999.00    1.13     -999.00    2.59      118
## 859        112.00      1.01       3.04    0.67       38.00 -999.00      108
## 860         70.00   -999.00       3.30 -999.00     -999.00    1.67     -999
## 861         81.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 862         85.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 863         77.00      0.92       3.00 -999.00     -999.00    7.61     -999
## 864         50.00      0.83       2.75    0.87       22.50    3.26     -999
## 865         42.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 866         65.00   -999.00    -999.00 -999.00     -999.00    6.33       18
## 867         41.00      0.92       1.90 -999.00     -999.00    2.15     -999
## 868         13.55   -999.00       1.00 -999.00     -999.00 -999.00     -999
## 869         13.45   -999.00    -999.00 -999.00     -999.00 -999.00       65
## 870         11.55      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 871          9.00      0.77       0.78    0.66        4.75    4.96      100
## 872          7.83      0.83    -999.00    1.00     -999.00 -999.00       60
## 873          9.00      0.85    -999.00 -999.00     -999.00    2.75       60
## 874         20.10      0.80       1.50    0.75     -999.00    3.28     -999
## 875          8.00   -999.00    -999.00    0.75     -999.00 -999.00       48
## 876          8.65   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 877      55000.00      8.82    1537.50    3.38     8299.00   15.10      144
## 878       2000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 879       3180.00      3.50     148.13 -999.00     -999.00 -999.00      275
## 880       2740.00   -999.00    -999.00 -999.00     -999.00 -999.00      114
## 881       8000.00      4.00     445.00 -999.00     -999.00 -999.00      327
## 882      14650.00      3.73    -999.00 -999.00     -999.00 -999.00     -999
## 883      18333.33      2.50    1000.00 -999.00     -999.00 -999.00     -999
## 884      15680.00      2.42     331.15    2.53     -999.00   15.20     -999
## 885       -999.00      1.27    -999.00 -999.00     -999.00 -999.00     -999
## 886         54.43      1.13       7.00 -999.00     -999.00    3.00       60
## 887         20.00      1.27    -999.00 -999.00       10.00 -999.00     -999
## 888         45.25      1.23       5.77    0.81       12.58    2.02       60
## 889        107.00      0.82    -999.00 -999.00     -999.00 -999.00     -999
## 890        198.00      0.90       6.10    0.87       47.57 -999.00     -999
## 891         78.55      0.83       4.45    0.98       31.00    3.77     -999
## 892         47.56   -999.00       2.50    0.80       12.50 -999.00     -999
## 893         37.30   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 894         39.70   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 895         25.95   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 896         33.00      0.77       3.00    0.87     -999.00 -999.00     -999
## 897         50.00   -999.00       3.00 -999.00     -999.00 -999.00     -999
## 898         27.33      0.79       2.20    0.49     -999.00    2.16     -999
## 899         37.55   -999.00       3.30 -999.00     -999.00    2.25     -999
## 900         28.03   -999.00    -999.00 -999.00     -999.00    7.00     -999
## 901         50.00   -999.00    -999.00 -999.00     -999.00    2.70     -999
## 902       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 903         35.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 904         50.00      0.67       3.00    0.57       15.00 -999.00     -999
## 905         37.70   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 906       -999.00   -999.00    -999.00 -999.00     -999.00    2.00     -999
## 907         32.90   -999.00       2.00 -999.00     -999.00 -999.00     -999
## 908       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 909         45.60      0.77       3.00    0.88     -999.00 -999.00     -999
## 910         29.35      0.85       2.40    0.73        8.70    1.67       48
## 911         21.50      0.71       1.90    0.88     -999.00    2.50       48
## 912         23.38      0.77       1.50    0.68     -999.00    2.34       48
## 913         36.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 914         23.00      1.15       2.57    1.01       21.00 -999.00     -999
## 915         23.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 916         64.50      0.73       4.15    0.75       21.67    1.82     -999
## 917        187.50      0.73       6.00 -999.00     -999.00 -999.00     -999
## 918        120.00      0.71       5.86    0.51       42.00    1.69       60
## 919         72.60   -999.00    -999.00 -999.00     -999.00    2.00     -999
## 920          7.83      0.74       1.16    0.68        3.59    1.95       43
## 921        545.00      0.69       9.99    0.92       41.00    8.39     -999
## 922        166.67      0.64       4.43    0.97       22.90    2.60     -999
## 923        101.67      0.83       3.20    1.38       59.20    6.85     -999
## 924         39.93      0.74       3.45 -999.00     -999.00    2.28     -999
## 925         26.60   -999.00       2.05 -999.00     -999.00 -999.00     -999
## 926         34.00      0.83    -999.00 -999.00     -999.00 -999.00     -999
## 927         27.00      0.83    -999.00 -999.00     -999.00 -999.00     -999
## 928         41.00      0.73       2.34    0.58       14.25    1.72     -999
## 929         17.60      0.74    -999.00 -999.00     -999.00    2.41     -999
## 930         20.40   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 931         20.40   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 932        650.00      1.38       7.00    2.00     -999.00 -999.00       39
## 933         54.00      0.69       3.70    0.75     -999.00 -999.00     -999
## 934       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 935         25.50      0.67       2.80    0.79       10.00    3.33       43
## 936         43.40   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 937         20.57      0.59       1.61    0.55       10.89    4.00     -999
## 938         29.50   -999.00    -999.00 -999.00       10.00    2.03     -999
## 939         20.77      0.69       1.82    0.72        9.40    3.10       59
## 940         23.60      0.62    -999.00 -999.00     -999.00 -999.00     -999
## 941         25.00      0.77       2.95 -999.00     -999.00    4.00     -999
## 942         58.50   -999.00    -999.00 -999.00     -999.00 -999.00       36
## 943        144.00      1.16    -999.00    1.02     -999.00 -999.00       60
## 944         14.10   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 945         59.80   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 946       1092.60      1.17      23.10    1.02     -999.00    5.32     -999
## 947       -999.00   -999.00       2.00    0.67       14.00 -999.00     -999
## 948         30.80      0.49    -999.00 -999.00     -999.00 -999.00     -999
## 949        506.67      0.71       5.05    0.83      105.05    3.34       48
## 950        106.18   -999.00    -999.00    1.00       30.00    2.34     -999
## 951       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 952       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 953          7.20   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 954         10.60   -999.00    -999.00 -999.00     -999.00 -999.00       39
## 955          7.36      0.83    -999.00 -999.00     -999.00 -999.00     -999
## 956         45.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 957         10.00      0.96       0.90 -999.00     -999.00 -999.00     -999
## 958         54.50      0.94       3.12    1.10     -999.00 -999.00     -999
## 959       -999.00      0.70       5.20 -999.00     -999.00 -999.00     -999
## 960         55.00      0.68       4.00    0.63     -999.00    3.00       24
## 961         57.00      0.67    -999.00 -999.00     -999.00 -999.00     -999
## 962         85.00      0.60       2.97    1.00       25.50    3.00       45
## 963         55.05      0.71       4.35    0.53       23.00    1.32     -999
## 964         56.00      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 965         21.40   -999.00       1.73    0.60     -999.00    1.75     -999
## 966         80.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 967         38.00      0.87    -999.00    2.00     -999.00    3.15     -999
## 968         26.00   -999.00    -999.00 -999.00     -999.00    0.97     -999
## 969         38.60      0.70       2.30    0.85       20.15 -999.00     -999
## 970         28.50      0.79       2.10    0.82       13.50    2.49     -999
## 971         24.00   -999.00       1.90    0.97       13.00 -999.00     -999
## 972         26.10      0.67       1.90 -999.00     -999.00 -999.00     -999
## 973         22.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 974         11.70   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 975         25.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 976         24.40      0.84    -999.00 -999.00     -999.00 -999.00     -999
## 977       -999.00      0.67       2.24 -999.00       17.23 -999.00     -999
## 978       -999.00   -999.00    -999.00    0.88     -999.00    3.06     -999
## 979         43.35   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 980         18.50      0.72    -999.00 -999.00     -999.00 -999.00     -999
## 981         37.00      0.95       2.55    0.92       11.00    2.59       98
## 982         65.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 983         53.00      0.83    -999.00 -999.00     -999.00 -999.00     -999
## 984         43.70      0.80       4.20    0.82     -999.00    2.40       53
## 985       -999.00   -999.00    -999.00    0.75     -999.00 -999.00     -999
## 986         66.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 987        368.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 988        155.00      0.94       5.00    0.75     -999.00    3.25     -999
## 989         51.80      1.00       4.40 -999.00     -999.00    2.93     -999
## 990        606.00      1.17      24.39    1.05      150.00    5.36     -999
## 991         20.00      0.97       1.50 -999.00     -999.00 -999.00     -999
## 992         16.70      0.97       1.49 -999.00     -999.00    1.27     -999
## 993        882.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 994       -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 995         52.60   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 996       1250.00      4.00    -999.00 -999.00     -999.00 -999.00     -999
## 997         20.30      0.66       1.35 -999.00        5.75    1.24     -999
## 998       -999.00   -999.00       1.90 -999.00     -999.00    2.00     -999
## 999         17.50      1.05    -999.00    1.00     -999.00    3.00     -999
## 1000        20.00   -999.00    -999.00    1.00     -999.00    3.00     -999
## 1001        27.17      0.82       1.16    0.70     -999.00    1.89     -999
## 1002        51.67      0.68       3.92    0.50     -999.00    1.29       24
## 1003        59.20      0.70       3.78 -999.00       27.00    1.86     -999
## 1004        59.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1005        42.30      0.83       1.70    1.00       15.00    5.51       30
## 1006       332.50      1.24    -999.00    1.17     -999.00    7.47     -999
## 1007       755.00   -999.00    -999.00    1.33     -999.00 -999.00       90
## 1008      -999.00      1.07       9.50 -999.00     -999.00 -999.00     -999
## 1009      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1010        55.00      1.01       6.50    1.67       15.33    2.00     -999
## 1011        44.50      1.00       7.50    0.40       13.61 -999.00     -999
## 1012      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1013        12.33      0.88       1.20    1.07     -999.00    2.12     -999
## 1014        37.77      0.70    -999.00 -999.00       22.50    4.50     -999
## 1015        44.97      0.77       2.07    0.69       13.28    2.77     -999
## 1016       111.00   -999.00       4.50    1.00     -999.00 -999.00     -999
## 1017        81.60   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1018        45.90   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1019        57.40   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1020        89.80   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1021        96.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1022        65.00   -999.00       6.50 -999.00     -999.00 -999.00     -999
## 1023        62.00   -999.00    -999.00    0.75       30.50 -999.00     -999
## 1024        94.00      1.30    -999.00    1.08       17.50    6.42     -999
## 1025       100.00      0.84       5.00    0.64     -999.00 -999.00     -999
## 1026       105.00      0.85       3.00 -999.00     -999.00 -999.00     -999
## 1027        77.00      0.84       5.33    1.00       45.00    3.00     -999
## 1028       185.00      0.86       4.46    0.75       25.00    3.36     -999
## 1029       150.00      0.72       3.00 -999.00     -999.00 -999.00     -999
## 1030        48.30      0.82       3.40    0.67     -999.00    3.00       67
## 1031      -999.00   -999.00       3.03    0.56       15.75 -999.00     -999
## 1032        53.00      0.77    -999.00    0.70     -999.00 -999.00     -999
## 1033        70.00      0.97       3.50    0.82       20.50    3.61     -999
## 1034        53.20      0.84       2.90    0.87       14.95    2.64       24
## 1035       268.50      1.57    -999.00    1.63     -999.00 -999.00     -999
## 1036       900.00      1.46      34.90    1.56      440.50    2.32       47
## 1037       197.50      0.50    -999.00 -999.00     -999.00    1.17     -999
## 1038      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1039       105.00      0.54       2.31    0.74       22.93    1.54       36
## 1040         6.00      0.65       0.90    0.59     -999.00    1.41       60
## 1041      -999.00      0.67       1.70 -999.00     -999.00    1.25     -999
## 1042      -999.00   -999.00       2.80 -999.00     -999.00 -999.00     -999
## 1043      -999.00   -999.00       2.21 -999.00     -999.00 -999.00       33
## 1044        50.00      0.70       3.45    0.50     -999.00 -999.00     -999
## 1045        35.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1046      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1047        54.00      0.73       3.50    0.50     -999.00 -999.00     -999
## 1048        39.85      0.97       2.45    0.67       17.60    2.00     -999
## 1049        54.80      0.75    -999.00    0.53       15.10 -999.00     -999
## 1050        39.50      0.70       2.60 -999.00     -999.00 -999.00     -999
## 1051        36.70   -999.00    -999.00 -999.00     -999.00 -999.00       14
## 1052        39.00      0.67    -999.00 -999.00     -999.00 -999.00     -999
## 1053        35.30      0.73       2.43    0.60       13.98    1.83     -999
## 1054       106.20      0.90       5.05    0.70       31.09 -999.00     -999
## 1055       141.50   -999.00       3.50    1.00     -999.00 -999.00     -999
## 1056        43.67      0.70       2.46    0.48       13.60    0.94       16
## 1057        25.50      0.75       2.32    0.68        9.63    3.21     -999
## 1058        47.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1059        51.60      0.70       3.00    0.59       15.00    6.17       47
## 1060        93.33      0.71       2.43    0.71       15.90    0.94       21
## 1061        46.00      0.68       2.30    0.44        8.94    1.17       39
## 1062        19.50      0.71       1.60    0.79        9.44    3.17       34
## 1063        40.00      0.74       3.02    0.67       16.68    1.56       35
## 1064        20.50      0.78       1.63    0.46       10.00    1.05     -999
## 1065        49.50      0.70       3.05    0.54        9.33    0.82     -999
## 1066        53.50      0.71       2.83    0.60       17.67    2.18     -999
## 1067        48.00      0.65       2.10 -999.00     -999.00    1.10     -999
## 1068        27.50      0.69       1.85    0.58        8.87    1.57       36
## 1069        63.00   -999.00    -999.00 -999.00     -999.00    3.75     -999
## 1070        70.00      0.62    -999.00 -999.00     -999.00    2.96     -999
## 1071        11.25      0.69       1.20 -999.00     -999.00 -999.00     -999
## 1072        12.80   -999.00    -999.00 -999.00     -999.00    1.34     -999
## 1073      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1074        17.70      0.65       1.50 -999.00     -999.00 -999.00     -999
## 1075         6.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1076        28.20   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1077         9.22   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1078        12.45      0.67       1.30    0.92        4.50    1.67     -999
## 1079         7.25      0.67       0.97    0.69        3.34    1.98       37
## 1080        20.50      0.69       1.25    0.72        8.95    2.37       72
## 1081        30.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1082        32.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1083        33.50      0.97       1.50 -999.00        8.00    4.54     -999
## 1084        25.00      0.71       3.20    0.67       15.65    1.07       12
## 1085      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1086       106.00      1.26       6.25    1.07       39.00    3.28       72
## 1087       178.00   -999.00       5.00    1.50     -999.00 -999.00     -999
## 1088        19.00   -999.00    -999.00 -999.00     -999.00    1.00     -999
## 1089       290.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1090       257.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1091       269.00      0.93      11.08    0.75     -999.00    2.98     -999
## 1092        96.70      1.20      10.00    0.70     -999.00    2.50     -999
## 1093       233.58      1.02      12.10    0.88     -999.00    6.00     -999
## 1094       142.00      1.03      10.60    1.31       35.00    9.50     -999
## 1095       335.50      0.98      13.50    0.90      107.03   11.59       36
## 1096       227.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1097       203.00      1.09      10.40 -999.00     -999.00    2.00     -999
## 1098       198.00      1.19      11.35    0.96       78.15    5.00       92
## 1099       125.33      1.10       8.96    0.95       34.63    4.21       67
## 1100       236.33      1.14      11.70    0.87       35.60    4.48       40
## 1101       370.50      1.20      13.28    0.73       50.45    4.71       36
## 1102        50.00      0.91       3.40 -999.00     -999.00    3.99     -999
## 1103       143.50      0.57    -999.00 -999.00     -999.00 -999.00     -999
## 1104        66.40   -999.00       3.75 -999.00     -999.00 -999.00     -999
## 1105        35.00      1.40       3.00    1.09     -999.00    5.30     -999
## 1106        35.00      1.14    -999.00    1.00     -999.00    2.70     -999
## 1107        39.00      1.75    -999.00 -999.00     -999.00 -999.00     -999
## 1108        52.00      1.21    -999.00    1.00     -999.00    2.40     -999
## 1109        35.00      1.16       2.83    0.98       12.50    2.50       62
## 1110        53.33      1.09       5.20    0.70       40.00 -999.00       62
## 1111        22.00      0.95       2.63    0.63       10.90 -999.00      101
## 1112        60.67   -999.00    -999.00 -999.00     -999.00    3.00     -999
## 1113        85.50   -999.00    -999.00    1.00       30.00    3.83     -999
## 1114        22.65      0.83       3.30    0.49     -999.00    1.93     -999
## 1115        21.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1116        27.75   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1117      1135.80      0.91      21.92    0.84      152.10    4.96      120
## 1118        40.00      1.08       2.65    0.91       13.20    4.06       60
## 1119        19.00      0.97       2.32    0.69        9.35    2.10       55
## 1120         7.50   -999.00    -999.00    1.00     -999.00 -999.00     -999
## 1121        47.67      0.80       3.42    0.50       22.25    1.78     -999
## 1122        63.15      0.88       3.85 -999.00     -999.00    1.45     -999
## 1123       121.00      1.27      11.40    0.60       27.50    2.75     -999
## 1124      -999.00   -999.00      12.50 -999.00     -999.00 -999.00     -999
## 1125      -999.00   -999.00      20.00 -999.00     -999.00 -999.00     -999
## 1126       150.95   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1127       146.85      1.30      14.50    0.42       30.00    2.70       22
## 1128       101.00      1.81      10.20    1.08     -999.00    0.86     -999
## 1129        85.50   -999.00    -999.00    0.47     -999.00    3.54     -999
## 1130        32.50      0.71    -999.00    0.97     -999.00 -999.00       53
## 1131       120.00   -999.00    -999.00 -999.00     -999.00    4.07     -999
## 1132        50.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1133       118.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1134        36.00      1.12       2.62    0.76       10.07    2.30     -999
## 1135        71.00   -999.00       3.90    0.74       16.00    1.57     -999
## 1136        59.00      1.12       4.50    0.73     -999.00 -999.00     -999
## 1137        60.50      1.09       4.40 -999.00     -999.00 -999.00     -999
## 1138      -999.00   -999.00       2.74    0.62     -999.00 -999.00     -999
## 1139        40.00      1.44       3.00 -999.00     -999.00 -999.00     -999
## 1140        40.00      0.82    -999.00    1.05     -999.00 -999.00     -999
## 1141        31.50      0.77    -999.00 -999.00     -999.00 -999.00     -999
## 1142        26.90      0.87    -999.00 -999.00     -999.00 -999.00     -999
## 1143        28.70      0.82       2.20    0.88     -999.00    1.62     -999
## 1144        26.30      1.03       2.50 -999.00       13.10 -999.00     -999
## 1145        29.00      0.83       2.20    0.81       13.69    1.68     -999
## 1146        28.00   -999.00    -999.00    0.87     -999.00 -999.00     -999
## 1147        30.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1148        28.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1149        28.30   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1150        16.33      0.82       2.20    0.87       13.87    3.77     -999
## 1151        14.00      0.79       1.63    0.76        6.77    0.99     -999
## 1152        27.00      0.99       2.32    0.85       10.50    1.18     -999
## 1153        20.50      0.88       1.83    0.84        8.95    2.58      100
## 1154        25.00      0.85       2.33    0.82     -999.00    4.23     -999
## 1155        23.00      0.83       1.89    0.77        9.58    2.33     -999
## 1156        42.00      0.97       4.46    0.98       18.65    1.50     -999
## 1157        39.60      0.84       1.67 -999.00     -999.00 -999.00     -999
## 1158        21.00   -999.00       2.10    1.05     -999.00 -999.00     -999
## 1159        27.00      0.75       2.40    0.68       10.00    1.25       48
## 1160        33.00      0.71       2.18    0.63       15.28    1.21       48
## 1161        23.40   -999.00    -999.00 -999.00     -999.00    1.50     -999
## 1162        23.40      0.65       1.77    0.65       14.80    3.95       38
## 1163      -999.00      0.70       1.45    0.63       18.10    8.00     -999
## 1164        50.83      1.12    -999.00 -999.00     -999.00 -999.00     -999
## 1165       104.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1166        31.25      0.77       2.40    0.84       11.50 -999.00       89
## 1167        60.90   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1168        39.10   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1169        95.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1170        45.10   -999.00    -999.00 -999.00     -999.00 -999.00       29
## 1171        40.00      1.18    -999.00    1.00       20.00    2.37     -999
## 1172        21.00      1.04       2.70    0.94     -999.00    3.04     -999
## 1173        36.97      0.80       2.70    0.82       10.50    2.69       62
## 1174        27.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1175       177.33      0.88       6.25    0.89       40.00    5.49     -999
## 1176       148.00      1.28       7.25    1.29     -999.00 -999.00     -999
## 1177        95.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1178        12.00      1.06    -999.00    1.00     -999.00    2.51     -999
## 1179        11.00      0.93    -999.00 -999.00     -999.00 -999.00     -999
## 1180        11.00      0.99       1.00    1.00     -999.00 -999.00     -999
## 1181        63.00      0.90       4.35    0.94       24.00 -999.00     -999
## 1182        25.00      0.98    -999.00    0.84     -999.00    2.50     -999
## 1183        34.00      0.80    -999.00    0.77     -999.00    3.33     -999
## 1184        65.00      1.02       4.00    0.87       12.50    3.59       67
## 1185        45.00      0.82    -999.00    1.00     -999.00 -999.00     -999
## 1186        45.00      1.00    -999.00    1.00     -999.00 -999.00     -999
## 1187        64.00   -999.00    -999.00 -999.00     -999.00   11.00     -999
## 1188        26.00      1.27    -999.00    1.00     -999.00    2.50     -999
## 1189        60.10      1.07       5.00    0.98     -999.00    9.00       48
## 1190        70.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1191        20.00      1.48    -999.00    1.17       11.00 -999.00     -999
## 1192        18.00      1.06       1.80    0.91     -999.00    3.01     -999
## 1193        61.00   -999.00    -999.00 -999.00     -999.00    2.00     -999
## 1194       200.00   -999.00    -999.00 -999.00     -999.00    2.33     -999
## 1195       127.50      0.77       4.10 -999.00     -999.00 -999.00     -999
## 1196       124.00      0.75    -999.00    0.83     -999.00    3.69     -999
## 1197       155.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1198       139.35   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1199       113.50      0.72    -999.00    0.75     -999.00    1.24     -999
## 1200       125.00      0.72       3.00 -999.00     -999.00    2.07     -999
## 1201       202.00      0.71    -999.00 -999.00     -999.00    1.60     -999
## 1202       115.00      0.88       4.87    0.83       25.00    2.60       29
## 1203       133.00      0.86       4.50    0.97       21.28    3.51     -999
## 1204        70.00      0.73       2.62    0.78       22.76    4.08     -999
## 1205       280.00      0.71       5.81    0.82       63.75    2.22     -999
## 1206       246.50      0.74       4.55    0.86       39.68    3.82       50
## 1207        72.17   -999.00    -999.00 -999.00     -999.00    2.00     -999
## 1208        10.30      0.75       1.09    0.76     -999.00    3.44       27
## 1209        11.03      0.76       1.33    0.70     -999.00    3.53     -999
## 1210         9.00      0.74       1.04    0.49        5.40    2.46     -999
## 1211        11.05   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1212        12.50   -999.00       1.08    0.48        3.25 -999.00     -999
## 1213        51.00      0.83       2.67    0.49        8.45    1.78       35
## 1214        57.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1215        75.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1216      3000.00   -999.00    -999.00    3.00     -999.00 -999.00     -999
## 1217      2450.00   -999.00    -999.00    4.00     -999.00 -999.00     -999
## 1218       143.00      0.92       4.75    0.73     -999.00    3.50       48
## 1219        47.38      0.69       2.60    1.00     -999.00    2.17       33
## 1220        12.00      1.01       1.35    0.68     -999.00    1.13     -999
## 1221        15.00      1.09       1.35    0.79     -999.00    1.73     -999
## 1222        38.50   -999.00    -999.00 -999.00     -999.00 -999.00       65
## 1223       135.50      1.17    -999.00 -999.00     -999.00 -999.00     -999
## 1224       113.67      1.15       5.55    0.50       35.55    1.36     -999
## 1225       211.00      1.17    -999.00 -999.00     -999.00    1.50     -999
## 1226       185.00      0.89       6.69    0.49       23.56    1.31       62
## 1227        55.70   -999.00    -999.00 -999.00     -999.00    2.00     -999
## 1228      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1229        24.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1230        25.53   -999.00       1.55 -999.00     -999.00 -999.00     -999
## 1231        74.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1232       334.00   -999.00    -999.00 -999.00     -999.00 -999.00       24
## 1233        37.05      0.77       3.46    0.75       20.00 -999.00       30
## 1234        21.30   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1235      -999.00      1.58      14.00 -999.00     -999.00 -999.00     -999
## 1236       207.50      1.36      20.00    1.30     -999.00    4.99       37
## 1237        84.00   -999.00    -999.00 -999.00       82.80 -999.00     -999
## 1238       131.00      0.77    -999.00    0.73     -999.00    3.40     -999
## 1239        64.86   -999.00       2.80    0.93       19.00 -999.00     -999
## 1240        93.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1241       113.00   -999.00    -999.00 -999.00       30.00    3.25     -999
## 1242        75.00      0.75       5.13    0.83       45.00    5.50     -999
## 1243       146.67      0.87       3.00    0.79     -999.00    2.86       84
## 1244       114.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1245        74.80      0.75       4.50 -999.00     -999.00    5.00     -999
## 1246      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1247        48.10      0.88    -999.00    0.75     -999.00    3.00     -999
## 1248        51.85      0.87    -999.00 -999.00     -999.00    3.00     -999
## 1249        77.43   -999.00       2.65    0.98     -999.00    3.57     -999
## 1250        65.00      0.80    -999.00    0.80     -999.00    2.74     -999
## 1251       280.00      1.32      16.77    0.87       40.00    3.15       65
## 1252        47.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1253       625.00      1.29      20.00    1.33     -999.00    6.00     -999
## 1254        56.60   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1255        47.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1256        54.50      1.03    -999.00 -999.00     -999.00 -999.00     -999
## 1257        58.00      0.87       3.64    0.48       22.00    1.44     -999
## 1258        94.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1259        50.00      1.00    -999.00    1.17       14.00 -999.00     -999
## 1260       130.00   -999.00    -999.00    1.17     -999.00 -999.00     -999
## 1261      7150.00      4.43     196.36    1.90     1533.33    5.25       79
## 1262      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1263        25.00      0.81       1.60    1.00     -999.00 -999.00       48
## 1264       115.00      0.74    -999.00    1.00     -999.00   18.00       60
## 1265        27.00      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 1266      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1267        24.00      0.80       3.50 -999.00     -999.00 -999.00       69
## 1268        68.80   -999.00    -999.00 -999.00       25.60 -999.00     -999
## 1269        27.33      0.79       0.80    1.27     -999.00   16.50       72
## 1270       125.00      0.94       1.50    1.07     -999.00   10.60      104
## 1271       235.00      2.96      14.10    1.19       71.20   10.90       85
## 1272       158.00      3.39      16.67    1.38     -999.00 -999.00       88
## 1273        98.05   -999.00    -999.00 -999.00     -999.00 -999.00       70
## 1274      3500.00      2.53     264.50    1.64     1300.00   34.00      228
## 1275       200.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1276       126.00      0.97       3.80    1.69       45.00   10.50     -999
## 1277       154.50      0.87       4.88 -999.00       41.00 -999.00       68
## 1278       110.20   -999.00    -999.00 -999.00       27.50 -999.00     -999
## 1279        97.50      1.04       3.36    2.20       60.00   12.00       70
## 1280       400.00      1.57      16.35 -999.00     -999.00 -999.00     -999
## 1281        30.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1282       202.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1283       190.00   -999.00    -999.00 -999.00     -999.00 -999.00      115
## 1284       863.00      1.11      15.38    1.89      140.57   26.24      102
## 1285       816.67      1.00    -999.00    1.50     -999.00   11.59     -999
## 1286       516.00   -999.00    -999.00 -999.00     -999.00   12.00     -999
## 1287       873.50      1.00    -999.00 -999.00     -999.00   23.75     -999
## 1288       828.10   -999.00    -999.00    1.52     -999.00 -999.00     -999
## 1289       172.50   -999.00    -999.00 -999.00     -999.00 -999.00       85
## 1290       388.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1291        14.60   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1292      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1293      -999.00      1.13    -999.00 -999.00     -999.00 -999.00     -999
## 1294       147.65      1.33    -999.00    2.00     -999.00    7.68     -999
## 1295       218.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1296       141.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1297       271.67   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1298       106.00      1.73       9.96    1.67     -999.00 -999.00      114
## 1299       132.17      1.32       5.62    2.12       33.87    7.83      156
## 1300        65.38      1.32       3.49    1.75       44.60   10.84      170
## 1301       326.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1302       240.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1303       510.00   -999.00    -999.00    2.50     -999.00 -999.00     -999
## 1304       120.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1305      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1306      -999.00   -999.00      33.00 -999.00     -999.00   36.00     -999
## 1307      4750.00      1.00    -999.00 -999.00     -999.00   39.00     -999
## 1308      6300.00      1.00    -999.00 -999.00     -999.00   32.00     -999
## 1309      6343.33      0.94    -999.00    0.92     -999.00   29.85     -999
## 1310      -999.00      1.35      35.50 -999.00     -999.00   36.00      180
## 1311      2930.00      1.00      33.80    0.89      478.83   26.83     -999
## 1312      3180.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1313      2010.00      1.17      29.67    1.77     -999.00   30.00      180
## 1314      8000.00      1.37    -999.00 -999.00     -999.00 -999.00     -999
## 1315      3413.00      1.09      27.43    1.57      248.00   17.81      116
## 1316      4100.00      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 1317      -999.00      1.33    -999.00 -999.00     -999.00 -999.00     -999
## 1318        16.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1319      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1320       134.00   -999.00       9.91 -999.00     -999.00    4.20     -999
## 1321      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1322       295.00      2.05      15.21 -999.00     -999.00 -999.00     -999
## 1323       216.00      1.88      12.88    1.33     -999.00    6.09     -999
## 1324      -999.00   -999.00       5.00 -999.00     -999.00 -999.00     -999
## 1325      1273.33   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1326      1780.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1327      -999.00      1.50      56.00    3.00     -999.00 -999.00     -999
## 1328      1330.00   -999.00    -999.00    2.25     -999.00 -999.00      192
## 1329       110.00      1.77    -999.00 -999.00     -999.00 -999.00     -999
## 1330        42.25   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1331        37.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1332       712.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1333       130.00      1.00    -999.00    1.50     -999.00 -999.00     -999
## 1334      1060.00      2.75    -999.00 -999.00     -999.00 -999.00      240
## 1335      1280.00      0.93    -999.00    2.25     -999.00   24.00     -999
## 1336      2150.00      1.05      77.00 -999.00     -999.00   35.45     -999
## 1337       221.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1338        39.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1339       595.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1340       225.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1341       461.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1342       760.50   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1343       751.67      1.44    -999.00    2.00     -999.00   10.50      120
## 1344       702.50      1.43      12.00    2.50      355.00   10.75     -999
## 1345       803.70      1.49      15.44    2.50     -999.00   11.81     -999
## 1346       540.33      1.43      15.15    2.14      165.00   10.48      283
## 1347       374.00   -999.00       9.50    2.00     -999.00 -999.00       84
## 1348       324.75      1.25       9.57    2.15     -999.00    9.52      144
## 1349      -999.00      1.50    -999.00 -999.00     -999.00 -999.00     -999
## 1350       600.00   -999.00    -999.00 -999.00     -999.00   12.00     -999
## 1351       751.00      0.83    -999.00 -999.00     -999.00   11.34     -999
## 1352       190.00      0.92       4.50    1.20       30.00 -999.00     -999
## 1353       200.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1354       157.60      1.00       6.26    1.22       74.16   20.94       84
## 1355       278.50      0.87       6.94    0.86       60.50   11.64      132
## 1356       308.00      0.79    -999.00    0.70      102.25   11.37     -999
## 1357      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1358      -999.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1359       136.00      0.88    -999.00 -999.00     -999.00 -999.00     -999
## 1360      -999.00   -999.00    -999.00 -999.00      200.00 -999.00     -999
## 1361       165.40      0.78       3.95    1.13     -999.00   12.00     -999
## 1362       707.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1363       466.33      0.84       9.37    0.96       98.62   17.63     -999
## 1364       275.00      0.93       5.97    1.43      113.47   12.00       48
## 1365       840.00      0.92      11.08 -999.00      109.90 -999.00     -999
## 1366       130.95      0.97       4.10    3.00     -999.00   12.00     -999
## 1367       401.05      0.80       6.02    1.25       80.00 -999.00     -999
## 1368       163.33      0.93       3.90    1.28       75.00   10.69     -999
## 1369       205.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1370       609.33      0.97      10.00    1.35       89.00   11.60     -999
## 1371       596.00      1.00    -999.00 -999.00     -999.00 -999.00     -999
## 1372      -999.00      0.80    -999.00    1.13     -999.00   12.00     -999
## 1373       342.50      0.78       6.35    1.17       92.75   11.26       72
## 1374       459.00      0.92    -999.00    1.39     -999.00   10.74     -999
## 1375       155.00      0.80       3.61    0.92       42.16   11.69     -999
## 1376       203.00   -999.00    -999.00    1.00       33.00   12.00     -999
## 1377       172.67      0.92       3.24    1.07       16.00   11.63     -999
## 1378       217.00      0.89    -999.00    1.13     -999.00   10.33     -999
## 1379       663.03      1.00       7.80    1.75      100.00 -999.00     -999
## 1380       119.50      0.93    -999.00 -999.00       45.00   12.00     -999
## 1381        67.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1382        75.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1383        94.10   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1384        59.70      1.10    -999.00    1.50       22.70 -999.00     -999
## 1385        75.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1386        70.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1387        75.00   -999.00    -999.00    0.75     -999.00 -999.00     -999
## 1388        57.29      1.03    -999.00 -999.00     -999.00   12.00       96
## 1389        54.15      1.20       4.00    1.38       19.20 -999.00     -999
## 1390        60.00   -999.00    -999.00 -999.00     -999.00   12.00     -999
## 1391        84.00      0.93       3.55    1.64       34.50   11.62      123
## 1392        94.81      0.93    -999.00 -999.00     -999.00 -999.00     -999
## 1393        44.15      0.97       2.30    1.46     -999.00 -999.00     -999
## 1394        62.10      1.00    -999.00    1.33     -999.00 -999.00     -999
## 1395        88.45      1.03    -999.00 -999.00     -999.00   11.14     -999
## 1396        48.25      0.98       2.62    1.45       19.00   11.73       62
## 1397        85.00      1.14       4.00    1.30     -999.00   11.50     -999
## 1398        58.13      1.05       2.60 -999.00     -999.00   11.00     -999
## 1399        62.80      0.99    -999.00 -999.00     -999.00 -999.00     -999
## 1400        95.70      1.03       3.50    1.17       39.55    5.00       96
## 1401       229.80      1.29       5.00 -999.00     -999.00    4.00     -999
## 1402       194.50      1.22       7.00    2.06       83.75   11.24      120
## 1403      -999.00      2.71    -999.00    3.50     -999.00   22.00      144
## 1404       502.00   -999.00    -999.00    1.75     -999.00    6.00       72
## 1405       588.00      1.54      20.00    1.73     -999.00   11.32       72
## 1406      1880.00      3.00    -999.00 -999.00     -999.00 -999.00     -999
## 1407      3687.50      3.56     105.00    1.00     -999.00   10.94       52
## 1408       283.00      1.65      11.00 -999.00     -999.00 -999.00     -999
## 1409       700.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1410       797.00   -999.00    -999.00    1.02     -999.00 -999.00     -999
## 1411       159.00      1.52      12.94    1.17      100.00    4.53      149
## 1412      -999.00      1.50      10.00    1.17     -999.00 -999.00     -999
## 1413       350.00      1.85      19.98    1.25      104.40 -999.00      138
## 1414        42.50   -999.00      10.00 -999.00     -999.00 -999.00       32
## 1415    479500.00     12.21   27500.00   18.00     -999.00  112.93      876
## 1416   4000000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1417    500000.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1418    387500.00      9.94   28633.33   18.00     -999.00   49.31      528
## 1419    480000.00     10.25   12500.00   24.00    67500.00   36.00      150
## 1420     60000.00      7.08    1734.00    3.37     6250.00   26.00      288
## 1421      3900.00   -999.00    -999.00 -999.00     -999.00 -999.00      144
## 1422      4860.00      5.37     290.00    1.05     -999.00   37.42     -999
## 1423      3770.00      4.63    -999.00    1.25     -999.00    3.53      480
## 1424      2750.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1425      2150.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1426      2020.00      2.18     131.40    1.83     -999.00    9.00      282
## 1427     10150.00   -999.00    -999.00 -999.00     -999.00 -999.00     -999
## 1428      1150.00      3.00    -999.00 -999.00     -999.00 -999.00     -999
## 1429      1500.00      4.00    -999.00 -999.00     -999.00 -999.00     -999
## 1430      1475.00      4.34    -999.00 -999.00     -999.00    9.00     -999
## 1431      4300.00      4.36      66.33    4.50     -999.00   13.33      268
## 1432      4600.00      2.09     105.00    1.02      420.00    9.00      226
## 1433     50000.00      4.00     113.00    1.25     -999.00   10.50      156
## 1434      1225.00      4.75      99.00    1.72     -999.00 -999.00     -999
## 1435      1500.00      2.00     105.00    1.50     -999.00   10.50      108
## 1436      4750.00      9.41     387.25    0.69     -999.00   30.12      385
## 1437      6070.00      8.67     354.77    2.50     -999.00   36.00      333
## 1438      5070.00      8.92    -999.00    5.00     -999.00 -999.00     -999
## 1439     28500.00      6.19    1491.17    1.83     -999.00   39.00      310
## 1440      5030.00      5.22    -999.00 -999.00     -999.00   12.00      114
##      litter_size litters_year
## 1           1.85         1.00
## 2           1.00         0.99
## 3           1.00         0.95
## 4           1.00      -999.00
## 5           1.00      -999.00
## 6           1.37         2.00
## 7           1.00      -999.00
## 8           1.00         1.89
## 9           1.00         1.00
## 10          1.00         1.00
## 11          1.00         0.75
## 12          1.17         0.89
## 13          1.33         1.00
## 14          1.51         1.13
## 15          1.00      -999.00
## 16          1.00         0.50
## 17          1.33         0.50
## 18          1.17         1.00
## 19          1.00      -999.00
## 20          2.00      -999.00
## 21          1.25         0.75
## 22          1.10         1.00
## 23          1.61         1.00
## 24       -999.00      -999.00
## 25       -999.00      -999.00
## 26          1.00      -999.00
## 27          1.00      -999.00
## 28          1.00      -999.00
## 29          1.00      -999.00
## 30          1.00      -999.00
## 31          1.00      -999.00
## 32          1.00      -999.00
## 33          1.00         1.00
## 34          1.00         1.00
## 35          1.01      -999.00
## 36          1.00         1.00
## 37          1.00      -999.00
## 38          1.25      -999.00
## 39          1.00         0.57
## 40       -999.00      -999.00
## 41          1.00      -999.00
## 42          1.00      -999.00
## 43          1.00      -999.00
## 44          1.00      -999.00
## 45          1.00      -999.00
## 46          1.46      -999.00
## 47          1.18         1.00
## 48          1.44         1.00
## 49          1.00         1.50
## 50          1.60         1.50
## 51          1.00      -999.00
## 52          1.03         1.00
## 53          1.00      -999.00
## 54          1.00         1.00
## 55       -999.00      -999.00
## 56          1.00      -999.00
## 57          1.00      -999.00
## 58          1.10         1.10
## 59          1.00         1.30
## 60          1.00      -999.00
## 61          1.00      -999.00
## 62          1.00         2.00
## 63          1.00         2.00
## 64          1.00      -999.00
## 65          1.00         1.00
## 66          1.00         1.00
## 67       -999.00      -999.00
## 68          1.00      -999.00
## 69          1.32         1.00
## 70          1.00      -999.00
## 71          1.00      -999.00
## 72          1.00         1.00
## 73          1.00         1.33
## 74          1.00         1.53
## 75          1.01         0.75
## 76          1.00      -999.00
## 77          1.50      -999.00
## 78          1.18         0.75
## 79          1.06         1.00
## 80          1.20         1.00
## 81          1.35         1.00
## 82          1.00      -999.00
## 83          1.00      -999.00
## 84          1.33      -999.00
## 85          1.50      -999.00
## 86          1.00      -999.00
## 87          1.00      -999.00
## 88          1.00      -999.00
## 89          1.00         1.09
## 90          1.00         0.94
## 91          1.65         1.00
## 92          1.00      -999.00
## 93          1.01         1.38
## 94          1.08         0.40
## 95          1.00      -999.00
## 96          1.00      -999.00
## 97          1.57      -999.00
## 98          1.00      -999.00
## 99          1.00         0.73
## 100         1.00         1.00
## 101         1.00         1.00
## 102         1.00         1.21
## 103         1.00         1.33
## 104         1.00         1.50
## 105         1.00         0.50
## 106         1.00         0.65
## 107         1.00      -999.00
## 108         1.00      -999.00
## 109         1.00         0.50
## 110         1.00         0.67
## 111         1.29         0.77
## 112         1.01      -999.00
## 113         1.03      -999.00
## 114         1.00         1.00
## 115         1.78      -999.00
## 116         2.00         1.00
## 117         1.00      -999.00
## 118         1.07         0.91
## 119         1.00         1.00
## 120         1.00         1.00
## 121         1.00         1.00
## 122         1.01         1.00
## 123         1.02         1.00
## 124         1.14         1.00
## 125         1.00      -999.00
## 126         1.11         1.00
## 127         1.00      -999.00
## 128         1.00      -999.00
## 129         3.32      -999.00
## 130         1.00      -999.00
## 131         1.00      -999.00
## 132         1.00         1.00
## 133         1.33      -999.00
## 134         1.00         1.50
## 135         1.62         0.97
## 136         1.71         1.00
## 137         1.00         1.00
## 138         1.00      -999.00
## 139         1.03      -999.00
## 140         1.20         0.91
## 141         1.12         0.54
## 142         1.00         0.75
## 143         1.00         0.42
## 144         1.00         0.61
## 145         1.00      -999.00
## 146         1.71      -999.00
## 147         1.49         1.00
## 148         1.40         2.00
## 149         4.70      -999.00
## 150         3.53         1.11
## 151         4.33      -999.00
## 152         3.20      -999.00
## 153         4.00      -999.00
## 154         5.76         1.36
## 155         2.42      -999.00
## 156         1.82         2.00
## 157         2.00      -999.00
## 158         1.25         1.00
## 159         1.50      -999.00
## 160         1.00      -999.00
## 161         1.00      -999.00
## 162         8.12         0.92
## 163      -999.00      -999.00
## 164         4.00      -999.00
## 165         4.16      -999.00
## 166         4.51      -999.00
## 167         4.82         0.82
## 168         3.95         1.00
## 169         5.49         1.00
## 170         4.29         2.00
## 171         4.10         1.90
## 172         3.09      -999.00
## 173         4.13      -999.00
## 174         6.99         0.93
## 175         9.46         1.00
## 176         3.74         2.00
## 177         2.50      -999.00
## 178         4.17      -999.00
## 179         4.00         1.00
## 180         4.26         2.00
## 181         4.17         0.98
## 182         2.60         1.00
## 183         2.00      -999.00
## 184         3.25      -999.00
## 185         3.26      -999.00
## 186         3.50      -999.00
## 187         4.00      -999.00
## 188         4.00      -999.00
## 189         4.71      -999.00
## 190         4.34         0.91
## 191         2.45         1.00
## 192         4.44         1.00
## 193         3.04         0.65
## 194         3.08      -999.00
## 195         1.28      -999.00
## 196         3.48         2.00
## 197         4.50         2.00
## 198         3.69         2.02
## 199         1.91         2.50
## 200         2.34         2.00
## 201         1.38      -999.00
## 202         1.50      -999.00
## 203         1.54         0.75
## 204         2.18         2.00
## 205         2.50      -999.00
## 206         2.82         0.94
## 207         2.25         1.00
## 208         3.19         1.00
## 209         2.47      -999.00
## 210         2.50      -999.00
## 211         2.04         1.33
## 212         4.14      -999.00
## 213         2.57         0.40
## 214         2.46         0.50
## 215         2.90         0.66
## 216         2.38         0.83
## 217         2.00      -999.00
## 218         2.12      -999.00
## 219         2.13      -999.00
## 220         2.64      -999.00
## 221         2.00      -999.00
## 222         2.85         0.47
## 223         2.22         1.00
## 224         2.42      -999.00
## 225         1.00      -999.00
## 226         4.00         2.50
## 227         1.67         2.00
## 228         2.60      -999.00
## 229         2.23         2.00
## 230         1.00         1.00
## 231         1.00         1.00
## 232         3.38         2.33
## 233         2.24      -999.00
## 234         2.60      -999.00
## 235         2.91         1.00
## 236         2.33      -999.00
## 237         3.24         1.00
## 238         1.00      -999.00
## 239         2.50      -999.00
## 240         3.63         1.00
## 241         2.00         1.00
## 242         2.61      -999.00
## 243         2.28         0.40
## 244         2.77      -999.00
## 245         1.42         2.00
## 246      -999.00      -999.00
## 247         2.56      -999.00
## 248         3.50      -999.00
## 249         3.00      -999.00
## 250         4.50      -999.00
## 251         3.83         1.50
## 252         1.92      -999.00
## 253         1.00         0.83
## 254         2.00      -999.00
## 255         2.84         0.45
## 256         2.00      -999.00
## 257         2.17         1.00
## 258         2.50      -999.00
## 259         3.25      -999.00
## 260         2.72         0.94
## 261         2.00      -999.00
## 262         2.06         1.00
## 263         5.00      -999.00
## 264         2.50      -999.00
## 265         3.20      -999.00
## 266         3.79      -999.00
## 267         2.73         1.00
## 268         2.92         1.00
## 269         3.80         1.00
## 270         3.11         0.75
## 271         2.33         2.00
## 272         3.00      -999.00
## 273         5.33      -999.00
## 274         5.10         1.21
## 275         3.43      -999.00
## 276         4.50      -999.00
## 277         6.10      -999.00
## 278         7.00      -999.00
## 279         4.76         1.00
## 280         6.22         1.00
## 281         6.77         1.00
## 282         9.41         1.00
## 283         7.68         1.26
## 284         5.37         1.67
## 285         2.20         1.25
## 286         1.94         1.00
## 287         3.67         1.00
## 288         4.73         1.50
## 289         3.07         0.74
## 290         5.76      -999.00
## 291         1.14         0.50
## 292         1.00         0.50
## 293         1.00         1.00
## 294         1.00         1.00
## 295         1.00         1.00
## 296         1.00         1.00
## 297         1.00         1.00
## 298         1.00         1.00
## 299         1.00         0.69
## 300         1.00         1.00
## 301         1.00         1.00
## 302         1.00         1.00
## 303         1.00         0.89
## 304         1.00         1.00
## 305         1.00         1.00
## 306         1.00         0.93
## 307         1.00      -999.00
## 308         1.00      -999.00
## 309         1.00         1.00
## 310         1.00         0.86
## 311         1.00         1.00
## 312         1.00      -999.00
## 313         1.00         0.50
## 314         1.00         1.00
## 315         1.00      -999.00
## 316         1.00      -999.00
## 317         1.00         0.80
## 318         1.00         1.00
## 319         1.00         1.00
## 320         1.00         1.00
## 321         1.01         1.00
## 322         1.00      -999.00
## 323         1.50      -999.00
## 324         2.70         1.00
## 325         3.81      -999.00
## 326         4.17      -999.00
## 327         1.00         1.00
## 328         2.75      -999.00
## 329         3.39         1.00
## 330         1.54         0.70
## 331         2.02         1.00
## 332         1.16      -999.00
## 333         1.69      -999.00
## 334         1.65      -999.00
## 335         1.67      -999.00
## 336         1.66         0.36
## 337         2.36         0.36
## 338         2.54         0.38
## 339         2.63         2.00
## 340         2.50         2.00
## 341         2.00         1.50
## 342         2.26         2.25
## 343         3.00      -999.00
## 344         2.00      -999.00
## 345         1.50      -999.00
## 346         1.00      -999.00
## 347         2.33      -999.00
## 348         2.34         2.00
## 349         2.38         2.00
## 350         2.00      -999.00
## 351         2.00         2.00
## 352         2.39         2.00
## 353         2.50      -999.00
## 354         3.29         2.00
## 355         2.00      -999.00
## 356         2.00      -999.00
## 357         2.60         2.00
## 358         3.88      -999.00
## 359         1.00         0.29
## 360         1.00      -999.00
## 361         1.00         0.29
## 362         1.01         0.36
## 363         1.01         0.41
## 364         1.01         0.45
## 365         1.00         0.50
## 366         1.01         1.00
## 367         1.01         0.50
## 368      -999.00      -999.00
## 369         1.00      -999.00
## 370         1.00         0.42
## 371         1.00         0.42
## 372         1.00      -999.00
## 373         1.00         0.20
## 374         1.00         0.24
## 375      -999.00      -999.00
## 376         1.00      -999.00
## 377         1.00      -999.00
## 378         1.00      -999.00
## 379         1.00         0.40
## 380         1.00         0.42
## 381         1.00      -999.00
## 382         1.00         0.21
## 383      -999.00      -999.00
## 384      -999.00         0.14
## 385         1.00      -999.00
## 386         1.50         0.31
## 387         1.00         0.33
## 388         1.00         0.35
## 389      -999.00      -999.00
## 390         1.00         0.50
## 391         1.00         0.50
## 392         1.02         0.33
## 393         1.00         0.33
## 394         1.00      -999.00
## 395         1.00         0.50
## 396         1.00      -999.00
## 397         1.00      -999.00
## 398         1.00         0.71
## 399         1.00      -999.00
## 400         1.00         1.00
## 401         1.00         0.17
## 402         1.00      -999.00
## 403         1.00         0.50
## 404         1.00      -999.00
## 405         1.00      -999.00
## 406         1.00         0.50
## 407      -999.00      -999.00
## 408      -999.00      -999.00
## 409         1.00         0.75
## 410      -999.00      -999.00
## 411      -999.00      -999.00
## 412         1.00      -999.00
## 413         1.00      -999.00
## 414         1.00      -999.00
## 415         1.00      -999.00
## 416         1.35      -999.00
## 417         1.50      -999.00
## 418         1.94      -999.00
## 419         2.38      -999.00
## 420         2.00      -999.00
## 421      -999.00      -999.00
## 422         2.75      -999.00
## 423         2.00      -999.00
## 424         1.00      -999.00
## 425         5.00      -999.00
## 426         3.81         1.00
## 427         5.40         1.50
## 428         1.80         2.00
## 429         4.50      -999.00
## 430         4.64         1.58
## 431         3.13         1.00
## 432         3.20         1.00
## 433         3.75         1.00
## 434         4.05         1.00
## 435         2.43         2.00
## 436         1.50      -999.00
## 437         1.86         2.00
## 438         4.00      -999.00
## 439         6.50         1.50
## 440         5.73         3.00
## 441         1.50      -999.00
## 442         2.00      -999.00
## 443         2.10      -999.00
## 444         2.80      -999.00
## 445         3.00      -999.00
## 446         3.00      -999.00
## 447         3.50      -999.00
## 448         3.50      -999.00
## 449         3.50      -999.00
## 450         4.72      -999.00
## 451         3.45         2.00
## 452         4.88         3.50
## 453         5.61         3.50
## 454         5.13      -999.00
## 455         5.00      -999.00
## 456         2.95      -999.00
## 457         3.00      -999.00
## 458         4.00      -999.00
## 459         5.53      -999.00
## 460         5.51         1.80
## 461         3.83         2.00
## 462      -999.00      -999.00
## 463         3.50      -999.00
## 464         4.24      -999.00
## 465         4.80      -999.00
## 466         5.00      -999.00
## 467         5.05      -999.00
## 468         6.00      -999.00
## 469         6.22      -999.00
## 470         6.57      -999.00
## 471         5.00         1.00
## 472         5.28         1.00
## 473         5.68         1.33
## 474         4.40         1.50
## 475         5.77         1.50
## 476         7.00         1.50
## 477         6.03         1.90
## 478         5.75         2.00
## 479         6.50         2.00
## 480         5.00         2.50
## 481         5.25         2.50
## 482         5.70         2.50
## 483         2.96      -999.00
## 484         3.30      -999.00
## 485         3.91      -999.00
## 486         1.00      -999.00
## 487         1.50      -999.00
## 488         2.00      -999.00
## 489         4.42         1.00
## 490         3.86         2.00
## 491         3.75         2.00
## 492         2.63      -999.00
## 493         4.38         1.00
## 494         3.61         1.00
## 495         2.86         1.00
## 496         3.25         1.00
## 497         3.58         1.00
## 498         4.35         0.82
## 499         4.09         1.15
## 500         3.53         1.50
## 501         5.01         1.00
## 502         3.90         2.00
## 503         5.02         2.00
## 504         3.00         1.00
## 505         1.99      -999.00
## 506         2.25      -999.00
## 507         4.00      -999.00
## 508         1.63         2.00
## 509         3.04         1.00
## 510        13.89         1.50
## 511         6.00         2.50
## 512         1.00      -999.00
## 513      -999.00         2.50
## 514         1.42      -999.00
## 515         2.20      -999.00
## 516         3.50      -999.00
## 517         3.80      -999.00
## 518         6.30         1.00
## 519         5.03         1.80
## 520         3.96         2.07
## 521         3.28         2.60
## 522         4.32         2.76
## 523         2.58         3.28
## 524         2.21         3.50
## 525         2.93         3.73
## 526         2.82         3.75
## 527         1.58         3.90
## 528         5.54         4.33
## 529         1.50      -999.00
## 530         1.10      -999.00
## 531         1.50      -999.00
## 532         2.00      -999.00
## 533         2.18      -999.00
## 534         3.20         4.50
## 535         2.34      -999.00
## 536         4.75         2.50
## 537         3.14         3.23
## 538         3.64         3.25
## 539         3.63         3.50
## 540         5.13         3.89
## 541         2.97         5.00
## 542         3.52      -999.00
## 543         3.93      -999.00
## 544         4.00         1.50
## 545         3.00         1.75
## 546         6.50         2.00
## 547         3.78         2.11
## 548         2.90         2.17
## 549      -999.00         2.50
## 550         5.60         2.67
## 551         8.41         2.78
## 552         5.75         3.33
## 553      -999.00      -999.00
## 554         1.00      -999.00
## 555         1.60      -999.00
## 556         1.91      -999.00
## 557         2.50         2.00
## 558         1.42         5.25
## 559         1.75         5.50
## 560         1.60      -999.00
## 561         1.17      -999.00
## 562         1.00         4.50
## 563         1.00      -999.00
## 564      -999.00         0.50
## 565         1.00         0.50
## 566         1.00         0.60
## 567         1.00         0.64
## 568         1.00         0.67
## 569         1.00         0.42
## 570         1.00         0.29
## 571         1.00         0.39
## 572         1.00         0.30
## 573         1.00         0.32
## 574         1.00      -999.00
## 575         1.00      -999.00
## 576         1.00         0.50
## 577         1.00         0.71
## 578      -999.00      -999.00
## 579         1.00      -999.00
## 580         1.00      -999.00
## 581         1.00      -999.00
## 582         1.00      -999.00
## 583         1.05      -999.00
## 584         1.00         1.00
## 585         1.00         1.17
## 586      -999.00      -999.00
## 587         1.87      -999.00
## 588         1.98      -999.00
## 589         2.00      -999.00
## 590         2.00      -999.00
## 591         2.24         2.00
## 592         1.95         1.75
## 593      -999.00      -999.00
## 594      -999.00      -999.00
## 595         1.50      -999.00
## 596         1.66      -999.00
## 597         1.89      -999.00
## 598         1.97      -999.00
## 599         1.80         1.00
## 600         1.92         1.00
## 601         1.91         1.20
## 602         1.80         1.36
## 603         1.00      -999.00
## 604         1.20      -999.00
## 605         1.00         0.60
## 606         1.00         0.98
## 607         1.12      -999.00
## 608         1.00         1.00
## 609         1.00         1.00
## 610         1.00      -999.00
## 611         1.00         0.32
## 612         1.00         0.50
## 613         1.00         0.50
## 614         1.00         0.34
## 615         1.00         0.50
## 616         1.00      -999.00
## 617         1.00         0.93
## 618         1.17         1.00
## 619         1.00      -999.00
## 620         1.00         0.46
## 621         1.00         0.55
## 622         1.00         0.67
## 623         1.00      -999.00
## 624         1.00      -999.00
## 625         1.00         0.50
## 626         1.00      -999.00
## 627         1.00      -999.00
## 628         1.00      -999.00
## 629         1.00         1.33
## 630         1.00      -999.00
## 631         1.00      -999.00
## 632         1.00      -999.00
## 633      -999.00      -999.00
## 634         1.00      -999.00
## 635         1.00      -999.00
## 636         1.00      -999.00
## 637         1.00      -999.00
## 638         1.00      -999.00
## 639         1.00      -999.00
## 640         1.00      -999.00
## 641         1.00      -999.00
## 642         1.00         0.50
## 643         1.00         0.67
## 644         1.00         1.00
## 645         1.00         1.00
## 646         1.00         1.00
## 647         1.00      -999.00
## 648         1.00      -999.00
## 649         1.00         0.55
## 650         1.00         0.59
## 651         1.00         0.97
## 652         1.00         0.36
## 653         1.00         0.50
## 654         1.33         0.50
## 655         1.00         0.55
## 656         1.50         0.55
## 657         1.00         0.61
## 658         1.00         0.67
## 659         1.00         0.69
## 660         1.00         0.70
## 661         1.00         0.75
## 662         1.00         0.80
## 663         1.00         0.85
## 664         1.00         0.93
## 665         1.00         1.00
## 666         1.00      -999.00
## 667         1.07         0.83
## 668         1.00         1.00
## 669         1.00         0.67
## 670         1.00         0.80
## 671         1.00      -999.00
## 672         1.00      -999.00
## 673         1.00      -999.00
## 674         1.00      -999.00
## 675         1.00      -999.00
## 676         1.00      -999.00
## 677      -999.00      -999.00
## 678         1.00      -999.00
## 679         1.14         0.67
## 680         1.00         0.50
## 681      -999.00      -999.00
## 682         1.00      -999.00
## 683         1.00      -999.00
## 684         1.00      -999.00
## 685         1.00         0.37
## 686         1.00         0.50
## 687         1.00         0.80
## 688         2.25      -999.00
## 689         2.14         1.00
## 690         2.50      -999.00
## 691         1.70         1.00
## 692         2.41         1.00
## 693         1.00      -999.00
## 694         1.00         1.04
## 695      -999.00      -999.00
## 696         1.15      -999.00
## 697         1.00         2.00
## 698         1.59         2.00
## 699         1.57         1.00
## 700         1.32         2.00
## 701         1.57         1.00
## 702         1.00         1.36
## 703         1.01         0.26
## 704         1.10         0.20
## 705         1.00         0.22
## 706         1.21         0.22
## 707         1.00      -999.00
## 708         1.00      -999.00
## 709         1.00      -999.00
## 710         1.00      -999.00
## 711         1.00      -999.00
## 712         1.17         0.36
## 713         1.00         0.45
## 714         1.00         1.00
## 715         1.00         0.40
## 716      -999.00      -999.00
## 717      -999.00         0.48
## 718         1.17         1.00
## 719         1.00      -999.00
## 720         1.06         1.00
## 721         1.21         1.00
## 722         1.32         1.00
## 723         1.08         2.00
## 724      -999.00         1.00
## 725         1.20         1.09
## 726         1.11         0.93
## 727         2.23         1.00
## 728         1.00         1.50
## 729         1.37         1.50
## 730         2.00      -999.00
## 731         1.07         1.00
## 732         1.03         1.00
## 733      -999.00      -999.00
## 734      -999.00      -999.00
## 735         1.00         1.00
## 736         1.00      -999.00
## 737         1.00      -999.00
## 738         1.00      -999.00
## 739         1.00         1.49
## 740         1.00         2.38
## 741         1.00         0.23
## 742         1.02         0.21
## 743         1.80      -999.00
## 744         3.00         2.00
## 745         1.26         1.50
## 746         1.00      -999.00
## 747         1.17         2.00
## 748         2.00         2.00
## 749         1.00      -999.00
## 750         3.14         1.00
## 751         3.13         1.50
## 752         3.50         1.50
## 753         2.50         1.00
## 754         2.86         1.50
## 755      -999.00         2.00
## 756         5.95         2.00
## 757         2.60         1.25
## 758         8.95         3.50
## 759         2.08      -999.00
## 760         1.00      -999.00
## 761         1.80         2.00
## 762         1.75      -999.00
## 763         2.00      -999.00
## 764         1.22      -999.00
## 765         3.16      -999.00
## 766         3.56         1.00
## 767         1.90      -999.00
## 768         2.48      -999.00
## 769         4.30      -999.00
## 770         1.25      -999.00
## 771         1.71         3.50
## 772         2.40      -999.00
## 773         2.63      -999.00
## 774         1.57      -999.00
## 775         2.36         4.00
## 776         1.45         1.50
## 777         1.62         2.00
## 778         1.50      -999.00
## 779         1.00         2.00
## 780         2.05         1.75
## 781         2.00      -999.00
## 782         1.85         1.00
## 783         2.00      -999.00
## 784         2.50      -999.00
## 785         2.60      -999.00
## 786         3.00      -999.00
## 787         4.25      -999.00
## 788         2.00         1.00
## 789         1.64      -999.00
## 790         2.00      -999.00
## 791         2.10      -999.00
## 792         1.75      -999.00
## 793         1.85      -999.00
## 794      -999.00      -999.00
## 795         5.00      -999.00
## 796      -999.00         1.00
## 797         4.55         2.00
## 798         3.38         2.00
## 799      -999.00         1.00
## 800         2.50      -999.00
## 801         4.33         1.50
## 802         4.50         3.00
## 803         4.42         1.33
## 804         6.00      -999.00
## 805         3.00         2.00
## 806         2.57         2.00
## 807         3.50         1.00
## 808         4.86         1.00
## 809         3.00         1.00
## 810         4.89         0.90
## 811         5.50         1.00
## 812         5.17         2.07
## 813         2.00      -999.00
## 814         2.10      -999.00
## 815         1.00      -999.00
## 816         1.33      -999.00
## 817         2.40      -999.00
## 818         2.67         4.04
## 819         2.83         4.40
## 820         3.15         2.50
## 821         1.00      -999.00
## 822         1.00         1.00
## 823         1.00      -999.00
## 824         1.00      -999.00
## 825         3.39         1.00
## 826         1.86         1.73
## 827         3.30         2.00
## 828         5.00         2.00
## 829         2.00      -999.00
## 830         2.50         2.00
## 831         2.00      -999.00
## 832         6.50      -999.00
## 833         3.50         1.00
## 834         3.90         1.00
## 835         5.09         1.13
## 836         5.70         1.25
## 837         4.33         1.50
## 838         5.67         2.00
## 839         3.68      -999.00
## 840         3.69      -999.00
## 841         4.00      -999.00
## 842         4.50      -999.00
## 843      -999.00         1.00
## 844         5.53         1.00
## 845         4.90         1.75
## 846         2.00      -999.00
## 847         2.27      -999.00
## 848         3.50      -999.00
## 849         2.40         1.00
## 850         2.55         1.00
## 851         2.62         1.50
## 852         3.00         1.50
## 853         2.30         1.63
## 854         2.65         2.00
## 855         2.75         2.00
## 856         2.75         2.00
## 857         3.12         2.00
## 858         3.30         2.00
## 859         3.29         2.42
## 860         2.00      -999.00
## 861         4.00      -999.00
## 862      -999.00         3.50
## 863         3.31         5.00
## 864         3.50      -999.00
## 865         4.00      -999.00
## 866         3.20         1.44
## 867         3.43         1.80
## 868         3.90      -999.00
## 869         3.90      -999.00
## 870         4.50         1.00
## 871         4.33         1.33
## 872         4.43         1.33
## 873         4.75         1.50
## 874         4.77         1.60
## 875         4.50         2.00
## 876         4.67         2.00
## 877         3.48         1.25
## 878         1.67      -999.00
## 879         1.50         2.50
## 880      -999.00      -999.00
## 881      -999.00      -999.00
## 882         2.00      -999.00
## 883         2.43      -999.00
## 884         2.10         1.67
## 885      -999.00      -999.00
## 886         2.50      -999.00
## 887      -999.00         3.50
## 888         2.47         3.50
## 889         1.68      -999.00
## 890         2.80      -999.00
## 891         3.60      -999.00
## 892         3.75         2.00
## 893         3.00      -999.00
## 894         3.00      -999.00
## 895         3.50      -999.00
## 896         3.78      -999.00
## 897         3.90      -999.00
## 898         4.05         1.00
## 899         3.70         2.50
## 900         5.50         2.50
## 901         5.00         3.60
## 902      -999.00         2.00
## 903         4.30      -999.00
## 904         7.70         2.20
## 905         3.60         2.50
## 906         4.12      -999.00
## 907         4.67      -999.00
## 908         6.40      -999.00
## 909         2.84         2.00
## 910         5.54         2.80
## 911         5.72         3.17
## 912         5.18         3.83
## 913         1.50      -999.00
## 914         2.57      -999.00
## 915         2.80      -999.00
## 916         5.03         3.50
## 917         5.00      -999.00
## 918         5.08         3.22
## 919      -999.00      -999.00
## 920         2.67      -999.00
## 921         7.44      -999.00
## 922         7.96         5.90
## 923         4.26      -999.00
## 924         4.17      -999.00
## 925         4.15      -999.00
## 926         4.65      -999.00
## 927         5.00      -999.00
## 928         5.06      -999.00
## 929         5.40      -999.00
## 930         3.33         1.00
## 931      -999.00         2.00
## 932         1.75      -999.00
## 933         2.67         2.00
## 934      -999.00         2.50
## 935         2.17      -999.00
## 936         1.00      -999.00
## 937         5.04         2.71
## 938         4.13         2.84
## 939         4.29         3.17
## 940         3.30         3.30
## 941         7.00         3.80
## 942         2.00      -999.00
## 943         2.00      -999.00
## 944         2.50      -999.00
## 945         4.67      -999.00
## 946         3.33         4.33
## 947         5.33      -999.00
## 948         4.10         2.00
## 949         7.73         2.00
## 950         2.50      -999.00
## 951         3.00      -999.00
## 952         3.50      -999.00
## 953         4.29      -999.00
## 954         4.44      -999.00
## 955         4.56      -999.00
## 956         2.75      -999.00
## 957         2.53      -999.00
## 958         3.29      -999.00
## 959         2.80      -999.00
## 960         3.50      -999.00
## 961      -999.00         1.50
## 962         4.07         2.00
## 963         3.27         2.50
## 964         2.50         1.50
## 965         4.00      -999.00
## 966         3.67      -999.00
## 967         3.60         4.75
## 968         7.50         3.50
## 969         3.00      -999.00
## 970         3.63      -999.00
## 971         4.40      -999.00
## 972         3.50      -999.00
## 973         3.90      -999.00
## 974         4.00      -999.00
## 975         4.10      -999.00
## 976         4.40      -999.00
## 977         4.46      -999.00
## 978         4.68      -999.00
## 979         8.00      -999.00
## 980         5.00         3.00
## 981         3.47         5.00
## 982         3.50      -999.00
## 983         1.00      -999.00
## 984         2.74      -999.00
## 985      -999.00         3.00
## 986         7.05      -999.00
## 987         2.00      -999.00
## 988         3.00      -999.00
## 989         2.50      -999.00
## 990         3.80         2.12
## 991         3.00      -999.00
## 992         3.13      -999.00
## 993         1.00      -999.00
## 994      -999.00         2.50
## 995         1.67         2.50
## 996         1.00      -999.00
## 997         4.50         5.00
## 998         6.00         2.67
## 999         3.00      -999.00
## 1000        3.50      -999.00
## 1001        6.11         3.00
## 1002        5.12         2.50
## 1003        5.15         3.00
## 1004        3.25      -999.00
## 1005        4.54         2.00
## 1006        2.17      -999.00
## 1007        2.00      -999.00
## 1008        1.50      -999.00
## 1009        2.00      -999.00
## 1010        2.31      -999.00
## 1011        3.50      -999.00
## 1012        2.48      -999.00
## 1013        4.10      -999.00
## 1014        6.50      -999.00
## 1015       14.18         2.00
## 1016        2.70      -999.00
## 1017        1.50      -999.00
## 1018        2.00      -999.00
## 1019        2.00      -999.00
## 1020        2.00      -999.00
## 1021        2.00      -999.00
## 1022        2.00      -999.00
## 1023        2.40      -999.00
## 1024        2.50         1.30
## 1025        4.33      -999.00
## 1026        4.60      -999.00
## 1027        4.97      -999.00
## 1028        5.41      -999.00
## 1029        7.00      -999.00
## 1030        3.83         2.00
## 1031        4.21         2.00
## 1032        5.56         3.00
## 1033        4.46         3.50
## 1034        4.89         3.84
## 1035        2.00      -999.00
## 1036        1.96         4.00
## 1037        6.49      -999.00
## 1038     -999.00         2.00
## 1039        8.59         3.75
## 1040        5.15         2.60
## 1041        2.00      -999.00
## 1042        2.10      -999.00
## 1043        2.53      -999.00
## 1044        2.57      -999.00
## 1045        2.72      -999.00
## 1046        3.53      -999.00
## 1047        3.98      -999.00
## 1048        4.30      -999.00
## 1049        5.28      -999.00
## 1050        5.96      -999.00
## 1051        5.22         1.90
## 1052        3.56         2.00
## 1053        4.33         2.00
## 1054        5.80         2.00
## 1055        8.25         2.00
## 1056        4.96         2.58
## 1057        2.89         2.74
## 1058     -999.00         3.00
## 1059        5.96         3.33
## 1060        5.76         3.38
## 1061        4.42         3.61
## 1062        2.68         4.00
## 1063        3.80         4.00
## 1064        3.28         4.40
## 1065        4.82         4.50
## 1066        4.54         4.83
## 1067        4.96         5.00
## 1068        5.11         5.50
## 1069        5.00         6.00
## 1070        5.62         4.50
## 1071     -999.00      -999.00
## 1072     -999.00      -999.00
## 1073        3.00      -999.00
## 1074        4.13      -999.00
## 1075        4.50      -999.00
## 1076        5.70      -999.00
## 1077        6.72      -999.00
## 1078        6.00         3.00
## 1079        3.83         4.00
## 1080        6.07         4.57
## 1081        3.00      -999.00
## 1082        3.50      -999.00
## 1083        5.64      -999.00
## 1084        4.63         2.00
## 1085        3.00         1.00
## 1086        3.18      -999.00
## 1087        3.50         1.00
## 1088        3.80         6.10
## 1089        4.13      -999.00
## 1090        4.50      -999.00
## 1091        2.34         4.53
## 1092        2.10      -999.00
## 1093        2.65         1.17
## 1094        1.08         1.95
## 1095        3.68         2.00
## 1096        2.00         2.00
## 1097        2.10         2.00
## 1098        2.15         2.00
## 1099        2.92         2.00
## 1100        2.51         2.40
## 1101        3.10         2.50
## 1102        3.25         2.00
## 1103        4.09      -999.00
## 1104     -999.00      -999.00
## 1105        2.83      -999.00
## 1106        2.90      -999.00
## 1107        3.00      -999.00
## 1108        3.27      -999.00
## 1109        3.89      -999.00
## 1110        2.00      -999.00
## 1111        2.55      -999.00
## 1112        3.60         4.20
## 1113        3.92      -999.00
## 1114        3.30      -999.00
## 1115        3.40      -999.00
## 1116        4.00      -999.00
## 1117        6.28         2.68
## 1118        3.63         2.50
## 1119        3.58         2.60
## 1120        4.80      -999.00
## 1121        3.77         5.50
## 1122        3.33         5.93
## 1123        1.44      -999.00
## 1124        1.50      -999.00
## 1125        1.79      -999.00
## 1126        2.92      -999.00
## 1127        1.78         4.25
## 1128        2.30      -999.00
## 1129        3.02      -999.00
## 1130        4.06      -999.00
## 1131     -999.00      -999.00
## 1132        2.50      -999.00
## 1133        2.67      -999.00
## 1134     -999.00      -999.00
## 1135        1.80      -999.00
## 1136        1.90      -999.00
## 1137        2.27      -999.00
## 1138        2.40      -999.00
## 1139        2.60      -999.00
## 1140        2.95      -999.00
## 1141        3.00      -999.00
## 1142        3.00      -999.00
## 1143        3.19      -999.00
## 1144        3.50      -999.00
## 1145        3.60      -999.00
## 1146        3.90      -999.00
## 1147        4.00      -999.00
## 1148        5.00      -999.00
## 1149     -999.00         2.00
## 1150        3.08         2.05
## 1151        3.60         2.70
## 1152        3.50         3.40
## 1153        4.73         3.40
## 1154        2.63         3.50
## 1155        4.42         3.90
## 1156        2.02         4.56
## 1157        4.26         7.50
## 1158        2.56         1.00
## 1159        4.90      -999.00
## 1160        4.58         2.30
## 1161     -999.00         3.50
## 1162        5.00         3.50
## 1163        6.00         3.50
## 1164     -999.00      -999.00
## 1165        2.00      -999.00
## 1166        2.74      -999.00
## 1167        1.00      -999.00
## 1168        1.67      -999.00
## 1169        1.67      -999.00
## 1170        2.33      -999.00
## 1171        3.20      -999.00
## 1172        3.33      -999.00
## 1173        3.50      -999.00
## 1174        6.00      -999.00
## 1175        3.53      -999.00
## 1176        1.78      -999.00
## 1177        2.50      -999.00
## 1178        2.75      -999.00
## 1179        3.00      -999.00
## 1180        3.00      -999.00
## 1181        3.00      -999.00
## 1182        3.00      -999.00
## 1183        3.00      -999.00
## 1184        3.15      -999.00
## 1185        3.50      -999.00
## 1186        3.50      -999.00
## 1187        3.00         1.00
## 1188        4.27         1.00
## 1189        3.20         1.50
## 1190        3.50         1.50
## 1191        4.50         3.00
## 1192        3.67         3.50
## 1193     -999.00      -999.00
## 1194     -999.00      -999.00
## 1195        3.35      -999.00
## 1196        3.50      -999.00
## 1197        4.00      -999.00
## 1198        5.00      -999.00
## 1199        5.75      -999.00
## 1200        6.00      -999.00
## 1201        6.94      -999.00
## 1202        4.91         2.53
## 1203        4.08         3.30
## 1204        3.63         3.37
## 1205        8.72         3.68
## 1206        5.95         4.28
## 1207        4.53      -999.00
## 1208        2.90      -999.00
## 1209        3.32      -999.00
## 1210        4.14      -999.00
## 1211        3.85         1.00
## 1212        3.10         2.00
## 1213        6.56         4.00
## 1214        2.00      -999.00
## 1215        3.80         3.50
## 1216     -999.00      -999.00
## 1217     -999.00      -999.00
## 1218        5.76         2.50
## 1219        6.99      -999.00
## 1220        2.79      -999.00
## 1221        3.03      -999.00
## 1222        2.85      -999.00
## 1223     -999.00      -999.00
## 1224        3.75      -999.00
## 1225        5.00      -999.00
## 1226        5.58         2.00
## 1227        5.00         5.00
## 1228        2.61         1.00
## 1229        4.40      -999.00
## 1230        4.67      -999.00
## 1231        3.00      -999.00
## 1232        3.80      -999.00
## 1233        3.34         2.50
## 1234        4.40         2.50
## 1235        1.50      -999.00
## 1236        1.44         2.07
## 1237     -999.00      -999.00
## 1238     -999.00      -999.00
## 1239        4.54      -999.00
## 1240        5.15      -999.00
## 1241        4.33         2.00
## 1242        2.83         4.00
## 1243        5.42         4.17
## 1244     -999.00         5.00
## 1245     -999.00         6.50
## 1246        3.50      -999.00
## 1247        4.00      -999.00
## 1248        4.50      -999.00
## 1249        3.00      -999.00
## 1250     -999.00      -999.00
## 1251        2.36      -999.00
## 1252        3.58      -999.00
## 1253        2.06      -999.00
## 1254        4.00      -999.00
## 1255        3.80      -999.00
## 1256        4.68      -999.00
## 1257        4.32         5.50
## 1258        2.50      -999.00
## 1259        2.50      -999.00
## 1260     -999.00         0.75
## 1261        4.88         2.32
## 1262     -999.00         1.00
## 1263        3.33         1.21
## 1264        4.89         1.21
## 1265        4.00         1.50
## 1266        2.00      -999.00
## 1267        3.00         2.00
## 1268        5.00         4.00
## 1269        4.33         1.50
## 1270        4.73         1.19
## 1271        5.28         1.75
## 1272        2.03      -999.00
## 1273        2.35         1.75
## 1274        1.00         3.60
## 1275        1.88         1.00
## 1276        6.75         1.00
## 1277        8.00         1.00
## 1278        9.50         1.00
## 1279        8.61         1.33
## 1280        1.80      -999.00
## 1281        2.20      -999.00
## 1282        2.20      -999.00
## 1283        3.07      -999.00
## 1284        4.00         1.00
## 1285        4.27         1.00
## 1286        4.95         1.00
## 1287        5.67         1.00
## 1288        6.00         1.00
## 1289        3.50      -999.00
## 1290        2.00      -999.00
## 1291        2.50      -999.00
## 1292        2.00      -999.00
## 1293        2.58      -999.00
## 1294        3.50         2.67
## 1295        1.50      -999.00
## 1296        1.80      -999.00
## 1297        1.80      -999.00
## 1298        2.00         2.00
## 1299        3.33         1.00
## 1300        3.17         1.33
## 1301        2.80      -999.00
## 1302        2.33      -999.00
## 1303        3.40         2.00
## 1304        2.38      -999.00
## 1305        3.00      -999.00
## 1306        5.50      -999.00
## 1307        3.33         0.50
## 1308        4.00         0.50
## 1309        4.20         0.50
## 1310        4.83         0.83
## 1311        4.40         0.94
## 1312     -999.00         1.00
## 1313        4.38         1.00
## 1314        4.50         1.00
## 1315        4.50         1.00
## 1316        4.73         1.00
## 1317        6.00         1.00
## 1318        2.00      -999.00
## 1319        1.33      -999.00
## 1320        1.43      -999.00
## 1321        2.50      -999.00
## 1322        1.58         1.00
## 1323        1.97         2.00
## 1324     -999.00      -999.00
## 1325        1.00      -999.00
## 1326        1.00      -999.00
## 1327        1.00      -999.00
## 1328        2.00      -999.00
## 1329        1.00      -999.00
## 1330        1.50      -999.00
## 1331        2.00      -999.00
## 1332        2.00      -999.00
## 1333        2.60         1.50
## 1334        1.00      -999.00
## 1335        3.33         1.50
## 1336        1.80         2.00
## 1337        1.43      -999.00
## 1338        2.00      -999.00
## 1339        2.00      -999.00
## 1340        3.00      -999.00
## 1341        3.00      -999.00
## 1342        3.05         1.00
## 1343        3.70         1.11
## 1344        3.52         1.50
## 1345        2.71         1.64
## 1346        3.46         1.83
## 1347        1.93         1.95
## 1348        5.10         2.22
## 1349        4.42         1.00
## 1350     -999.00      -999.00
## 1351        6.30      -999.00
## 1352        6.80      -999.00
## 1353     -999.00         0.91
## 1354        5.12         0.94
## 1355        5.23         0.94
## 1356        5.73         0.96
## 1357     -999.00         1.00
## 1358     -999.00         1.00
## 1359     -999.00         1.00
## 1360     -999.00         1.00
## 1361     -999.00         1.00
## 1362        2.50         1.00
## 1363        3.43         1.00
## 1364        4.16         1.00
## 1365        4.27         1.00
## 1366        5.00         1.00
## 1367        5.35         1.00
## 1368        5.40         1.00
## 1369        5.50         1.00
## 1370        5.66         1.00
## 1371        6.00         1.00
## 1372        6.00         1.00
## 1373        6.06         1.00
## 1374        7.52         1.00
## 1375        7.92         1.00
## 1376        9.00         1.00
## 1377        7.02         1.17
## 1378        6.00         1.33
## 1379        4.27         1.50
## 1380        5.92         1.75
## 1381        2.50      -999.00
## 1382        3.00      -999.00
## 1383        3.50      -999.00
## 1384        3.68      -999.00
## 1385        5.00      -999.00
## 1386        4.00         1.00
## 1387        4.00         1.00
## 1388        4.06         1.00
## 1389        4.10         1.00
## 1390        4.15         1.00
## 1391        4.33         1.00
## 1392        4.50         1.00
## 1393        4.94         1.00
## 1394        4.95         1.00
## 1395        5.10         1.00
## 1396        5.19         1.00
## 1397        4.85         1.14
## 1398        4.42         1.50
## 1399        5.16         1.50
## 1400        4.22         1.53
## 1401        9.78         1.50
## 1402        4.20         1.67
## 1403        1.55      -999.00
## 1404        3.75      -999.00
## 1405        2.18         1.00
## 1406     -999.00         2.00
## 1407        3.83         2.33
## 1408        1.50      -999.00
## 1409        1.98      -999.00
## 1410        2.17      -999.00
## 1411        2.44      -999.00
## 1412        2.00         7.50
## 1413        1.63      -999.00
## 1414        2.00      -999.00
## 1415        1.00         0.22
## 1416        1.00      -999.00
## 1417        1.00      -999.00
## 1418        1.00         0.37
## 1419        1.00         0.50
## 1420        1.03         1.00
## 1421        1.00      -999.00
## 1422        1.00         1.00
## 1423        1.00         1.00
## 1424        1.00      -999.00
## 1425        1.50      -999.00
## 1426        1.65         1.00
## 1427        2.00      -999.00
## 1428        4.00      -999.00
## 1429        4.00      -999.00
## 1430        6.00      -999.00
## 1431        4.00         1.00
## 1432        1.75      -999.00
## 1433        1.50      -999.00
## 1434        1.00         1.00
## 1435        2.00      -999.00
## 1436        1.00         0.70
## 1437        1.50         1.00
## 1438        1.00      -999.00
## 1439        1.00         1.17
## 1440        1.00         1.35
```

## `if_else()` 
Allows us to use `mutate()` but not have the entire column affected in the same way.
First specify a logical statement, afterwards what needs to happen if the statement returns `TRUE`, and lastly what needs to happen if it's  `FALSE`.  

```r
mammals %>% 
  select(genus, species, newborn) %>%
  mutate(newborn_new = ifelse(newborn == -999.00, NA, newborn))%>% 
  arrange(newborn) # Replaces -999 with NA, if anything else it keeps newborn value
```

```
##                 genus           species    newborn newborn_new
## 1          Ammodorcas           clarkei    -999.00          NA
## 2                 Bos         javanicus    -999.00          NA
## 3             Bubalus    depressicornis    -999.00          NA
## 4             Bubalus       mindorensis    -999.00          NA
## 5               Capra         falconeri    -999.00          NA
## 6         Cephalophus             niger    -999.00          NA
## 7         Cephalophus        nigrifrons    -999.00          NA
## 8         Cephalophus        natalensis    -999.00          NA
## 9         Cephalophus       leucogaster    -999.00          NA
## 10        Cephalophus           ogilbyi    -999.00          NA
## 11            Gazella     soemmerringii    -999.00          NA
## 12            Gazella         rufifrons    -999.00          NA
## 13            Gazella              dama    -999.00          NA
## 14            Gazella           cuvieri    -999.00          NA
## 15            Gazella           gazella    -999.00          NA
## 16         Hemitragus         hylocrius    -999.00          NA
## 17              Kobus         megaceros    -999.00          NA
## 18              Kobus          vardonii    -999.00          NA
## 19        Litocranius           walleri    -999.00          NA
## 20        Naemorhedus      sumatraensis    -999.00          NA
## 21          Neotragus         moschatus    -999.00          NA
## 22               Oryx          leucoryx    -999.00          NA
## 23               Ovis          nivicola    -999.00          NA
## 24               Ovis            vignei    -999.00          NA
## 25         Pantholops         hodgsonii    -999.00          NA
## 26              Pelea         capreolus    -999.00          NA
## 27           Pseudois            nayaur    -999.00          NA
## 28            Redunca           redunca    -999.00          NA
## 29        Taurotragus         derbianus    -999.00          NA
## 30        Tragelaphus           buxtoni    -999.00          NA
## 31             Cervus        duvaucelii    -999.00          NA
## 32             Cervus       albirostris    -999.00          NA
## 33             Cervus        timorensis    -999.00          NA
## 34          Elaphodus       cephalophus    -999.00          NA
## 35       Hippocamelus          bisulcus    -999.00          NA
## 36       Hippocamelus        antisensis    -999.00          NA
## 37             Mazama            rufina    -999.00          NA
## 38                Sus          barbatus    -999.00          NA
## 39         Hyemoschus         aquaticus    -999.00          NA
## 40         Atelocynus          microtis    -999.00          NA
## 41              Canis          simensis    -999.00          NA
## 42              Canis             rufus    -999.00          NA
## 43              Canis           adustus    -999.00          NA
## 44        Pseudalopex       gymnocercus    -999.00          NA
## 45        Pseudalopex           griseus    -999.00          NA
## 46        Pseudalopex          culpaeus    -999.00          NA
## 47            Urocyon        littoralis    -999.00          NA
## 48             Vulpes             chama    -999.00          NA
## 49             Vulpes         rueppelli    -999.00          NA
## 50             Vulpes         ferrilata    -999.00          NA
## 51             Vulpes           pallida    -999.00          NA
## 52        Herpailurus        yaguarondi    -999.00          NA
## 53          Leopardus          tigrinus    -999.00          NA
## 54               Lynx          pardinus    -999.00          NA
## 55          Oncifelis          colocolo    -999.00          NA
## 56       Prionailurus       rubiginosus    -999.00          NA
## 57           Bdeogale       crassicauda    -999.00          NA
## 58        Crossarchus          obscurus    -999.00          NA
## 59           Cynictis       penicillata    -999.00          NA
## 60          Galerella      pulverulenta    -999.00          NA
## 61          Galerella         sanguinea    -999.00          NA
## 62         Galidictis          fasciata    -999.00          NA
## 63           Helogale           parvula    -999.00          NA
## 64          Herpestes         edwardsii    -999.00          NA
## 65          Herpestes         ichneumon    -999.00          NA
## 66          Ichneumia         albicauda    -999.00          NA
## 67       Paracynictis           selousi    -999.00          NA
## 68           Proteles         cristatus    -999.00          NA
## 69              Aonyx          congicus    -999.00          NA
## 70          Conepatus        leuconotus    -999.00          NA
## 71          Conepatus      semistriatus    -999.00          NA
## 72          Conepatus        mesoleucus    -999.00          NA
## 73           Galictis           vittata    -999.00          NA
## 74             Lontra       longicaudis    -999.00          NA
## 75             Lontra            felina    -999.00          NA
## 76              Lutra      maculicollis    -999.00          NA
## 77              Lutra             lutra    -999.00          NA
## 78          Lutrogale     perspicillata    -999.00          NA
## 79             Martes         flavigula    -999.00          NA
## 80             Martes             foina    -999.00          NA
## 81           Melogale         personata    -999.00          NA
## 82           Mephitis          macroura    -999.00          NA
## 83            Mustela          nigripes    -999.00          NA
## 84            Mustela           altaica    -999.00          NA
## 85            Mustela          sibirica    -999.00          NA
## 86            Vormela         peregusna    -999.00          NA
## 87        Bassariscus       sumichrasti    -999.00          NA
## 88            Procyon       cancrivorus    -999.00          NA
## 89           Melursus           ursinus    -999.00          NA
## 90       Arctogalidia        trivirgata    -999.00          NA
## 91           Cynogale         bennettii    -999.00          NA
## 92            Genetta          maculata    -999.00          NA
## 93           Nandinia          binotata    -999.00          NA
## 94             Paguma           larvata    -999.00          NA
## 95        Paradoxurus       zeylonensis    -999.00          NA
## 96          Prionodon        pardicolor    -999.00          NA
## 97            Viverra           zibetha    -999.00          NA
## 98        Viverricula            indica    -999.00          NA
## 99            Balaena        mysticetus    -999.00          NA
## 100         Eubalaena         australis    -999.00          NA
## 101         Eubalaena         glacialis    -999.00          NA
## 102      Balaenoptera             edeni    -999.00          NA
## 103      Balaenoptera     acutorostrata    -999.00          NA
## 104   Cephalorhynchus           hectori    -999.00          NA
## 105            Feresa         attenuata    -999.00          NA
## 106           Grampus           griseus    -999.00          NA
## 107     Lagenodelphis             hosei    -999.00          NA
## 108    Lagenorhynchus       albirostris    -999.00          NA
## 109    Lagenorhynchus       obliquidens    -999.00          NA
## 110    Lagenorhynchus          obscurus    -999.00          NA
## 111     Peponocephala           electra    -999.00          NA
## 112         Pseudorca        crassidens    -999.00          NA
## 113           Sotalia       fluviatilis    -999.00          NA
## 114          Stenella      longirostris    -999.00          NA
## 115          Stenella         attenuata    -999.00          NA
## 116             Steno       bredanensis    -999.00          NA
## 117           Caperea         marginata    -999.00          NA
## 118          Phocoena             sinus    -999.00          NA
## 119      Phocoenoides             dalli    -999.00          NA
## 120             Kogia             simus    -999.00          NA
## 121           Lipotes        vexillifer    -999.00          NA
## 122        Platanista         gangetica    -999.00          NA
## 123         Berardius           arnuxii    -999.00          NA
## 124         Berardius           bairdii    -999.00          NA
## 125        Hyperoodon        ampullatus    -999.00          NA
## 126        Mesoplodon        carlhubbsi    -999.00          NA
## 127        Mesoplodon      densirostris    -999.00          NA
## 128        Mesoplodon            bidens    -999.00          NA
## 129           Ziphius       cavirostris    -999.00          NA
## 130      Cynocephalus        variegatus    -999.00          NA
## 131       Dendrohyrax          arboreus    -999.00          NA
## 132     Chrysochloris        stuhlmanni    -999.00          NA
## 133     Chrysochloris          asiatica    -999.00          NA
## 134      Chrysospalax          villosus    -999.00          NA
## 135        Eremitalpa            granti    -999.00          NA
## 136          Atelerix           algirus    -999.00          NA
## 137       Hemiechinus         hypomelas    -999.00          NA
## 138           Hylomys           suillus    -999.00          NA
## 139         Solenodon           cubanus    -999.00          NA
## 140           Blarina      carolinensis    -999.00          NA
## 141           Blarina         hylophaga    -999.00          NA
## 142         Crocidura        fuliginosa    -999.00          NA
## 143         Crocidura             turba    -999.00          NA
## 144         Crocidura         planiceps    -999.00          NA
## 145         Crocidura           crossei    -999.00          NA
## 146         Crocidura       mariquensis    -999.00          NA
## 147      Diplomesodon        pulchellum    -999.00          NA
## 148          Myosorex             cafer    -999.00          NA
## 149          Myosorex             geata    -999.00          NA
## 150             Sorex         mirabilis    -999.00          NA
## 151             Sorex            dispar    -999.00          NA
## 152             Sorex         pacificus    -999.00          NA
## 153             Sorex           bairdii    -999.00          NA
## 154             Sorex          bendirii    -999.00          NA
## 155             Sorex          merriami    -999.00          NA
## 156             Sorex          arcticus    -999.00          NA
## 157             Sorex              hoyi    -999.00          NA
## 158             Sorex        monticolus    -999.00          NA
## 159             Sorex       trowbridgii    -999.00          NA
## 160             Sorex           haydeni    -999.00          NA
## 161             Sorex      longirostris    -999.00          NA
## 162             Sorex             nanus    -999.00          NA
## 163             Sorex            fumeus    -999.00          NA
## 164             Sorex         palustris    -999.00          NA
## 165            Suncus           varilla    -999.00          NA
## 166        Surdisorex             norae    -999.00          NA
## 167        Surdisorex           polulus    -999.00          NA
## 168        Sylvisorex            granti    -999.00          NA
## 169         Condylura          cristata    -999.00          NA
## 170           Desmana          moschata    -999.00          NA
## 171           Galemys        pyrenaicus    -999.00          NA
## 172          Scapanus           orarius    -999.00          NA
## 173          Scapanus         latimanus    -999.00          NA
## 174        Urotrichus         talpoides    -999.00          NA
## 175         Limnogale          mergulus    -999.00          NA
## 176   Micropotamogale          lamottei    -999.00          NA
## 177        Potamogale             velox    -999.00          NA
## 178       Brachylagus        idahoensis    -999.00          NA
## 179        Caprolagus          hispidus    -999.00          NA
## 180             Lepus       nigricollis    -999.00          NA
## 181             Lepus          callotis    -999.00          NA
## 182             Lepus         insularis    -999.00          NA
## 183          Poelagus         marjorita    -999.00          NA
## 184        Pronolagus         randensis    -999.00          NA
## 185        Pronolagus    crassicaudatus    -999.00          NA
## 186        Pronolagus         rupestris    -999.00          NA
## 187        Sylvilagus      brasiliensis    -999.00          NA
## 188        Sylvilagus         palustris    -999.00          NA
## 189        Sylvilagus         nuttallii    -999.00          NA
## 190          Ochotona          macrotis    -999.00          NA
## 191          Ochotona          collaris    -999.00          NA
## 192          Ochotona          dauurica    -999.00          NA
## 193          Ochotona            rutila    -999.00          NA
## 194      Elephantulus         rupestris    -999.00          NA
## 195      Elephantulus            fuscus    -999.00          NA
## 196      Elephantulus            rozeti    -999.00          NA
## 197      Elephantulus    brachyrhynchus    -999.00          NA
## 198             Equus             kiang    -999.00          NA
## 199             Equus          hemionus    -999.00          NA
## 200        Rhinoceros         sondaicus    -999.00          NA
## 201             Manis          javanica    -999.00          NA
## 202             Manis      tetradactyla    -999.00          NA
## 203        Callithrix         argentata    -999.00          NA
## 204        Callithrix       penicillata    -999.00          NA
## 205        Callithrix         flaviceps    -999.00          NA
## 206          Saguinus           bicolor    -999.00          NA
## 207             Aotus            azarai    -999.00          NA
## 208            Ateles         belzebuth    -999.00          NA
## 209       Brachyteles       arachnoides    -999.00          NA
## 210           Cacajao            calvus    -999.00          NA
## 211        Callicebus         torquatus    -999.00          NA
## 212             Cebus         olivaceus    -999.00          NA
## 213        Chiropotes         albinasus    -999.00          NA
## 214        Chiropotes           satanas    -999.00          NA
## 215          Pithecia          pithecia    -999.00          NA
## 216           Saimiri          oerstedi    -999.00          NA
## 217        Cercocebus         galeritus    -999.00          NA
## 218        Cercocebus         torquatus    -999.00          NA
## 219     Cercopithecus           lhoesti    -999.00          NA
## 220     Cercopithecus        erythrotis    -999.00          NA
## 221     Cercopithecus         campbelli    -999.00          NA
## 222     Cercopithecus           solatus    -999.00          NA
## 223           Colobus        angolensis    -999.00          NA
## 224           Colobus           satanas    -999.00          NA
## 225         Presbytis            comata    -999.00          NA
## 226         Presbytis         rubicunda    -999.00          NA
## 227         Presbytis        potenziani    -999.00          NA
## 228         Presbytis        melalophos    -999.00          NA
## 229        Procolobus             verus    -999.00          NA
## 230        Procolobus            badius    -999.00          NA
## 231    Trachypithecus              geei    -999.00          NA
## 232    Trachypithecus            johnii    -999.00          NA
## 233    Trachypithecus         cristatus    -999.00          NA
## 234    Trachypithecus           phayrei    -999.00          NA
## 235            Phaner          furcifer    -999.00          NA
## 236          Euoticus       elegantulus    -999.00          NA
## 237         Hylobates            moloch    -999.00          NA
## 238         Hylobates           klossii    -999.00          NA
## 239         Hylobates           hoolock    -999.00          NA
## 240         Hylobates          concolor    -999.00          NA
## 241         Hylobates            agilis    -999.00          NA
## 242             Avahi           laniger    -999.00          NA
## 243         Hapalemur            aureus    -999.00          NA
## 244         Lepilemur          leucopus    -999.00          NA
## 245         Lepilemur      ruficaudatus    -999.00          NA
## 246           Tarsius           pumilis    -999.00          NA
## 247           Tarsius            dianae    -999.00          NA
## 248          Abrocoma          bennetti    -999.00          NA
## 249        Anomalurus         beecrofti    -999.00          NA
## 250        Anomalurus         derbianus    -999.00          NA
## 251        Anomalurus             pelii    -999.00          NA
## 252           Idiurus           zenkeri    -999.00          NA
## 253         Cryptomys  ochraceocinereus    -999.00          NA
## 254       Geocapromys           brownii    -999.00          NA
## 255         Mysateles         melanurus    -999.00          NA
## 256         Mysateles       prehensilis    -999.00          NA
## 257             Cavia          tschudii    -999.00          NA
## 258             Galea            spixii    -999.00          NA
## 259        Chinchilla      brevicaudata    -999.00          NA
## 260          Ctenomys         torquatus    -999.00          NA
## 261          Ctenomys             haigi    -999.00          NA
## 262          Ctenomys            opimus    -999.00          NA
## 263        Dasyprocta          cristata    -999.00          NA
## 264        Dasyprocta          leporina    -999.00          NA
## 265         Allactaga      tetradactyla    -999.00          NA
## 266         Allactaga        euphratica    -999.00          NA
## 267         Allactaga          sibirica    -999.00          NA
## 268         Allactaga            elater    -999.00          NA
## 269             Dipus           sagitta    -999.00          NA
## 270        Eremodipus     lichtensteini    -999.00          NA
## 271           Jaculus        orientalis    -999.00          NA
## 272           Jaculus       turcmenicus    -999.00          NA
## 273        Pygeretmus         platyurus    -999.00          NA
## 274        Pygeretmus           pumilio    -999.00          NA
## 275       Salpingotus       crassicauda    -999.00          NA
## 276           Sicista            napaea    -999.00          NA
## 277           Sicista          betulina    -999.00          NA
## 278        Stylodipus             telum    -999.00          NA
## 279           Echimys         chrysurus    -999.00          NA
## 280     Kannabateomys         amblyonyx    -999.00          NA
## 281          Makalata            armata    -999.00          NA
## 282        Sphiggurus          villosus    -999.00          NA
## 283        Sphiggurus         mexicanus    -999.00          NA
## 284            Geomys        personatus    -999.00          NA
## 285            Geomys         arenarius    -999.00          NA
## 286       Orthogeomys          hispidus    -999.00          NA
## 287       Orthogeomys          cherriei    -999.00          NA
## 288          Thomomys           clusius    -999.00          NA
## 289          Thomomys         monticola    -999.00          NA
## 290          Thomomys          umbrinus    -999.00          NA
## 291          Thomomys        townsendii    -999.00          NA
## 292       Chaetodipus           nelsoni    -999.00          NA
## 293       Chaetodipus      penicillatus    -999.00          NA
## 294       Chaetodipus       intermedius    -999.00          NA
## 295       Chaetodipus            fallax    -999.00          NA
## 296       Chaetodipus          hispidus    -999.00          NA
## 297         Dipodomys      elephantinus    -999.00          NA
## 298         Dipodomys            agilis    -999.00          NA
## 299         Dipodomys          venustus    -999.00          NA
## 300         Dipodomys      californicus    -999.00          NA
## 301         Dipodomys            ingens    -999.00          NA
## 302         Dipodomys             ordii    -999.00          NA
## 303         Heteromys         oresterus    -999.00          NA
## 304         Heteromys          goldmani    -999.00          NA
## 305            Liomys         irroratus    -999.00          NA
## 306            Liomys         adspersus    -999.00          NA
## 307     Microdipodops      megacephalus    -999.00          NA
## 308       Perognathus         fasciatus    -999.00          NA
## 309       Perognathus            flavus    -999.00          NA
## 310       Perognathus        flavescens    -999.00          NA
## 311       Perognathus          merriami    -999.00          NA
## 312       Perognathus         inornatus    -999.00          NA
## 313         Atherurus         macrourus    -999.00          NA
## 314           Hystrix            pumila    -999.00          NA
## 315           Hystrix            indica    -999.00          NA
## 316            Acomys         percivali    -999.00          NA
## 317            Acomys           wilsoni    -999.00          NA
## 318          Aethomys            hindei    -999.00          NA
## 319            Akodon            varius    -999.00          NA
## 320            Akodon            cursor    -999.00          NA
## 321            Akodon       boliviensis    -999.00          NA
## 322            Akodon         olivaceus    -999.00          NA
## 323            Akodon            urichi    -999.00          NA
## 324    Allocricetulus        eversmanni    -999.00          NA
## 325          Alticola            roylei    -999.00          NA
## 326          Alticola        argentatus    -999.00          NA
## 327          Apodemus         argenteus    -999.00          NA
## 328          Apodemus         uralensis    -999.00          NA
## 329         Arborimus              pomo    -999.00          NA
## 330         Arborimus           albipes    -999.00          NA
## 331        Auliscomys          micropus    -999.00          NA
## 332           Calomys            laucha    -999.00          NA
## 333           Calomys       hummelincki    -999.00          NA
## 334           Calomys        musculinus    -999.00          NA
## 335        Calomyscus         bailwardi    -999.00          NA
## 336        Calomyscus            mystax    -999.00          NA
## 337         Chionomys               gud    -999.00          NA
## 338        Chiruromys             vates    -999.00          NA
## 339     Clethrionomys         rufocanus    -999.00          NA
## 340     Clethrionomys      californicus    -999.00          NA
## 341           Colomys          goslingi    -999.00          NA
## 342         Conilurus      penicillatus    -999.00          NA
## 343         Cremnomys         blanfordi    -999.00          NA
## 344         Cremnomys         cutchicus    -999.00          NA
## 345        Cricetulus       migratorius    -999.00          NA
## 346           Dasymys          incomtus    -999.00          NA
## 347         Dendromus         messorius    -999.00          NA
## 348         Dendromus       kahuziensis    -999.00          NA
## 349         Dendromus        mystacalis    -999.00          NA
## 350         Dendromus         mesomelas    -999.00          NA
## 351         Dendromus         melanotis    -999.00          NA
## 352          Dephomys             defua    -999.00          NA
## 353       Dicrostonyx         hudsonius    -999.00          NA
## 354         Dinaromys         bogdanovi    -999.00          NA
## 355          Ellobius     fuscocapillus    -999.00          NA
## 356          Ellobius          talpinus    -999.00          NA
## 357         Eolagurus            luteus    -999.00          NA
## 358         Gerbillus         andersoni    -999.00          NA
## 359         Gerbillus           henleyi    -999.00          NA
## 360         Gerbillus         gerbillus    -999.00          NA
## 361         Gerbillus          dasyurus    -999.00          NA
## 362         Gerbillus            simoni    -999.00          NA
## 363         Gerbillus         cheesmani    -999.00          NA
## 364         Gerbillus             nanus    -999.00          NA
## 365           Golunda           ellioti    -999.00          NA
## 366         Grammomys          rutilans    -999.00          NA
## 367         Grammomys           cometes    -999.00          NA
## 368           Graomys      griseoflavus    -999.00          NA
## 369           Hodomys            alleni    -999.00          NA
## 370            Hyomys           goliath    -999.00          NA
## 371       Hyperacrius          fertilis    -999.00          NA
## 372       Hyperacrius            wynnei    -999.00          NA
## 373        Hypogeomys          antimena    -999.00          NA
## 374         Leggadina     lakedownensis    -999.00          NA
## 375         Leggadina          forresti    -999.00          NA
## 376       Lemniscomys          griselda    -999.00          NA
## 377        Leporillus          conditor    -999.00          NA
## 378         Lophiomys           imhausi    -999.00          NA
## 379        Lophuromys       luteogaster    -999.00          NA
## 380     Macrotarsomys          bastardi    -999.00          NA
## 381          Mastomys     erythroleucus    -999.00          NA
## 382           Melomys           levipes    -999.00          NA
## 383           Melomys             rubex    -999.00          NA
## 384           Melomys         rufescens    -999.00          NA
## 385           Melomys         moncktoni    -999.00          NA
## 386           Melomys       leucogaster    -999.00          NA
## 387           Melomys           burtoni    -999.00          NA
## 388           Melomys        cervinipes    -999.00          NA
## 389          Meriones        meridianus    -999.00          NA
## 390      Mesembriomys          macrurus    -999.00          NA
## 391      Mesocricetus           brandti    -999.00          NA
## 392      Mesocricetus            raddei    -999.00          NA
## 393          Microtus         mexicanus    -999.00          NA
## 394          Microtus         juldaschi    -999.00          NA
## 395          Microtus        townsendii    -999.00          NA
## 396          Microtus       longicaudus    -999.00          NA
## 397          Microtus     chrotorrhinus    -999.00          NA
## 398          Microtus          gregalis    -999.00          NA
## 399          Microtus            fortis    -999.00          NA
## 400         Millardia           meltada    -999.00          NA
## 401               Mus           spretus    -999.00          NA
## 402               Mus            mayori    -999.00          NA
## 403               Mus       musculoides    -999.00          NA
## 404               Mus        platythrix    -999.00          NA
## 405               Mus           booduga    -999.00          NA
## 406            Myomys           fumatus    -999.00          NA
## 407            Myomys            derooi    -999.00          NA
## 408         Myospalax         myospalax    -999.00          NA
## 409          Neacomys          tenuipes    -999.00          NA
## 410          Nectomys         squamipes    -999.00          NA
## 411          Nectomys          parvipes    -999.00          NA
## 412           Neotoma            phenax    -999.00          NA
## 413           Nesokia            indica    -999.00          NA
## 414           Notomys            fuscus    -999.00          NA
## 415           Notomys            aquilo    -999.00          NA
## 416           Notomys        mitchellii    -999.00          NA
## 417           Oecomys          concolor    -999.00          NA
## 418           Oenomys       hypoxanthus    -999.00          NA
## 419      Oligoryzomys        flavescens    -999.00          NA
## 420      Oligoryzomys     longicaudatus    -999.00          NA
## 421          Oryzomys         subflavus    -999.00          NA
## 422            Otomys       angoniensis    -999.00          NA
## 423       Oxymycterus             rufus    -999.00          NA
## 424       Pachyuromys           duprasi    -999.00          NA
## 425         Parotomys          brantsii    -999.00          NA
## 426           Pelomys             minor    -999.00          NA
## 427           Pelomys            fallax    -999.00          NA
## 428        Peromyscus       melanophrys    -999.00          NA
## 429        Peromyscus        pectoralis    -999.00          NA
## 430        Peromyscus            gratus    -999.00          NA
## 431        Peromyscus        difficilis    -999.00          NA
## 432        Peromyscus         attwateri    -999.00          NA
## 433        Peromyscus           nasutus    -999.00          NA
## 434        Peromyscus         sitkensis    -999.00          NA
## 435          Phodopus         campbelli    -999.00          NA
## 436         Phyllotis           darwini    -999.00          NA
## 437        Pithecheir            parvus    -999.00          NA
## 438     Pogonomelomys             sevia    -999.00          NA
## 439         Pogonomys        sylvestris    -999.00          NA
## 440         Pogonomys            loriae    -999.00          NA
## 441         Pogonomys         macrourus    -999.00          NA
## 442           Praomys          jacksoni    -999.00          NA
## 443           Praomys        delectorum    -999.00          NA
## 444         Pseudomys            oralis    -999.00          NA
## 445         Pseudomys hermannsburgensis    -999.00          NA
## 446         Pseudomys      pilligaensis    -999.00          NA
## 447         Pseudomys          desertor    -999.00          NA
## 448         Pseudomys             nanus    -999.00          NA
## 449         Pseudomys            fieldi    -999.00          NA
## 450         Pseudomys         praeconis    -999.00          NA
## 451         Pseudomys       shortridgei    -999.00          NA
## 452         Pseudomys      albocinereus    -999.00          NA
## 453         Pseudomys            fumeus    -999.00          NA
## 454         Pseudomys       apodemoides    -999.00          NA
## 455            Rattus          colletti    -999.00          NA
## 456            Rattus     villosissimus    -999.00          NA
## 457            Rattus          leucopus    -999.00          NA
## 458            Rattus            steini    -999.00          NA
## 459            Rattus           praetor    -999.00          NA
## 460            Rattus           tunneyi    -999.00          NA
## 461            Rattus     argentiventer    -999.00          NA
## 462        Reithrodon           auritus    -999.00          NA
## 463   Reithrodontomys       raviventris    -999.00          NA
## 464        Rhipidomys         latimanus    -999.00          NA
## 465        Rhipidomys        mastacalis    -999.00          NA
## 466          Rhizomys       sumatrensis    -999.00          NA
## 467          Rhizomys         pruinosus    -999.00          NA
## 468        Sekeetamys           calurus    -999.00          NA
## 469          Sigmodon          leucotis    -999.00          NA
## 470          Sigmodon       fulviventer    -999.00          NA
## 471          Sigmodon           alstoni    -999.00          NA
## 472            Spalax    microphthalmus    -999.00          NA
## 473         Steatomys           krebsii    -999.00          NA
## 474         Stochomys     longicaudatus    -999.00          NA
## 475          Sundamys          muelleri    -999.00          NA
## 476        Synaptomys          borealis    -999.00          NA
## 477          Tateomys    rhinogradoides    -999.00          NA
## 478            Tatera           inclusa    -999.00          NA
## 479            Tatera           robusta    -999.00          NA
## 480            Tatera            valida    -999.00          NA
## 481            Tatera        nigricauda    -999.00          NA
## 482        Taterillus             emini    -999.00          NA
## 483        Taterillus          pygargus    -999.00          NA
## 484        Taterillus          gracilis    -999.00          NA
## 485         Thamnomys          venustus    -999.00          NA
## 486          Uranomys             ruddi    -999.00          NA
## 487       Vandeleuria         nolthenii    -999.00          NA
## 488          Wiedomys      pyrrhorhinos    -999.00          NA
## 489         Zelotomys          woosnami    -999.00          NA
## 490           Zyzomys             maini    -999.00          NA
## 491           Zyzomys           argurus    -999.00          NA
## 492           Zyzomys         woodwardi    -999.00          NA
## 493           Dryomys           laniger    -999.00          NA
## 494           Eliomys         quercinus    -999.00          NA
## 495          Glirulus         japonicus    -999.00          NA
## 496        Graphiurus    crassicaudatus    -999.00          NA
## 497        Graphiurus          ocularis    -999.00          NA
## 498        Spalacopus            cyanus    -999.00          NA
## 499          Petromus           typicus    -999.00          NA
## 500  Ammospermophilus         interpres    -999.00          NA
## 501      Callosciurus          caniceps    -999.00          NA
## 502      Callosciurus     nigrovittatus    -999.00          NA
## 503      Callosciurus           notatus    -999.00          NA
## 504           Cynomys         gunnisoni    -999.00          NA
## 505           Cynomys         parvidens    -999.00          NA
## 506           Cynomys          leucurus    -999.00          NA
## 507           Cynomys         mexicanus    -999.00          NA
## 508          Dremomys           lokriah    -999.00          NA
## 509          Epixerus              ebii    -999.00          NA
## 510      Exilisciurus            exilis    -999.00          NA
## 511        Funambulus       sublineatus    -999.00          NA
## 512        Funambulus          palmarum    -999.00          NA
## 513        Funambulus         pennantii    -999.00          NA
## 514       Funisciurus        anerythrus    -999.00          NA
## 515       Funisciurus       lemniscatus    -999.00          NA
## 516       Funisciurus          pyrropus    -999.00          NA
## 517      Heliosciurus      rufobrachium    -999.00          NA
## 518         Hylopetes         alboniger    -999.00          NA
## 519         Hylopetes        fimbriatus    -999.00          NA
## 520             Iomys        horsfieldi    -999.00          NA
## 521           Marmota         menzbieri    -999.00          NA
## 522           Marmota    vancouverensis    -999.00          NA
## 523           Marmota           olympus    -999.00          NA
## 524           Marmota          caligata    -999.00          NA
## 525           Marmota           broweri    -999.00          NA
## 526           Marmota          sibirica    -999.00          NA
## 527           Marmota           caudata    -999.00          NA
## 528           Marmota         baibacina    -999.00          NA
## 529        Myosciurus           pumilio    -999.00          NA
## 530         Paraxerus       flavovittis    -999.00          NA
## 531         Paraxerus         ochraceus    -999.00          NA
## 532        Petaurista           elegans    -999.00          NA
## 533        Petaurista        magnificus    -999.00          NA
## 534        Petaurista        petaurista    -999.00          NA
## 535         Petinomys        genibarbis    -999.00          NA
## 536         Petinomys           setosus    -999.00          NA
## 537         Petinomys       vordermanni    -999.00          NA
## 538         Petinomys     fuscocapillus    -999.00          NA
## 539          Pteromys            volans    -999.00          NA
## 540            Ratufa            indica    -999.00          NA
## 541            Ratufa          macroura    -999.00          NA
## 542      Rhinosciurus      laticaudatus    -999.00          NA
## 543        Sciurillus          pusillus    -999.00          NA
## 544           Sciurus       aureogaster    -999.00          NA
## 545           Sciurus      yucatanensis    -999.00          NA
## 546           Sciurus            alleni    -999.00          NA
## 547           Sciurus       arizonensis    -999.00          NA
## 548           Sciurus           griseus    -999.00          NA
## 549   Spermophilopsis     leptodactylus    -999.00          NA
## 550      Spermophilus          relictus    -999.00          NA
## 551      Spermophilus           parryii    -999.00          NA
## 552      Spermophilus          dauricus    -999.00          NA
## 553      Spermophilus           armatus    -999.00          NA
## 554      Spermophilus             canus    -999.00          NA
## 555      Spermophilus      erythrogenys    -999.00          NA
## 556      Spermophilus          pygmaeus    -999.00          NA
## 557      Spermophilus             major    -999.00          NA
## 558      Spermophilus      nayaritensis    -999.00          NA
## 559      Spermophilus          brunneus    -999.00          NA
## 560      Spermophilus            fulvus    -999.00          NA
## 561      Spermophilus          suslicus    -999.00          NA
## 562      Spermophilus        franklinii    -999.00          NA
## 563      Spermophilus       washingtoni    -999.00          NA
## 564      Spermophilus          citellus    -999.00          NA
## 565      Spermophilus         spilosoma    -999.00          NA
## 566      Sundasciurus             lowii    -999.00          NA
## 567      Sundasciurus            tenuis    -999.00          NA
## 568            Tamias        ochrogenys    -999.00          NA
## 569            Tamias           palmeri    -999.00          NA
## 570            Tamias          siskiyou    -999.00          NA
## 571            Tamias           canipes    -999.00          NA
## 572            Tamias           sonomae    -999.00          NA
## 573            Tamias        ruficaudus    -999.00          NA
## 574            Tamias         speciosus    -999.00          NA
## 575            Tamias             senex    -999.00          NA
## 576            Tamias     cinereicollis    -999.00          NA
## 577            Tamias   quadrimaculatus    -999.00          NA
## 578            Tamias          dorsalis    -999.00          NA
## 579       Trogopterus         xanthipes    -999.00          NA
## 580             Xerus        erythropus    -999.00          NA
## 581        Thryonomys       gregorianus    -999.00          NA
## 582            Tupaia             minor    -999.00          NA
## 583            Tupaia              tana    -999.00          NA
## 584      Hydrodamalis             gigas    -999.00          NA
## 585        Trichechus      senegalensis    -999.00          NA
## 586          Bradypus         torquatus    -999.00          NA
## 587          Bradypus       tridactylus    -999.00          NA
## 588         Cabassous         centralis    -999.00          NA
## 589    Chaetophractus           nationi    -999.00          NA
## 590           Dasypus          kappleri    -999.00          NA
## 591           Dasypus        sabanicola    -999.00          NA
## 592           Dasypus          hybridus    -999.00          NA
## 593           Dasypus     septemcinctus    -999.00          NA
## 594          Cyclopes        didactylus    -999.00          NA
## 595          Tamandua      tetradactyla    -999.00          NA
## 596            Suncus          etruscus       0.21        0.21
## 597             Sorex           minutus       0.25        0.25
## 598             Sorex          cinereus       0.28        0.28
## 599         Cryptotis             parva       0.34        0.34
## 600        Notiosorex         crawfordi       0.41        0.41
## 601             Sorex           vagrans       0.42        0.42
## 602             Sorex           araneus       0.47        0.47
## 603             Sorex           ornatus       0.50        0.50
## 604            Neomys          anomalus       0.58        0.58
## 605             Sorex         coronatus       0.58        0.58
## 606         Crocidura        suaveolens       0.63        0.63
## 607      Neurotrichus           gibbsii       0.67        0.67
## 608           Geogale            aurita       0.70        0.70
## 609            Neomys           fodiens       0.78        0.78
## 610       Perognathus      longimembris       0.78        0.78
## 611         Crocidura       canariensis       0.80        0.80
## 612             Zapus          princeps       0.80        0.80
## 613       Muscardinus      avellanarius       0.80        0.80
## 614             Zapus        trinotatus       0.81        0.81
## 615         Crocidura       fuscomurina       0.82        0.82
## 616             Zapus         hudsonius       0.82        0.82
## 617         Crocidura          leucodon       0.88        0.88
## 618         Crocidura           russula       0.88        0.88
## 619    Desmodilliscus           braueri       0.90        0.90
## 620          Micromys           minutus       0.90        0.90
## 621       Napaeozapus          insignis       0.96        0.96
## 622           Blarina        brevicauda       0.97        0.97
## 623               Mus        minutoides       0.97        0.97
## 624         Crocidura             hirta       1.00        1.00
## 625          Myosorex            varius       1.00        1.00
## 626       Chaetodipus          formosus       1.00        1.00
## 627     Microdipodops          pallidus       1.00        1.00
## 628         Pseudomys       delicatulus       1.00        1.00
## 629   Reithrodontomys          montanus       1.04        1.04
## 630   Reithrodontomys        fulvescens       1.08        1.08
## 631   Reithrodontomys           humulis       1.09        1.09
## 632           Baiomys           taylori       1.16        1.16
## 633         Lemmiscus          curtatus       1.16        1.16
## 634       Malacothrix            typica       1.20        1.20
## 635               Mus            caroli       1.20        1.20
## 636               Mus          musculus       1.25        1.25
## 637               Mus            triton       1.30        1.30
## 638   Reithrodontomys         megalotis       1.33        1.33
## 639           Lagurus           lagurus       1.35        1.35
## 640        Scotinomys           teguina       1.35        1.35
## 641        Scotinomys      xerampelinus       1.35        1.35
## 642         Crocidura            viaria       1.40        1.40
## 643          Phodopus       roborovskii       1.45        1.45
## 644        Hylomyscus            stella       1.49        1.49
## 645       Perognathus            parvus       1.50        1.50
## 646          Apodemus        sylvaticus       1.50        1.50
## 647        Hylomyscus            alleni       1.50        1.50
## 648               Mus        cervicolor       1.50        1.50
## 649            Myomys           daltoni       1.50        1.50
## 650            Myoxus              glis       1.50        1.50
## 651         Steatomys         pratensis       1.55        1.55
## 652          Microtus      subterraneus       1.60        1.60
## 653           Dryomys          nitedula       1.60        1.60
## 654     Clethrionomys           gapperi       1.61        1.61
## 655          Microtus           oregoni       1.63        1.63
## 656        Peromyscus        polionotus       1.63        1.63
## 657        Peromyscus         melanotis       1.67        1.67
## 658       Lemniscomys          striatus       1.70        1.70
## 659          Microtus       lusitanicus       1.70        1.70
## 660      Eligmodontia             typus       1.73        1.73
## 661       Chaetodipus      californicus       1.75        1.75
## 662          Phodopus          sungorus       1.77        1.77
## 663         Pseudomys   novaehollandiae       1.80        1.80
## 664     Clethrionomys         glareolus       1.82        1.82
## 665        Peromyscus       maniculatus       1.83        1.83
## 666          Microtus           arvalis       1.85        1.85
## 667    Heterocephalus            glaber       1.88        1.88
## 668        Peromyscus          leucopus       1.89        1.89
## 669            Liomys           salvini       1.90        1.90
## 670          Apodemus          agrarius       1.90        1.90
## 671       Gerbillurus           tytonis       1.90        1.90
## 672         Gerbillus          gleadowi       1.90        1.90
## 673      Lasiopodomys          brandtii       1.90        1.90
## 674           Jaculus           jaculus       2.00        2.00
## 675          Apodemus        peninsulae       2.00        2.00
## 676        Cricetulus        barabensis       2.00        2.00
## 677           Calomys           lepidus       2.05        2.05
## 678          Mastomys        natalensis       2.07        2.07
## 679       Gerbillurus             paeba       2.10        2.10
## 680          Microtus          socialis       2.10        2.10
## 681       Petromyscus          collinus       2.10        2.10
## 682        Phenacomys       intermedius       2.18        2.18
## 683            Akodon            azarae       2.20        2.20
## 684        Peromyscus            boylii       2.20        2.20
## 685        Peromyscus        gossypinus       2.20        2.20
## 686        Peromyscus          crinitus       2.20        2.20
## 687          Microtus  duodecimcostatus       2.21        2.21
## 688         Gerbillus       perpallidus       2.24        2.24
## 689         Crocidura        flavescens       2.26        2.26
## 690           Mustela           erminea       2.30        2.30
## 691       Gerbillurus           setzeri       2.30        2.30
## 692          Microtus          agrestis       2.30        2.30
## 693            Tamias           minimus       2.30        2.30
## 694      Mesocricetus           auratus       2.31        2.31
## 695          Microtus         pinetorum       2.32        2.32
## 696         Onychomys          torridus       2.32        2.32
## 697        Peromyscus             truei       2.32        2.32
## 698        Peromyscus          eremicus       2.33        2.33
## 699           Calomys          callosus       2.34        2.34
## 700          Apodemus       flavicollis       2.40        2.40
## 701        Phenacomys            ungava       2.40        2.40
## 702           Podomys        floridanus       2.40        2.40
## 703          Microtus        canicaudus       2.43        2.43
## 704          Microtus         oeconomus       2.43        2.43
## 705          Microtus        montebelli       2.45        2.45
## 706          Microtus    pennsylvanicus       2.46        2.46
## 707          Aethomys       namaquensis       2.50        2.50
## 708        Peromyscus       yucatanicus       2.50        2.50
## 709         Gerbillus         pyramidum       2.55        2.55
## 710         Arborimus       longicaudus       2.57        2.57
## 711            Suncus           murinus       2.60        2.60
## 712          Microtus            miurus       2.60        2.60
## 713       Saccostomus        campestris       2.60        2.60
## 714            Tamias    quadrivittatus       2.60        2.60
## 715           Mustela           nivalis       2.61        2.61
## 716        Peromyscus           hooperi       2.62        2.62
## 717            Rattus           exulans       2.62        2.62
## 718            Tamias           amoenus       2.62        2.62
## 719        Ochrotomys          nuttalli       2.63        2.63
## 720         Onychomys       leucogaster       2.65        2.65
## 721         Thallomys         paedulcus       2.65        2.65
## 722         Rhabdomys           pumilio       2.67        2.67
## 723           Praomys             morio       2.70        2.70
## 724           Praomys         tullbergi       2.70        2.70
## 725        Peromyscus   interparietalis       2.74        2.74
## 726            Liomys            pictus       2.75        2.75
## 727      Chiropodomys         gliroides       2.80        2.80
## 728          Microtus     transcaspicus       2.80        2.80
## 729            Tatera       leucogaster       2.80        2.80
## 730          Microtus      californicus       2.83        2.83
## 731           Notomys            alexis       2.83        2.83
## 732          Meriones      unguiculatus       2.90        2.90
## 733         Dipodomys          merriami       2.92        2.92
## 734     Clethrionomys           rutilus       2.95        2.95
## 735       Dicrostonyx         torquatus       2.97        2.97
## 736         Heteromys    desmarestianus       3.00        3.00
## 737            Akodon           molinae       3.00        3.00
## 738            Akodon           dolores       3.00        3.00
## 739          Alticola         strelzowi       3.00        3.00
## 740          Apodemus        mystacinus       3.00        3.00
## 741          Meriones         tristrami       3.00        3.00
## 742          Meriones       vinogradovi       3.00        3.00
## 743          Microtus         guentheri       3.00        3.00
## 744           Notomys          cervinus       3.00        3.00
## 745        Peromyscus         perfulvus       3.00        3.00
## 746            Rattus          sordidus       3.00        3.00
## 747            Tatera            indica       3.00        3.00
## 748          Microtus       ochrogaster       3.02        3.02
## 749          Meriones      tamariscinus       3.03        3.03
## 750         Dipodomys           deserti       3.04        3.04
## 751          Microtus          montanus       3.05        3.05
## 752           Mustela           frenata       3.10        3.10
## 753          Thomomys         talpoides       3.12        3.12
## 754       Desmodillus       auricularis       3.12        3.12
## 755         Dipodomys       nitratoides       3.18        3.18
## 756            Beamys            hindei       3.20        3.20
## 757            Myopus      schisticolor       3.20        3.20
## 758      Spermophilus  tridecemlineatus       3.24        3.24
## 759          Thomomys            bottae       3.30        3.30
## 760         Heteromys          anomalus       3.30        3.30
## 761            Akodon        longipilis       3.30        3.30
## 762      Oligoryzomys          nigripes       3.30        3.30
## 763  Ammospermophilus          leucurus       3.36        3.36
## 764             Talpa          europaea       3.38        3.38
## 765          Meriones           crassus       3.40        3.40
## 766        Neotomodon           alstoni       3.40        3.40
## 767          Oryzomys         palustris       3.42        3.42
## 768           Bolomys          lasiurus       3.45        3.45
## 769          Microtus       abbreviatus       3.45        3.45
## 770        Synaptomys           cooperi       3.46        3.46
## 771         Glaucomys            volans       3.49        3.49
## 772             Talpa           altaica       3.50        3.50
## 773          Meriones         hurrianae       3.50        3.50
## 774          Microtus           breweri       3.50        3.50
## 775          Microtus     xanthognathus       3.50        3.50
## 776        Graphiurus           murinus       3.50        3.50
## 777            Tamias          striatus       3.50        3.50
## 778            Tamias        townsendii       3.55        3.55
## 779      Spermophilus        townsendii       3.61        3.61
## 780      Zygodontomys        brevicauda       3.64        3.64
## 781         Microgale          talazaci       3.65        3.65
## 782         Chionomys           nivalis       3.70        3.70
## 783        Niviventer        niviventer       3.75        3.75
## 784            Lemmus         sibiricus       3.78        3.78
## 785  Ammospermophilus          harrisii       3.80        3.80
## 786          Oryzomys            capito       3.85        3.85
## 787        Peromyscus          megalops       3.90        3.90
## 788      Spermophilus      tereticaudus       3.90        3.90
## 789         Dipodomys         heermanni       3.91        3.91
## 790            Lemmus            lemmus       3.92        3.92
## 791         Microgale           dobsoni       3.95        3.95
## 792      Spermophilus            mollis       3.95        3.95
## 793       Poecilogale         albinucha       4.00        4.00
## 794         Dipodomys           microps       4.00        4.00
## 795       Dicrostonyx       richardsoni       4.00        4.00
## 796         Pseudomys         australis       4.00        4.00
## 797            Tamias      panamintinus       4.00        4.00
## 798            Tamias         sibiricus       4.00        4.00
## 799            Rattus        tiomanicus       4.10        4.10
## 800      Spermophilus         mexicanus       4.10        4.10
## 801       Arvicanthis         niloticus       4.15        4.15
## 802         Grammomys        dolichurus       4.20        4.20
## 803       Dicrostonyx     groenlandicus       4.35        4.35
## 804         Pseudomys   gracilicaudatus       4.35        4.35
## 805         Dipodomys         stephensi       4.40        4.40
## 806           Hybomys       univittatus       4.40        4.40
## 807        Peromyscus         mexicanus       4.40        4.40
## 808         Bandicota       bengalensis       4.43        4.43
## 809          Aethomys      chrysophilus       4.45        4.45
## 810          Meriones             shawi       4.46        4.46
## 811        Peromyscus      californicus       4.46        4.46
## 812        Amblysomus       hottentotus       4.50        4.50
## 813         Dipodomys      panamintinus       4.50        4.50
## 814      Megadontomys           thomasi       4.50        4.50
## 815        Peromyscus      melanocarpus       4.50        4.50
## 816            Rattus          fuscipes       4.50        4.50
## 817            Tatera              afra       4.50        4.50
## 818      Spermophilus        mohavensis       4.50        4.50
## 819            Rattus            rattus       4.55        4.55
## 820         Rhombomys            opimus       4.75        4.75
## 821            Rattus         lutreolus       4.87        4.87
## 822  Ammospermophilus           nelsoni       4.88        4.88
## 823           Ictonyx            libyca       5.00        5.00
## 824          Scapanus        townsendii       5.00        5.00
## 825        Holochilus      brasiliensis       5.00        5.00
## 826          Meriones          persicus       5.00        5.00
## 827       Nannospalax          leucodon       5.00        5.00
## 828         Pseudomys          higginsi       5.00        5.00
## 829        Petaurista        leucogenys       5.00        5.00
## 830      Tamiasciurus         douglasii       5.00        5.00
## 831          Cricetus          cricetus       5.05        5.05
## 832          Microtus       richardsoni       5.05        5.05
## 833            Tatera          brantsii       5.13        5.13
## 834       Dicrostonyx      unalascensis       5.20        5.20
## 835          Nyctomys       sumichrasti       5.20        5.20
## 836          Meriones           libycus       5.33        5.33
## 837          Scalopus         aquaticus       5.36        5.36
## 838            Geomys         bursarius       5.51        5.51
## 839          Sigmodon      ochrognathus       5.55        5.55
## 840         Glaucomys          sabrinus       5.62        5.62
## 841           Mustela       eversmannii       5.73        5.73
## 842            Acomys         cahirinus       5.77        5.77
## 843        Microcebus           murinus       5.78        5.78
## 844            Geomys           pinetis       5.80        5.80
## 845            Rattus        norvegicus       5.81        5.81
## 846          Arvicola        terrestris       5.86        5.86
## 847      Spermophilus         saturatus       5.97        5.97
## 848          Arvicola           sapidus       6.00        6.00
## 849      Spermophilus           elegans       6.02        6.02
## 850       Pappogeomys         castanops       6.07        6.07
## 851          Aethomys           kaiseri       6.10        6.10
## 852          Thomomys        bulbivorus       6.11        6.11
## 853         Mystromys      albicaudatus       6.25        6.25
## 854         Psammomys            obesus       6.25        6.25
## 855      Spermophilus         lateralis       6.26        6.26
## 856      Spermophilus      richardsonii       6.35        6.35
## 857        Microcebus             rufus       6.50        6.50
## 858        Lophuromys    flavopunctatus       6.50        6.50
## 859           Melomys          capensis       6.50        6.50
## 860          Sigmodon          hispidus       6.69        6.69
## 861         Spilogale           pygmaea       6.90        6.90
## 862      Spermophilus          beldingi       6.94        6.94
## 863          Ochotona            roylei       7.00        7.00
## 864          Ochotona           pallasi       7.00        7.00
## 865          Ochotona           pusilla       7.00        7.00
## 866     Macroscelides      proboscideus       7.00        7.00
## 867      Heliophobius  argenteocinereus       7.00        7.00
## 868            Acomys          russatus       7.00        7.00
## 869          Cannomys            badius       7.00        7.00
## 870      Tamiasciurus        hudsonicus       7.00        7.00
## 871         Pseudomys            fuscus       7.25        7.25
## 872           Mustela          lutreola       7.50        7.50
## 873        Lophuromys          sikapusi       7.50        7.50
## 874          Echinops          telfairi       7.74        7.74
## 875         Dipodomys       spectabilis       7.75        7.75
## 876      Spermophilus        variegatus       7.80        7.80
## 877          Ochotona            alpina       7.87        7.87
## 878          Atelerix       albiventris       7.92        7.92
## 879          Ctenomys           talarum       8.00        8.00
## 880      Elephantulus            myurus       8.10        8.10
## 881      Hemicentetes      semispinosus       8.18        8.18
## 882         Georychus          capensis       8.40        8.40
## 883       Hemiechinus          micropus       8.50        8.50
## 884       Hemiechinus       aethiopicus       8.50        8.50
## 885         Cryptomys       hottentotus       8.63        8.63
## 886           Mustela             vison       8.64        8.64
## 887           Neotoma            lepida       8.96        8.96
## 888         Cryptomys        damarensis       9.00        9.00
## 889           Mustela          putorius       9.26        9.26
## 890      Spermophilus       columbianus       9.37        9.37
## 891        Lophuromys          woosnami       9.50        9.50
## 892           Sciurus       granatensis       9.50        9.50
## 893           Sciurus          vulgaris       9.57        9.57
## 894         Paraxerus           poensis       9.91        9.91
## 895       Funisciurus          congicus       9.96        9.96
## 896         Bandicota            indica       9.99        9.99
## 897      Elephantulus            intufi      10.00       10.00
## 898           Neotoma             devia      10.00       10.00
## 899      Spermophilus          beecheyi      10.00       10.00
## 900            Tupaia         belangeri      10.00       10.00
## 901       Ptilocercus             lowii      10.00       10.00
## 902       Parascalops           breweri      10.10       10.10
## 903       Hemiechinus           auritus      10.14       10.14
## 904        Ototylomys         phyllotis      10.20       10.20
## 905           Neotoma          mexicana      10.40       10.40
## 906          Atelerix         frontalis      10.49       10.49
## 907        Galagoides          demidoff      10.58       10.58
## 908           Neotoma         stephensi      10.60       10.60
## 909          Ochotona          princeps      10.67       10.67
## 910      Elephantulus         rufescens      10.73       10.73
## 911            Tupaia           montana      11.00       11.00
## 912          Neofiber            alleni      11.08       11.08
## 913      Spermophilus         undulatus      11.08       11.08
## 914          Ochotona         curzoniae      11.20       11.20
## 915           Neotoma          albigula      11.35       11.35
## 916          Ochotona         rufescens      11.40       11.40
## 917            Otomys         sloggetti      11.40       11.40
## 918           Neotoma          micropus      11.70       11.70
## 919           Sciurus            aberti      12.00       12.00
## 920            Galago            moholi      12.10       12.10
## 921           Neotoma          fuscipes      12.10       12.10
## 922          Abrocoma           cinerea      12.25       12.25
## 923             Loris       tardigradus      12.34       12.34
## 924           Ictonyx          striatus      12.50       12.50
## 925            Otomys             typus      12.50       12.50
## 926         Paraxerus            cepapi      12.88       12.88
## 927            Tupaia              glis      12.94       12.94
## 928           Neotoma         floridana      13.28       13.28
## 929           Neotoma           cinerea      13.50       13.50
## 930         Spilogale          putorius      13.80       13.80
## 931      Tachyoryctes           ruandae      14.00       14.00
## 932            Galago      senegalensis      14.05       14.05
## 933           Octodon             degus      14.10       14.10
## 934       Echinosorex           gymnura      14.50       14.50
## 935        Microcebus         coquereli      14.50       14.50
## 936            Otomys         irroratus      14.50       14.50
## 937        Galagoides      zanzibaricus      14.55       14.55
## 938           Sciurus      carolinensis      15.15       15.15
## 939         Paraxerus         palliatus      15.21       15.21
## 940           Cynomys      ludovicianus      15.38       15.38
## 941        Bathyergus           janetta      15.40       15.40
## 942           Sciurus             niger      15.44       15.44
## 943         Erinaceus         europaeus      15.70       15.70
## 944        Callithrix           pygmaea      16.16       16.16
## 945      Cheirogaleus            medius      16.33       16.33
## 946      Callosciurus         prevostii      16.35       16.35
## 947      Octodontomys         gliroides      16.67       16.67
## 948           Tylomys        nudicaudus      16.77       16.77
## 949      Cheirogaleus             major      18.04       18.04
## 950     Ctenodactylus              vali      18.30       18.30
## 951           Urogale          everetti      19.98       19.98
## 952            Otomys             denti      20.00       20.00
## 953      Tachyoryctes         splendens      20.00       20.00
## 954           Uromys     caudimaculatus      20.00       20.00
## 955             Xerus           inauris      20.00       20.00
## 956       Massoutiera             mzabi      20.50       20.50
## 957        Thrichomys        apereoides      21.10       21.10
## 958            Tenrec         ecaudatus      21.38       21.38
## 959        Nycticebus          pygmaeus      21.50       21.50
## 960        Proechimys           guairae      21.63       21.63
## 961           Ondatra        zibethicus      21.92       21.92
## 962         Erinaceus          concolor      22.00       22.00
## 963            Mungos             mungo      22.10       22.10
## 964        Dasyprocta          punctata      22.70       22.70
## 965        Proechimys      semispinosus      23.00       23.00
## 966        Cricetomys         gambianus      23.10       23.10
## 967        Aplodontia              rufa      23.58       23.58
## 968            Galago            alleni      24.00       24.00
## 969          Hoplomys          gymnurus      24.30       24.30
## 970          Hydromys      chrysogaster      24.39       24.39
## 971        Proechimys       cayennensis      24.70       24.70
## 972           Setifer           setosus      24.85       24.85
## 973           Tarsius          bancanus      25.42       25.42
## 974           Tarsius          syrichta      25.62       25.62
## 975           Tarsius          spectrum      25.70       25.70
## 976         Herpestes         javanicus      25.92       25.92
## 977            Vulpes             zerda      26.28       26.28
## 978        Callithrix           jacchus      27.12       27.12
## 979           Marmota             monax      27.43       27.43
## 980          Mephitis          mephitis      28.10       28.10
## 981        Sylvilagus          bachmani      28.17       28.17
## 982       Bassariscus           astutus      28.58       28.58
## 983            Vulpes              cana      29.00       29.00
## 984           Marmota           marmota      29.67       29.67
## 985        Arctocebus      calabarensis      29.69       29.69
## 986     Ctenodactylus             gundi      29.90       29.90
## 987            Martes            martes      30.00       30.00
## 988        Sylvilagus    transitionalis      30.00       30.00
## 989        Microcavia         australis      30.40       30.40
## 990       Romerolagus             diazi      30.62       30.62
## 991       Petrodromus     tetradactylus      31.00       31.00
## 992            Martes         zibellina      31.25       31.25
## 993          Suricata         suricatta      31.33       31.33
## 994            Martes         americana      32.67       32.67
## 995           Marmota      camtschatica      33.00       33.00
## 996           Marmota      flaviventris      33.80       33.80
## 997        Bathyergus           suillus      34.00       34.00
## 998        Sylvilagus        floridanus      34.33       34.33
## 999        Sylvilagus         audubonii      34.50       34.50
## 1000       Callithrix       humeralifer      34.50       34.50
## 1001         Ctenomys          peruanus      34.70       34.70
## 1002           Martes          pennanti      34.78       34.78
## 1003     Mesembriomys           gouldii      34.90       34.90
## 1004         Saguinus         imperator      35.00       35.00
## 1005          Marmota             bobak      35.50       35.50
## 1006     Cynocephalus            volans      35.90       35.90
## 1007        Lepilemur        mustelinus      37.17       37.17
## 1008            Galea       musteloides      37.99       37.99
## 1009       Chinchilla          lanigera      39.27       39.27
## 1010         Saguinus       fuscicollis      39.60       39.60
## 1011      Oryctolagus         cuniculus      39.61       39.61
## 1012           Vulpes             velox      39.65       39.65
## 1013        Prionodon           linsang      40.00       40.00
## 1014         Saguinus             midas      40.00       40.00
## 1015         Saguinus           oedipus      40.22       40.22
## 1016     Perodicticus             potto      40.51       40.51
## 1017         Saguinus          labiatus      42.33       42.33
## 1018         Saguinus       nigricollis      43.70       43.70
## 1019         Saguinus          leucopus      44.00       44.00
## 1020        Hapalemur           griseus      44.80       44.80
## 1021        Bunolagus      monticularis      45.00       45.00
## 1022         Saguinus         geoffroyi      46.03       46.03
## 1023         Saguinus            mystax      46.90       46.90
## 1024         Otolemur         garnettii      49.00       49.00
## 1025        Callimico           goeldii      49.07       49.07
## 1026       Nycticebus           coucang      49.94       49.94
## 1027          Galidia           elegans      50.00       50.00
## 1028      Mungotictis      decemlineata      50.00       50.00
## 1029      Bassaricyon            gabbii      51.00       51.00
## 1030         Otolemur    crassicaudatus      51.21       51.21
## 1031        Solenodon         paradoxus      53.75       53.75
## 1032   Leontopithecus           rosalia      55.07       55.07
## 1033            Felis         margarita      55.50       55.50
## 1034       Petaurista      philippensis      56.00       56.00
## 1035         Amblonyx          cinereus      57.00       57.00
## 1036       Sylvilagus         aquaticus      57.67       57.67
## 1037         Arctonyx          collaris      58.00       58.00
## 1038           Vulpes       bengalensis      58.50       58.50
## 1039          Eulemur            mongoz      58.93       58.93
## 1040          Eulemur         coronatus      59.00       59.00
## 1041            Cavia            aperea      59.66       59.66
## 1042            Lepus        americanus      61.03       61.03
## 1043           Vulpes            corsac      62.50       62.50
## 1044          Dasypus      novemcinctus      66.33       66.33
## 1045            Fossa           fossana      67.50       67.50
## 1046            Felis          nigripes      70.87       70.87
## 1047          Genetta           tigrina      71.00       71.00
## 1048           Alopex           lagopus      71.04       71.04
## 1049            Lemur             catta      72.14       72.14
## 1050       Callicebus            moloch      72.20       72.20
## 1051       Callicebus           cupreus      74.00       74.00
## 1052          Genetta           genetta      74.20       74.20
## 1053          Eulemur            macaco      74.67       74.67
## 1054          Procyon             lotor      76.14       76.14
## 1055        Myoprocta           acouchy      76.80       76.80
## 1056           Ratufa           bicolor      77.00       77.00
## 1057      Propithecus         verreauxi      77.64       77.64
## 1058      Geocapromys         ingrahami      78.00       78.00
## 1059          Eulemur            fulvus      78.40       78.40
## 1060      Rhynchocyon       chrysopygus      80.00       80.00
## 1061          Kerodon         rupestris      80.33       80.33
## 1062       Chrotogale           owstoni      81.50       81.50
## 1063             Eira           barbara      82.25       82.25
## 1064            Meles             meles      84.25       84.25
## 1065            Lepus      californicus      84.34       84.34
## 1066       Pardofelis         marmorata      85.00       85.00
## 1067            Cavia         porcellus      85.14       85.14
## 1068          Eulemur       rubriventer      85.50       85.50
## 1069        Oncifelis         geoffroyi      86.18       86.18
## 1070      Paradoxurus    hermaphroditus      87.08       87.08
## 1071      Nyctereutes      procyonoides      87.92       87.92
## 1072       Otocolobus             manul      89.00       89.00
## 1073             Gulo              gulo      90.53       90.53
## 1074            Aotus       trivirgatus      91.18       91.18
## 1075          Varecia         variegata      91.99       91.99
## 1076            Manis      pentadactyla      92.50       92.50
## 1077     Prionailurus       bengalensis      93.86       93.86
## 1078            Lepus        townsendii      94.32       94.32
## 1079          Urocyon  cinereoargenteus      95.33       95.33
## 1080            Lepus         saxatilis      98.00       98.00
## 1081            Aotus         lemurinus      98.00       98.00
## 1082      Propithecus       tattersalli      98.00       98.00
## 1083       Tolypeutes           matacus      99.00       99.00
## 1084     Cryptoprocta             ferox     100.00      100.00
## 1085           Atilax       paludinosus     100.23      100.23
## 1086           Vulpes            vulpes     101.25      101.25
## 1087            Felis        silvestris     101.87      101.87
## 1088          Taxidea             taxus     101.88      101.88
## 1089            Lepus             othus     102.50      102.50
## 1090            Lepus          arcticus     105.00      105.00
## 1091       Thryonomys      swinderianus     105.00      105.00
## 1092       Euphractus        sexcinctus     105.00      105.00
## 1093          Zaedyus            pichiy     105.00      105.00
## 1094     Plagiodontia            aedium     105.85      105.85
## 1095            Lepus           timidus     107.93      107.93
## 1096       Ailuropoda       melanoleuca     109.29      109.29
## 1097            Lepus             tolai     110.00      110.00
## 1098       Priodontes           maximus     113.00      113.00
## 1099          Saimiri          sciureus     113.25      113.25
## 1100        Leopardus            wiedii     118.00      118.00
## 1101            Lepus            alleni     118.10      118.10
## 1102            Lepus          capensis     118.40      118.40
## 1103            Lepus         europaeus     119.67      119.67
## 1104            Manis         tricuspis     120.00      120.00
## 1105          Ailurus           fulgens     120.17      120.17
## 1106         Pithecia          monachus     120.67      120.67
## 1107          Otocyon         megalotis     120.88      120.88
## 1108      Daubentonia  madagascariensis     123.00      123.00
## 1109        Hemigalus         derbyanus     125.00      125.00
## 1110            Felis             chaus     126.62      126.62
## 1111   Chaetophractus          villosus     131.40      131.40
## 1112      Propithecus           diadema     135.00      135.00
## 1113            Nasua            narica     140.00      140.00
## 1114           Lontra        canadensis     141.00      141.00
## 1115        Atherurus         africanus     148.13      148.13
## 1116         Eupleres          goudotii     150.00      150.00
## 1117         Speothos         venaticus     152.43      152.43
## 1118            Nasua             nasua     153.33      153.33
## 1119            Canis         mesomelas     159.00      159.00
## 1120          Caracal           caracal     165.00      165.00
## 1121            Potos            flavus     165.66      165.66
## 1122     Prionailurus        viverrinus     170.00      170.00
## 1123         Lagidium          peruanum     180.00      180.00
## 1124         Alouatta            caraya     187.50      187.50
## 1125      Miopithecus          talapoin     187.50      187.50
## 1126              Sus         salvanius     191.50      191.50
## 1127       Dolichotis        salinicola     196.00      196.00
## 1128       Lagostomus           maximus     196.00      196.00
## 1129        Myocastor            coypus     196.36      196.36
## 1130        Pteronura      brasiliensis     202.83      202.83
## 1131             Lynx        canadensis     204.00      204.00
## 1132            Canis            aureus     207.50      207.50
## 1133         Capromys         pilorides     209.50      209.50
## 1134        Mellivora          capensis     210.00      210.00
## 1135        Lagothrix        lagotricha     213.96      213.96
## 1136         Neofelis          nebulosa     215.33      215.33
## 1137   Allenopithecus      nigroviridis     221.00      221.00
## 1138      Heterohyrax            brucei     225.00      225.00
## 1139            Cebus            apella     225.42      225.42
## 1140         Procavia          capensis     232.18      232.18
## 1141            Cebus         albifrons     232.42      232.42
## 1142           Ateles         fusciceps     235.00      235.00
## 1143      Dendrohyrax          dorsalis     236.00      236.00
## 1144            Cebus         capucinus     237.25      237.25
## 1145         Profelis            aurata     248.33      248.33
## 1146            Canis           latrans     249.75      249.75
## 1147         Catopuma        temminckii     250.00      250.00
## 1148      Leptailurus            serval     253.20      253.20
## 1149        Leopardus          pardalis     254.40      254.40
## 1150         Lagidium          viscacia     260.00      260.00
## 1151          Pedetes          capensis     264.50      264.50
## 1152             Lynx              lynx     269.50      269.50
## 1153             Cuon           alpinus     273.33      273.33
## 1154        Helarctos         malayanus     275.00      275.00
## 1155    Cercopithecus              mona     283.00      283.00
## 1156         Bradypus        variegatus     290.00      290.00
## 1157            Ursus        americanus     294.47      294.47
## 1158         Alouatta         seniculus     295.00      295.00
## 1159            Indri             indri     300.00      300.00
## 1160             Lynx             rufus     301.00      301.00
## 1161    Cercopithecus         neglectus     305.00      305.00
## 1162        Arctictis         binturong     316.38      316.38
## 1163        Moschiola           meminna     319.00      319.00
## 1164       Tremarctos           ornatus     320.00      320.00
## 1165        Hylobates               lar     325.71      325.71
## 1166   Trachypithecus          obscurus     329.83      329.83
## 1167          Hystrix  africaeaustralis     331.15      331.15
## 1168            Manis     crassicaudata     331.75      331.75
## 1169           Lycaon            pictus     332.50      332.50
## 1170      Chlorocebus          aethiops     337.79      337.79
## 1171            Manis        temminckii     338.00      338.00
## 1172    Cercopithecus            cephus     339.00      339.00
## 1173    Cercopithecus          pogonias     339.00      339.00
## 1174            Ursus        thibetanus     351.67      351.67
## 1175        Choloepus        didactylus     354.77      354.77
## 1176         Panthera            pardus     363.49      363.49
## 1177        Cerdocyon             thous     365.00      365.00
## 1178         Alouatta          palliata     368.75      368.75
## 1179         Tragulus         javanicus     370.00      370.00
## 1180    Cercopithecus          ascanius     371.00      371.00
## 1181         Tragulus              napu     373.67      373.67
## 1182        Choloepus         hoffmanni     387.25      387.25
## 1183             Puma          concolor     388.22      388.22
## 1184           Macaca             maura     389.50      389.50
## 1185           Macaca           radiata     391.33      391.33
## 1186    Cercopithecus             mitis     391.65      391.65
## 1187             Pudu    mephistophiles     400.00      400.00
## 1188       Chrysocyon        brachyurus     400.17      400.17
## 1189           Macaca          cyclopis     401.00      401.00
## 1190         Acinonyx           jubatus     403.96      403.96
## 1191    Cercopithecus         nictitans     406.00      406.00
## 1192           Macaca      fascicularis     407.82      407.82
## 1193          Coendou       prehensilis     407.90      407.90
## 1194      Civettictis           civetta     417.00      417.00
## 1195           Macaca           silenus     418.00      418.00
## 1196            Canis             lupus     418.60      418.60
## 1197        Pygathrix             bieti     427.00      427.00
## 1198   Trachypithecus           vetulus     432.33      432.33
## 1199    Cercopithecus             wolfi     435.00      435.00
## 1200          Hystrix         brachyura     445.00      445.00
## 1201           Macaca            sinica     446.00      446.00
## 1202           Ateles         geoffroyi     447.50      447.50
## 1203           Macaca          sylvanus     450.00      450.00
## 1204          Nasalis          larvatus     452.00      452.00
## 1205           Castor        canadensis     455.43      455.43
## 1206   Trachypithecus         francoisi     457.00      457.00
## 1207           Macaca             nigra     457.67      457.67
## 1208          Moschus       moschiferus     458.75      458.75
## 1209           Ateles          paniscus     461.67      461.67
## 1210       Lophocebus          albigena     462.50      462.50
## 1211    Cercopithecus             diana     463.00      463.00
## 1212        Pygathrix           nemaeus     463.00      463.00
## 1213            Uncia             uncia     463.45      463.45
## 1214    Theropithecus            gelada     464.50      464.50
## 1215           Macaca           mulatta     476.20      476.20
## 1216           Macaca        nemestrina     476.24      476.24
## 1217         Alouatta             pigra     480.00      480.00
## 1218           Macaca         arctoides     486.20      486.20
## 1219            Ursus            arctos     494.82      494.82
## 1220          Colobus           guereza     497.00      497.00
## 1221        Neotragus            batesi     500.00      500.00
## 1222            Manis          gigantea     500.00      500.00
## 1223    Semnopithecus          entellus     500.00      500.00
## 1224           Macaca           fuscata     504.96      504.96
## 1225          Moschus       berezovskii     524.00      524.00
## 1226        Hylobates       syndactylus     527.33      527.33
## 1227           Macaca         thibetana     533.33      533.33
## 1228           Castor             fiber     537.94      537.94
## 1229           Mazama         americana     542.50      542.50
## 1230     Erythrocebus             patas     546.50      546.50
## 1231       Dolichotis         patagonum     561.94      561.94
## 1232          Colobus         polykomos     573.40      573.40
## 1233            Ursus         maritimus     634.25      634.25
## 1234        Catagonus           wagneri     647.00      647.00
## 1235          Madoqua            kirkii     654.00      654.00
## 1236           Pecari            tajacu     657.18      657.18
## 1237           Hyaena            hyaena     669.50      669.50
## 1238     Phacochoerus       aethiopicus     672.78      672.78
## 1239        Erethizon          dorsatum     678.20      678.20
## 1240          Madoqua         guentheri     681.67      681.67
## 1241           Agouti              paca     682.40      682.40
## 1242          Madoqua          saltiana     690.00      690.00
## 1243             Pudu              puda     695.00      695.00
## 1244        Babyrousa         babyrussa     715.00      715.00
## 1245       Parahyaena           brunnea     727.28      727.28
## 1246          Dinomys         branickii     730.54      730.54
## 1247       Mandrillus            sphinx     751.50      751.50
## 1248    Potamochoerus            porcus     762.00      762.00
## 1249       Mandrillus       leucophaeus     772.00      772.00
## 1250           Mazama       gouazoupira     792.33      792.33
## 1251      Cephalophus         monticola     800.00      800.00
## 1252          Moschus      chrysogaster     800.00      800.00
## 1253         Panthera              onca     831.89      831.89
## 1254      Cephalophus         maxwellii     832.00      832.00
## 1255            Papio         hamadryas     836.97      836.97
## 1256       Raphicerus        campestris     936.00      936.00
## 1257      Cephalophus         rufilatus     965.00      965.00
## 1258          Hystrix          cristata    1000.00     1000.00
## 1259       Hydropotes           inermis    1028.33     1028.33
## 1260       Tetracerus      quadricornis    1033.00     1033.00
## 1261              Sus            scrofa    1040.31     1040.31
## 1262            Aonyx          capensis    1050.00     1050.00
## 1263       Oreotragus        oreotragus    1065.00     1065.00
## 1264        Muntiacus           reevesi    1096.67     1096.67
## 1265       Sylvicapra           grimmia    1202.86     1202.86
## 1266        Capreolus         capreolus    1214.33     1214.33
## 1267          Tayassu            pecari    1225.00     1225.00
## 1268         Panthera            tigris    1248.59     1248.59
## 1269      Hylochoerus    meinertzhageni    1250.00     1250.00
## 1270          Gazella            spekei    1253.33     1253.33
## 1271        Muntiacus           muntjak    1310.80     1310.80
## 1272          Crocuta           crocuta    1353.33     1353.33
## 1273         Panthera               leo    1377.45     1377.45
## 1274              Pan          paniscus    1411.20     1411.20
## 1275     Myrmecophaga        tridactyla    1491.17     1491.17
## 1276          Gazella            dorcas    1500.63     1500.63
## 1277     Hydrochaeris      hydrochaeris    1537.50     1537.50
## 1278      Cephalophus          dorsalis    1610.00     1610.00
## 1279              Pan       troglodytes    1669.92     1669.92
## 1280            Pongo          pygmaeus    1671.93     1671.93
## 1281      Cephalophus             zebra    1707.50     1707.50
## 1282      Orycteropus              afer    1734.00     1734.00
## 1283        Capreolus          pygargus    1750.00     1750.00
## 1284          Enhydra            lutris    1909.17     1909.17
## 1285       Hemitragus        jemlahicus    2000.00     2000.00
## 1286      Naemorhedus             goral    2000.00     2000.00
## 1287          Gorilla           gorilla    2077.50     2077.50
## 1288       Ozotoceros       bezoarticus    2150.00     2150.00
## 1289            Capra            hircus    2200.00     2200.00
## 1290          Ourebia            ourebi    2235.00     2235.00
## 1291             Ovis             aries    2277.08     2277.08
## 1292             Axis          porcinus    2365.00     2365.00
## 1293             Ovis             ammon    2375.00     2375.00
## 1294      Cephalophus       silvicultor    2400.00     2400.00
## 1295          Gazella      subgutturosa    2426.67     2426.67
## 1296          Gazella         thomsonii    2553.75     2553.75
## 1297          Redunca       fulvorufula    2600.00     2600.00
## 1298        Rupicapra         rupicapra    2652.86     2652.86
## 1299            Capra              ibex    2791.43     2791.43
## 1300         Procapra         gutturosa    2900.00     2900.00
## 1301       Odocoileus          hemionus    2952.67     2952.67
## 1302            Phoca          sibirica    3000.00     3000.00
## 1303       Odocoileus       virginianus    3154.67     3154.67
## 1304         Oreamnos        americanus    3176.67     3176.67
## 1305      Antilocapra         americana    3246.36     3246.36
## 1306            Saiga          tatarica    3365.33     3365.33
## 1307             Axis              axis    3378.50     3378.50
## 1308             Ovis             dalli    3500.00     3500.00
## 1309      Naemorhedus           crispus    3510.50     3510.50
## 1310    Arctocephalus     galapagoensis    3533.33     3533.33
## 1311           Cervus            nippon    3734.00     3734.00
## 1312            Capra    cylindricornis    3787.50     3787.50
## 1313      Tragelaphus          scriptus    3800.00     3800.00
## 1314       Ammotragus            lervia    3810.00     3810.00
## 1315    Arctocephalus          forsteri    3833.33     3833.33
## 1316         Antilope        cervicapra    3846.00     3846.00
## 1317            Capra         caucasica    3850.00     3850.00
## 1318       Antidorcas       marsupialis    3910.00     3910.00
## 1319      Tragelaphus            spekii    4000.00     4000.00
## 1320      Blastocerus        dichotomus    4200.00     4200.00
## 1321    Arctocephalus         australis    4250.00     4250.00
## 1322             Ovis        canadensis    4266.67     4266.67
## 1323          Tapirus         pinchaque    4270.00     4270.00
## 1324    Arctocephalus        tropicalis    4420.00     4420.00
## 1325          Redunca         arundinum    4500.00     4500.00
## 1326             Dama              dama    4511.17     4511.17
## 1327          Gazella        leptoceros    4640.00     4640.00
## 1328            Kobus               kob    4937.50     4937.50
## 1329            Phoca           caspica    5000.00     5000.00
## 1330           Cervus             eldii    5008.00     5008.00
## 1331        Aepyceros          melampus    5093.00     5093.00
## 1332            Kobus             leche    5100.00     5100.00
## 1333      Callorhinus           ursinus    5182.73     5182.73
## 1334      Tragelaphus           angasii    5232.50     5232.50
## 1335          Tapirus        terrestris    5417.50     5417.50
## 1336            Addax     nasomaculatus    5480.00     5480.00
## 1337  Cephalorhynchus       commersonii    5500.00     5500.00
## 1338          Gazella            granti    5602.50     5602.50
## 1339     Hexaprotodon       liberiensis    5636.25     5636.25
## 1340      Tragelaphus          imberbis    5760.00     5760.00
## 1341         Rangifer          tarandus    5773.67     5773.67
## 1342          Vicugna           vicugna    5841.67     5841.67
## 1343       Boselaphus      tragocamelus    5875.00     5875.00
## 1344            Phoca           hispida    5909.09     5909.09
## 1345    Arctocephalus           gazella    5933.33     5933.33
## 1346    Arctocephalus          pusillus    5955.56     5955.56
## 1347         Budorcas         taxicolor    6000.00     6000.00
## 1348         Phocoena          phocoena    6775.00     6775.00
## 1349       Damaliscus          pygargus    6792.00     6792.00
## 1350             Inia       geoffrensis    6800.00     6800.00
## 1351         Zalophus     californianus    6817.14     6817.14
## 1352       Phocarctos           hookeri    7000.00     7000.00
## 1353       Platanista             minor    7000.00     7000.00
## 1354        Delphinus           delphis    7050.00     7050.00
## 1355      Neophocaena      phocaenoides    7066.67     7066.67
## 1356         Neophoca           cinerea    7075.00     7075.00
## 1357            Phoca            largha    7100.00     7100.00
## 1358          Tapirus           indicus    7100.00     7100.00
## 1359             Lama             pacos    7584.00     7584.00
## 1360       Pontoporia       blainvillei    7900.00     7900.00
## 1361       Damaliscus           hunteri    8350.00     8350.00
## 1362            Phoca      groenlandica    8476.92     8476.92
## 1363           Cervus           elaphus    8814.09     8814.09
## 1364            Kobus    ellipsiprymnus    9000.00     9000.00
## 1365          Tapirus           bairdii    9400.00     9400.00
## 1366  Cephalorhynchus        heavisidii    9500.00     9500.00
## 1367           Cervus          unicolor    9890.00     9890.00
## 1368       Alcelaphus        buselaphus   10166.67    10166.67
## 1369            Phoca          fasciata   10250.00    10250.00
## 1370             Oryx            dammah   10316.67    10316.67
## 1371     Connochaetes              gnou   11000.00    11000.00
## 1372           Ovibos         moschatus   11077.40    11077.40
## 1373            Phoca          vitulina   11083.64    11083.64
## 1374       Damaliscus           lunatus   11100.00    11100.00
## 1375         Stenella      coeruleoalba   11300.00    11300.00
## 1376        Elaphurus        davidianus   11412.50    11412.50
## 1377             Lama          guanicoe   11666.67    11666.67
## 1378             Lama             glama   12000.00    12000.00
## 1379             Oryx           gazella   12015.00    12015.00
## 1380         Orcaella      brevirostris   12300.00    12300.00
## 1381       Trichechus          inunguis   12500.00    12500.00
## 1382           Otaria           byronia   12763.33    12763.33
## 1383      Halichoerus            grypus   12820.00    12820.00
## 1384            Alces             alces   13018.18    13018.18
## 1385       Sigmoceros    lichtensteinii   15000.00    15000.00
## 1386      Hippotragus           equinus   15166.67    15166.67
## 1387       Cystophora          cristata   15388.89    15388.89
## 1388      Hippotragus             niger   15447.14    15447.14
## 1389      Tragelaphus      strepsiceros   16150.00    16150.00
## 1390           Okapia         johnstoni   17375.00    17375.00
## 1391     Connochaetes          taurinus   17716.67    17716.67
## 1392              Bos         grunniens   18000.00    18000.00
## 1393         Tursiops         truncatus   18920.00    18920.00
## 1394       Eumetopias           jubatus   19215.00    19215.00
## 1395      Tragelaphus         eurycerus   19240.00    19240.00
## 1396         Monachus          monachus   19600.00    19600.00
## 1397            Bison             bison   20000.00    20000.00
## 1398      Ommatophoca            rossii   20266.67    20266.67
## 1399          Lobodon     carcinophagus   22333.33    22333.33
## 1400     Dicerorhinus       sumatrensis   23000.00    23000.00
## 1401            Bison           bonasus   23000.08    23000.08
## 1402              Bos         frontalis   23033.33    23033.33
## 1403   Lagenorhynchus            acutus   24000.00    24000.00
## 1404           Dugong             dugon   27500.00    27500.00
## 1405      Taurotragus              oryx   28325.00    28325.00
## 1406    Leptonychotes         weddellii   28394.00    28394.00
## 1407       Trichechus           manatus   28633.33    28633.33
## 1408            Equus            asinus   29166.67    29166.67
## 1409            Equus             zebra   30000.00    30000.00
## 1410         Monachus     schauinslandi   30675.00    30675.00
## 1411         Hydrurga          leptonyx   30875.00    30875.00
## 1412            Equus        burchellii   32292.00    32292.00
## 1413          Diceros          bicornis   34166.67    34166.67
## 1414          Camelus        bactrianus   35000.00    35000.00
## 1415         Mirounga    angustirostris   35250.00    35250.00
## 1416          Camelus       dromedarius   35808.46    35808.46
## 1417       Erignathus          barbatus   36950.00    36950.00
## 1418          Bubalus           bubalis   37500.00    37500.00
## 1419     Hippopotamus         amphibius   39746.67    39746.67
## 1420         Mirounga           leonina   39918.89    39918.89
## 1421            Equus            grevyi   40000.00    40000.00
## 1422         Syncerus            caffer   42862.50    42862.50
## 1423    Ceratotherium             simum   51166.67    51166.67
## 1424         Odobenus          rosmarus   51883.33    51883.33
## 1425       Rhinoceros         unicornis   58204.55    58204.55
## 1426          Giraffa    camelopardalis   59770.59    59770.59
## 1427     Globicephala     macrorhynchus   60000.00    60000.00
## 1428   Delphinapterus            leucas   71400.00    71400.00
## 1429          Monodon         monoceros   80000.00    80000.00
## 1430            Kogia         breviceps   82000.00    82000.00
## 1431        Loxodonta          africana   99006.25    99006.25
## 1432          Elephas           maximus  100038.90   100038.90
## 1433     Globicephala             melas  109666.67   109666.67
## 1434          Orcinus              orca  159333.33   159333.33
## 1435     Eschrichtius          robustus  529666.67   529666.67
## 1436     Balaenoptera          borealis  650000.00   650000.00
## 1437         Physeter           catodon  942666.67   942666.67
## 1438        Megaptera      novaeangliae 1325000.00  1325000.00
## 1439     Balaenoptera          physalus 1850000.00  1850000.00
## 1440     Balaenoptera          musculus 2250000.00  2250000.00
```

# Lab 6.2-"dplyr Superhero"
## `tabyl`
Produces counts and percentages, like `table`

```r
#tabyl(superhero_info, alignment)
```

# Lab 7.1-"`summarize()` and `group_by()`"
## Load the tidyverse and janitor

```r
library("tidyverse")
library("janitor")
```

## Install `skimr`

```r
#install.packages("skimr")
library("skimr")
```

## Load the data
Built-in data on mammal sleep patterns and palmerpenguins

```r
?msleep #? infront of data set gives info on builtin dataset, part of ggplot2, and is all part of tidyverse
names(msleep)
```

```
##  [1] "name"         "genus"        "vore"         "order"        "conservation"
##  [6] "sleep_total"  "sleep_rem"    "sleep_cycle"  "awake"        "brainwt"     
## [11] "bodywt"
```


```r
library("palmerpenguins")
```

## dplyr Practice

```r
msleep24 <- msleep %>% 
  select(name, vore, sleep_total) %>% 
  mutate(sleep_total_24 = sleep_total/24) %>% 
  filter(sleep_total_24<=0.3) %>% 
  arrange(desc(sleep_total_24))
```


```r
summary(msleep24) #can see the min and max
```

```
##      name               vore            sleep_total    sleep_total_24   
##  Length:20          Length:20          Min.   :1.900   Min.   :0.07917  
##  Class :character   Class :character   1st Qu.:3.250   1st Qu.:0.13542  
##  Mode  :character   Mode  :character   Median :4.200   Median :0.17500  
##                                        Mean   :4.455   Mean   :0.18563  
##                                        3rd Qu.:5.450   3rd Qu.:0.22708  
##                                        Max.   :7.000   Max.   :0.29167
```


```r
skim(msleep24) #tells no missing data, complete data, gives quartiles, and histogram 
```


Table: Data summary

|                         |         |
|:------------------------|:--------|
|Name                     |msleep24 |
|Number of rows           |20       |
|Number of columns        |4        |
|_______________________  |         |
|Column type frequency:   |         |
|character                |2        |
|numeric                  |2        |
|________________________ |         |
|Group variables          |None     |


**Variable type: character**

|skim_variable | n_missing| complete_rate| min| max| empty| n_unique| whitespace|
|:-------------|---------:|-------------:|---:|---:|-----:|--------:|----------:|
|name          |         0|           1.0|   3|  20|     0|       20|          0|
|vore          |         2|           0.9|   5|   5|     0|        2|          0|


**Variable type: numeric**

|skim_variable  | n_missing| complete_rate| mean|   sd|   p0|  p25|  p50|  p75| p100|hist  |
|:--------------|---------:|-------------:|----:|----:|----:|----:|----:|----:|----:|:-----|
|sleep_total    |         0|             1| 4.46| 1.45| 1.90| 3.25| 4.20| 5.45| 7.00|▃▇▂▇▅ |
|sleep_total_24 |         0|             1| 0.19| 0.06| 0.08| 0.14| 0.17| 0.23| 0.29|▃▇▂▇▅ |

```r
# part of the `skimr` package
```


```r
hist(msleep24$sleep_total_24) #gives histogram
```

![](midterm1notes_files/figure-html/unnamed-chunk-103-1.png)<!-- -->

## `summarize()`
Produce summary statistics for a given variable in a data frame.

```r
msleep %>% 
  filter(bodywt>200) %>% 
  summarize(mean_sleep_lg=mean(sleep_total))
```

```
## # A tibble: 1 × 1
##   mean_sleep_lg
##           <dbl>
## 1           3.3
```
Same as:

```r
large <- msleep %>% 
  select(name, genus, bodywt, sleep_total) %>% 
  filter(bodywt > 200) %>% 
  arrange(desc(bodywt))
large
```

```
## # A tibble: 7 × 4
##   name             genus         bodywt sleep_total
##   <chr>            <chr>          <dbl>       <dbl>
## 1 African elephant Loxodonta      6654          3.3
## 2 Asian elephant   Elephas        2547          3.9
## 3 Giraffe          Giraffa         900.         1.9
## 4 Pilot whale      Globicephalus   800          2.7
## 5 Cow              Bos             600          4  
## 6 Horse            Equus           521          2.9
## 7 Brazilian tapir  Tapirus         208.         4.4
```

```r
mean(large$sleep_total)
```

```
## [1] 3.3
```


```r
msleep %>% 
  filter(bodywt>200) %>% 
  summarize(mean_sleep_lg=mean(sleep_total),
            min_sleep_lg=min(sleep_total),
            max_sleep_lg=max(sleep_total),
            sd_sleep_lg=sd(sleep_total),
            total=n()) #total tells you the number of rows, 7 animals
```

```
## # A tibble: 1 × 5
##   mean_sleep_lg min_sleep_lg max_sleep_lg sd_sleep_lg total
##           <dbl>        <dbl>        <dbl>       <dbl> <int>
## 1           3.3          1.9          4.4       0.870     7
```

## `n_distinct()`
A way of cleanly presenting the number of distinct observations. 

```r
msleep %>% 
  summarize(n_genera=n_distinct(genus)) #This is going to count the number of genera in msleep
```

```
## # A tibble: 1 × 1
##   n_genera
##      <int>
## 1       77
```


```r
glimpse(msleep) #reality check, we can see the number of rows decreased, meaning they were grouped together
```

```
## Rows: 83
## Columns: 11
## $ name         <chr> "Cheetah", "Owl monkey", "Mountain beaver", "Greater shor…
## $ genus        <chr> "Acinonyx", "Aotus", "Aplodontia", "Blarina", "Bos", "Bra…
## $ vore         <chr> "carni", "omni", "herbi", "omni", "herbi", "herbi", "carn…
## $ order        <chr> "Carnivora", "Primates", "Rodentia", "Soricomorpha", "Art…
## $ conservation <chr> "lc", NA, "nt", "lc", "domesticated", NA, "vu", NA, "dome…
## $ sleep_total  <dbl> 12.1, 17.0, 14.4, 14.9, 4.0, 14.4, 8.7, 7.0, 10.1, 3.0, 5…
## $ sleep_rem    <dbl> NA, 1.8, 2.4, 2.3, 0.7, 2.2, 1.4, NA, 2.9, NA, 0.6, 0.8, …
## $ sleep_cycle  <dbl> NA, NA, NA, 0.1333333, 0.6666667, 0.7666667, 0.3833333, N…
## $ awake        <dbl> 11.9, 7.0, 9.6, 9.1, 20.0, 9.6, 15.3, 17.0, 13.9, 21.0, 1…
## $ brainwt      <dbl> NA, 0.01550, NA, 0.00029, 0.42300, NA, NA, NA, 0.07000, 0…
## $ bodywt       <dbl> 50.000, 0.480, 1.350, 0.019, 600.000, 3.850, 20.490, 0.04…
```

## `group_by()`
`summarize()` function is most useful when used in conjunction with `group_by()`

```r
msleep %>%
  group_by(vore) %>% #we are grouping by feeding ecology, a categorical variable
  summarize(min_bodywt = min(bodywt),
            max_bodywt = max(bodywt),
            mean_bodywt = mean(bodywt),
            total=n())
```

```
## # A tibble: 5 × 5
##   vore    min_bodywt max_bodywt mean_bodywt total
##   <chr>        <dbl>      <dbl>       <dbl> <int>
## 1 carni        0.028      800        90.8      19
## 2 herbi        0.022     6654       367.       32
## 3 insecti      0.01        60        12.9       5
## 4 omni         0.005       86.2      12.7      20
## 5 <NA>         0.021        3.6       0.858     7
```

`na.rm=TRUE` to remove NA

```r
msleep %>%
  group_by(order) %>% 
  summarize(mean_brainwt = mean(brainwt, na.rm=TRUE)) #we fixed the problem but theres NaN
```

```
## # A tibble: 19 × 2
##    order           mean_brainwt
##    <chr>                  <dbl>
##  1 Afrosoricida        0.0026  
##  2 Artiodactyla        0.198   
##  3 Carnivora           0.0986  
##  4 Cetacea           NaN       
##  5 Chiroptera          0.000275
##  6 Cingulata           0.0459  
##  7 Didelphimorphia     0.0063  
##  8 Diprotodontia       0.0114  
##  9 Erinaceomorpha      0.00295 
## 10 Hyracoidea          0.0152  
## 11 Lagomorpha          0.0121  
## 12 Monotremata         0.025   
## 13 Perissodactyla      0.414   
## 14 Pilosa            NaN       
## 15 Primates            0.254   
## 16 Proboscidea         5.16    
## 17 Rodentia            0.00357 
## 18 Scandentia          0.0025  
## 19 Soricomorpha        0.000592
```

# Lab 7.2-"summarize practice, `count()`, `across()`"
NAs in data

```r
penguins %>% 
  group_by(island) %>% #group by only works with categorical variable 
  summarize(number_NAs = sum(is.na(body_mass_g))) ##the one NA values screw up the calculations
```

```
## # A tibble: 3 × 2
##   island    number_NAs
##   <fct>          <int>
## 1 Biscoe             1
## 2 Dream              0
## 3 Torgersen          1
```

Remove the NAs and recalculate.

```r
penguins %>% 
  filter(!is.na(body_mass_g)) %>%  #Pull out all of the observations with a number, leave others w/ NA behind
  group_by(island) %>% 
  summarize(mean_weight=mean(body_mass_g))
```

```
## # A tibble: 3 × 2
##   island    mean_weight
##   <fct>           <dbl>
## 1 Biscoe          4716.
## 2 Dream           3713.
## 3 Torgersen       3706.
```

If interested in the number of observations (penguins) by species and island. 

```r
penguins %>% 
  group_by(species, island) %>% # Group by species and island, and get number of species by those. 
  summarize(number_of_penguins=n(), .groups= 'keep')#the .groups argument here just prevents a warning message
```

```
## # A tibble: 5 × 3
## # Groups:   species, island [5]
##   species   island    number_of_penguins
##   <fct>     <fct>                  <int>
## 1 Adelie    Biscoe                    44
## 2 Adelie    Dream                     56
## 3 Adelie    Torgersen                 52
## 4 Chinstrap Dream                     68
## 5 Gentoo    Biscoe                   124
```

## Counts
`count()` is an easy way of determining how many observations you have within a column. It acts like a combination of `group_by()` and `n()`.

```r
penguins %>% 
  count(island, sort = T) #sort=T sorts the column in descending order
```

```
## # A tibble: 3 × 2
##   island        n
##   <fct>     <int>
## 1 Biscoe      168
## 2 Dream       124
## 3 Torgersen    52
```
same as:

```r
penguins %>% 
  group_by(island) %>% 
  summarize(n=n())
```

```
## # A tibble: 3 × 2
##   island        n
##   <fct>     <int>
## 1 Biscoe      168
## 2 Dream       124
## 3 Torgersen    52
```

You can also use `count()` across multiple variables.

```r
penguins %>% 
  count(island, species, sort = T) # sort=T will arrange in descending order
```

```
## # A tibble: 5 × 3
##   island    species       n
##   <fct>     <fct>     <int>
## 1 Biscoe    Gentoo      124
## 2 Dream     Chinstrap    68
## 3 Dream     Adelie       56
## 4 Torgersen Adelie       52
## 5 Biscoe    Adelie       44
```

`tabyl()` also gives counts

```r
penguins %>% 
  tabyl(island, species)
```

```
##     island Adelie Chinstrap Gentoo
##     Biscoe     44         0    124
##      Dream     56        68      0
##  Torgersen     52         0      0
```

## `across()`
Its like `filter()` and `select()` across multiple variables

```r
penguins %>%
  summarize(across(c(species, island, sex), n_distinct))
```

```
## # A tibble: 1 × 3
##   species island   sex
##     <int>  <int> <int>
## 1       3      3     3
```
Same as:

```r
penguins %>%
  summarize(distinct_species = n_distinct(species),
            distinct_island = n_distinct(island),
            distinct_sex = n_distinct(sex))
```

```
## # A tibble: 1 × 3
##   distinct_species distinct_island distinct_sex
##              <int>           <int>        <int>
## 1                3               3            3
```

Helpful for continuous variables.

```r
penguins %>%
  summarize(across(contains("mm"), mean, na.rm=T))
```

```
## Warning: There was 1 warning in `summarize()`.
## ℹ In argument: `across(contains("mm"), mean, na.rm = T)`.
## Caused by warning:
## ! The `...` argument of `across()` is deprecated as of dplyr 1.1.0.
## Supply arguments directly to `.fns` through an anonymous function instead.
## 
##   # Previously
##   across(a:b, mean, na.rm = TRUE)
## 
##   # Now
##   across(a:b, \(x) mean(x, na.rm = TRUE))
```

```
## # A tibble: 1 × 3
##   bill_length_mm bill_depth_mm flipper_length_mm
##            <dbl>         <dbl>             <dbl>
## 1           43.9          17.2              201.
```


```r
penguins %>%
  summarize(across(contains("mm"), \(x) mean(x, na.rm = TRUE))) #use this to correct the error above
```

```
## # A tibble: 1 × 3
##   bill_length_mm bill_depth_mm flipper_length_mm
##            <dbl>         <dbl>             <dbl>
## 1           43.9          17.2              201.
```

`group_by` also works.

```r
penguins %>%
  group_by(sex) %>% 
  summarize(across(contains("mm"), mean, na.rm=T))
```

```
## # A tibble: 3 × 4
##   sex    bill_length_mm bill_depth_mm flipper_length_mm
##   <fct>           <dbl>         <dbl>             <dbl>
## 1 female           42.1          16.4              197.
## 2 male             45.9          17.9              205.
## 3 <NA>             41.3          16.6              199
```

Here we summarize across all variables.

```r
penguins %>%
  summarise_all(mean, na.rm=T)
```

```
## Warning: There were 3 warnings in `summarise()`.
## The first warning was:
## ℹ In argument: `species = (function (x, ...) ...`.
## Caused by warning in `mean.default()`:
## ! argument is not numeric or logical: returning NA
## ℹ Run `dplyr::last_dplyr_warnings()` to see the 2 remaining warnings.
```

```
## # A tibble: 1 × 8
##   species island bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
##     <dbl>  <dbl>          <dbl>         <dbl>             <dbl>       <dbl>
## 1      NA     NA           43.9          17.2              201.       4202.
## # ℹ 2 more variables: sex <dbl>, year <dbl>
```

Operators can also work, here I am summarizing across all variables except `species`, `island`, `sex`, and `year`.

```r
penguins %>%
  summarise(across(!c(species, island, sex, year), 
                  mean, na.rm=T))
```

```
## # A tibble: 1 × 4
##   bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
##            <dbl>         <dbl>             <dbl>       <dbl>
## 1           43.9          17.2              201.       4202.
```

All variables that include "bill"...all of the other dplyr operators also work.

```r
penguins %>%
  summarise(across(starts_with("bill"), mean, na.rm=T))
```

```
## # A tibble: 1 × 2
##   bill_length_mm bill_depth_mm
##            <dbl>         <dbl>
## 1           43.9          17.2
```

