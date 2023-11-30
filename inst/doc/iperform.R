## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(lubridate)
library(iperform)
library(ggplot2)


## -----------------------------------------------------------------------------
data(voix_mobile)


## -----------------------------------------------------------------------------
head(voix_mobile)


## -----------------------------------------------------------------------------
summary(voix_mobile)


## -----------------------------------------------------------------------------
shapiro.test(voix_mobile$Revenu)


## -----------------------------------------------------------------------------
dday(data = voix_mobile,
      date = "2023-08-11",
      d = 0,
      x = "Revenu",
      unite = 1,
      decimal = 0)


## -----------------------------------------------------------------------------
mtd(data = voix_mobile,
    date = "2023-08-11",
    m = 0,
    x = "Revenu",
    unite = 1,
    decimal = 0)


## -----------------------------------------------------------------------------
ytd(data = voix_mobile,
    date = "2023-08-11",
    a = 0,
    x = "Revenu",
    unite = 1000,
    decimal = 0)


## -----------------------------------------------------------------------------
wtd(data = voix_mobile,
    date = "2023-08-11",
    w = 0,
    x = "Revenu",
    unite = 1,
    decimal = 0)


## -----------------------------------------------------------------------------
full_m(data = voix_mobile,
       date = "2023-08-11",
       x = "Revenu",
       unite = 1000,
       decimal = 0,
       cumul = FALSE)


## -----------------------------------------------------------------------------
full_m(data = voix_mobile,
       date = "2023-08-25",
       x = "Revenu",
       unite = 1000)


## -----------------------------------------------------------------------------
forecast_m(data = voix_mobile,
           date = "2023-08-11",
           x = "Revenu",
           unite = 1000,
           decimal = 0,
           cumul = FALSE,
           mod = "NULL") 


## -----------------------------------------------------------------------------
vec_date = c("2023-08-20", "2023-08-25", "2023-08-28", "2023-08-30", "2023-08-31")

for (d in vec_date) {
  F = forecast_m(data = voix_mobile,
             date = d,
             x = "Revenu",
             unite = 1000)
  print(F)
  }


## ----overview, eval = FALSE---------------------------------------------------
#  overview(data = voix_mobile,
#           date = "2023-08-11",
#           x = "Revenu",
#           unite = 1,
#           decimal = 2,
#           cumul = FALSE)
#  

## ----echo=FALSE---------------------------------------------------------------
resultat = overview(data = voix_mobile,
                    date = "2023-08-11",
                    x = "Revenu",
                    unite = 1,
                    decimal = 2,
                    cumul = FALSE)

resultat


## -----------------------------------------------------------------------------
df_mb = mean_m(data = voix_mobile, 
               x = "Revenu",
               unite = 1,
               decimal = 0)

head(df_mb, 10)


