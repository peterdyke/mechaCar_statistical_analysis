# mechaCar_statistical_analysis
## Project Overview
Given production data about a struggling new division, we are tasked with analyzing the data to help the manufacturing team improve their process. We will use R and statistical analysis to show which variables are most important when it comes to MPG of the prototype cars, and determine if different production lots are statistically different from the overall population.

## Resources
Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
Software Used: R Studio 2021.09.0 Build 351, Visual Studio Code 1.60.2

## Linear Regression to Predict MPG
* The variables that contributed a non random amount of variance, that is they were statistically significant in increasing MPG, were vehicle length and ground clearance. These variables had Pr(>|t|) values of 2.60e -12 and 5.21e -8 respectively, which shows the very low contribution to the overall variance by these two variables.
* The slope of the model would be positive and greater than zero  after reviewing the summary statistics of our regression model. The vehicle length and ground clearance coefficients are 6.27 and 3.55 respectively, indicating a positive and nonzero slope.
* The regression model is fairly reliable in predicting MPG, as our R-squared and Adjusted R-Squared values are .71 and .68 respectively. This indicates that ~68% of MPG variation can be explained by our model containing all variables that we used.
<img src = "Resources/Mecha_Regression.png">

## Summary Statistics on Suspension Coils
* The manufacturing standards state that the variance in each suspension cannot be greater than 100 PSI. Overall, as we can see in the image below, the measured suspensions meet these standards and have a variance of 62.3 PSI. 
<img src= "Resources/Suspension_Summary.png">

* However, when we break down the data by lot we find something interesting. Something in Lot 3 was the main contributor to the overall variance. There was basically no variance in Lots 1 and 2, indicating sound manufacturing process, but in Lot 3 the variance was 170.3, indicating something gone wrong in that same manufacturing process.
<img src= "Resources/lot_summary.png">

## T-Tests on Suspension Coils
* When running a one sample T-test on our sample mean vs the population mean of 1500 PSI, we get a p-value of 0.06. This is above our 0.05 significance level and indicates that we cannot reject the null hypothesis and that the two means are statistically similar
<img src= "Resources/one_sample_t.png">

* 