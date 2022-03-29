data3 <- read.csv("yeardata2.csv")

spermdata <- read.csv("ccr_updated.csv")

data2 <- data2[-c(10,11,12,13),]
data2['USA'] <- spermdata['USA']*3000


autoplot(yearlyplastics.ts3[,c("Pieces_KM2","USA")])

tslm(USA ~ Pieces_KM2, data = yearlyplastics.ts3)

