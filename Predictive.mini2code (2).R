library(dplyr)
library(readxl)
library(magrittr)
library(ggplot2)
library(corrplot)
library(pwr)

#___________________________________________
#Review the Dataset and overeall structure
#___________________________________________
Alumni_dataset <- read_excel(choose.files())
str(Alumni_dataset)

Alumni_dataset
names(Alumni_dataset)

glimpse(Alumni_dataset)

#_____________________________________________________________________
#1. Use the methods of the descriptive statistics summarize the data.
#_____________________________________________________________________
#University
#State
ggplot(Alumni_dataset, aes(x = `State`)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


#Bins calculated by SQRT(48) with 48 being the number of variables and then roundig up = 7
sqrt(48)

#Graduation Rate
Alumni_dataset$`Graduation Rate` %>%
  summary()
ggplot(Alumni_dataset, aes(x="Total Universities", y=`Graduation Rate`)) +
  geom_boxplot() +
  ggtitle("Graduation Rate")
#Histogram
ggplot(Alumni_dataset, aes(x = `Graduation Rate`)) +
  geom_histogram(binwidth =7, color="black", fill="white") +
  ggtitle("`Graduation Rate` Distribution")


#`% of Classes Under 20`
Alumni_dataset$`% of Classes Under 20` %>%
  summary()
ggplot(Alumni_dataset, aes(x="Total Universities", y=`% of Classes Under 20`)) +
  geom_boxplot() +
  ggtitle("% of Classes Under 20")
#Histogram
ggplot(Alumni_dataset, aes(x = `% of Classes Under 20`)) +
  geom_histogram(binwidth =7, color="black", fill="white") +
  ggtitle("`% of Classes Under 20` Distribution")


#`Student-Faculty Ratio`
Alumni_dataset$`Student-Faculty Ratio` %>%
  summary()
ggplot(Alumni_dataset, aes(x="Total Universities", y=`Student-Faculty Ratio`)) +
  geom_boxplot() +
  ggtitle("Student-Faculty Ratio")
#Histogram
ggplot(Alumni_dataset, aes(x = `Student-Faculty Ratio`)) +
  geom_histogram(binwidth =7, color="black", fill="white") +
  ggtitle("`Student-Faculty Ratio` Distribution")


#`Alumni Giving Rate`
Alumni_dataset$`Alumni Giving Rate` %>%
  summary()
ggplot(Alumni_dataset, aes(x="Total Universities", y=`Alumni Giving Rate`)) +
  geom_boxplot() +
  ggtitle("Alumni Giving Rate")
#Histogram
ggplot(Alumni_dataset, aes(x = `Alumni Giving Rate`)) +
  geom_histogram(binwidth =7, color="black", fill="white") +
  ggtitle("`Alumni Giving Rate` Distribution")



#______________________________________________
#2. Write a directional hypothesis to explain the relationship between graduation rate and alumni giving.
#3. Test your hypothesis using a simple linear regression model that can be used to predict the alumni giving rate, given the graduation rate. Report and discuss your findings using appropriate model statistics.
ggplot(data = Alumni_dataset, aes(x = `Graduation Rate` , y = `Alumni Giving Rate`)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)+
  ggtitle("`Graduation Rate`/`Alumni Giving Rate`")

ggplot(data = Alumni_dataset, aes(x = `Graduation Rate` , y = `Alumni Giving Rate`))
  geom_bar() +
  geom_errorbar(aes(ymin=mean-stderr, ymax=mean+stderr),
                              size=.3,    # Thinner lines
                              width=.2,
                              position=position_dodge(.9))


#review fitted values of regression model 
mod <- lm(`Alumni Giving Rate` ~  `Graduation Rate`, data = Alumni_dataset)
# Show the full output
summary(mod)
# Show the coefficients
coef(mod)
confint(mod, level=0.95)
# Mean of weights equal to mean of fitted values?
mean(Alumni_dataset$`Graduation Rate`) == mean(fitted.values(mod))
# Mean of the residuals
mean(residuals(mod))
#split plotting screens into 2 by 2 grid
#view assumptions based on linear regression models.
plot(mod)

#______________________________________________________________
#4. Write directional hypotheses to explain the relationship between the other variables in the database and alumni giving. 
#5. Develop a multiple linear regression model that could be used to predict the alumni giving rate using Graduate Rate, % of Classes Under 20, and Student/Faculty Ratio as independent variables.  Report and discuss your findings using appropriate model statistics.
names(Alumni_dataset)


#______________________________________________________
#correlation coefficiant 
# Extract the numerical variables from Dataset
numericalVars <- select_if(Alumni_dataset, is.numeric)
numericalVars
# Compute the correlation matrix for these variables
corrMat <- cor(numericalVars)
# Generate the correlation ellipse plot
corrplot(corrMat, method = "ellipse")


#_______________________________________________________
#Multiple Linear Regression Model on 
#Alumni Giving rate: 
#Graduation rate/
#% of class under 20/
#student-faculty ratio
mlrmod <- lm(`Alumni Giving Rate`~`Graduation Rate`+`% of Classes Under 20`+`Student-Faculty Ratio`, data=Alumni_dataset)
summary(mlrmod)

#Confidence of model based on a 95 confidence score
confint(mlrmod, conf.level=0.95)
#coefficients
coef(mlrmod)
#check the model assumptions
plot(mlrmod)
abline(mlrmod)
#mean of residuals
mean(residuals(mod))


ggplot(Alumni_dataset, aes(x = `Alumni Giving Rate`, y = `Student-Faculty Ratio`)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
  ggtitle("`Alumni Giving Rate`:`Student-Faculty Ratio`")
  
ggplot(Alumni_dataset, aes(x = `Graduation Rate`, y = `Student-Faculty Ratio`)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
  ggtitle("`Graduation Rate`:`Student-Faculty Ratio`")  

#6. What conclusions and recommendations can you derive from your analysis?
#7. Which universities are achieving a substantially higher alumni given rate than would be expected, given their Graduate Rate, % of Classes Under 20, and Student/Faculty Ratio?
#8. Discuss any limitations of your current model and make recommendations for future research (e.g. ways to improve the model, inclusion of other independent variables to improve the explanatory strength of your model.)