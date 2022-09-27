# **MechaCar_Statistical_Analysis**

![](/Images/Car.jpeg)

## Project Overview ##
---
***AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. We have to analyze production data in order to find a solution that will help avoid production risks.*** 

## Resources ##
---
+ Dataset
   + [MechaCar_mpg.csv](/MechaCar_mpg.csv)
   + [Suspension_Coil.csv](/Suspension_Coil.csv)
+ Software 
   + RStudio 
   + tidyverse library  
   + dplyr library

## Results
---

## Linear Regression to Predict MPG 
---
***Linear Regression***

R script was applied to the dataset on several variables to get the following coefficients.
![](/Images/lineR.png)

***Summary of Linear Regression Model***

In summary of the linear regression we can see the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -.07 is close to zero.

![](/Images/Summ.png)

***Highlights***

+ According to our results, vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on mpg.
+ The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
+ R-squared of approximately 0.71. This indicates that the multiple linear regression will predict 71% of mpg observations.
---

## Summary Statistics on Suspension Coils
---
The MechaCar suspension coil design specification states that the suspension coil deflection must not exceed 100 pounds per square inch (PSI). The dataset consists of PSI for 150 vehicles produced in three batches. We need to find out if the production data is in accordance with this project specification for all batches in general and for each batch individually.

***Manufacturing Lot Summary***
![](/Images/TotalSum.png)

- [x] The deviation for the entire production lot is 62 < 100, which is within the expected design specifications to deliver pressures below 100 psi.
  
***Summary by Manufacturing Lot Number***
![](/Images/Lotsum.png)

- [x] When analyzing data by lot number, lot 3 shows a deviation of 170 > 100 and does not meet the design specifications. Lot 1 and lot 2 have significantly lower variance, 1 and 7 respectively.

***Highlights***

+ Per the Manufacturing Lot Summar PSI Variance for all lots combined is 62.29 pounds per square inch. This satisfies the design specification requirements.
+ Per the Summary by Manufacturing Lot Number PSI Variance for Lots 1 thru 3 yield 0.98, 7.47 and 170.29 pounds per square inch respectively.
---

## T-Tests on Suspension Coils
---
We want to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Using our knowledge of R, we will perform t-tests to calculate the p-value and compare it against a significance level of 0.05.

***T-test for all manufacturing lots***

![](/Images/Alot.png)

- [x] All Manufacturing Lots: p-value = 0.6028, significance level (alpha) = 0.05.
So 0.60 > 0.05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

***T-test for Lot1***

![](/Images/Lot1.png)

- [x] Lot 1: p-value = 1, significance level (alpha) = 0.05.
So 1 > .05, therefore, we do not have sufficient evidence to reject that there is a statistical difference between Lot 1 and the population mean. The two means are statistically similar.

***T-test for Lot2***

![](/Images/Lot2.png)

- [x] Lot 2: p-value = 0.6072, significance level (alpha) = 0.05
So 0.60 > 0.05, therefore, we do not have sufficient evidence to reject that there is a statistical difference between Lot 2 and the population mean. The two means are statistically similar. 

***T-test for Lot3***

![](/Images/Lot3.png)

- [x] Lot 3: p-value = 0.04168, significance level (alpha) = 0.05
So 0.04 < 0.05, there is sufficient statistical evidence to reject that there is a statistical difference between Lot 3 and the population mean. The two means are statistically different.
---

## Study Design: MechaCar vs Competition.
---
To ensure the success of the new MechaCar prototype, we must evaluate how well it holds up against the competition. When comparing a MechaCar with its competitor, the main qualities that may be of interest to the consumer should be taken into account - safety rating, city/highway fuel efficiency, maintenance cost.

**Metrics**

  *The metrics to test should be the safety rating, highway fuel efficiency.*

**Hypothesis** 

*The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.*

**Statistical Tests**

*Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.*

**Data**

*A random sample of n > 40 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, maintenance cost.*

![](/Images/R.jpeg)

```
Denis Antonov 09/27/2022
```
```
Contact: antonov.resu@gmail.com
```