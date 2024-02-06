---
title: "Midterm 1 W24"
author: "Jasmine Hsiao"
date: "2024-02-06"
output:
  html_document: 
    keep_md: yes
  pdf_document: default
---

## Instructions
Answer the following questions and complete the exercises in RMarkdown. Please embed all of your code and push your final work to your repository. Your code must be organized, clean, and run free from errors. Remember, you must remove the `#` for any included code chunks to run. Be sure to add your name to the author header above. 

Your code must knit in order to be considered. If you are stuck and cannot answer a question, then comment out your code and knit the document. You may use your notes, labs, and homework to help you complete this exam. Do not use any other resources- including AI assistance.  

Don't forget to answer any questions that are asked in the prompt!  

Be sure to push your completed midterm to your repository. This exam is worth 30 points.  

## Background
In the data folder, you will find data related to a study on wolf mortality collected by the National Park Service. You should start by reading the `README_NPSwolfdata.pdf` file. This will provide an abstract of the study and an explanation of variables.  

The data are from: Cassidy, Kira et al. (2022). Gray wolf packs and human-caused wolf mortality. [Dryad](https://doi.org/10.5061/dryad.mkkwh713f). 

## Load the libraries

```r
library("tidyverse")
library("janitor")
```

## Load the wolves data
In these data, the authors used `NULL` to represent missing values. I am correcting this for you below and using `janitor` to clean the column names.

```r
wolves <- read.csv("data/NPS_wolfmortalitydata.csv", na = c("NULL")) %>% clean_names()
```

## Questions
Problem 1. (1 point) Let's start with some data exploration. What are the variable (column) names? 
*The column names are:* 

```r
names(wolves)
```

```
##  [1] "park"         "biolyr"       "pack"         "packcode"     "packsize_aug"
##  [6] "mort_yn"      "mort_all"     "mort_lead"    "mort_nonlead" "reprody1"    
## [11] "persisty1"
```

Problem 2. (1 point) Use the function of your choice to summarize the data and get an idea of its structure.  

```r
summary(wolves)
```

```
##      park               biolyr         pack              packcode     
##  Length:864         Min.   :1986   Length:864         Min.   :  2.00  
##  Class :character   1st Qu.:1999   Class :character   1st Qu.: 48.00  
##  Mode  :character   Median :2006   Mode  :character   Median : 86.50  
##                     Mean   :2005                      Mean   : 91.39  
##                     3rd Qu.:2012                      3rd Qu.:133.00  
##                     Max.   :2021                      Max.   :193.00  
##                                                                       
##   packsize_aug       mort_yn          mort_all         mort_lead      
##  Min.   : 0.000   Min.   :0.0000   Min.   : 0.0000   Min.   :0.00000  
##  1st Qu.: 5.000   1st Qu.:0.0000   1st Qu.: 0.0000   1st Qu.:0.00000  
##  Median : 8.000   Median :0.0000   Median : 0.0000   Median :0.00000  
##  Mean   : 8.789   Mean   :0.1956   Mean   : 0.3715   Mean   :0.09552  
##  3rd Qu.:12.000   3rd Qu.:0.0000   3rd Qu.: 0.0000   3rd Qu.:0.00000  
##  Max.   :37.000   Max.   :1.0000   Max.   :24.0000   Max.   :3.00000  
##  NA's   :55                                          NA's   :16       
##   mort_nonlead        reprody1        persisty1     
##  Min.   : 0.0000   Min.   :0.0000   Min.   :0.0000  
##  1st Qu.: 0.0000   1st Qu.:1.0000   1st Qu.:1.0000  
##  Median : 0.0000   Median :1.0000   Median :1.0000  
##  Mean   : 0.2641   Mean   :0.7629   Mean   :0.8865  
##  3rd Qu.: 0.0000   3rd Qu.:1.0000   3rd Qu.:1.0000  
##  Max.   :22.0000   Max.   :1.0000   Max.   :1.0000  
##  NA's   :12        NA's   :71       NA's   :9
```

```r
glimpse(wolves)
```

```
## Rows: 864
## Columns: 11
## $ park         <chr> "DENA", "DENA", "DENA", "DENA", "DENA", "DENA", "DENA", "…
## $ biolyr       <int> 1996, 1991, 2017, 1996, 1992, 1994, 2007, 2007, 1995, 200…
## $ pack         <chr> "McKinley River1", "Birch Creek N", "Eagle Gorge", "East …
## $ packcode     <int> 89, 58, 71, 72, 74, 77, 101, 108, 109, 53, 63, 66, 70, 72…
## $ packsize_aug <dbl> 12, 5, 8, 13, 7, 6, 10, NA, 9, 8, 7, 11, 0, 19, 15, 12, 1…
## $ mort_yn      <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
## $ mort_all     <int> 4, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
## $ mort_lead    <int> 2, 2, 0, 0, 0, 0, 1, 2, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, …
## $ mort_nonlead <int> 2, 0, 2, 2, 2, 2, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, …
## $ reprody1     <int> 0, 0, NA, 1, NA, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1…
## $ persisty1    <int> 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, …
```

```r
dim(wolves)
```

```
## [1] 864  11
```


Problem 3. (3 points) Which parks/ reserves are represented in the data? Don't just use the abstract, pull this information from the data.  
*The parks include DENA, GNTP, VNP, YNP, YUCH.*

```r
wolves %>% 
  group_by(park) %>% 
  count(park)
```

```
## # A tibble: 5 × 2
## # Groups:   park [5]
##   park      n
##   <chr> <int>
## 1 DENA    340
## 2 GNTP     77
## 3 VNP      48
## 4 YNP     248
## 5 YUCH    151
```


Problem 4. (4 points) Which park has the largest number of wolf packs?
*DENA has the largest number of wolf packs*

```r
wolves %>% 
  group_by(park) %>% 
  summarize(n_packs=n_distinct(pack)) %>% 
  arrange(desc(n_packs))
```

```
## # A tibble: 5 × 2
##   park  n_packs
##   <chr>   <int>
## 1 DENA       69
## 2 YNP        46
## 3 YUCH       36
## 4 VNP        22
## 5 GNTP       12
```

Problem 5. (4 points) Which park has the highest total number of human-caused mortalities `mort_all`?
*YUCH has the highest total number of human-caused mortalities*

```r
wolves %>% 
  group_by(park) %>% 
  summarize(total_mort_all=sum(mort_all)) %>% 
  arrange(desc(total_mort_all))
```

```
## # A tibble: 5 × 2
##   park  total_mort_all
##   <chr>          <int>
## 1 YUCH             136
## 2 YNP               72
## 3 DENA              64
## 4 GNTP              38
## 5 VNP               11
```


The wolves in [Yellowstone National Park](https://www.nps.gov/yell/learn/nature/wolf-restoration.htm) are an incredible conservation success story. Let's focus our attention on this park.  

Problem 6. (2 points) Create a new object "ynp" that only includes the data from Yellowstone National Park.  

```r
ynp <- wolves %>% 
  filter(park == "YNP")
```


Problem 7. (3 points) Among the Yellowstone wolf packs, the [Druid Peak Pack](https://www.pbs.org/wnet/nature/in-the-valley-of-the-wolves-the-druid-wolf-pack-story/209/) is one of most famous. What was the average pack size of this pack for the years represented in the data?
*The average pack size of druid pack is 13.93 for the years represented.*

```r
ynp %>% 
  filter(pack == "druid") %>% 
  summarize(mean_pack_size=mean(packsize_aug))
```

```
##   mean_pack_size
## 1       13.93333
```

Problem 8. (4 points) Pack dynamics can be hard to predict- even for strong packs like the Druid Peak pack. At which year did the Druid Peak pack have the largest pack size? What do you think happened in 2010?
*In 2001, Druid Peak pack have the largest pack size.*

```r
ynp %>% 
  filter(pack == "druid") %>% 
  summarize(max_pack_size=max(packsize_aug))
```

```
##   max_pack_size
## 1            37
```

```r
ynp %>% 
  select(pack, packsize_aug, biolyr) %>% 
  filter(pack == "druid" & packsize_aug == 37) 
```

```
##    pack packsize_aug biolyr
## 1 druid           37   2001
```
*From the data of 2010, we can see that the pack size of Druid Peak pack is zero. Through an internet search, I found that it says in the winter prior of that year, the pack contracted mange. And in early 2010, the pack had high mortality because of aggressive interactions with other wolves. And the last female wolf of the pack was shot later, leading to the zeros in the data and end of the pack.* 

```r
ynp %>% 
  filter(pack == "druid" & biolyr == 2010) 
```

```
##   park biolyr  pack packcode packsize_aug mort_yn mort_all mort_lead
## 1  YNP   2010 druid       26            0       0        0         0
##   mort_nonlead reprody1 persisty1
## 1            0        0        NA
```

Problem 9. (5 points) Among the YNP wolf packs, which one has had the highest overall persistence `persisty1` for the years represented in the data? Look this pack up online and tell me what is unique about its behavior- specifically, what prey animals does this pack specialize on?  
*The pack mollies have the highest overall persistence over the years.*
*This pack preys on bisons with the help of snow, as snow makes bison harder to feed and move. The mollies pack chases bison to deep snow and attack them more easily.*

```r
ynp %>% 
  group_by(pack) %>% 
  summarize(sum_overall_persistence=sum(persisty1)) %>% 
  arrange(desc(sum_overall_persistence))
```

```
## # A tibble: 46 × 2
##    pack        sum_overall_persistence
##    <chr>                         <int>
##  1 mollies                          26
##  2 cougar                           20
##  3 yelldelta                        18
##  4 leopold                          12
##  5 agate                            10
##  6 8mile                             9
##  7 canyon                            9
##  8 gibbon/mary                       9
##  9 junction                          8
## 10 lamar                             8
## # ℹ 36 more rows
```


Problem 10. (3 points) Perform one analysis or exploration of your choice on the `wolves` data. Your answer needs to include at least two lines of code and not be a summary function.  
*The largest average of packsize through the years is 18.66 of the oxbow pack*

```r
ynp %>% 
  group_by(pack) %>% 
  summarize(mean_pack_size=mean(packsize_aug),
            sd_pack_size=sd(packsize_aug),
            n_packs=n()) %>% 
  arrange(desc(mean_pack_size))
```

```
## # A tibble: 46 × 4
##    pack      mean_pack_size sd_pack_size n_packs
##    <chr>              <dbl>        <dbl>   <int>
##  1 oxbow               18.7         6.11       3
##  2 8mile               18.2         4.49       9
##  3 junction            16.6         8.58       8
##  4 leopold             15.7         6.93      13
##  5 slough              15.4         6.02       5
##  6 rose                15.4         5.88       8
##  7 wapiti              15.3         8.12       6
##  8 druid               13.9         9.60      15
##  9 phantom             13           7          3
## 10 yelldelta           12.7         5.67      18
## # ℹ 36 more rows
```


