  library("fpp2")
  
  data2 <- read.csv("yeardata.csv")
  data <- read.csv("year-month-data.csv")
  data3 <- read.csv("yeardata2.csv")
  
  yearlyplastics.ts <- ts(data$Pieces_KM2, frequency = 12, start = c(2000,12), end = c(2011,12))
  yearlyplastics.ts2 <- ts(data2$Pieces_KM2, frequency = 1, start = 2000, end = 2011)
  yearlyplastics.ts3 <- ts(data3$X50thSC, frequency = 1, start = 2010, end = 2018)
  
  test <- ts(data$Pieces_KM2, start = 2000,frequency = 12)
  
  
  plot(yearlyplastics.ts2)
  
  
  # Not working yet -- TS data is not periodic (i.e. only got years , no monthly)
  fit <- stl(yearlyplastics.ts, s.window = "period")
  
  
  ggseasonplot(yearlyplastics.ts, year.labels = TRUE, year.labels.left= TRUE)  
  
  
  
  test2 <- window(yearlyplastics.ts, start = 2000)
  gglagplot(yearlyplastics.ts2, color = TRUE)
  