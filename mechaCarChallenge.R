library(dplyr)
# add data to table with read.csv()
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Run multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)
# Create summary statistics to determine p and r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))
# add data to table with read.csv()
suspension_table <- read.csv(file="Suspension_Coil.csv", check.names =F , stringsAsFactors = F)
# Create table with summary statistics of PSI Column
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# create table with summary statistics of PSI broken down by lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# One sample t-test against population mean of 1500 PSI
t.test(suspension_table$PSI,mu=1500)
# One sample t-test of each lot as a subset against population mean of 1500 PSI
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI, mu=1500)