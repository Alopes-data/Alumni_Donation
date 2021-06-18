# Alumni_Donation

#### Abstract
  We are looking into the relationship between Alumni Given Rate with The % of Classes Under 20, Student/Faculty ratio, and Graduation rate in order so find information that leads to Alumni donation, which are an important source of revenue for colleges and universities.  The dataset provided contained 48 observations with 6 variable, 2 categorical: University and State, and 4 numerical, Student Faculty Ratio, Graduation Rate, Alumni Giving Rate, and Percent of class under 20. Going into the study we predicted a high positive correlation between graduation rate and alumni giving rate and a inverse relationship between student faculty ratio and alumni giving rate. We used a simple linear regression model followed by an multiple linear regression model to view the strength and direction of the relationships. We found that the Graduation Rate and Alumni Giving rate are too correlated to be used as a predictor but Student- Faculty Ratio had a high negative correlation with alumni giving rate. In short having a smaller Student-Faculty Ratio can lead to higher alumni giving rates.

  I believe that there will be a positive relationship between graduation rate and alumni giving since you need alumni in order to have donations from them. I do believe that Student/Faculty will have a correlation than graduation rate. Student faculty ratio has an impact on student performance and in tandem success rate (Ingraham et al., 2018). The dataset provided contained 48 observations with 6 variable, 2 categorical: University and State, and 4 numerical, Student Faculty Ratio, Graduation Rate, Alumni Giving Rate, and Percent of class under 20.
#### Methods
##### Materials
The main programming language used was R Studio libraries with Readxl ,Dplyr, Magritter, Ggplot2, and Corrplot used as supplementary packages.  Readxl was used to read in the “Alumni_Dataset” contained in an Microsoft Excel file.  Dplyr and Magritter provide syntax and simple data manipulation for organizing our data to prepare it for visualization and models.  Ggplot2 was the main package we used for data visualizations within R in tandem with the Corrplot package used for calculating and representing our correlation matrix.

##### Design
	Simple descriptive statistics and visualizations were used to examine the frequency and distribution of the dataset. For algorithms we used a linear regression model on Alumni Giving Rate and the Graduation Rate to gain insight into the correlation before running a Multiple Linear Regression model with Alumni Giving Rate as our dependent variable and Graduation rate, Student-Faculty Ratio, and the Percent of Classes Under 20 as our independent variables.

##### Participants
The “Alumni_Dataset” provided contained 48 observations with 6 variables. The two categorical variables were the University names one for each observation, and the State where the University exists containing 24 unique values shown in Figure 1.

##### Figure 1
Number of Universities within each State of the dataset
 
State abbreviations used. Only includes the states within the Dataset.

##### Table 1
Median, mean, quartiles and standard deviation (DV) of numerical variables
Predictor	Min	1st	Median	Mean	3rd	Max	SD
Graduation Rate	66.00	75.75	83.50	83.04	91.00	97.00	8.60
% of Classes Under 20	29.00	44.75	59.50	55.73	66.25	77.00	13.19
Student-Faculty Ratio	3.00	8.00	10.50	11.54	13.50	23.00	4.85
Alumni Giving Rate	7.00	18.75	29.00	29.27	38.50	67.00	13.44
Notes: n = 48, with 6 observations. Distribution and Frequency tables can be found in the appendix as figure 2-9.


#### Results
Running a simple linear regression model we can (F(1,46) = 61.34, p<0 with a r squared of 0.57.  Predicted alumni donation rate is equal to -68.76 + 1.18 (graduation rate) percent when graduation rate is measured in percentage. Alumni donation rate increased 1.18 for each percentage in graduation rate shown below in Table 2. 




##### Table 2
Simple Linear Regression model results using “Alumni Giving Rate”
	Estimate	R-Squared	F	Significance
Graduation Rate	1.18	0.57	61.34	<0.001
See Appendix for full table. Visualization available in Figure 10 with model fit available in appendix as Figure 11.













##### Figure 10
Scatterplot showing relationship with Graduation Rate and Alumni Giving Rate
 
Linear regression line added.






##### Figure 12
Correlation matrix comparing numerical variables.
 



A Multiple linear regression model was calculated to predict a universities’ Alumni donation rate based on their Graduation Rate, Percent of Classes Under 20, and Student/Faculty ratio.  A significant regression equation was found (F(1,44) = 83.8, 9.34, 9.5, P < 0, 1, 0.001) with a multiple R squared of  0.7.

##### Table 3. 
Multiple Linear Regression model results using “Alumni Giving Rate”
Predictor	Estimate	Significance	R-Squared	F
(Intercept)	-20.72		.7	34.21
Graduation Rate	0.75	<0.001		
% of Classes Under 20	0.03	1		
Student- Faculty Ratio	-1.19	0.001		
See Appendix B for full table. Model fit visualizations in Appendix Figure 13

Participants predicted Alumni Donation is equal to -20.72 -1.19(student-faculty ratio) + 0.03(Percent of classes Under 20) + 0.75 (Graduation rate) where Student/Faculty is measured as a numeric for the number of student to the faculty member, Percent of classes Under 20 is a numerical percentage value, and graduation rate as a numerical integer representing the percentage value. 

The Alumni donation rate increased 0.75 percent for each percentage of Graduation rate, 0.03 percent increase for each percentage change of Classes under 20, and increases 1.19 percent for each decrease in students in the Student/Faculty Ratio. Through these results we see that graduation has the highest significance with the Alumni Donation rate with a <0.001 confidence however the Student/Faculty ratio showed a 0.001 confidence, showing significance, compared to the 1 significance in the Percentage of Classes Under 20.


##### Figure 14
Student to Faculty ratio compared to the Alumni giving rate
 
Linear regression line added in blue.





##### Figure 15
Student Faculty Ratio compared with the Graduation rate.
 
Linear regression line added in blue.

#### Discussion
From the results of the Multiple Linear Regression Model and the Correlation Matrix I believe the Student/Faculty would be the best way to increase Alumni Donations. With a better Student/Faculty ratio, with better being less student to each faculty member, to help students receive the help they needed in order to graduate but also lead to better experiences (Benavides et al., 2010).

There were a few outliers specifically entries 21. Pennsylvania University, 33. University of Chicago,  37. University of North Carolina-Chapel Hill, and 10. Cornell university. University of Chicago is the most interesting of the group as it has one of the smallest Student-Faculty ratio but its alumni donation rate is just below the third quartile. University of Florida is also an outlier but in reference to its Student to faculty ratio being considerably higher than the other universities easily seen on the Student-Faculty Ratio Boxplot.
 
#### References
Benavides, S., Garcia, A. S., Caballero, J., & Wolowich, W. R. (2010). The Impact of Student-Faculty Ratio on Pharmacy Faculty Scholarship. American Journal of Pharmaceutical Education, 74(8), 138. https://doi.org/10.5688/aj7408138
Everly, M., Berlin, K., Weber, P., Peterson, Y., & Nelson, J. (2018). When Faculty Downsizing and Student Success Collide. The Department Chair, 29(2), 21–22. https://doi.org/10.1002/dch.30222
Ingraham, K. C., Davidson, S. J., & Yonge, O. (2018). Student-faculty relationships and its impact on academic outcomes. Nurse Education Today, 71, 17–21. https://doi.org/10.1016/j.nedt.2018.08.021




 
### Appendix

##### Figure 2
Boxplot showing the Interquartile range and mean of the Graduation Rate
 


##### Figure 3
 





##### Figure 4
Boxplot showing the Interquartile range and mean of the Percent of classes under 20.
 




##### Figure 5

 
Notes





##### Figure 6
Boxplot showing the Interquartile range and mean of the Student-Faculty Ratio
 
Showing the number of students to one faculty member.


##### Figure 7
 





##### Figure 8
Interquartile range of the Alumni Giving rate
 




##### Figure 9
Distribution Histogram of the Alumni Giving Rate
 






##### Figure 11
Fit of our Linear Regression Model with Alumni Giving as our dependent variable
 	 
 	 
Alumni Giving rate was the dependent variable with Graduation rate being our independent variable.



##### Figure 13
Multiple Linear Regression model results using “Alumni Giving Rate” as dependent variable
 	 
 	 
Closest to a straight line or 0 dotted line = fit.
Graduation Rate, Student Faculty Ratio, and % of classes under 20 were the independent variables. 
