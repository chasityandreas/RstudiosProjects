#14 exercises
Ch14_Q10_Data_File <- read_excel("C:/Users/cchas/Downloads/Ch14_Q10_Data_File.xlsx",
sheet = "Happiness_Age")
View(Ch14_Q10_Data_File)
myData=Ch14_Q10_Data_File
(cor_test = cor.test(myData$Happiness, myData$Age,  alternative= "two.sided"))

#2
s_x = 16
s_y = 31
s_xy = 119.11
(r_xy = s_xy/(s_x*s_y))

n=23
df=n-2
(t_df = (r_xy*sqrt(n-2))/sqrt(1-(r_xy ^ 2)))

(p_value =  pt(t_df,df, lower.tail = FALSE))

#3
r=-0.60
N=30
(t= (r*sqrt(N-2)/sqrt(1-r^2)))

#4
#The sample consists of 25 observations and the sample correlation coefficient is 0.15. 
#(You may find it useful to reference the t table.) 
#a-1. Calculate the value of the test statistic. (Round final answer to 3 decimal places.)
r=0.15
N=25
(t= (r*sqrt(N-2)/sqrt(1-r^2)))

#5
#PPG question from ch14 r lab

#6
#q5 from ch14

#7
#The sample consists of 34 observations and the sample correlation coefficient is –0.36.
#(You may find it useful to reference the t table.)
r=-0.36
N=34
(t= (r*sqrt(N-2)/sqrt(1-r^2)))
#or
n=34
r_xy=-0.36
df=n-2
(t_df = (r_xy*sqrt(n-2))/sqrt(1-(r_xy ^ 2)))

(p_value = 2 * pt(t_df,df, lower.tail = FALSE))

#8
Ch14_Q11_Data_File_V7 <- read_excel("C:/Users/cchas/Downloads/Ch14_Q11_Data_File_V7.xlsx",
sheet = "Points")
View(Ch14_Q11_Data_File_V7)
myData=Ch14_Q11_Data_File_V7
(cor_test = cor.test(myData$MPG, myData$PPG,  alternative= "two.sided"))
# a.	Calculate and interpret the sample correlation coefficient between PPG and MPG.
(cor_test=cor.test(myData$PPG, myData$MPG))
cor_test$estimate

#9
#The sample consists of 23 observations and the sample correlation coefficient is 0.37.
#(You may find it useful to reference the t table.)
#a-1. Calculate the value of the test statistic. (Round final answer to 3 decimal places.)
n=23
r_xy=0.37
df=n-2
(t_df = (r_xy*sqrt(n-2))/sqrt(1-(r_xy ^ 2)))

(p_value = 2 * pt(t_df,df, lower.tail = FALSE))

#10
#A realtor studies the relationship between the size of a house (in square feet) and the property taxes (in $) owed by the owner. 
#The table below shows a portion of the data for 20 homes in a suburb 60 miles outside of New York City. 
Ch14_Q9_Data_File <- read_excel("C:/Users/cchas/Downloads/Ch14_Q9_Data_File.xlsx",
sheet = "Taxes")
View(Ch14_Q9_Data_File)
myData=Ch14_Q9_Data_File
(cor_test = cor.test(myData$Taxes, myData$Size,  alternative= "two.sided"))
# a.	Calculate and interpret the sample correlation coefficient between PPG and MPG.
(cor_test=cor.test(myData$Taxes, myData$Size))
cor_test$estimate

#The following data for five years of the annual returns for two of Vanguard’s mutual funds, 
#the Vanguard Energy Fund (x) and the Vanguard Healthcare Fund (y),
#were given as sx = 35.77, sy = 13.34, sxy = 447.68. 
#Which of the following is the value of the sample correlation coefficient?
s_x = 35.77
s_y = 13.34
s_xy = 447.68
(r_xy = s_xy/(s_x*s_y))

n=2
df=n-2
(t_df = (r_xy*sqrt(n-2))/sqrt(1-(r_xy ^ 2)))

(p_value =  pt(t_df,df, lower.tail = FALSE))

#The following data for five years of the annual returns for two of Vanguard’s mutual funds, 
#the Vanguard Energy Fund (x) and the Vanguard Healthcare Fund (y), 
#were given as sx = 35.77, sy = 13.34, sxy = 447.68. The competing hypotheses are H0: ρxy= 0, HA: ρxy ≠ 0 . 
#At the 5% significance level, which of the following is the critical value of the test statistic?
s_x = 35.77
s_y = 13.34
s_xy = 447.68
(r_xy = s_xy/(s_x*s_y))

n=2
df=n-2
(t_df = (r_xy*sqrt(n-2))/sqrt(1-(r_xy ^ 2)))

(p_value =  pt(t_df,df, lower.tail = FALSE))