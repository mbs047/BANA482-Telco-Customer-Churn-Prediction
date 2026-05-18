# BANA482 | Telco Customer Churn Prediction

We built this Case 1 project to predict which telecom customers are most likely to churn and to translate the model results into practical retention actions.

We use the Telco Customer Churn dataset from Kaggle, clean and recode the customer records, explore churn patterns, train a logistic regression model, and evaluate performance with a confusion matrix and ROC/AUC. Our final model reaches an AUC of about 0.82, which gives useful separation between customers who churn and customers who stay.

## What We Focused On

We focused on business questions that matter for a subscription telecom company:

- Which customers are most at risk of leaving?
- Which customer features help explain churn?
- How can management use the model to prioritize retention efforts?

The strongest churn signals in our analysis are short tenure, month-to-month contracts, fiber-optic internet service, and billing-related behavior.

## Repository Structure

| Path | Purpose |
| --- | --- |
| `analysis/case-1-telco-churn.Rmd` | Main reproducible R Markdown analysis. |
| `analysis/rendered/` | Rendered code report outputs. |
| `data/raw/telco-customer-churn.csv` | Telco customer churn dataset used by the analysis. |
| `figures/` | Saved visual outputs used in the case. |
| `reports/` | Final written report in PDF and Word formats. |
| `slides/` | Final presentation slides in PDF and PowerPoint formats. |
| `requirements.R` | Helper script for installing the R packages used by the project. |
| `NOTICE.md` | Licensing and third-party material note. |

## Reproduce the Analysis

You need R, Pandoc, and the project packages to render the full report. Pandoc is included with RStudio, so rendering from RStudio is usually the easiest path.

From the repository root, install the required R packages:

```r
source("requirements.R")
```

Then render or run the main R Markdown file:

```r
rmarkdown::render("analysis/case-1-telco-churn.Rmd")
```

The R Markdown file can regenerate local model and prediction exports such as `models/glm_telco_model.rds` and `data/processed/predictions_test.csv`. Those generated files are intentionally ignored by Git so the repository stays focused on source material and final deliverables.

## Public Repository Hygiene

We keep local machine files, R session history, temporary Office files, generated model artifacts, generated prediction exports, and class-provided reference PDFs out of version control. That keeps the public repo focused on what we authored and what someone needs to understand or reproduce the case.

## License

Original code and repository documentation are available under the MIT License. The dataset and any third-party or course-provided materials remain under their original terms.
