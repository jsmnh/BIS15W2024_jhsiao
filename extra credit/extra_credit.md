---
title: "Extra Credit W24"
author: "Jasmine Hsiao"
date: "2024-03-04"
output:
  html_document: 
    keep_md: true
  pdf_document: default
---

## Instructions
Answer the following questions and complete the exercises in RMarkdown. Please embed all of your code and push your final work to your repository. Your code must be organized, clean, and run free from errors. Remember, you must remove the `#` for any included code chunks to run. Be sure to add your name to the author header above. 

Your code must knit in order to be considered. If you are stuck and cannot answer a question, then comment out your code and knit the document.  

Don't forget to answer any questions that are asked in the prompt. Some questions will require a plot, but others do not- make sure to read each question carefully.  

For the questions that require a plot, make sure to have clearly labeled axes and a title. Keep your plots clean and professional-looking, but you are free to add color and other aesthetics.  

Be sure to follow the directions and push your code to your repository.

## Background
In the `data` folder, you will find data about global shark attacks. The data are updated continuously, and are taken from [opendatasoft](https://public.opendatasoft.com/explore/dataset/global-shark-attack/table/?flg=en-us&disjunctive.country&disjunctive.area&disjunctive.activity).  

## Load the libraries

```r
library("tidyverse")
library("janitor")
library("naniar")
```

## Load the data
Run the following code chunk to import the data.

```r
global_sharks <- read_csv("data/global-shark-attack.csv") %>% clean_names()
```

## Questions
1. (2 points) Start by doing some data exploration using your preferred function(s). What is the structure of the data? Where are the missing values and how are they represented?  

```r
summary(global_sharks)
```

```
##       date                 year          type             country         
##  Min.   :1018-06-01   Min.   :   1   Length:6890        Length:6890       
##  1st Qu.:1951-08-16   1st Qu.:1950   Class :character   Class :character  
##  Median :1988-02-02   Median :1986   Mode  :character   Mode  :character  
##  Mean   :1973-01-14   Mean   :1971                                        
##  3rd Qu.:2009-08-30   3rd Qu.:2009                                        
##  Max.   :2023-08-16   Max.   :2023                                        
##  NA's   :305          NA's   :132                                         
##      area             location           activity             name          
##  Length:6890        Length:6890        Length:6890        Length:6890       
##  Class :character   Class :character   Class :character   Class :character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##                                                                             
##      sex                age               injury           fatal_y_n        
##  Length:6890        Length:6890        Length:6890        Length:6890       
##  Class :character   Class :character   Class :character   Class :character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##                                                                             
##      time             species          investigator_or_source
##  Length:6890        Length:6890        Length:6890           
##  Class :character   Class :character   Class :character      
##  Mode  :character   Mode  :character   Mode  :character      
##                                                              
##                                                              
##                                                              
##                                                              
##      pdf            href_formula           href           case_number_19    
##  Length:6890        Length:6890        Length:6890        Length:6890       
##  Class :character   Class :character   Class :character   Class :character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##                                                                             
##  case_number_20     original_order
##  Length:6890        Min.   :   2  
##  Class :character   1st Qu.:1702  
##  Mode  :character   Median :3401  
##                     Mean   :3401  
##                     3rd Qu.:5100  
##                     Max.   :6802  
##                     NA's   :91
```

```r
miss_var_summary(global_sharks)
```

```
## # A tibble: 21 × 3
##    variable n_miss pct_miss
##    <chr>     <int>    <dbl>
##  1 time       3518    51.1 
##  2 species    3118    45.3 
##  3 age        2982    43.3 
##  4 activity    586     8.51
##  5 sex         572     8.30
##  6 location    565     8.20
##  7 area        481     6.98
##  8 date        305     4.43
##  9 name        220     3.19
## 10 year        132     1.92
## # ℹ 11 more rows
```


2. (3 points) Are there any "hotspots" for shark incidents? Make a plot that shows the total number of incidents for the top 10 countries? Which country has the highest number of incidents?
_USA has the highest number of incidents_

```r
global_sharks %>% 
  count(country) %>% 
  arrange(desc(n)) %>% 
  head(n=10)
```

```
## # A tibble: 10 × 2
##    country              n
##    <chr>            <int>
##  1 USA               2522
##  2 AUSTRALIA         1464
##  3 SOUTH AFRICA       596
##  4 NEW ZEALAND        142
##  5 PAPUA NEW GUINEA   136
##  6 BAHAMAS            132
##  7 BRAZIL             122
##  8 MEXICO             100
##  9 ITALY               72
## 10 FIJI                67
```



```r
global_sharks %>%
  count(country) %>% 
  arrange(desc(n)) %>% 
  head(n=10) %>%  
  ggplot(aes(x=country, y = n,  fill=country))+
  geom_col(alpha=0.6, color="grey43")+
  labs(title="Total Number of Incidents by Country",
       y="# incidents")+
  coord_flip()+
  theme_light()
```

![](extra_credit_files/figure-html/unnamed-chunk-6-1.png)<!-- -->


3. (3 points) Are there months of the year when incidents are more likely to occur? Make a plot that shows the total number of incidents by month. Which month has the highest number of incidents?
_January has the highest incidence_

```r
global_sharks %>%
  separate(date, into= c("year", "month", "day"), sep = "-") %>% 
  mutate(month = as.factor(month)) %>% 
  count(month) %>% 
  filter(month != "NA")
```

```
## # A tibble: 12 × 2
##    month     n
##    <fct> <int>
##  1 01      859
##  2 02      409
##  3 03      448
##  4 04      489
##  5 05      441
##  6 06      542
##  7 07      757
##  8 08      649
##  9 09      592
## 10 10      486
## 11 11      438
## 12 12      475
```

```r
global_sharks %>%
  separate(date, into= c("year", "month", "day"), sep = "-") %>% 
  mutate(month = as.factor(month)) %>% 
  count(month) %>% 
  filter(month != "NA") %>% 
  ggplot(aes(x=month, y = n,  fill=month))+
  geom_col(alpha=0.6, color="grey43")+
  labs(title="Total Number of Incidents per Month",
       y="# incidents")+
  theme_light()
```

![](extra_credit_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

4. (3 points) Which activity is associated with the highest number of incidents? Make a plot that compares the top 5 riskiest activities. "NA" should not be classified as an activity.
_Surfing is associated with the highest number of incidents_

```r
global_sharks %>% 
  filter(activity != "NA") %>% 
  group_by(activity) %>% 
  count(activity) %>% 
  arrange(desc(n)) %>% 
  head(n=5)
```

```
## # A tibble: 5 × 2
## # Groups:   activity [5]
##   activity         n
##   <chr>        <int>
## 1 Surfing       1112
## 2 Swimming      1009
## 3 Fishing        498
## 4 Spearfishing   387
## 5 Wading         171
```

```r
global_sharks %>% 
  filter(activity != "NA") %>% 
  group_by(activity) %>% 
  count(activity) %>% 
  arrange(desc(n)) %>% 
  head(n=5) %>% 
  ggplot(aes(x=activity, y = n,  fill=activity))+
  geom_col(alpha=0.6, color="grey43")+
  labs(title="Total Number of Incidents by Activity",
       y="# incidents")+
  theme_light()
```

![](extra_credit_files/figure-html/unnamed-chunk-10-1.png)<!-- -->


5. (3 points) The data include information on who was attacked. Make a plot that shows the total number of fatalities by sex- are males or females more likely to be killed by sharks?
_Males are more likely to be killed by sharks_

```r
global_sharks %>% 
  filter(sex == "F" | sex == "M") %>%
  filter(fatal_y_n == "Y") %>% 
  group_by(sex) %>% 
  count(sex) %>% 
  ggplot(aes(x=sex, y = n,  fill=sex))+
  geom_col(alpha=0.6, color="grey43")+
  labs(title="Total Number of Fatalities by Sex of Attacked Individuals",
       y="# incidents")+
  theme_light()
```

![](extra_credit_files/figure-html/unnamed-chunk-11-1.png)<!-- -->


6. (3 points) Make a plot that shows the range of age for the individuals that are attacked. Make sure to restrict sex to M or F (some of the codes used are not clear). You will also need to find a way to manage the messy age column.

```r
global_sharks %>%
  filter(sex == "F" | sex == "M") %>% 
  mutate(age = as.integer(age)) %>% 
  filter(age != "NA") %>% 
  ggplot(aes(x=sex, y=age, fill=sex))+
  geom_boxplot(alpha=0.6, color = "grey43")+
  labs(title="Range of Age by Sex of Individuals Attacked by Sharks",
       x="Age (years)")+
  theme(plot.title=element_text(size=rel(1), hjust = 0.5))
```

```
## Warning: There was 1 warning in `mutate()`.
## ℹ In argument: `age = as.integer(age)`.
## Caused by warning:
## ! NAs introduced by coercion
```

![](extra_credit_files/figure-html/unnamed-chunk-12-1.png)<!-- -->


7. (3 points) In the United States, what are the top 5 states where shark attacks have been recorded since 1950? Make a plot that compares the number of incidents for these 5 states.
_The top 5 states are Florida, California, Hawaii, South Carolina, and North Carolina_

```r
global_sharks %>% 
  filter(year >= 1950) %>%
  mutate(year=as.factor(year)) %>% 
  filter(country=="USA") %>% 
  group_by(area) %>% 
  count(area) %>% 
  arrange(desc(n)) %>% 
  head(n=5)
```

```
## # A tibble: 5 × 2
## # Groups:   area [5]
##   area               n
##   <chr>          <int>
## 1 Florida         1091
## 2 California       298
## 3 Hawaii           274
## 4 South Carolina   135
## 5 North Carolina    98
```

```r
global_sharks %>% 
  filter(year >= 1950) %>%
  mutate(year=as.factor(year)) %>% 
  filter(country=="USA") %>% 
  group_by(area) %>% 
  count(area) %>% 
  arrange(desc(n)) %>% 
  head(n=5) %>% 
  ggplot(aes(x=area, y = n,  fill=area))+
  geom_col(alpha=0.6, color="grey43")+
  labs(title="Top 5 States with Highest Total Number of Incidents Since 1950",
       y="# incidents")+
  theme_light()
```

![](extra_credit_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

8. (3 points) Make a new object that limits the data to only include attacks attributed to Great White Sharks. This is trickier than it sounds, you should end up with 494 observations. Look online and adapt code involving `str_detect`. Which country has the highest number of Great White Shark attacks?
_USA has the greatest number of Great White Shark attacks_

```r
white_sharks <- global_sharks %>% 
  filter(str_detect(species, pattern = ("White")))
```


```r
white_sharks %>% 
  group_by(country) %>% 
  count(country) %>% 
  arrange(desc(n))
```

```
## # A tibble: 36 × 2
## # Groups:   country [36]
##    country          n
##    <chr>        <int>
##  1 USA            151
##  2 AUSTRALIA      135
##  3 SOUTH AFRICA   124
##  4 NEW ZEALAND     17
##  5 ITALY           16
##  6 CROATIA          9
##  7 GREECE           4
##  8 CHILE            3
##  9 BAHAMAS          2
## 10 CANADA           2
## # ℹ 26 more rows
```


9. (4 points) Use faceting to compare the number of fatal and non-fatal attacks for the top 5 countries with the highest number of Great White Shark attacks.

```r
white_sharks %>% 
  filter(country=="USA" | country=="AUSTRALIA"|country=="SOUTH AFRICA"|country=="NEW ZEALAND"|country=="ITALY") %>% 
  filter(fatal_y_n=="Y" | fatal_y_n=="N") %>% 
  ggplot(aes(x=fatal_y_n))+
  geom_bar(fill="deepskyblue4", alpha=0.7)+
  facet_wrap(~country)+ 
  theme(axis.text.x = element_text(angle = 60, hjust=1),
        plot.title=element_text(size=rel(1), hjust = 0.5))+
  labs(title="Number of Fatal and Non-Fatal Attacks for Top 5 Countries with White Shark Attacks",
       y="# Injury",
       x="Fatal (Y or N)") 
```

![](extra_credit_files/figure-html/unnamed-chunk-17-1.png)<!-- -->


10. (3 points) Using the `global_sharks` data, what is one question that you are interested in exploring? Write the question and answer it using a plot or table.
_How does the range of age of individuals attacked by sharks compare whether provoked or unprovoked?_

```r
global_sharks %>% 
  filter(type == "Unprovoked"| type=="Provoked") %>% 
  mutate(age = as.integer(age)) %>% 
  filter(age != "NA") %>% 
  ggplot(aes(x=type, y=age, fill=type))+
  geom_boxplot(alpha=0.6, color = "grey43")+
  labs(title="Range of Age of Individuals Attacked by Sharks by Provocation",
       x="Type")+
  theme(plot.title=element_text(size=rel(1), hjust = 0.5))
```

```
## Warning: There was 1 warning in `mutate()`.
## ℹ In argument: `age = as.integer(age)`.
## Caused by warning:
## ! NAs introduced by coercion
```

![](extra_credit_files/figure-html/unnamed-chunk-18-1.png)<!-- -->

