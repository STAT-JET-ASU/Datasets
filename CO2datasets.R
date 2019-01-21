# Read in CO2 Data

CO2monthly <- read.table(file=url("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt"))
colnames(CO2monthly) <- c("year", "month", "date",  "average",  "interpolated", "trend", "numdays")
write.csv(CO2monthly, file = "MaunaLoaData/CO2monthly.csv", row.names = FALSE)

CO2annual <- read.table(file=url("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_annmean_mlo.txt"))
colnames(CO2annual) <- c("year", 
                         "mean", 
                         "unc")
write.csv(CO2annual, file = "MaunaLoaData/CO2annual.csv", row.names = FALSE)

CO2annual <- read.table(file=url("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_annmean_mlo.txt"))
colnames(CO2annual) <- c("year", 
                         "anninc", 
                         "unc")
write.csv(CO2annual, file = "MaunaLoaData/CO2annual.csv", row.names = FALSE)

CO2growth <- read.table(file=url("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_annmean_mlo.txt"))
colnames(CO2growth) <- c("year", 
                         "mean", 
                         "unc")
write.csv(CO2growth, file = "MaunaLoaData/CO2growth.csv", row.names = FALSE)

CO2weekly <- read.table(file=url("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_weekly_mlo.txt"))
colnames(CO2weekly) <- c("startyear", 
                         "startmonth", 
                         "startday", 
                         "decimal", 
                         "CO2ppm", 
                         "numdays", 
                         "1yr_ago", 
                         "10yr_ago", 
                         "since1800")
write.csv(CO2weekly, file = "MaunaLoaData/CO2weekly.csv", row.names = FALSE)