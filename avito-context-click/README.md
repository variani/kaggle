# Avito at kaggle

The competition web page: https://www.kaggle.com/c/avito-context-ad-clicks 

## R code

R code (folder [R/](R/) is copied from https://github.com/diefimov/avito_context_click_2015. All the credits go to the two authors Lucas Silva and Dmitry Efimov, who were the 3rd place winners of the competetion.

## Data

See file [R/_fn.base.R](R/_fn.base.R) (lines 32 - 39).

```
search.info.file <- "SearchInfo.tsv"
train.file <- "trainSearchStream.tsv"
test.file <- "testSearchStream.tsv"
user.info.file <- "UserInfo.tsv"
category.file <- "Category.tsv"
phone.request.stream.file <- "PhoneRequestsStream.tsv"
visit.stream.file <- "VisitsStream.tsv"
ads.info.file <- "AdsInfo.tsv"
```

## Parallelization


See file [R/_fn.base.R](R/_fn.base.R) (line 80).

```
n.proc <-detectCores()
```
