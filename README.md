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

![image](https://user-images.githubusercontent.com/58121111/122608582-77bd8b00-d04a-11eb-8ef1-7db04d8cc891.png)

##### Table 1

![image](https://user-images.githubusercontent.com/58121111/122608628-8c018800-d04a-11eb-95e2-12926d13961d.png)

#### Results
Running a simple linear regression model we can (F(1,46) = 61.34, p<0 with a r squared of 0.57.  Predicted alumni donation rate is equal to -68.76 + 1.18 (graduation rate) percent when graduation rate is measured in percentage. Alumni donation rate increased 1.18 for each percentage in graduation rate shown below in Table 2. 




##### Table 2

![image](https://user-images.githubusercontent.com/58121111/122608674-9facee80-d04a-11eb-94ac-ded2f3e9b635.png)


##### Figure 10

![image](https://user-images.githubusercontent.com/58121111/122608728-bbb09000-d04a-11eb-9ea9-903ffbfdd50f.png)


##### Figure 12

![image](https://user-images.githubusercontent.com/58121111/122608766-ce2ac980-d04a-11eb-9f03-ea515687cacc.png)



A Multiple linear regression model was calculated to predict a universities’ Alumni donation rate based on their Graduation Rate, Percent of Classes Under 20, and Student/Faculty ratio.  A significant regression equation was found (F(1,44) = 83.8, 9.34, 9.5, P < 0, 1, 0.001) with a multiple R squared of  0.7.

##### Table 3. 

![image](https://user-images.githubusercontent.com/58121111/122608807-dedb3f80-d04a-11eb-8485-b4a8e0e0f74a.png)


Participants predicted Alumni Donation is equal to -20.72 -1.19(student-faculty ratio) + 0.03(Percent of classes Under 20) + 0.75 (Graduation rate) where Student/Faculty is measured as a numeric for the number of student to the faculty member, Percent of classes Under 20 is a numerical percentage value, and graduation rate as a numerical integer representing the percentage value. 

The Alumni donation rate increased 0.75 percent for each percentage of Graduation rate, 0.03 percent increase for each percentage change of Classes under 20, and increases 1.19 percent for each decrease in students in the Student/Faculty Ratio. Through these results we see that graduation has the highest significance with the Alumni Donation rate with a <0.001 confidence however the Student/Faculty ratio showed a 0.001 confidence, showing significance, compared to the 1 significance in the Percentage of Classes Under 20.


##### Figure 14

![image](https://user-images.githubusercontent.com/58121111/122608855-f31f3c80-d04a-11eb-99e2-69e19dbdb92d.png)


##### Figure 15

![image](https://user-images.githubusercontent.com/58121111/122608908-0e8a4780-d04b-11eb-96ca-ddf15a682a4c.png)

#### Discussion
From the results of the Multiple Linear Regression Model and the Correlation Matrix I believe the Student/Faculty would be the best way to increase Alumni Donations. With a better Student/Faculty ratio, with better being less student to each faculty member, to help students receive the help they needed in order to graduate but also lead to better experiences (Benavides et al., 2010).

There were a few outliers specifically entries 21. Pennsylvania University, 33. University of Chicago,  37. University of North Carolina-Chapel Hill, and 10. Cornell university. University of Chicago is the most interesting of the group as it has one of the smallest Student-Faculty ratio but its alumni donation rate is just below the third quartile. University of Florida is also an outlier but in reference to its Student to faculty ratio being considerably higher than the other universities easily seen on the Student-Faculty Ratio Boxplot.
 
#### References
Benavides, S., Garcia, A. S., Caballero, J., & Wolowich, W. R. (2010). The Impact of Student-Faculty Ratio on Pharmacy Faculty Scholarship. American Journal of Pharmaceutical Education, 74(8), 138. https://doi.org/10.5688/aj7408138
Everly, M., Berlin, K., Weber, P., Peterson, Y., & Nelson, J. (2018). When Faculty Downsizing and Student Success Collide. The Department Chair, 29(2), 21–22. https://doi.org/10.1002/dch.30222
Ingraham, K. C., Davidson, S. J., & Yonge, O. (2018). Student-faculty relationships and its impact on academic outcomes. Nurse Education Today, 71, 17–21. https://doi.org/10.1016/j.nedt.2018.08.021




 
### Appendix

##### Figure 2

![image](https://user-images.githubusercontent.com/58121111/122608935-219d1780-d04b-11eb-85fb-968acd20d0e2.png)
 

##### Figure 3
 
![image](https://user-images.githubusercontent.com/58121111/122608980-32e62400-d04b-11eb-827a-cf661f1ac99a.png)


##### Figure 4

![image](https://user-images.githubusercontent.com/58121111/122609099-6a54d080-d04b-11eb-9534-5fc247a16cf8.png)


##### Figure 5

![image](https://user-images.githubusercontent.com/58121111/122609160-8e181680-d04b-11eb-8f05-572968e27d55.png)


##### Figure 6

![image](https://user-images.githubusercontent.com/58121111/122609216-a2f4aa00-d04b-11eb-83f5-79141fa249c3.png)


##### Figure 7
 
![image](https://user-images.githubusercontent.com/58121111/122609257-b4d64d00-d04b-11eb-9c5c-a3f98129bf22.png)


##### Figure 8

![image](https://user-images.githubusercontent.com/58121111/122609459-04b51400-d04c-11eb-85d8-81d7d1464b1a.png)
 

##### Figure 9

![image](https://user-images.githubusercontent.com/58121111/122609507-18f91100-d04c-11eb-8d73-6b8b2ae8baf6.png) 


##### Figure 11

![image](https://user-images.githubusercontent.com/58121111/122609582-3a59fd00-d04c-11eb-8b75-f3130839d422.png)


##### Figure 13
![image](https://user-images.githubusercontent.com/58121111/122609641-55c50800-d04c-11eb-8aa7-f709c5df32fb.png)
