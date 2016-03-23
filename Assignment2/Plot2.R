## Plot 2

if(!exists("NEI")){ 
  NEI <- readRDS("C:/Users/Leonardo/Desktop/ExploratoryDataAnalysis/Assignment2/summarySCC_PM25.rds") 
} 
if(!exists("SCC")){ 
  SCC <- readRDS("C:/Users/Leonardo/Desktop/ExploratoryDataAnalysis/Assignment2/Source_Classification_Code.rds") 
}

subsetNEI  <- NEI[NEI$fips=="24510", ] 
aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum) 
png('plot2.png') 
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years')) 
dev.off() 
