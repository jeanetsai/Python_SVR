https://www.r-project.org/
去 R project 找 download 下載 R
並去 Rstudio 下載 Rstudio (32 bits 要較舊版本)
File=>New File=>Rscript

1.3 Taking a first look at the interface
快捷鍵:執行:ctrl+enter

1.4 Installing and managing packages
右下角packages
File=>New File=>Rscript鍵入
install.packages("ggplot2")
執行:ctrl+enter
require("ggplot2")
上一行執行後 右下角ggplot2自動打勾表示載入完成

檢查更新: tools=>check updates
或右下角packages => check updates

1. Getting Started - 5 Using built in datasets in R

1. Getting Started - 6 Entering data manually

# Entering data manually

# Create sequential data
x1 <- 0:10  # Assigns number 0 through 10 to x1
x1  # Prints contents of x1 in console
#0  1  2  3  4  5  6  7  8  9 10

x2 <- 10:0  # Assigns number 10 through 0 to x2
x2
#10  9  8  7  6  5  4  3  2  1  0

x3 <- seq(10)  # Counts from 1 to 10
x3
?seq
#1  2  3  4  5  6  7  8  9 10

x4 <- seq(30, 0, by = -3)  # Counts down by 3
x4
#30 27 24 21 18 15 12  9  6  3  0

# Manually enter data
x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)  # Concatenate 陣列
x5
?c
#5 4 1 6 7 2 2 3 2 8

x6 <- scan()  # After running this command, go to console
# Hit return after each number 使用者輸入
# Hit return twice to stop 按兩次enter來結束
x6
?scan

ls()  # List objects (same as Workspace viewer)
?ls
#列出上述全部物件
#x1 x2 x3 x4 x5 x6

rm(list = ls())  # Clean up

10

8:54

1. Getting Started - 7 Importing data
01-07 載入外部csv 和 txt
Read.table載入txt
Read.csv 載入csv
header=true表示 data有標頭
str表示structure不是string

trends.csv <- read.csv("~/Google Drive/repos/r/R-Statistics-Essential-Training/R-Statistics-Essential-Training/1-Getting Started/7-GoogleTrends.csv", header = TRUE) #header=true表示 data有標頭
str(trends.csv)
View(trends.csv)

trends.txt <- read.table("~/Google Drive/repos/r/R-Statistics-Essential-Training/R-Statistics-Essential-Training/1-Getting Started/7-GoogleTrends.txt", header = TRUE, sep = "\t") #header=true表示 data有標頭
str(trends.txt)  # This gives structure of object sntxt
# Or click on file in Workspace viewer, which brings up this:
View(trends.txt)
?View

11

13:07

1. Getting Started - 8 Converting tabular data to row data
(Data$admin)
Show the variable admin

Margin.table(data,1)
Show the first variable

Round (data, 2)
四捨五入小數兩位

# Get marginal frequencies from original table
margin.table(UCBAdmissions, 1)  # Admit
margin.table(UCBAdmissions, 2)  # Gender
margin.table(UCBAdmissions, 3)  # Dept
margin.table(UCBAdmissions)     # Total
?margin.table
round(prop.table(admit.dept), 2)  # 四捨五入小數兩位Show as proportions w/2 digits

12

13:07

1. Getting Started - 8 Converting tabular data to row data



13

10:19

1. Getting Started - 9 Working with color in R
#Bar plot (x, col) 此處的col指color
#Color()102 數字是指顏色號碼
# Working with color

# Barplot
x = c(12, 4, 21, 17, 13, 9)
barplot(x)
#Bar plot (x, col) 此處的col指color
#Color()102 數字是指顏色號碼
barplot(x, col = colors() [102])  # darkseagreen
barplot(x, col = colors() [602])  # Back to slategray3
#也能使用RGB
barplot(x, col = rgb(159, 182, 205, max = 255))  # Back to slategray3

14

6:37

1. Getting Started - 10 Exploring color with Colorbrewer

#install.packages("RColorBrewer")#記得先安裝RColorBrewer packages
#Pastel2
#Set3 可愛的配色
barplot(x, col = brewer.pal(6, "Pastel2"))
barplot(x, col = brewer.pal(6, "Set3"))


15

1:57

1. Getting Started - 11 Challenge Creating color palettes in R


16

3:55

1. Getting Started - 12 Solution Creating color palettes in R


17

8:33

2. Charts for One Variable - 1 Creating bar charts for categorical variables
02-01 16 bar chart
#使用預設的 data data(chickwts)
#Descending 依序排列則加入order=true
# To put the bars in descending order, add "order":
barplot(feeds[order(feeds, decreasing = TRUE)])
#Set margin:上下左右
par(oma = c(1, 1, 1, 1))  # Sets outside margins: b, l, t, r
par(mar = c(4, 5, 2, 1))  # Sets plot margins


18

6:48

2. Charts for One Variable - 2 Creating pie charts for categorical variables


19

6:03

2. Charts for One Variable - 3 Creating histograms for quantitative variables


20

7:13

2. Charts for One Variable - 4 Creating box plots for quantitative variables


21

7:26

2. Charts for One Variable - 5 Overlaying plots


22

5:35

2. Charts for One Variable - 6 Saving images


23

0:40

2. Charts for One Variable - 7 Challenge Layering plots


24

2:23

2. Charts for One Variable - 8 Solution Layering plots


25

3:34

3. Statistics for One Variable - 1 Calculating frequencies


26

5:44

3. Statistics for One Variable - 2 Calculating descriptives


27

4:03

3. Statistics for One Variable - 3 Using a single proportion Hypothesis test and confidence interval


28

4:10

3. Statistics for One Variable - 4 Using a single mean Hypothesis test and confidence interval


29

5:10

3. Statistics for One Variable - 5 Using a single categorical variable One sample chi square test


30

7:30

3. Statistics for One Variable - 6 Examining robust statistics for univariate analyses


31

0:37

3. Statistics for One Variable - 7 Challenge Calculating descriptive statistics


32

2:38

3. Statistics for One Variable - 8 Solution Calculating descriptive statistics


33

6:43

4. Modifying Data - 1 Examining outliers


34

9:27

4. Modifying Data - 2 Transforming variables


35

6:19

4. Modifying Data - 3 Computing composite variables


36

6:05

4. Modifying Data - 4 Coding missing data


37

0:43

4. Modifying Data - 5 Challenge Transforming skewed data to pull in outliers


38

2:54

4. Modifying Data - 6 Solution Transforming skewed data to pull in outliers


39

5:31

5. Working with the Data File - 1 Selecting cases


40

3:15

5. Working with the Data File - 2 Analyzing by subgroup


41

5:17

5. Working with the Data File - 3 Merging files


42

0:34

5. Working with the Data File - 4 Challenge Analyzing guinea pig data subgroups


43

1:32

5. Working with the Data File - 5 Solution Analyzing guinea pig data subgroups


44

4:34

6. Charts for Associations - 1 Creating bar charts of group means


45

5:05

6. Charts for Associations - 2 Creating grouped box plots


46

5:03

6. Charts for Associations - 3 Creating scatter plots


47

0:49

6. Charts for Associations - 4 Challenge Creating your own grouped box plots


48

4:12

6. Charts for Associations - 5 Solution Creating your own grouped box plots


49

3:56

7. Statistics for Associations - 1 Calculating correlation


50

6:14

7. Statistics for Associations - 2 Computing a bivariate regression


51

7:21

7. Statistics for Associations - 3 Comparing means with the t test


52

6:36

7. Statistics for Associations - 4 Comparing paired means Paired t test


53

8:28

7. Statistics for Associations - 5 Comparing means with a one factor analysis of variance ANOVA


54

3:35

7. Statistics for Associations - 6 Comparing proportions


55

5:11

7. Statistics for Associations - 7 Creating cross tabs for categorical variables


56

8:40

7. Statistics for Associations - 8 Computing robust statistics for bivariate associations


57

1:02

7. Statistics for Associations - 9 Challenge Comparing proportions across several different groups


58

4:08

7. Statistics for Associations - 10 Solution Comparing proportions across several different groups


59

3:44

8. Charts for Three or More Variables - 1 Creating clustered bar charts for means


60

2:50

8. Charts for Three or More Variables - 2 Creating scatter plots for grouped data


61

6:11

8. Charts for Three or More Variables - 3 Creating scatter plot matrices


62

5:14

8. Charts for Three or More Variables - 4 Creating 3D scatter plots


63

0:43

8. Charts for Three or More Variables - 5 Challenge Creating your own scatter plot matrix


64

4:42

8. Charts for Three or More Variables - 6 Solution Creating your own scatter plot matrix


65

9:27

9. Statistics for Three or More Variables - 1 Computing a multiple regression


66

5:57

9. Statistics for Three or More Variables - 2 Comparing means with a two factor ANOVA


67

14:15

9. Statistics for Three or More Variables - 3 Conducting a cluster analysis


68

10:32

9. Statistics for Three or More Variables - 4 Conducting a principal componentsfactor analysis


69

0:40

9. Statistics for Three or More Variables - 5 Challenge Creating a cluster analysis


70

4:29

9. Statistics for Three or More Variables - 6 Solution Creating a cluster analysis


71

3:41

10. Conclusion - 1 Next steps

