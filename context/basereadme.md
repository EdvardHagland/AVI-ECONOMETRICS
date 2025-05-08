Replication materials for "Can Foreign Aid Reduce the Desire to Emigrate? Evidence from a Randomized Controlled Trial"
Miranda Simon, Cassilde Schwartz, and David Hudson

#################################
##### MANUSCRIPT MATERIALS ######
#################################


##### Data files ######

For the main body of the manuscript, we use two data files:
mig.long and mig.wide.

- mig.long.csv is used to reproduce Table 2
- mig.wide.csv is used to reproduce Table 1, Figure 2, and Figure 3

Each of these has its own codebook (mig.wide.pdf and mig.long.pdf) which contains information about
each variable used in the analysis of main body or appendix tables and figures.


##### Packages ######

We use the following R packages for the analysis of main body tables/figures:

- tidyverse: Table 1
- vtable: Table 1
- stargazer: Table 2
- Hmisc: Figure 2, Figure 3
- mediation: Figure 3


##### R scripts ######

Each Table or Figure in the main body of the manuscript has is its own self-contained R script.

They are:
Table1.R
Table2.R
Figure2.R
Figure3.R

#################################
###### APPENDIX MATERIALS #######
#################################


##### Data files ######

### Primary datasets
For the tables and figures in the appendix, we use four data files.

We primarily rely on mig.long and mig.wide.

- mig.long.csv is used to reproduce:
Table A2, Table A3, Table B1, Table I1, Figure L1a, Figure L1b, Table N1, Table N2, Figure N1, Figure N2, Figure N3, Figure Q1, Figure Q2

- mig.wide.csv is used to reproduce:
Table A1, Table C1, Table C2, Table D1, Table F1, Table F2, Table G1, Table G2, Figure Ia, Figure Ib, Table L1, Table L2, Table M1, Table Q1

Codebooks are available for each of these datasets, containing information about all variables used

### DHS datasets
For comparisons with national samples (Tables N1-N2 and Figures N1-N3), we also use the Gambian Demographic and Health Surveys (DHS):

- GMMR81FL.SAV
- GMIR81FL.SAV

Citation:
GBoS and ICF (2021). The Gambia Demographic and Health Survey 2019- 20. Banjul, The Gambia and Rockville, Maryland, USA: GBoS and ICF.

To download the Gambian Demographic and Health Surveys (DHS) Program, you must register for a download account,
and access the data from your approved accounts. Please reference the complete terms of use at: https://dhsprogram.com/Data/terms-of-use.cfm.
The DHS dataset is not publicly available, but is easily accessible once approved. "The data you download, must not be shared, passed on to others, or made publicly available."

Data available for download from: https://www.dhsprogram.com/data/dataset/Gambia_Standard-DHS_2019.cfm?flag=0

Save the DHS data (GM_2019-20_DHS_08162021_1523_150532) to the same directory as these replication files and scripts
Use the Individual Recode data.
Men and women datafiles are separate

DHS-7 Codebook: https://dhsprogram.com/pubs/pdf/DHSG4/Recode7_DHS_10Sep2018_DHSG4.pdf


##### Packages ######

We use the following R packages for the analysis of tables/figures in the appendix:

- tidyverse: Table A1, Table A1, Figure L1a, Figure L1b, Table M1, Table N1, Table N2, Figure N1, Figure N2, Figure N3, Figure Q1, Figure Q2
- stargazer: Table A3, Table B1, Table C1, Table C2, Table D1, Table F1, Table F2, Table G1, Table G2, Table I1, Table L1, Table L2,
Table M1, Table N1, Table N2, Table Q1
- Hmisc: Figure Ia, Figure Ib,
- mediation: Figure Ib
- Rmisc: Figure L1a, Figure L1b, Figure Q1, Figure G2
- hrbrthemes: Figure L1a, Figure L1b, Figure Q1, Figure Q2
- srvyr: Table N1, Table N2, Figure N1, Figure N2, Figure N3
- labelled: Table N1, Table N2, Figure N1, Figure N2, Figure N3
- haven: Table N1, Table N2, Figure N1, Figure N2, Figure N3
- WeightIt: Table N1, Table N2
- skimr: Figure N1, Figure N2, Figure N3
- outliers: Figure N1, Figure N2, Figure N3


##### R scripts ######

Most tables and figures in the appendix have their own self-contained R script, but a small number share a single R script (see G Tables, N Tables, and N Figures).

###############################
##### Session information #####
###############################


─ Session info ──────────────────────────────────────────────────────────────────────────────────────
 setting  value
 version  R version 4.4.1 (2024-06-14 ucrt)
 os       Windows 10 x64 (build 19045)
 system   x86_64, mingw32
 ui       RStudio
 language (EN)
 collate  English_United Kingdom.utf8
 ctype    English_United Kingdom.utf8
 tz       Europe/London
 date     2024-08-20
 rstudio  2022.07.2+576 Spotted Wakerobin (desktop)
 pandoc   2.19.2 @ C:/Program Files/RStudio/bin/quarto/bin/tools/ (via rmarkdown)

─ Packages ──────────────────────────────────────────────────────────────────────────────────────────
 package           * version  date (UTC) lib source
 abind               1.4-5    2016-07-21 [1] CRAN (R 4.4.0)
 backports           1.5.0    2024-05-23 [1] CRAN (R 4.4.0)
 base64enc           0.1-3    2015-07-28 [1] CRAN (R 4.4.0)
 bit                 4.0.5    2022-11-15 [1] CRAN (R 4.4.1)
 bit64               4.0.5    2020-08-30 [1] CRAN (R 4.4.1)
 boot                1.3-30   2024-02-26 [1] CRAN (R 4.4.1)
 car                 3.1-2    2023-03-30 [1] CRAN (R 4.4.1)
 carData             3.0-5    2022-01-06 [1] CRAN (R 4.4.1)
 checkmate           2.3.2    2024-07-29 [1] CRAN (R 4.4.1)
 chk                 0.9.2    2024-07-09 [1] CRAN (R 4.4.1)
 cli                 3.6.3    2024-06-21 [1] CRAN (R 4.4.1)
 cluster             2.1.6    2023-12-01 [1] CRAN (R 4.4.1)
 colorspace          2.1-1    2024-07-26 [1] CRAN (R 4.4.1)
 crayon              1.5.3    2024-06-20 [1] CRAN (R 4.4.1)
 cregg               0.4.0    2020-06-28 [1] CRAN (R 4.4.1)
 crul                1.5.0    2024-07-19 [1] CRAN (R 4.4.1)
 curl                5.2.1    2024-03-01 [1] CRAN (R 4.4.1)
 data.table          1.15.4   2024-03-30 [1] CRAN (R 4.4.1)
 DBI                 1.2.3    2024-06-02 [1] CRAN (R 4.4.1)
 digest              0.6.36   2024-06-23 [1] CRAN (R 4.4.1)
 dplyr             * 1.1.4    2023-11-17 [1] CRAN (R 4.4.1)
 evaluate            0.24.0   2024-06-10 [1] CRAN (R 4.4.1)
 extrafont           0.19     2023-01-18 [1] CRAN (R 4.4.0)
 extrafontdb         1.0      2012-06-11 [1] CRAN (R 4.4.0)
 fansi               1.0.6    2023-12-08 [1] CRAN (R 4.4.1)
 farver              2.1.2    2024-05-13 [1] CRAN (R 4.4.1)
 fastmap             1.2.0    2024-05-15 [1] CRAN (R 4.4.1)
 fontBitstreamVera   0.1.1    2017-02-01 [1] CRAN (R 4.4.0)
 fontLiberation      0.1.0    2016-10-15 [1] CRAN (R 4.4.0)
 fontquiver          0.2.1    2017-02-01 [1] CRAN (R 4.4.1)
 forcats           * 1.0.0    2023-01-29 [1] CRAN (R 4.4.1)
 foreign             0.8-87   2024-06-26 [1] CRAN (R 4.4.1)
 Formula             1.2-5    2023-02-24 [1] CRAN (R 4.4.0)
 gdtools             0.3.7    2024-03-05 [1] CRAN (R 4.4.1)
 generics            0.1.3    2022-07-05 [1] CRAN (R 4.4.1)
 gfonts              0.2.0    2023-01-08 [1] CRAN (R 4.4.1)
 ggplot2           * 3.5.1    2024-04-23 [1] CRAN (R 4.4.1)
 ggstance            0.3.7    2024-04-05 [1] CRAN (R 4.4.1)
 glue                1.7.0    2024-01-09 [1] CRAN (R 4.4.1)
 gridExtra           2.3      2017-09-09 [1] CRAN (R 4.4.1)
 gtable              0.3.5    2024-04-22 [1] CRAN (R 4.4.1)
 haven             * 2.5.4    2023-11-30 [1] CRAN (R 4.4.1)
 Hmisc             * 5.1-3    2024-05-28 [1] CRAN (R 4.4.1)
 hms                 1.1.3    2023-03-21 [1] CRAN (R 4.4.1)
 hrbrthemes        * 0.8.7    2024-03-04 [1] CRAN (R 4.4.1)
 htmlTable           2.4.3    2024-07-21 [1] CRAN (R 4.4.1)
 htmltools           0.5.8.1  2024-04-04 [1] CRAN (R 4.4.1)
 htmlwidgets         1.6.4    2023-12-06 [1] CRAN (R 4.4.1)
 httpcode            0.3.0    2020-04-10 [1] CRAN (R 4.4.1)
 httpuv              1.6.15   2024-03-26 [1] CRAN (R 4.4.1)
 jsonlite            1.8.8    2023-12-04 [1] CRAN (R 4.4.1)
 jtools              2.2.2    2023-07-11 [1] CRAN (R 4.4.1)
 knitr               1.48     2024-07-07 [1] CRAN (R 4.4.1)
 labeling            0.4.3    2023-08-29 [1] CRAN (R 4.4.0)
 labelled          * 2.13.0   2024-04-23 [1] CRAN (R 4.4.1)
 later               1.3.2    2023-12-06 [1] CRAN (R 4.4.1)
 lattice           * 0.22-6   2024-03-20 [1] CRAN (R 4.4.1)
 lifecycle           1.0.4    2023-11-07 [1] CRAN (R 4.4.1)
 lme4                1.1-35.5 2024-07-03 [1] CRAN (R 4.4.1)
 lmtest              0.9-40   2022-03-21 [1] CRAN (R 4.4.1)
 lpSolve             5.6.20   2023-12-10 [1] CRAN (R 4.4.0)
 lubridate         * 1.9.3    2023-09-27 [1] CRAN (R 4.4.1)
 magrittr            2.0.3    2022-03-30 [1] CRAN (R 4.4.1)
 MASS              * 7.3-61   2024-06-13 [1] CRAN (R 4.4.1)
 Matrix            * 1.7-0    2024-04-26 [1] CRAN (R 4.4.1)
 mediation         * 4.5.0    2019-10-08 [1] CRAN (R 4.4.1)
 mime                0.12     2021-09-28 [1] CRAN (R 4.4.0)
 minqa               1.2.7    2024-05-20 [1] CRAN (R 4.4.1)
 mitools             2.4      2019-04-26 [1] CRAN (R 4.4.1)
 munsell             0.5.1    2024-04-01 [1] CRAN (R 4.4.1)
 mvtnorm           * 1.2-5    2024-05-21 [1] CRAN (R 4.4.1)
 nlme                3.1-165  2024-06-06 [1] CRAN (R 4.4.1)
 nloptr              2.1.1    2024-06-25 [1] CRAN (R 4.4.1)
 nnet                7.3-19   2023-05-03 [1] CRAN (R 4.4.1)
 outliers          * 0.15     2022-03-26 [1] CRAN (R 4.4.0)
 pander              0.6.5    2022-03-18 [1] CRAN (R 4.4.1)
 panelr              0.7.8    2023-08-22 [1] CRAN (R 4.4.1)
 pillar              1.9.0    2023-03-22 [1] CRAN (R 4.4.1)
 pkgconfig           2.0.3    2019-09-22 [1] CRAN (R 4.4.1)
 plyr              * 1.8.9    2023-10-02 [1] CRAN (R 4.4.1)
 promises            1.3.0    2024-04-05 [1] CRAN (R 4.4.1)
 purrr             * 1.0.2    2023-08-10 [1] CRAN (R 4.4.1)
 R6                  2.5.1    2021-08-19 [1] CRAN (R 4.4.1)
 Rcpp                1.0.13   2024-07-17 [1] CRAN (R 4.4.1)
 readr             * 2.1.5    2024-01-10 [1] CRAN (R 4.4.1)
 repr                1.1.7    2024-03-22 [1] CRAN (R 4.4.1)
 rlang               1.1.4    2024-06-04 [1] CRAN (R 4.4.1)
 rmarkdown           2.27     2024-05-17 [1] CRAN (R 4.4.1)
 Rmisc             * 1.5.1    2022-05-02 [1] CRAN (R 4.4.1)
 rpart               4.1.23   2023-12-05 [1] CRAN (R 4.4.1)
 rstudioapi          0.16.0   2024-03-24 [1] CRAN (R 4.4.1)
 Rttf2pt1            1.3.12   2023-01-22 [1] CRAN (R 4.4.0)
 sandwich          * 3.1-0    2023-12-11 [1] CRAN (R 4.4.1)
 scales              1.3.0    2023-11-28 [1] CRAN (R 4.4.1)
 sessioninfo         1.2.2    2021-12-06 [1] CRAN (R 4.4.1)
 shiny               1.9.1    2024-08-01 [1] CRAN (R 4.4.1)
 skimr             * 2.1.5    2022-12-23 [1] CRAN (R 4.4.1)
 srvyr             * 1.2.0    2023-02-21 [1] CRAN (R 4.4.1)
 stargazer         * 5.2.3    2022-03-04 [1] CRAN (R 4.4.0)
 stringi             1.8.4    2024-05-06 [1] CRAN (R 4.4.0)
 stringr           * 1.5.1    2023-11-14 [1] CRAN (R 4.4.1)
 survey              4.4-2    2024-03-20 [1] CRAN (R 4.4.1)
 survival            3.7-0    2024-06-05 [1] CRAN (R 4.4.1)
 systemfonts         1.1.0    2024-05-15 [1] CRAN (R 4.4.1)
 tibble            * 3.2.1    2023-03-20 [1] CRAN (R 4.4.1)
 tidyr             * 1.3.1    2024-01-24 [1] CRAN (R 4.4.1)
 tidyselect          1.2.1    2024-03-11 [1] CRAN (R 4.4.1)
 tidyverse         * 2.0.0    2023-02-22 [1] CRAN (R 4.4.1)
 timechange          0.3.0    2024-01-18 [1] CRAN (R 4.4.1)
 tzdb                0.4.0    2023-05-12 [1] CRAN (R 4.4.1)
 utf8                1.2.4    2023-10-22 [1] CRAN (R 4.4.1)
 vctrs               0.6.5    2023-12-01 [1] CRAN (R 4.4.1)
 vroom               1.6.5    2023-12-05 [1] CRAN (R 4.4.1)
 WeightIt          * 1.2.0    2024-07-26 [1] CRAN (R 4.4.1)
 withr               3.0.1    2024-07-31 [1] CRAN (R 4.4.1)
 xfun                0.46     2024-07-18 [1] CRAN (R 4.4.1)
 xtable              1.8-4    2019-04-21 [1] CRAN (R 4.4.1)
 zoo                 1.8-12   2023-04-13 [1] CRAN (R 4.4.1)

 [1] C:/Users/uetp003/AppData/Local/Programs/R/R-4.4.1/library

─────────────────────────────────────────────────────────────────────────────────────────────────────

