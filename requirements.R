packages <- c(
  "tidyverse",
  "caret",
  "pROC",
  "ROCR",
  "glmnet",
  "randomForest",
  "xgboost",
  "vroom",
  "data.table",
  "janitor",
  "knitr",
  "rmarkdown"
)

missing_packages <- setdiff(packages, rownames(installed.packages()))

if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}
