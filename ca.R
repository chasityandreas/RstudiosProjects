#Chapter 8 Examples

#Find Z for confidence level
#95%
Confidence_level=0.95
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)

#90%
Confidence_level=0.90
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)

#99%
Confidence_level=0.99
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)

#98%
Confidence_level=0.98
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)

#88%
Confidence_level=0.88
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)

#Example 8.1
#A sample of 25 cereal boxes yields a mean weight of 1.02 pounds of cereal per box. 
# Assume that the weight is normally distributed with a standard deviation of 0.03 pound.
#Construct the 95% confidence interval for the mean weight of all cereal boxes. 
n=25
mean=1.02
standard_deviation=0.03

Confidence_level=0.95
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)
(Upper=mean+Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
#margin of error
margin_error=Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n))
#width of interval
(width_interval=Upper-Lower)
(width_interval=margin_error*2)
round(width_interval,digits=2)

#Example 8.2
#IQ tests are approximately normally distributed with a standard deviation of 15. 
#A sample of 22 employees gives a sample mean of 106.
#Compute 90% and 99% confidence intervals for the average IQ at this firm.
n=22
mean=106
standard_deviation=15

Confidence_level=0.90
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)
(Upper=mean+Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))

n=22
mean=106
standard_deviation=15

Confidence_level=0.99
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)
(Upper=mean+Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))


#Example 8.3
# Import the Hockey_Pucks data file into a data frame (table) and label it myData.
#The weights (in grams) of hockey pucks is assumed to be normally distributed with a standard deviation of 7.5 grams. 
#Suppose you have a sample of 80 hockey pucks.
#Construct the 90% confidence interval for the population mean.
jaggia_BS_4e_ch08_Data_Files = read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "Hockey_Pucks")
View(jaggia_BS_4e_ch08_Data_Files)

myData = jaggia_BS_4e_ch08_Data_Files

n=80
mean= mean(myData$Weight)
standard_deviation=7.5

Confidence_level=0.90
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)
(Upper=mean+Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
#Q3 in Exercises 8.1
#A simple random sample of 25 observations is derived from 
#a normally distributed population with a population standard deviation of 8.2. 

#a.	Is the condition that X is normally distributed satisfied? Explain. Yes, the sample is normally distributed.
#b.	Compute the margin of error with 80% confidence.
n=25
standard_deviation=8.2

Confidence_level=0.8
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))

#margin of error
(margin_error=Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))

#c.	Compute the margin of error with 90% confidence.
n=25
standard_deviation=8.2

Confidence_level=0.9
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))

#margin of error
(margin_error=Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))

#d.	Which of the two margins of error will lead to a wider interval?
#The higher confidence level will lead to a wider interval. So, 90% CI.

#Q13 in Exercises 8.1

#PA_Debt file. 
#A study reports that recent college graduates from Connecticut face the highest average debt of $38,510.
#A researcher from Pennsylvania wants to determine how recent undergraduates from that state fare. 
#The accompanying file contains data on debt from 40 recent undergraduates. 
#Assume that the population standard deviation is $5,000. 

jaggia_BS_4e_ch08_Data_Files = read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
                                          sheet = "PA_Debt")
View(jaggia_BS_4e_ch08_Data_Files)
PA_Debt = jaggia_BS_4e_ch08_Data_Files
#a.	Construct the 95% confidence interval for the mean debt of all undergraduates from Pennsylvania.
n=40
mean=mean(PA_Debt$Debt)
standard_deviation=5000

Confidence_level=0.95
Alpha=1-Confidence_level
Right_Side_Distributions = Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

(Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1))
round(Z_Alpha_DivideBy_2, digits=3)
(Upper=mean+Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-Z_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))

#b.	Use the 95% confidence interval to determine 
#if the debt of Pennsylvania undergraduates differs from that of Connecticut undergraduates.                                                                   
#Conneticut's mean debt is 38510. PA's range is between 23521 and 22070. So, the mean differs signifucantly.

#Example 8.5 
#MPG data
#Estimate mean for 25 cars with 90% confident interval
jaggia_BS_4e_ch08_Data_Files <- read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "MPG")
View(jaggia_BS_4e_ch08_Data_Files)

mpg_data=jaggia_BS_4e_ch08_Data_Files

(mean=mean(mpg_data$MPG))
(standard_deviation=sd(mpg_data$MPG))
n=nrow(mpg_data) #or put n=25
df=n-1
Confidence_Level=0.9
Alpha=(1-Confidence_Level)
Left_Side_Distributions=1-Alpha/2

(t_Alpha_DivideBy_2=qt(Left_Side_Distributions,df,lower.tail = TRUE))
round(t_Alpha_DivideBy_2,digits = 3)
(Upper=mean+t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
round(Upper,digits = 2)
round(Lower,digits = 2)
#easyway
t.test(mpg_data$MPG, conf.level = 0.9)

#Example 8.6
# Import the Prime data file into a data frame (table)
#Annual expenditures (in $) for 100 Amazon Prime customers. 
#Construct the 95% confidence interval for the average annual expenditures.
#Estimating mu, sigma unknown
#Finding lower and upper limits
jaggia_BS_4e_ch08_Data_Files <- read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "Prime")
View(jaggia_BS_4e_ch08_Data_Files)
Prime_data= jaggia_BS_4e_ch08_Data_Files

(mean=mean(Prime_data$Expenditures))
(standard_deviation=sd(mpg_data$MPG))
n=nrow(Prime_data) #or put n=25
df=n-1
Confidence_Level=0.95
Alpha=(1-Confidence_Level)
Left_Side_Distributions=1-Alpha/2

(t_Alpha_DivideBy_2=qt(Left_Side_Distributions,df,lower.tail = TRUE))
round(t_Alpha_DivideBy_2,digits = 3)
(Upper=mean+t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
round(Upper,digits = 2)
round(Lower,digits = 2)
#easyway
t.test(Prime_data$Expenditures, conf.level = 0.9)

#Q35 in Exercises 8.2
#The accompanying data file lists average monthly debt payments (Debt in $) for 26 metropolitan areas. 
#Construct the 90% and the 95% confidence intervals for the population mean. Compare the widths of the intervals.
jaggia_BS_4e_ch08_Data_Files <- read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "Debt_Payments")
View(jaggia_BS_4e_ch08_Data_Files)
debtpay =jaggia_BS_4e_ch08_Data_Files

(mean=mean(debtpay$Debt))
(standard_deviation=sd(mpg_data$MPG))
n=nrow(debtpay) #or put n=25
df=n-1
Confidence_Level=0.95
Alpha=(1-Confidence_Level)
Left_Side_Distributions=1-Alpha/2

(t_Alpha_DivideBy_2=qt(Left_Side_Distributions,df,lower.tail = TRUE))
round(t_Alpha_DivideBy_2,digits = 3)
(Upper=mean+t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
(Lower=mean-t_Alpha_DivideBy_2*(standard_deviation/sqrt(n)))
round(Upper,digits = 2)
round(Lower,digits = 2)

#easyway
t.test(debtpay$Debt, conf.level = 0.95)


#Q38 in Exercises 8.2
#Recent research shows that while the average math scores for boys and girls may be the same, there
#is more variability in math ability for boys than girls, resulting in some boys with soaring math skills. 
#A portion of the data on math scores of boys and girls is shown in the accompanying table. 

jaggia_BS_4e_ch08_Data_Files = read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "Math_Scores")
View(jaggia_BS_4e_ch08_Data_Files)
mathscore = jaggia_BS_4e_ch08_Data_Files

t.test(mathscore$Boys, conf.level = 0.95)
t.test(mathscore$Girls, conf.level = 0.95)
sd(mathscore$Boys)
sd(mathscore$Girls) #shows why theyre different

#Example 8.6
#In a sample of 25 ultra-green cars, seven of the cars obtained over 100 miles per gallon (MPG). 
#Construct a 90% confidence interval for the population proportion of all ultra-green cars that obtain over 100 MPG.
#Construct a 99% confidence interval for the population proportion of all ultra-green cars that obtain over 100 MPG.
jaggia_BS_4e_ch08_Data_Files <- read_excel("jaggia_BS_4e_ch08_Data_Files.xlsx",
sheet = "MPG")
View(jaggia_BS_4e_ch08_Data_Files)
mpg_data = jaggia_BS_4e_ch08_Data_Files
(p=7/25)
n=25
Confidence_Level=0.90
Alpha=(1-Confidence_Level)
Right_Side_Distributions=Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1)

(Upper=p+Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
(Lower=p-Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))

round(Upper,digits = 3)*100
round(Lower,digits = 3)*100

#margin error
(margin_error= Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
#width interval
(width_interval = margin_error*2)

round(width_interval,digits=2)

#99
(p=7/25)
n=25
Confidence_Level=0.99
Alpha=(1-Confidence_Level)
Right_Side_Distributions=Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1)

(Upper=p+Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
(Lower=p-Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))

round(Upper,digits = 3)*100
round(Lower,digits = 3)*100

#margin error
(margin_error= Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
#width interval
(width_interval = margin_error*2)

round(width_interval,digits=2)

#Q49 in Exercises 8.3

#In a recent poll of 760 homeowners in the United States, 
#one in five homeowners reports having a home equity loan
#that he or she is currently paying off. Using a confidence coefficient of 0.90, 
#derive the interval estimate for the proportion of all homeowners in the United States that hold a home equity loan.

(p=1/5)
n=760
Confidence_Level=0.90
Alpha=(1-Confidence_Level)
Right_Side_Distributions=Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1)

(Upper=p+Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
(Lower=p-Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))

round(Upper,digits = 3)*100
round(Lower,digits = 3)*100

#margin error
(margin_error= Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
#width interval
(width_interval = margin_error*2)

round(width_interval,digits=2)

#Q51 in Exercises 8.4
#An accounting professor is notorious for being stingy in giving out good letter grades. 
#In a large section of 140 students in the fall semester, she gave out only 5% A's, 
#23% B's, 42% C's, and 30% D's and F's. Assuming that this was a representative class, 
#compute the 95% confidence interval of the probability of getting at least a B from this professor.

(p=0.05+0.23)
n=140

Confidence_Level=0.95
Alpha=1-Confidence_Level
Right_Side_Distributions=Alpha/2
Left_Side_Distributions=1-Right_Side_Distributions

Z_Alpha_DivideBy_2=qnorm(Left_Side_Distributions,0,1)

(Upper=p+Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
(Lower=p-Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))

round(Upper,digits = 3)*100
round(Lower,digits = 3)*100

#margin error
(margin_error= Z_Alpha_DivideBy_2*sqrt(p*(1-p)/n))
#width interval
(width_interval = margin_error*2)

round(width_interval,digits=2)