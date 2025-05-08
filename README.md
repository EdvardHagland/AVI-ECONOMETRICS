# Replication: Can Foreign Aid Reduce the Desire to Emigrate? (Simon, Schwartz, and Hudson, AJPS)

This repository contains the R code and data necessary to replicate the findings of the study "Can Foreign Aid Reduce the Desire to Emigrate? Evidence from a Randomized Controlled Trial" by Simon, Schwartz, and Hudson, published in the American Journal of Political Science (AJPS).

## Project Overview

The original study investigates the impact of a youth employment program in The Gambia on participants\' migration aspirations. This replication project aims to:

1.  Reproduce the main tables and figures from the original paper.
2.  Conduct additional robustness checks and methodological variations to assess the sensitivity of the original findings.
3.  Provide a clear and well-documented workflow for others to understand and replicate the analysis.

The main analysis is performed in the R Markdown file `code/replication_test.rmd`.

## Directory Structure

The project is organized as follows:

```
.
├── AVI ECONOMETRICS.Rproj  # RStudio Project file for easy project management
├── code/
│   └── replication_test.rmd # Core R Markdown file with all replication analysis
├── data/
│   ├── mig.long.csv         # Longitudinal dataset for the analysis
│   └── mig.wide.csv         # Wide-format dataset for the analysis
├── context/                 # Supporting materials from the original study
│   ├── basepaper.md         # Markdown version of the original Simon, Schwartz, and Hudson paper
│   └── basereadme.md        # Original README or documentation related to the base paper
├── README.md                # This guide: project overview, setup, and replication steps
└── (Note: PDF outputs, figures, and log files like `replication_test.pdf`, `figure2.pdf`, `LOG.txt`, `rmd_execution_log.txt` are generated in the root directory when `code/replication_test.rmd` is knitted. Files like `.Rhistory` and the `.Rproj.user/` directory are user-specific and not essential for replication.)
```

-   **`AVI ECONOMETRICS.Rproj`**: The RStudio project file. Opening this helps set up the R environment correctly.
-   **`code/`**: Contains the primary R Markdown script.
    -   `replication_test.rmd`: This file includes all R code for data loading, processing, analysis, and generating the results (tables, figures) presented in the replication.
-   **`data/`**: Contains the necessary datasets.
    -   `mig.long.csv` and `mig.wide.csv`: The datasets used for the replication, in long and wide formats respectively.
-   **`context/`**: Holds reference materials related to the original study.
    -   `basepaper.md`: A markdown version of the original paper.
    -   `basereadme.md`: Documentation related to the original paper's materials.
-   **`README.md`**: The file you are currently reading, providing guidance for the replication.

## Prerequisites

To run this replication, you will need:

*   **R**: Version 4.0 or higher.
*   **RStudio**: Recommended for ease of use with R Markdown.
*   The following **R packages**:
    *   `tidyverse` (for data manipulation and plotting, includes `dplyr`, `ggplot2`, `readr`)
    *   `knitr` (for R Markdown processing)
    *   `modelsummary` (for creating regression tables)
    *   `gtsummary` (for creating summary tables)
    *   `kableExtra` (for styling tables)
    *   `Hmisc` (used for `Cs` function and potentially other utilities)
    *   `mediation` (for mediation analysis)
    *   `broom` (for tidying model outputs)
    *   `RColorBrewer` (for color palettes in plots)
    *   `patchwork` (for combining plots)
    *   `lme4` (for mixed-effects models, used in ICC calculation)
    *   `sandwich` (for robust standard errors)
    *   `lmtest` (for `coeftest`)

You can install these packages by running the following commands in your R console:

```R
install.packages(c(
  "tidyverse", "knitr", "modelsummary", "gtsummary", "kableExtra",
  "Hmisc", "mediation", "broom", "RColorBrewer", "patchwork",
  "lme4", "sandwich", "lmtest"
))
```

## How to Replicate

1.  **Clone or download this repository.**
2.  **Open the RStudio Project:** Double-click the `AVI ECONOMETRICS.Rproj` file. This will set the working directory correctly.
3.  **Open the R Markdown file:** Navigate to `code/replication_test.rmd` and open it in RStudio.
4.  **Install required packages:** If you haven\'t already, run the package installation commands provided in the "Prerequisites" section above in the R console.
5.  **Knit the R Markdown document:** Click the "Knit" button in RStudio (or use the `Ctrl+Shift+K` shortcut). This will execute all the R code chunks in the `replication_test.rmd` file.
    *   The primary output is a PDF document (`replication_test.pdf`) containing all the replicated tables, figures, and explanatory text. Please note that this directly knitted PDF may not perfectly match a version of the paper that has undergone further manual LaTeX editing after knitting.
    *   Intermediate figures (e.g., `figure2.pdf`, `figure3.pdf`) may also be saved in the project root or a designated output directory if `ggsave` is used.

## Main Findings of the Replication

This replication effort successfully reproduces the core findings of Simon, Schwartz, and Hudson:

*   **Business Outcomes:** The program had significant positive effects on various business development milestones (e.g., opening a business, making purchases, hiring employees, making a profit).
*   **Migration Aspirations (Short-Term):** The program significantly reduced migration aspirations in the short term (Wave 2).
*   **Migration Aspirations (Long-Term):** The effect on migration aspirations faded by the long-term follow-up (Wave 3) and was no longer statistically significant.
*   **Mediation:** The program\'s effect on migration aspirations was primarily mediated by an increase in "instrumental place attachment" (perceived financial success at home), rather than by changes in self-efficacy or self-sufficiency.

## Robustness Checks and Extensions

This replication also includes several additional analyses:

1.  **Comparison of Weighted vs. Unweighted Models:** Demonstrates that the inverse probability weighting (IPW) scheme used in the original paper had a minimal impact on the main treatment effect estimates.
2.  **Sensitivity to Covariate Adjustment:** Shows that replacing regional fixed effects with individual-level baseline covariates does not substantially alter the findings.
3.  **Heterogeneity of Treatment Effects (HTE):** Explores whether the program\'s impact differed across subgroups (e.g., by gender, education, prior business experience). The analysis found little evidence of significant HTE for the main outcome.
4.  **Clustered Standard Errors:** Investigates the impact of clustering standard errors by region, highlighting the "few clusters" problem and its implications for statistical inference. The short-term effect on migration aspirations became marginally significant (p ~ 0.056) with clustered SEs.

## Notes

*   The R Markdown file `code/replication_test.rmd` is extensively commented to explain each step of the analysis.
*   The replication uses the exact data files (`mig.wide.csv` and `mig.long.csv`) as provided for the original study.
*   Due to minor differences in package versions or default settings, some numerical results (e.g., p-values to many decimal places) might differ slightly from the original publication, but substantive conclusions are consistent. The directly knitted PDF output from `replication_test.rmd` aims to reproduce the analysis faithfully but may not be an exact visual match to a final version of a paper that has received additional manual LaTeX adjustments post-knitting.
*   The study design involves randomization blocked by regional training sites. The robustness check for clustered standard errors addresses this aspect.

## Citation of Original Paper

Simon, David, Shana S. Schwartz, and Charles W. Hudson Jr. "Can Foreign Aid Reduce the Desire to Emigrate? Evidence from a Randomized Controlled Trial." *American Journal of Political Science*.

Please refer to the original publication for the full theoretical background, detailed methodology, and broader implications of the research. 