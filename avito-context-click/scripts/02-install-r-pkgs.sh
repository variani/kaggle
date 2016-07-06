#! /bin/bash

echo " * sudo is required to install R packages"

sudo R --slave <<RSCRIPT
  pkgs <- c("doSNOW", "foreach", "cvTools", "data.table", "compiler", "ffbase", 
    "SOAR", "SparseM", "Matrix", "matrixStats", "Rcpp", "xgboost", "infotheo", 
    "tm", "parallel", "rlecuyer")
    
  for(p in pkgs) {
    cat(" * package", p, "\n")    
  
    ret <- suppressWarnings(suppressMessages(require(p, character.only = TRUE)))
    if(!ret) {
      install.packages(p, repos = "http://cran.rstudio.com/")
    }
  }
RSCRIPT
