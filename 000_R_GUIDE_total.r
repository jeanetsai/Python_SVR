https://www.r-project.org/
去 R project 找 download 下載 R
並去 Rstudio 下載 Rstudio (32 bits 要較舊版本)
File=>New File=>Rscript

1.3 Taking a first look at the interface
快捷鍵:執行:ctrl+enter

# Comment/Uncomment --> Cmd + Shift + C
# Execute command from script window --> Cmd + Enter
# Clear the console --> Ctrl + L

8+5     # Basic Math
1:250   # Prints numbers 1 to 100 across several lines

print("Hello World!")   # Prints in console

# Variables
x<-1:5  # Put the number 1-5 in the variable x
x       # Display the values in x

y<-c(5,6,7,8,9)
x+y
y*2

# Google's R Style Guide
browseURL("https://google.github.io/styleguide/Rguide.xml")

# Clean up
rm(x) # Remove an object from workspace	
rm(x,y) # Remove more than one
rm(list=ls()) # Clear entire workspace


1.4 Installing and managing packages
右下角packages
File=>New File=>Rscript鍵入
install.packages("ggplot2")
執行:ctrl+enter
require("ggplot2")
上一行執行後 右下角ggplot2自動打勾表示載入完成

檢查更新: tools=>check updates
或右下角packages => check updates


# Installing and managing packages

# LISTS OF PACKAGES
browseURL("http://cran.r-project.org/web/views/")  # Opens CRAN Task Views in browser
# Opens "Available CRAN Packages By Name" (from UCLA mirror) in browser
browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html")
# See also CRANtastic
browseURL("http://crantastic.org/")

# See current packages
library()  # Brings up editor list of installed packages
search()   # Shows packages that are currently loaded

# TO INSTALL AND USE PACKAGES
# Can use menus: Tools > Install Packages... (or use Package window)
# Or can use scripts, which can be saved in incorporated in source
install.packages("ggplot2")  # Downloads package from CRAN and installs in R
?install.packages
library("ggplot2")  # Make package available; often used for loading in scripts
require("ggplot2")  # Preferred for loading in functions; maybe better?
library(help = "ggplot2")  # Brings up documentation in editor window

# VIGNETTES
vignette(package = "grid")  # Brings up list of vignettes (examples) in editor window
?vignette
browseVignettes(package = "grid")  # Open web page with hyperlinks for vignette PDFs etc.
vignette()  # Brings up list of all vignettes for currently installed packages
browseVignettes()  # HTML for all vignettes for currently installed packages
# If links are dead, go to CRAN and search by name
browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html")

# UPDATE PACKAGES
# In RStudio, Tools > Check for Package Updates
update.packages()  # Checks for updates; do periodically
?update.packages

# UNLOAD/REMOVE PACKAGES
# By default, all loaded packages are unloaded when R quits
# Can also open Packages window and manually uncheck
# Or can use this code
# To unload packages
detach("package:ggplot2", unload = TRUE)
?detach

# To permanently remove (delete) package
install.packages("psytabs")  # Adds psytabs
remove.packages("psytabs")   # Deletes it
?remove.packages

1. Getting Started - 5 Using built in datasets in R

# Using R’s built-in datasets

?datasets
library(help = "datasets")
# To load "datasets," the built-in R datasets package,
# either click on "datasets" in the package manager or
# type either of the following:
?library
library(datasets)
?require
require(datasets)

# To remove the datasets package
detach(package:datasets)

# To see a list of the available datasets
data()

# You can see the same list with clickable links
# to descriptions for each dataset at
browseURL("http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html")

# For information on a specific dataset
?airmiles

# To load a dataset from the package into the Workspace
data(airmiles)  # Listed as "ts" for "time-series"

# To see the contents of the dataset
# (Don't actually need to load for this)
airmiles

# To see its "structure"
?str
str(airmiles)

# Or, in RStudio, click on the dataset in "Workspace,"
# which uses the "fix" function and makes it possible
# edit the dataset in a new window

# Now a dataset that has rows and columns
?anscombe
data(anscombe)  # Appears under "Data" in the Workspace

# See its structure
str(anscombe)

# See its data (or click on name in Workspace)
anscombe

rm(list = ls())  # Clean up

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
#Show the variable admin

#Margin.table(data,1)
#Show the first variable

#Round (data, 2)
#四捨五入小數兩位

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

# Converting tabular data to row data

# Load data
?UCBAdmissions
str(UCBAdmissions)
UCBAdmissions

# The problem
admit.fail <- (UCBAdmissions$Admit)  # Doesn't work
barplot(UCBAdmissions$Admit)  # Doesn't work
plot(UCBAdmissions)  # DOES work but not what we wanted now

# Get marginal frequencies from original table
margin.table(UCBAdmissions, 1)  # Admit
margin.table(UCBAdmissions, 2)  # Gender
margin.table(UCBAdmissions, 3)  # Dept
margin.table(UCBAdmissions)     # Total
?margin.table

# Save marginals as new table
admit.dept <- margin.table(UCBAdmissions, 3)  # Dept
str(admit.dept)
barplot(admit.dept)
admit.dept  # Show frequencies
prop.table(admit.dept)  # Show as proportions
round(prop.table(admit.dept), 2)  # Show as proportions w/2 digits
round(prop.table(admit.dept), 2) * 100  # Give percentages w/o decimal places
?prop.table
?round

# Go from table to one row per case
admit1 <- as.data.frame.table(UCBAdmissions)  # Coerces to data frame
admit2 <- lapply(admit1, function(x)rep(x, admit1$Freq))  # Repeats each row by Freq
admit3 <- as.data.frame(admit2)  # Converts from list back to data frame
admit4 <- admit3[, -4]  # Removes fifth column with frequencies
# Or do it all in one go
admit.rows <- as.data.frame(lapply(as.data.frame.table(UCBAdmissions), function(x)rep(x, as.data.frame.table(UCBAdmissions)$Freq)))[, -4]
str(admit.rows)
admit.rows[1:10, ]  # View first ten rows of data (of 4526)

rm(list = ls())  # Clean up


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

# Working with color

# Barplot
x = c(12, 4, 21, 17, 13, 9)
barplot(x)

# R specifies color in several ways
?colors
# Web page with PDFs of colors in R
browseURL("http://research.stowers-institute.org/efg/R/Color/Chart/")

# Color names
# R has names for 657 colors, arranged alphabetically except for white (first)
# "Gray" or "grey": either is acceptable
colors()  # Gives list of color names
barplot(x, col = "slategray3")

# Color numbers
# From color name's position in alphabetically-order vector of colors()
# Specify colors() [i], where i is index number in vector
barplot(x, col = colors() [102])  # darkseagreen
barplot(x, col = colors() [602])  # Back to slategray3

# RGB Triplets
# Separately specify the red, green, and blue components of the color
# By default, colors are specified in 0-1 range
# Can specify 0-255 range by adding "max = 255"
?rgb
# Can convert color names to rgb with "col2rgb"
?col2rgb
col2rgb("navyblue")  # Yields (0, 0, 128)
barplot(x, col = rgb(.54, .0, .0))  # darkred
barplot(x, col = rgb(159, 182, 205, max = 255))  # Back to slategray3

# RGB Hexcodes
# Can also use shortcut hexcodes (base 16), which are equivalent to
# RGB on the 0-255 scale, as FF in hex equals 255 in decimal
barplot(x, col = "#FFEBCD")  # blanchedalmond
barplot(x, col = "#9FB6CD")  # Back to slategray3

# MULTIPLE COLORS
# Can specify several colors (using any coding method) in vector
barplot(x, col = c("red", "blue"))  # Colors will cycle
barplot(x, col = c("red", "blue", "green", "yellow"))  # Colors will cycle

# USING COLOR PALETTES
# Palettes can be more attractive and more informative
# Easiest to use
help(package=colorspace)  # Lots of info on color spaces
?palette

# Built-in palettes
# rainbow(n, s = 1, v = 1, start = 0, end = max(1, n - 1)/n, alpha = 1)
# heat.colors(n, alpha = 1)  # Yellow through red
# terrain.colors(n, alpha = 1)  # Gray through green
# topo.colors(n, alpha = 1)  # Purple through tan
# cm.colors(n, alpha = 1)  # Blues and pinks
help(package = colorspace)
palette()
barplot(x, col = 1:6)
barplot(x, col = rainbow(6))
barplot(x, col = heat.colors(6))
barplot(x, col = terrain.colors(6))
barplot(x, col = topo.colors(6))
barplot(x, col = cm.colors(6))
palette("default")  # Return to default

rm(list = ls())  # Clean up




14

6:37

1. Getting Started - 10 Exploring color with Colorbrewer

#install.packages("RColorBrewer")#記得先安裝RColorBrewer packages
#Pastel2
#Set3 可愛的配色
barplot(x, col = brewer.pal(6, "Pastel2"))
barplot(x, col = brewer.pal(6, "Set3"))

# Exploring Color with RColorBrewer

# Barplot
x = c(12, 4, 21, 17, 13, 9)
barplot(x)

# RColorBrewer
browseURL("http://colorbrewer2.org/")  # Uses Flash
install.packages("RColorBrewer")
help(package = "RColorBrewer")
require("RColorBrewer")

# Show all of the palettes in a graphics window
display.brewer.all()

# To see palette colors in separate window, give number
# of desired colors and name of palette in quotes
display.brewer.pal(8, "Accent")
display.brewer.pal(4, "Spectral")

# Barplots
# Can save palette as vector or call in function
blues <- brewer.pal(6, "Blues")
barplot(x, col = blues)
barplot(x, col = brewer.pal(6, "Greens"))
barplot(x, col = brewer.pal(6, "YlOrRd"))
barplot(x, col = brewer.pal(6, "RdGy"))
barplot(x, col = brewer.pal(6, "BrBG"))
barplot(x, col = brewer.pal(6, "Dark2"))
barplot(x, col = brewer.pal(6, "Paired"))
barplot(x, col = brewer.pal(6, "Pastel2"))
barplot(x, col = brewer.pal(6, "Set3"))

# Clean up
palette("default")  # Return to default
detach("package:RColorBrewer", unload = TRUE)
rm(list = ls())  

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

# R Statistics Essential Training
# Ex02_01
# Creating bar charts for categorical variables

# HELP ON PLOTS
?plot

# LOAD DATASETS PACKAGE
require("datasets")

# ONE ROW PER CASE
?chickwts
chickwts  # Look at data
data(chickwts)  # Load data into workspace

# Quickest Method
plot(chickwts$feed)  # Plot feed from chickwts
?plot

# "barplot" offers more control but must prepare data:
# R doesn't create bar charts directly from the categorical
# variables; instead, we must first create a table that
# has the frequencies for each level of the variable.
feeds <- table(chickwts$feed)
feeds
barplot(feeds)  # Identical to plot(chickwts$feed)
?barplot

# To put the bars in descending order, add "order":
barplot(feeds[order(feeds, decreasing = TRUE)])

# Customize the chart
par(oma = c(1, 1, 1, 1))  # Sets outside margins: b, l, t, r
par(mar = c(4, 5, 2, 1))  # Sets plot margins
barplot(feeds[order(feeds)], 
        horiz  = TRUE,
        las    = 1,  # las gives orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", "bisque2", "bisque3", "bisque4"),
        border = NA,  # No borders on bars
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",  # \n = line break
        xlab   = "Number of Chicks")
?par

rm(list = ls())  # Clean up



18

6:48

2. Charts for One Variable - 2 Creating pie charts for categorical variables

# R Statistics Essential Training
# Ex02_02
# Creating pie charts for categorical variables

# LOAD DATASETS PACKAGE
require("datasets")

# ONE ROW PER CASE
data(chickwts)

# Create a table with frequencies
feeds <- table(chickwts$feed)
feeds

# Make the pie chart with the defaults
pie(feeds)
?pie

# Modify the pie chart
pie(feeds[order(feeds, decreasing = TRUE)],
    init.angle = 90,   # Starts as 12 o'clock instead of 3
    clockwise = TRUE,  # Default is FALSE
    col = c("seashell", "cadetblue2", "lightpink", "lightcyan", "plum1", "papayawhip"),
    main = "Pie Chart of Feeds from chickwts")

# THE PROBLEM WITH PIE CHARTS
# Three data sets
pie.a <- c(22, 14, 18, 20, 14, 12)
pie.b <- c(20, 18, 16, 18, 16, 12)
pie.c <- c(12, 14, 20, 18, 14, 22)

# Changing graphical parameters for a minute
oldpar <- par()   # Stores old graphical parameters
par(mfrow    = c(1, 3),  # Num. rows/cols
    cex.main = 3)   #  Main title 3x bigger
colors <- c("grey98", "grey90", "lightskyblue", "lightgreen", "grey98", "grey90")
?colors

# Three pie charts side by side
# Is the green slice or blue slice bigger?
pie(pie.a, main = "Pie A", col = colors)
pie(pie.b, main = "Pie B", col = colors)
pie(pie.c, main = "Pie C", col = colors)

# Three bar charts side by side
# Is the green bar or blue bar bigger?
barplot(pie.a, main = "Bar A", col = colors)
barplot(pie.b, main = "Bar B", col = colors)
barplot(pie.c, main = "Bar C", col = colors)

# CONCLUSION
# From R help on pie charts:
?pie

# Pie charts are a very bad way of displaying information.
# The eye is good at judging linear measures and bad at
# judging relative areas. A bar chart or dot chart is a
# preferable way of displaying this type of data.
# 
# Cleveland (1985), page 264: “Data that can be shown by
# pie charts always can be shown by a dot chart. This means
# that judgements of position along a common scale can be
# made instead of the less accurate angle judgements.”
# This statement is based on the empirical investigations
# of Cleveland and McGill as well as investigations by
# perceptual psychologists.

par(oldpar)  # Restore old graphical parameters
# Note that cin, cra, csi, cxy, and din are read-only
# parameters that were written to oldpar but cannot be
# rewritten; just ignore the warning messages for these.
?par

rm(list = lm())  # Clean up

19

6:03

2. Charts for One Variable - 3 Creating histograms for quantitative variables

# R Statistics Essential Training
# Ex02_03
# Creating histograms for quantitative variables
#Histogram 是 time series
# LOAD DATASETS PACKAGE
require("datasets")
?lynx
data(lynx)  # Annual Canadian Lynx trappings 1821-1934

# Make a histogram using the defaults
hist(lynx)
?hist



# Modify histogram
h <- hist(lynx,  # Save histogram as object
          breaks = 11,  # "Suggests" 11 bins
          #           breaks = seq(0, 7000, by = 100),
          #           breaks = c(0, 100, 300, 500, 3000, 3500, 7000),
          freq = FALSE,
          col = "thistle1", # Or use: col = colors() [626]
          main = "Histogram of Annual Canadian Lynx Trappings\n1821-1934",
          xlab = "Number of Lynx Trapped")
		  
#Xlab x label
#Lwd line width 2px
#dnorm=density normal
#Add=true add to existing diagram

# IF freq = FALSE, this will draw normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)), 
      col = "thistle4", 
      lwd = 2,
      add = TRUE)
?curve

rm(list = ls())  # Clean up


20

7:13

2. Charts for One Variable - 4 Creating box plots for quantitative variables

# R Statistics Essential Training
# Ex02_04
# Creating boxplots for quantitative variables

# LOAD DATASET
require("datasets")
# Lawyers' Ratings of State Judges in the US Superior Court (c. 1977)
?USJudgeRatings
USJudgeRatings  # View data
data(USJudgeRatings)  # Load into workspace
# At least two errors in data file:
# 1. Data appears to be on 1-10 or 0-10 scale but Callahan
#    has a 10.6 on CONT. 8.6 seems more likely.
# 2. Santaniello's last name is misspelled
# Best to fix errors in spreadsheet and reimport

# Make boxplot using the defaults
boxplot(USJudgeRatings$RTEN)
?boxplot

# Modify boxplot
boxplot(USJudgeRatings$RTEN,
        horizontal = TRUE,
        las = 1,  # Make all labels horizontal
        notch = TRUE,  # Notches for CI for median
        ylim = c(0, 10),  # Specify range on Y axis
        col = "slategray3",   # R's named colors (n = 657)
        #         col = colors() [602], # R's color numbers
        #         col = "#9FB6CD",      # Hex codes for RBG
        #         col = rgb(159, 182, 205, max = 255),  # RGB triplet with max specified
        boxwex = 0.5,  # Width of box as proportion of original
        whisklty = 1,  # Whisker line type; 1 = solid line
        staplelty = 0,  # Staple (line at end) type; 0 = none
        outpch = 16,  # Symbols for outliers; 16 = filled circle
        outcol = "slategray3",  # Color for outliers
        main = "Lawyers' Ratings of State Judges in the\nUS Superior Court (c. 1977)",
        xlab = "Lawyers' Ratings")

#以 rten 為變數畫的圖
#Median 大概是接近8
# Multiple boxplots
boxplot(USJudgeRatings,
        horizontal = TRUE,
        las = 1,  # Make all labels horizontal
        notch = TRUE,  # Notches for CI for median
        ylim = c(0, 10),  # Specify range on Y axis
        col = "slategray3",   # R's named colors (n = 657)
        boxwex = 0.5,  # Width of box as proportion of original
        whisklty = 1,  # Whisker line type; 1 = solid line
        staplelty = 0,  # Staple (line at end) type; 0 = none
        outpch = 16,  # Symbols for outliers; 16 = filled circle
        outcol = "slategray3",  # Color for outliers
        main = "Lawyers' Ratings of State Judges in the\nUS Superior Court (c. 1977)",
        xlab = "Lawyers' Ratings")

rm(list = ls())  # Clean up

21

7:26

2. Charts for One Variable - 5 Overlaying plots
# R Statistics Essential Training
# Ex02_05
# Overlaying Plots

# LOAD DATASET
#Dataset Swiss
#swiss$Fertility Take only fertility data

require("datasets")
?swiss
swiss
str(swiss)
data(swiss)
fertility <- swiss$Fertility

# PLOTS
# Plot 1: Histogram
h <- hist(fertility,
          prob = TRUE,  # Flipside of "freq = FALSE"
          ylim = c(0, 0.04),#Ylim = y limit
          xlim = c(30, 100),#Xlim= x limit
          breaks = 11,
          col = "#E5E5E5",
          border = 0,
          main = "Fertility for 47 French-Speaking\nSwiss Provinces, c. 1888")

# Plot 2: Normal curve (if prob = TRUE)
curve(dnorm(x, mean = mean(fertility), sd = sd(fertility)), 
      col = "red", 
      lwd = 3,
      add = TRUE)
#Add=true
#Density normal distribution
#Lwd = line width =3 px
	  
	  
# Plot 3 & 4: Kernel density lines (if prob = TRUE)
lines(density(fertility), col = "blue")
lines(density(fertility, adjust = 3), col = "darkgreen")

# Plot 5: Rug (That is, lineplot under histogram)
rug(fertility, col = "red")

rm(list = ls())  # Clean up

22

5:35

2. Charts for One Variable - 6 Saving images
#簡單存圖方法：按圖上方的export

# R Statistics Essential Training
# Ex02_06
# Exporting charts

# Load data 載入已存在的dataset chickwts 其中的變數 feed
require("datasets")
feeds <- table(chickwts$feed)

# The hard way: Via R's code

# For PNG file (Run entire block at once)
png(filename= "~/Desktop/R/Ex02_06a.png",  # Open device
    width = 888,
    height = 571)
par(oma = c(1, 1, 1, 1))  # Outside margins: b, l, t, r
par(mar = c(4, 5, 2, 1))  # Sets plot margins
barplot(feeds[order(feeds)],  # Create the chart
        horiz  = TRUE,
        las    = 1,  # Orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", "bisque2", "bisque3", "bisque4"),
        border = NA,  # No borders on bars
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",
        xlab   = "Number of Chicks")
dev.off()  # 必加！ 非常重要 Close device (run in same block)

# 也可存成pdf OR this one for PDF file (Run entire block at once)
pdf("~/Desktop/R/Ex02_06b.pdf",
    width = 9,
    height = 6)
par(oma = c(1, 1, 1, 1))  # Outside margins: b, l, t, r
par(mar = c(4, 5, 2, 1))  # Sets plot margins
barplot(feeds[order(feeds)],  # Create the chart
        horiz  = TRUE,
        las    = 1,  # Orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", "bisque2", "bisque3", "bisque4"),
        border = NA,  # No borders on bars
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",
        xlab   = "Number of Chicks")
dev.off()  # Close device (run in same block)

# The easy Way: With RStudio "Export"

par(oma = c(1, 1, 1, 1))  # Outside margins: b, l, t, r
par(mar = c(4, 5, 2, 1))  # Sets plot margins
barplot(feeds[order(feeds)],  # Create the chart
        horiz  = TRUE,
        las    = 1,  # Orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", "bisque2", "bisque3", "bisque4"),
        border = NA,  # No borders on bars
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",
        xlab   = "Number of Chicks")

rm(list = ls())  # Clean up

23

0:40

2. Charts for One Variable - 7 Challenge Layering plots


24

2:23

2. Charts for One Variable - 8 Solution Layering plots

疊加三個圖的範例
Pl物件 =已存在的dataset iris 裡面的變數 petal.length
Pl= numeric[150]
Border=0 remove border from the chart
Main=標題
Line+density means kernel density line
Object=pl
Lwd =line width=2px
第三個疊加 rug (line plot) 上去

25

3:34

3. Statistics for One Variable - 1 Calculating frequencies

# R Statistics Essential Training
# Ex03_01
# Calculating frequencies

# LOAD DATASET
# Data is the number of hits (in millions) for each word on Google
groups <- c(rep("blue",   3990),#Rep blue 3990重複 blue 這個data 3990次
            rep("red",    4140),
            rep("orange", 1890),
            rep("green",  3770),
            rep("purple",  855))
#Groups =character[14645]裡面有14645個data
# CREATE FREQUENCY TABLES
groups.t1 <- table(groups)  # Creates frequency table 
groups.t1  # Print table 物件groups.t1 =table[5]

# MODIFY FREQUENCY TABLES Sort table 並存到物件groups.t2
groups.t2 <- sort(groups.t1, decreasing = TRUE)  # Sorts by frequency, saves table
groups.t2  # Print table Groups.t2=array[5]

# PROPORTIONS AND PERCENTAGES
prop.table(groups.t2)  # Give proportions of total Prop 計算各自比例
round(prop.table(groups.t2), 2)  # Give proportions w/2 decimal places 四捨五入至小數點2位
round(prop.table(groups.t2), 2) * 100  # Give percentages w/o decimal places 乘以100則為百分比

rm(list = ls())  # Clean up


26

5:44

3. Statistics for One Variable - 2 Calculating descriptives

# R Statistics Essential Training
# Ex03_02
# Calculating descriptives

# LOAD DATASET 使用內建的dataset cars
require("datasets")
?cars
cars
str(cars) #Str(cats) structure of dataset cars
data(cars)

# CALCULATE DESCRIPTIVES Summary 算出四分位數 中位數等
summary(cars$speed)  # Summary for one variable  只取speed variable
summary(cars)  # Summary for entire table 算speed, dist 兩個variable

#Boxplot.stats
#$stats= tukey 5 variables(接近四分位數）
# Tukey's five-number summary: minimum, lower-hinge,
# median, upper-hinge, maximum. No labels.
fivenum(cars$speed)

# Boxplot stats: hinges, n, CI, outliers
#n= data個數
#$conf =confidence level
#$out=outliers
boxplot.stats(cars$speed)

# ALTERNATIVE DESCRIPTIVES
# From the package "psych"
#Install package psych
#Describe為敘述性統計
#Trimmed= trimmed mean
#Mad= 絕對差中位數Median absolute deviation
#Se =standard error
help(package = "psych")
install.packages("psych")
require("psych")
describe(cars)

# Clean up
detach("package:psych", unload=TRUE)
rm(list = ls())


27

4:03

3. Statistics for One Variable - 3 Using a single proportion Hypothesis test and confidence interval


#single proportion
#假設檢定 與CI proportional test
# R Statistics Essential Training
# Ex03_03
# Single proportion: Hypothesis test and confidence interval

# In the 2012 Major League Baseball season,
# the Washington Nationals had the best record 
# at the end of the regular season: 98 wins out
# of 162 games (.605). Is this significantly 
# greater than 50%?

# PROP TEST
# 98 wins out of 162 games (default settings)
#98 wins out of 162 games
#Is it significant>0.5？
prop.test(98, 162)

# One-tailed test with 90% CI
#Greater than=> one tail
#Prop.test(98,162)
#Chi square=6.7222 degree of freedom=1
#P value= 0.009522
#Result:Significant >0.5
prop.test(98, 162, alt = "greater", conf.level = .90)

rm(list = ls())  # Clean up


28

4:10

3. Statistics for One Variable - 4 Using a single mean Hypothesis test and confidence interval

# R Statistics Essential Training
# Ex03_04
# Single mean: Hypothesis test and confidence interval
#single mean
#假設檢定 與CI

# Load data
#使用內建dataset quakes
#Quake[1:5, ]為取出X軸前5個data, 留空白表示 all variable
?quakes
quakes[1:5, ]  # See the first 5 lines of the data
mag <- quakes$mag  # 只使用$mag這個variable Just load the magnitude variable
#存至mag=numeric[1000]
mag[1:5]  # First 5 lines

# Use t-test for one-sample 單一樣本t檢定
# Default t-test (compares mean to 0)假設檢定預設mean為0
t.test(mag)

#t.test(mag)結果
#t value=362.7599 可正可負
#Degree of freedom=999 因為有1000個sample
#Pvalue <2.2e-16
#True mean不等於0
#CI 4.59-4.64
#Mean of x=4.62
#故significant

# One-sided t-test w/mu = 4
t.test(mag, alternative = "greater", mu = 4)
#One sided t test
#Population mean=4=mu
#Is the mean significantly greater than 4?
#t=48.7較上一個小


rm(list = ls())  # Clean up


29

5:10

3. Statistics for One Variable - 5 Using a single categorical variable One sample chi square test

# R Statistics Essential Training
# Ex03_05
# Single categorical variable: One sample chi-square test
#如果data 有 categorial variable
#則使用chi square
#本例為 one sample chi square test
#Goodness of fit test
# Load data 使用dataset hair eye color
?HairEyeColor
str(HairEyeColor)
HairEyeColor

# Get marginal frequencies for eye color
margin.table(HairEyeColor, 2)

# Save eye color to data frame
eyes <- margin.table(HairEyeColor, 2)
eyes
round(prop.table(eyes), 2)  # Show as proportions w/2 digits

# Use Pearson's chi-squared test
# Need one-dimensional goodness-of-fit test
# Default test (assume equal distribution)
#將chi square chisq的結果存至物件chi1 再來看結果
chi1 <- chisq.test(eyes)  # Save tests as object "chi1"
chi1  # Check results
# 結果
#X squared=133.473 頗大
#Df=3 因為只有4個眼睛顏色的category
#P value極小
#Significantly different



# Compare to population distribution
# Population data from:
browseURL("http://www.statisticbrain.com/eye-color-distribution-percentages/")
# Approximate proportions:
#  Brown: .41 (Combining Brown Irises with Specks & Dark Brown Irises)
#  Blue:  .32 (Blue / Grey Irises)
#  Hazel: .15 (Blue / Grey / Green Irises with Brown / Yellow Specks)
#  Green  .12 (Green / Light Brown Irises with Minimal Specks)
#P=c(.41,.32,.15,.12)
#Vector storing proportion
#Compare to (.25,.25,.25,.25) chi square
# p = c(.41, .32, .15, .12)
chi2 <- chisq.test(eyes, p = c(.41, .32, .15, .12))
chi2

#物件chi2 結果
#X square 變小了 6.4717
#Df=3因為有4個sample
#P value變大了 0.09>0.05
#沒有significantly different H0未被推翻


rm(list = ls())  # Clean up


30

7:30

3. Statistics for One Variable - 6 Examining robust statistics for univariate analyses

# R Statistics Essential Training
# Ex03_06
# Robust statistics for univariate analyses

#Robust statistics
#Examine Outliers and non normality
#data does not fit

# See "A Brief Overview of Robust Statistics" by Olfa Nasraoui, at
browseURL("http://j.mp/12YPV5L")

# Or see the CRAN Task View on robust statistics at
browseURL("http://cran.r-project.org/web/views/Robust.html")

# Load data 使用預設dataset state.area
?state.area
data(state.area)  # Gets error message
area <- state.area  # But can save as vector
area
hist(area)
boxplot(area)
boxplot.stats(area)
summary(area)

#藉由觀察histogram and boxplot
#可發現有明顯的outlier
#Summary area 看敘述性統計
#Mean 72370離median 56222很遠
#Not robust


# Robust methods for describing center:
mean(area)  # NOT robust
median(area)
mean(area, trim = .05)  # 5% from each end (10% total)
mean(area, trim = .10)  # 10% from each end (20% total)
mean(area, trim = .20)  # 20% from each end (40% total)
mean(area, trim = .50)  # 50% from each end = median

#接下來計算 trimmed mean 把左右%5包含outlier給去掉
#Trimmed mean=59957.22
#若去掉左右各10%
#Trimmed mean=57524離median又更近了
#若去掉左右各50的mean表示這是中位數
#計算 standard deviation 發現標準差很大 有很大的outlier時可以改取mad=median absolute deviation


# Robust methods for describing variation:
sd(area)  # NOT robust
mad(area)  # Median absolute deviation
IQR(area)  # Interquartile range (Can select many methods)
fivenum(area)  # Tukey's hinges (similar to quartiles)

rm(list = ls())  # Clean up

31

0:37

3. Statistics for One Variable - 7 Challenge Calculating descriptive statistics


32

2:38

3. Statistics for One Variable - 8 Solution Calculating descriptive statistics

challenge 031 重要 取特定資料
Require package psych 有你要的資訊
c(1,4,7) 取出我要的變數
c(3,4,11,12) 只取mean sd skew kurtosis

33

6:43

4. Modifying Data - 1 Examining outliers

# R Statistics Essential Training
# Ex04_01
# Examining outliers 檢查 outliers

# Categorical data 第一部分是Categorial data的outliers
# Outlier is < 10%
# Worldwide shipments of smartphone OS
# in millions for 2013 Q1
OS <- read.csv("~/Desktop/R/OS.csv", header = TRUE)#載入csv到OS
View(OS)#View(OS) 打開來看看這個表格
OS

# Outlier has proportion < .10
# Either combine into "other" (if homogeneous) or delete
#Outlier表示占比例<10%的東西
#本範例中 Windows phone 0.032 blackberry 0.029到others 都小於10%
#可以刪掉或都放到others裡面
#我們使用function subset只取OS裡大於proportion 0.1 的資料存到物件OS.hi裡
#OS.hi剩下android 和iOS
OS.hi <- subset(OS, Proportion > 0.1)
OS.hi

# Quantitative data 第二部分是 quantitative data
# See outliers in boxplots See outlier in boxplots
require("datasets")
?rivers #使用預設dataset river
data(rivers)  # Lengths of Major North American Rivers
hist(rivers)
boxplot(rivers, horizontal = TRUE) 
boxplot.stats(rivers) #利用boxplot.stats 可以發現超多 outliers

#現在要把outliers 去除
#只取<1210的值
#存到rivers.low
#發現樣本數改變後仍有outliers
#所以再試一次只取<1055的值存到rivers.low2
#直到無outlier為止

rivers.low  <- rivers[rivers < 1210]  # Remove outliers
boxplot(rivers.low, horizontal = TRUE)  # Has new outliers
boxplot.stats(rivers.low)
rivers.low2  <- rivers[rivers < 1055]  # Remove again
boxplot(rivers.low2)  # Still one outlier

rm(list = ls())  # Clean up

34

9:27

4. Modifying Data - 2 Transforming variables 變數轉換

# R Statistics Essential Training
# Ex04_02
# Transforming variables

# Load Data 使用預設的data islands
require("datasets")
# The areas in thousands of square miles of the
# landmasses which exceed 10,000 square miles.
?islands
islands
hist(islands, breaks = 16)
boxplot(islands)
#用histogram和boxplot 檢查發現數都擠在下面 是非常skew的data

#使用z score scale function將數值轉換為mean=0 standard deviation=1
#並存至island.z物件
#檢查mean(island.z)應為0
#sd(island.z)應為1
# z-scores
islands.z <- scale(islands)  # M = 0, SD = 1
islands.z  # Makes matrix with attribute information
hist(islands.z, breaks = 16)  # Histogram of z-scores
boxplot(islands.z)  # Boxplot of z-scores
mean(islands.z)  # M should equal 0
round(mean(islands.z), 2)  # Round off to see M = 0
sd(islands.z)  # SD = 1
attr(islands.z, "scaled:center")  # Show original mean
attr(islands.z, "scaled:scale")  # Showoriginal SD
#使用 as.numeric 將island.z 由matrix轉為numeric此時遺失掉原本的國家資訊 剩下數字
islands.z <- as.numeric(islands.z)  # Converts from matrix back to numeric
islands.z

# Logarithmic Transformations 如果outlier明顯大於其他人很多 可以用對數轉換
#Log(island)存進islands.ln
#可以用自然對數或log10 log2
islands.ln <- log(islands)  # Natural log (base = e)
# islands.log10 <- log10(islands)  # Common log (base = 10)
# islands.log2 <- log2(islands)  # Binary log (base = 2)
#對數轉換後看直方圖發現數值變靠近很多
#如果X有0 造成取對數錯誤則必須X+1
hist(islands.ln)
boxplot(islands.ln)
# Note: Add 1 to avoid undefined logs when X = 0
# x.ln <- log(x + 1)

# Squaring
# For negatively skewed variables
# Distribution may need to be recentered so that all values are positive (0 is okay)
#Squaring 取平方
#Ranking

# Ranking
islands.rank1 <- rank(islands)
hist(islands.rank1)
boxplot(islands.rank1)
# ties.method = c("average", "first", "random", "max", "min")
islands.rank2 <- rank(islands, ties.method = "random")
hist(islands.rank2)
boxplot(islands.rank2)

#Dichotomising 分為大和小兩部分
#If islands>1000 assign 1 to continent
#Else assign 0 to continent


# Dichotomizing
# Use wisely and purposefully!
# Split at 1000 (= 1,000,000 square miles)
# ifelse is the conditional element selection
continent <- ifelse(islands > 1000, 1, 0)
continent

rm(list = ls())  # Clean up

35

6:19

4. Modifying Data - 3 Computing composite variables
#Composite variables
# R Statistics Essential Training
# Ex04_03
# Computing composite variables

# Create variable rn1 with 1 million random normal values
# Will vary from one time to another
#rnorm(1000000) 一百萬個random normal variables 存進rn1
rn1 <- rnorm(1000000)
hist(rn1)
summary(rn1)

# Create variable rn2 with 1 million random normal values
#rn2也是一百萬個random normal variables 存進rn2 
rn2 <- rnorm(1000000)
hist(rn2)
summary(rn2)
#Min約-5 max約+5 接近normal distribution

# Average scores across two variables
#Rn.mean為rn1+rn2的平均
#Random normal mean
rn.mean <- (rn1 + rn2)/2
hist(rn.mean)

# Multiply scores across two variables
#rn.prod為兩者相乘
#Min約-13.34 max約12.45(每次作都會不一樣)

rn.prod <- rn1 * rn2
hist(rn.prod)
summary(rn.prod)

# Kurtosis comparisons
# The package "moments" gives kurtosis where a
# mesokurtic, normal distribution has a value of 3.
# The package "psych" recenters the kurtosis values
# around 0, which is more common now.
#Kurtosis
#安裝moments package 跟psych
install.packages("psych")
help(package = "psych")
require("psych")

#Kurtosi(rn1)和kurtosi(rn2)應該都很接近0
#Cauchy=鐘型曲線 但很高 very skew
#兩個normal dist相乘就很像Cauchy
kurtosi(rn1)
kurtosi(rn2)
kurtosi(rn.mean)
kurtosi(rn.prod)  # Similar to Cauchy distribution

# Clean up
detach("package:psych", unload=TRUE)
rm(list = ls())

36

6:05

4. Modifying Data - 4 Coding missing data 
#missing data 重要

# R Statistics Essential Training
# Ex04_04
# Coding missing data

# NA = "Not Available"
# Makes certain calculations impossible
x1 <- c(1, 2, 3, NA, 5)
summary(x1)  # Works with NA
mean(x1)  # Doesn't work

# To find missing values
which(is.na(x1))  # Give index number
#X1裡 which is NA ? Index number傳回4 （R的index number從1開始）

# Ignore missing values with na.rm = T
mean(x1, na.rm = T)
#na.rm=true
#意思是remove NA =true （大小寫視為相同，把x1的NA去掉再取mean)

# Replace missing values with 0 (or other number)
# Option 1: Using "is.na"
x2 <- x1
#x2<-x1, copy x1 to x2
#把0塞進x2的NA
x2[is.na(x2)] <- 0
x2
#x2[is.na(x2)]<-0 很重要
#這時x2的NA都變成0了

# Option 2: using "ifelse"
#Option2寫法也很重要
#意思是x1裡若有NA則用0取代NA
#若不是NA則remain x1
#然後塞進變數x3
x3 <- ifelse(is.na(x1), 0, x1)
x3

# For data frames, R has many packages to deal
# intelligently with missing data via imputation.
# These are just three:
# mi: Missing Data Imputation and Model Checking
browseURL("http://cran.r-project.org/web/packages/mi/index.html")
# mice: Multivariate Imputation by Chained Equations
browseURL("http://cran.r-project.org/web/packages/mice/index.html")
# imputation
browseURL("http://cran.r-project.org/web/packages/imputation/index.html")

rm(list = ls())  # Clean up


37

0:43

4. Modifying Data - 5 Challenge Transforming skewed data to pull in outliers


38

2:54

4. Modifying Data - 6 Solution Transforming skewed data to pull in outliers

04 06 037
Transform skewed dataset
X軸keep all rows所以留空白
Y軸只要column2所以填入2
x<-xskew[,2]
畫圖發現尖峰在右 為negative skew
這種時候就是用平方來解決
x2=x平方
Histogram 發現比較不skew
Box plot發現下方很多outliers

X4=x4次方
Histogram 發現對稱多了
Box plot發現下方沒outliers了接近bell curve了

39

5:31

5. Working with the Data File - 1 Selecting cases

# R Statistics Essential Training
# Ex05_01 #重要，只選一部分data
# Selecting cases #selecting cases 篩選特定條件

# Load data
?mtcars
data(mtcars)
mtcars
#使用預設dataset mtcars
#只使用裡面的$qsec 變數

# Mean quarter-mile time (for all cars)
mean(mtcars$qsec)

# Mean quarter-mile time (for 8-cylinder cars)
# Use square brackets to indicate what to select
# in this format: [rows] 
#直的只選qsec，並且要符合另一欄cyl=8
mean(mtcars$qsec[mtcars$cyl == 8])

# Median horsepower (for all cars)
median(mtcars$hp)

# Mean MPG for cars above median horsepower
#只取mtcars$hp裡大於中位數的row來取mean
mean(mtcars$mpg[mtcars$hp > median(mtcars$hp)])

# Create new data frame for 8-cylinder cars
# To create a new data frame, must indicate
# which rows and columns to copy in this
# format: [rows, columns]. To select all
# columns, leave second part blank.
cyl.8 <- mtcars[mtcars$cyl == 8, ]
#Cyl.8儲存的是：
#Row只選cyl=8
#Column全選，故留空白

# Select 8-cylinder cars with 4+ barrel carburetors
#Row只選cyl欄等於8且carb欄大於等於4
#Column全選，故留空白
mtcars[mtcars$cyl == 8 & mtcars$carb >= 4, ]

rm(list = ls())  # Clean up


40

3:15

5. Working with the Data File - 2 Analyzing by subgroup

# R Statistics Essential Training
# Ex05_02
# Analyzing by subgroups

# Load data
?iris
data(iris)
iris
mean(iris$Petal.Width)
#使用預設dataset iris
#我們發現data裡的species是各種品種, 只有三種，為setosa versicolor,及virginica

# Split the data file and repeat analyses
# with "aggregate"
# Compare groups on mean of one variable
aggregate(iris$Petal.Width ~ iris$Species, FUN = mean)
#14行 aggregate
#~意思是as a function of
#Fun=mean
#意思是使用function:為取平均mean
#本行意思是 Mean of petal width for each of the species
#執行結果就是setosa 的petal width平均為0.246；versicolor 的petal #width平均為1.326；virginica 的petal width平均為2.026

# Compare groups on several variables
# Use cbind to list outcome variables


aggregate(cbind(iris$Petal.Width, iris$Petal.Length) ~ iris$Species, FUN = mean)
#cbind =column bind
#~意思是as the function of
#Fun=mean, function為平均數
#出來的結果就是
#Setosa versicolor virginica 為rows
#Petal width(V1)和petal length(V2)為columns
#裡面的6個數為平均值



rm(list = ls())  # Clean up

41

5:17

5. Working with the Data File - 3 Merging files 重要 存檔讀檔融合

# R Statistics Essential Training
# Ex05_03
# Merging files Merging files 可以自己加入變數

# Load data
?longley
data(longley)

# Split up longley 使用內建data longley
a1 <- longley[1:14, 1:6]  # Starting data
a2 <- longley[1:14, 6:7]  # New column to add (with "Year" to match)
#a1儲存的是左上方 row第1到14 column1到6 注意R計數是從1開始
#a2儲存的是右上方 row第1到14 column6和7 注意6和上面重複 因為要重複他才知道怎麼merge

b <- longley[15:16, ]     # New rows to add
#b儲存的是底部data row只有第15和16 column則是全選

write.table(a1, "~/Desktop/R/longley.a1.txt", sep="\t")
write.table(a2, "~/Desktop/R/longley.a2.txt", sep="\t")
write.table(b, "~/Desktop/R/longley.b.txt", sep="\t")
rm(list=ls()) # Clear out everything to start fresh

# Import data
#把a1 a2 b都存進txt裡面
#清除系統後
#再讀進a1至a1t 讀進a2至a2t
a1t <- read.table("~/Desktop/R/longley.a1.txt", sep="\t")
a2t <- read.table("~/Desktop/R/longley.a2.txt", sep="\t")

# Take early years (a1t) and add columns (a2t)
# Must specify variable to match cases
a.1.2 <- merge(a1t, a2t, by = "Year")  # Merge two data frames
a.1.2  # Check results
#a.1.2為merge這兩個by variable ”year”
#左上角和右上角合併 用merge

# Add two more cases at bottom
b <- read.table("~/Desktop/R/longley.b.txt", sep="\t")
all.data <- rbind(a.1.2, b)  # "Row Bind"
#接下來和底部合併 用rbind (row bind)
#讀進b存進all.data

all.data  # Check data
#檢查all.data 發現出現不必要的row name
#現在要清空all data的row name
#row.names(all.data)<-null
row.names(all.data) <- NULL  # Reset row names
all.data  # Check data

rm(list=ls())  # Clean up



42

0:34

5. Working with the Data File - 4 Challenge Analyzing guinea pig data subgroups


43

1:32

5. Working with the Data File - 5 Solution Analyzing guinea pig data subgroups

05 05 042

Challenge
Dataset使用tooth growth
Group使用變數supp
Compare mean and median of length

Supp只有兩種類 OJ 和VC

Aggregate
$len as a function of $supp, (以變數supp作分類）function=mean
出來結果$Len OJ種類的mean=20.66333
$len VC種類的mean=16.96333
下一行
function=median
出來結果$Len OJ種類的median=22.7
$len VC種類的median=16.5

44

4:34

6. Charts for Associations - 1 Creating bar charts of group means
#畫box plot和散布圖
# R Statistics Essential Training
# Ex06_01
# Creating bar charts of group means

# Load data
?InsectSprays
spray <- InsectSprays  # Load data with shorter name
#載入預設dataset insectsprays進spray
#Data長相是一欄數字count以及種類groupABCDEF spray
#(使用ABCDEF種殺蟲劑spray各殺死count數量的蟲）


# To plot means, first get the means for the groups 
means <- aggregate(spray$count ~ spray$spray, FUN = mean)
means
plot(means)  # Gets lines for means
#現在要分別求種類ABCDEF的mean
#方法為利用aggregate
#變數Count as a function of 變數spray
#Function是mean
#出來的表格means就是各個種類的殺蟲劑spray平均殺掉多少隻蟲子


# To get a barplot, need to extract means and reorganize
mean.data <- t(means[-1])  # Removes first columns, transposes second
#新的dataset mean.data
#t=transpose 轉置xy
#Means[-1]
#意思為把means表格第一欄的ABCDEF刪掉 此時為垂直data 再轉置為水平data
#存到mean.data
colnames(mean.data) <- means[, 1]
#column name此時是V1到V6
#參照means表格 row全選 column選第一欄
#把V1到V6改回ABCDEF

# Basic barplot for means
barplot(mean.data)
#此時mean.data是一個水平的矩陣，有index name為ABCDEF
#可畫bar plot

# Modified barplot
barplot(mean.data,
        col = "lightblue",
        main = "Effectiveness of Insect Sprays",
        xlab = "Spray Used",
        ylab = "Insect Count")

rm(list = ls())

45

5:05

6. Charts for Associations - 2 Creating grouped box plots
#Group boxplots
# R Statistics Essential Training
# Ex06_02
# Creating grouped boxplots

# Load data
# Use dataset "painters" from the package "MASS
#要用到mass package
#記得要install 然後 load require mass package
require(MASS)
?painters
#使用裡面的painters 資料
# For an interesting follow-up on this data, see
# "Taste Endures! The Rankings of Roger de Piles (?1709)
# and Three Centuries of Art Prices" by Kathryn Graddy at
browseURL("http://people.brandeis.edu/~kgraddy/published%20papers/DePiles_complete.pdf")
data(painters)
painters
#painters裡面有欄school種類資料是ABCDEFGH
# Draw boxplots of outcome (Expression) by group (School)
# Basic version
boxplot(painters$Expression ~ painters$School)
#Draw boxplot, $expression as a function of $school

# Modified version
require("RColorBrewer")
#載入顏色套件
boxplot(painters$Expression ~ painters$School,
        col = brewer.pal(8, "Pastel2"),#顏色
		#X 軸名稱 以name取代ABCDEFGH
        names  = c("Renais.",
                   "Mannerist",
                   "Seicento",
                   "Venetian",
                   "Lombard",
                   "16th C.",
                   "17th C.",
                   "French"),
#         notch = TRUE,  # Not good because of small samples; don't use notch在此先不用
        boxwex = 0.5,  # Width of box
        whisklty = 1,  # Whisker line type; 1 = solid line
        staplelty = 0,  # Staple type; 0 = none
        outpch = 16,  # Outlier symbol; 16 = filled circle
        outcol = brewer.pal(8, "Pastel2"),  # Outlier color
        main = "Expression Ratings of Painters by School\nFrom \"painters\" Dataset in \"MASS\" Package",
        xlab = "Painter's School",
        ylab = "Expression Ratings")
#畫出很美的boxplot
#最後unload package並清除
# Clean up
detach("package:MASS", unload=TRUE)
detach("package:RColorBrewer", unload=TRUE)
rm(list = ls())


46

5:03

6. Charts for Associations - 3 Creating scatter plots
#散布圖
# R Statistics Essential Training
# Ex06_03
# Creating scatterplots

# Load data
?cars
data(cars)
cars
#使用data cars
#50列 2欄 speed and distance

# Basic scatterplot
plot(cars)
#Plot畫散布圖

# Modified scatterplot
plot(cars,
     pch = 16, #Pch=16 change the markers to filled circles
     col = "gray", #Color gray
     main = "Speed vs. Stopping Distance for Cars in 1920s\nFrom \"cars\" Dataset", #Main主標題
     xlab = "Speed (MPH)", #Xlab ylab x y軸標題
     ylab = "Stopping Distance (feet)")
# Linear regression line 畫回歸線  
abline(lm(cars$dist ~ cars$speed),
 #畫回歸線abline lm意思為linear model，Distance as a function of variable speed
       col = "darkred", #Color:dark red
       lwd = 2)  #Line width lwd=2px
# "locally weighted scatterplot smoothing"下一條是 locally weighed line
lines(lowess (cars$speed, cars$dist), 
      col = "blue", 
      lwd = 2)  

# "car" package ("Companion to Applied Regression")安裝套件car for回歸
# Has many variations on scatterplots
install.packages("car")
help(package = "car")
require(car)
# "scatterplot" has marginal boxplots, smoothers, and quantile regression intervals
#來畫scatterplot 不但有CI 還有附贈boxplot
scatterplot(cars$dist ~ cars$speed,
            pch = 16,
            col = "darkblue",
            main = "Speed vs. Stopping Distance for Cars in 1920s\nFrom \"cars\" Dataset",
            xlab = "Speed (MPH)",
            ylab = "Stopping Distance (feet)")

# Clean up
detach("package:car", unload=TRUE)
rm(list = ls())


47

0:49

6. Charts for Associations - 4 Challenge Creating your own grouped box plots


48

4:12

6. Charts for Associations - 5 Solution Creating your own grouped box plots

06 05 047
Challenge
gsd =google search data
Load searchdata.csv
gsd row只取1:5 column全選

畫box plot nfl as a function of region
Region x軸
nfl y軸
現在我只要看region=midwest的data
16行 x軸region y軸nfl
17行 color使用set2裡面的4個顏色
Box width=0.5 a little thinner
Whisklty=1 solid line
Staplelty是box上下兩端的line設為0
Outpch outlier的圖標使用16 filled circle
outcol outlier color使用set裡的4色
Main title x y軸title

49

3:56

7. Statistics for Associations - 1 Calculating correlation
#07 01 048計算回歸相關係數
# Load data
data(swiss)
swiss
#使用內建swiss 數據
#Data(Swiss)有6個變數 47個物件



# COrrelation
#Cor(Swiss)=correlation of Swiss
cor(swiss)
# ew ugly lets round
#將其四捨五入 round 至小數2位
round(cor(swiss), 2)

#算r ，假設檢定及confidence interval
# If want to test a pair of variables at a time
# The following gives r, T-test, CI's etc.
cor.test(swiss$Fertility, swiss$Education)
#cor.test(fertility變數， education變數）
# again, for a pair of variables
#t=-5.95 df=45 p很小
#假設檢定：correlation不等於0
#CI在-0.79到-0.46間 明顯不等於0
#Cor=-0.66

# If want probability values
install.packages("Hmisc")
require("Hmisc")
#First need to turn data into a matrix
rcorr(as.matrix(swiss))
# first table is R-values, second is P-values
#安裝並載入hmisc套件來取得matrix 的p value
#as.matrix是個函數，會把swiss弄成matrix
#然後再套rcorr 算r
#出來結果第一個是r
#第二個是probability value


50

6:14

7. Statistics for Associations - 2 Computing a bivariate regression
#Bivariate regression is a linear regression between two variables
# LOAD DATA
require(“datasets”) # Load the datasets package. 
data(trees) 
#載入預設data trees 31obs. 3 variables Girth height volume
# Load data into the workspace. 
trees[1:5, ] # Show the first 5 lines.
#Trees[1:5,] 載入row1到5 column全選

# GRAPHICAL CHECK
hist(trees$Height) #直方圖Histogram $height
hist(trees$Girth) #直方圖 Histogram $girth有點skew
plot(trees$Girth, trees$Height) #散布圖plot(girth,height)
abline(lm(trees$Height ~ trees$Girth))

# BASIC REGRESSION MODEL 
#我們要來建線性回歸並預測值
#Lm=linear model
#Height (y軸）as a function of girth（x軸）
#選擇data=trees全部data
#放進reg1這個物件
reg1 <- lm(Height ~ Girth, data = trees) 
reg1
#Reg1執行看到裡面截距62.031，1.054

# Save the model. 
summary(reg1) 
# Get regression output. Call:lm(formula = Height ~ Girth, data = trees)
#用summary查看細節發現
#P=0.00276小於0.05
#故girth明顯與heigh有關 significant 可以用來預測height
#R squared=0.2697
#P value=0.002758(0.00276)


# Confidence intervals for coefficients
confint(reg1)
#計算confidence interval
#Confint(reg1)計算confidence interval 出來的結果離0很遠


# Predict values based on regression equation
predict(reg1)  # Predicted height based on girth
#Predict(reg1)
#以girth來推測height
predict(reg1, interval = "prediction")  # CI for predicted height

#interval=prediction
#出現fit lwr upr三欄
#意思就是當girth=8時 fit的hight為73.62937
#95%信賴區間最低可到62.02569
#最高可到85.23305

# Regression diagnostics
lm.influence(reg1)
influence.measures(reg1)
#Linear model influence

# CLEAN UP detach("package:datasets", unload = TRUE) # Unloads data sets
package.
rm(list = ls()) # Remove all objects from workspace.

51

7:21

7. Statistics for Associations - 3 Comparing means with the t test

#07 03 050兩小樣本t檢定
#Comparing means with t test
#2 sample t test

# Comparing means with the t-test

# Load data
?sleep
sleep[1:5, ]
#載入sleep預設資料集
#Sleep[1:5,]選取row1-5 column全選
#可以發現有 extra group ID 三個變數
#Extra是指多睡幾小時 group為第幾組
sd <- sleep[, 1:2]  # Save just the first two variables
sd[1:5, ]  # Show the first 5 cases
#sd儲存sleep[,1:2] row全選 column只選extra 和group 這兩欄
#此時sd有20observation跟2個variable


# Some quick plots to check data
hist(sd$extra, col = "lightgray")
boxplot(extra ~ group, data = sd)
#以sd 畫個histogram直方圖
#以sd 畫個以組別分類extra的boxplot
#可以發現第二組睡得比較多 extra比較大

# Independent 2-group t-test (with defaults)
#H0:mean = 0
#H1: mean not==0
t.test(extra ~ group, data = sd)
#以extra by group1, group2進行兩樣本t檢定
#P value=0.07939頗大
#H0 mean相差=0 H1 mean相差!=0
#95%CI for difference in mean
#-3.365到0.205
#Mean in group1=0.75 mean in group2 =2.33



# t-test with options
#H0:   group scores are equal
#H1: one of the groups is less
t.test(extra ~ group, # Same: Specifies variables.
 data = sd, # Same: Specifies data set.
 alternative = "less", # One-tailed test.
 conf.level = 0.80) # 80% CI (vs. 95%)
#t.test自訂t檢定
#Extra breaking down and predicted by group
#Data=sd
#I want to know whether 1 group is less than the other
#Alternative=less, one tailed t test
#Confidence level=0.80
#出來結果，t值 df值不變
#P value=0.0397 有significant 差別
#80%CI值 從無限大開始 因為是one tail
	   
	   
	   
# Create two groups of random data in separate variables
# Good because actual difference is known
x <- rnorm(30, mean = 20, sd = 5)
y <- rnorm(30, mean = 22, sd = 5)
t.test(x, y)
#另一個範例兩樣本t檢定
#rnorm 產出random normal 隨機產生常態分配存進x
#X: 30 samples mean=20 sd =5
#rnorm 產出random normal 存進y
#Y: 30 samples mean=22 sd =5
#t.test(x,y)對這兩個隨機產生的分佈來做t檢定
#注意 每次執行 x y random normal都會改變
#有機會有時有significant difference 有時沒有

#CLEAN UP 
detach("package:datasets", unload = TRUE) # Unloads data sets
package.
rm(list = ls()) # Remove all objects from workspace.

52

6:36

7. Statistics for Associations - 4 Comparing paired means Paired t test
#paired mean paired t test
#小樣本前後差異比較 缺CODE
#t檢定檢查1 group, before and after


# CREATE SIMULATED DATA
t1 <- rnorm(50, mean = 52, sd = 6) # Time 1
dif <- rnorm(50, mean = 6, sd = 12) # Difference
t2 <- t1 + dif # Time 2

#rnorm 產出random normal 隨機產生常態分配存進t1
#t1有50個sample mean=52 sd=6
#隨機產生常態分配存進「t1-t2兩者相差」的數dif
#dif 有50個sample mean=6 sd=12
#t2=t1+dif
#畫histogram看t1發現果然是鐘型
#t2有點skew
#Boxplot發現t2因為加上了標準差大的dif
#所以box比t1長

#Create parallel coordinate plot
#19行利用data.frame函數來combine t1 t2 並存入pairs
#檢查pairs發現row是50列 column 是t1 t2兩個變數

#Create parallel coordinate plot要先載入套件mass
#parcoord =parallel coordinate plot
#數值使用pairs
#Var label=true 會列出max min
#我們來看這連結兩欄t1 t2的線陡不陡
#答案是蠻平的


# PAIRED T-TEST WITH DEFAULTS
t.test(t2, t1, paired = TRUE) # Must specify "paired"

#來做paired t test
#t.test函數
#t2,t1 因為是paired t test所以paired=true

# PAIRED T-TEST WITH OPTIONS
t.test(t2, t1,
 paired = TRUE,
 mu = 6, # Specify a non-0 null value.
 alternative = "greater", # One-tailed test
 conf.level = 0.99) # 99% CI (vs. 95%)

#做更複雜的t檢定
#Mu = population mean=6
#意思是假設檢定非H0=0兩者difference 是否等於0 而是H0=兩者difference 是否等於6
#Alternative=greater單尾檢定
#99%CI
#答案是p頗大 不拒絕H0=兩者difference等於6
#Not significant different from 6 
 
# CLEAN UP
rm(list = ls()) # Remove all objects from the workspace.
 
 
 
 
 
 
53

8:28

7. Statistics for Associations - 5 Comparing means with a one factor analysis of variance ANOVA 

#One way, one factor ANOVA 缺CODE
#Comparing means with ANOVA

#隨機產生四組常態分配x1-x4
#30個樣本 mean分別為40 41 45 45 sd都是8
#預先計算可以發現她們p=.025 significant different
# CREATE SIMULATION DATA
# Step 1: Each group in a separate variable.
x1 <- rnorm(30, mean = 40, sd = 8) # Group 1, mean = 40
x2 <- rnorm(30, mean = 41, sd = 8) # Group 1, mean = 41
x3 <- rnorm(30, mean = 44, sd = 8) # Group 1, mean = 44
x4 <- rnorm(30, mean = 45, sd = 8) # Group 1, mean = 45

#現在把這四組data組合用data.frame函式和cbind函式（column #bind函式）組合在一起並存至xdf
#用summary觀察xdf(x data frame)的統計資料
#此時row30個數 column 4欄
# Step 2: Combine vectors into a single data frame.
xdf <- data.frame(cbind(x1, x2, x3, x4)) # xdf = "x data frame"

#現在用stack將四個變數堆疊成一欄數 一欄group
#並存至xs
#此時xs有120個數 兩欄變數 values ind 一欄values是120個數 一欄ind(independent variable)是x1到x4
# Step 3: Stack data to get the outcome column and group column.
xs <- stack(xdf) # xs = "x stack"

# ONE-FACTOR ANOVA
#再來conduct one way ANOVA
#使用aov=analysis of variance函式
#values (左欄的數）as a function of ind（右欄的group)
#Data使用xs
#存進物件anova1
anova1 <- aov(values ~ ind, data = xs) # Basic model.
summary(anova1) # Model summary.
#光打anova1會顯示SSR等ANOVA結果
#而summary(anova1)會顯示假設檢定結果
#P value=0.001很小 有significant different
#(結果會每次執行不同因為rnorm每次都產生不同東西）


#本例至今只知道significant different
#要知道誰跟誰特別different
#就要用以下方法
#Post hoc=after fact comparison
#TukeyHSD(anova1)
#Examine 哪邊 significant different
#出來結果 每組都會兩兩比較
#Lwr upr是CI
#P adj=p value
#P value小的就是 significant different之處

# POST-HOC COMPARISONS
TukeyHSD(anova1)

#第27.28行是其他檢查方法

# CLEAN UP
rm(list = ls()) # Remove all objects from workspace


54

3:35

7. Statistics for Associations - 6 Comparing proportions

# Comparing proportions

# Load data
# Need two vectors:
# One specifies the total number of people in each group
# This creates a vector with 5 100s in it, for 5 groups
# Same as "number of trials"
#Total number of each group=100
#Vector n5=concatinate （repeat 100 5次）
#n5=[100,100,100,100,100]總數
n5 <- c(rep(100, 5))

#Another vector:number of success
#X5=concat[65,60,60,50,45]成功數量
# Another specifies the number of people who are in category
# Same as "number of successes"
x5 <- c(65, 60, 60, 50, 45)
prop.test(x5, n5)
#Proportion test(x5/n5)
#Chi square=10.9578
#Estimates=[0.65,0.60,0.60,0.50,0.45]
#P=0.02704<0.05
#表示 Group之間有顯著差異 not uniform distributed



# If there are only two groups, then it gives a confidence
# interval for the difference between the groups; 
# the default CI is .95
# CREATE SIMULATION DATA FOR 2 GROUPS
n2 <- c(40, 40)  # Number of trials
x2 <- c(30, 20)  # Number of successes
prop.test(x2, n2, conf.level = .95)

#若只有兩個group
#Proportion test 會給CI(95%)
#n2=[40,40] number of trial
#x2=[30,20] number of success
#prop.test(x2/n2) CI=0.80(80%)
#Chi square =4.32
#p=0.03767<0.05組別間有顯著差異
#CI of difference 9%~41%
#0.75-0.50=25% difference


# CLEAN UP
rm(list = ls()) # Remove all objects from the workspace.

55

5:11

7. Statistics for Associations - 7 Creating cross tabs for categorical variables

#07 07 054 難
#Creating crosstabs for categorial variables
#情況：if you have 2 categorial variables 兩個以上的獨立分類變數
#解法：Chi squared test of independence
#Or chi square cross tabs

# chi test Creating crosstabs for categorical variables

# Load data
?Titanic
str(Titanic) #Structure of default dataset:titanic
Titanic
ftable(Titanic)  # Makes "flat" table

#轉成flat table 比較好看
#大約是分成四組 探討男女 成人小孩 的存活數




# Convert table to data frame with one row per observation
tdf <- as.data.frame(lapply(as.data.frame.table(Titanic), function(x)rep(x, as.data.frame.table(Titanic)$Freq)))[, -5]
tdf[1:5, ]  # Check first five rows of data
#Tdf 為轉換後的titanic table
#是將目標轉換成「每一個人」是男是女 是否為小孩 是否存活 的table
#Tdf[1:5,] 只取前5列來檢查看看 column全選


# Create contingency table
ttab <- table(tdf$Class, tdf$Survived)
ttab
#Create contingency table
#ttab =使用table function組合兩個變數class 和 survived
#出來的結果是row有 1st 2nd 3rd crew
#Column為no未存活跟yes存活


#接下來要轉成百分比
#Cell percentage , row percentage , column percentage 只取到小數第二位
#乘以100是轉成百分比
#Prop.table(ttab,1)意思為row percent
#Round 上述，2 意思是上述只取到小數第二位
#*100為轉成百分比
#這就是row percent
# Call also get cell, row, and column %
# With rounding to get just 2 decimal places
# Multiplied by 100 to make %
round(prop.table(ttab, 1), 2) * 100 # row %
round(prop.table(ttab, 2), 2) * 100 # column %
round(prop.table(ttab), 2) * 100    # cell %
#Prop.table(ttab,2)意思為column percent
#Prop.table(ttab)意思為以全部加總之cell percent

#來做chi square test存進tchi
#發現p極小 顯示這是非常significant different
#一開始看數字也知道 1st class的存活率顯著較高
# Chi-squared test
tchi <- chisq.test(ttab)
tchi

#第30行為查看tchi這個chi squared test的各種細節
# Additional tables
tchi$observed   # Observed frequencies (same as ttab)
tchi$expected   # Expected frequencies
tchi$residuals  # Pearson's residual
tchi$stdres     # Standardized residual

# CLEAN UP
detach("package:datasets", unload = TRUE) # Unloads the datasets package.
rm(list = ls()) # Remove all objects from the workspace.


56

8:40

7. Statistics for Associations - 8 Computing robust statistics for bivariate associations 缺code

#07 08 055 難難
#處理放射狀的圖 quantile regression
#計算robust statistics ( center, Spread) for bivariate associations (curve #associations, symmetries)

# Computing robust statistics for bivariate associations

#安裝以下packages
#安裝 quantreg =quantile regression
#使用預設dataset engel


# Robust regression: A sampling of packages
help(package = "robust")
help(package = "robustbase")
help(package = "MASS")  # See rlm ("robust linear model")
help(package = "quantreg")  # Quantile regression

#Attach data之後 variable就可以直接寫 不加$字號
#19行 create empty data frame
#Variable $income $foodexp
#Point函數：畫圓點
#Pch是圓點的樣式
#有far outliers

#5% 10%~95% 的 quantile of the data 存進 taus

#Calculate vertical height of the quantile
#Sequence(income最小值，income最大值, divides by 100)此為x values
#yy calculate each value of y of regression lines
#圖就畫出5% 10%~95% 的 quantile regression線
#abline則是傳統回歸線 設為lm linear model深紅色
#rq 是median regression %50處的regression 受到outlier影響較小

#Legend 圖例
#3000=income 1000=foodexp food expenses
#最後detach dataset





57

1:02

7. Statistics for Associations - 9 Challenge Comparing proportions across several different groups


58

4:08

7. Statistics for Associations - 10 Solution Comparing proportions across several different groups


#07 10 057 challenge
#Compare proportion
#Data:mlb2011.csv
#Outcome: home win/allwins
#Compare all 30 teams at once
#Compare just highest and lowest

#載入data, header=true有標頭 共6個變數 30個數
#只載入前5row 看看

#Prop.test(home win/all wins)
#出現30個proportion
#P value很大 表示組別間沒差異

#第二部分為了要更有差異，現在只比較最大組59%和最小組43%

#P=0.0524
#還是沒顯著差異


59

3:44

8. Charts for Three or More Variables - 1 Creating clustered bar charts for means

# Creating clustered bar chart for frequencies


#08 01 058 難在處理data
#三組直方圖 多組變數直方圖
#Clustered bar chart for frequencies
#Multi variables chart
#使用dataset warpbreaks
# Load data
# Built-in dataset "warpbreaks"
?warpbreaks
# Doesn't work:


barplot(breaks ~ wool*tension, data = warpbreaks)
# RESTRUCTURE DATA 下面是把data處理成2x3的矩陣

data <- tapply(warpbreaks$breaks,
               list(warpbreaks$wool,
                    warpbreaks$tension),
               mean)

#Besides=true
#We want the factors to be grouped
#Col=color
#bor =border =NA turn off border
#Legend圖例
#Locator=1 我們可以在圖上任一處滑鼠點一下來放這個圖例
#Rowname為data裡的 A B
#Fill=填入顏色			   
			   
barplot(data,
        beside = TRUE,
        col = c("steelblue3", "thistle3"),
        bor = NA,
        main = "Mean Number of Warp Breaks\nby Tension and Wool",
        xlab = "Tension",
        ylab = "Mean Number of Breaks")

# For legend, "locator(1)" is interactive and lets you click
# where you want to put the legend. You can also specify
# with coordinates.
legend(locator(1),
       rownames(data),
       fill = c("steelblue3", "thistle3"))
# CLEAN UP
detach("package:datasets", unload = TRUE) # Unloads the datasets package.
rm(list = ls()) # Remove all objects from the workspace.

60

2:50

8. Charts for Three or More Variables - 2 Creating scatter plots for grouped data

# Creating scatterplots for grouped data
#08 02 059 多組變數散布圖
#Scatterplot for grouped data
#本範例為 One categorial variable, two quantitative variables
#1分類，2數量


# Load data
?iris
data(iris)
iris[1:5, ]
#使用預設data iris
#只取row1到5來看看
#150 Observations 5 variables


# Load "car" package
require(car)  # "Companion to Applied Regression" 安裝car套件

# Single scatterplot with groups marked
# Function can be called "scatterplot" or "sp"
#函式sp就是scatterplot之意
#Width as a function of length broken down by species
#出現三組散佈圖
sp(Sepal.Width ~ Sepal.Length | Species,
   data = iris, 
   xlab = "Sepal Width", 
   ylab = "Sepal Length", 
   main = "Iris Data", 
   labels = row.names(iris))


61

6:11

8. Charts for Three or More Variables - 3 Creating scatter plot matrices
#08 03 060 散布圖矩陣圖難
#Scatterplot matrixes
# Creating scatterplot matrices

# Load data
?iris
data(iris)
iris[1:5, ]

# Basic scatterplot matrix
#基本的 scatterplot matrix
#Pairs 函式
#只取iris only 前四個variables
pairs(iris[1:4])

# Modified scatterplot matrices

# Create palette with RColorBrewer
require("RColorBrewer")
display.brewer.pal(3, "Pastel1")
#Modified scatterplot matrix
#使用Rcolorbrewer套件
#Use 3 colors from pastel1
#（函式全名display Rcolorbrewer palette)

#下面再用一次pair
#Unclass:color according to the species
# Put histograms on the diagonal (from "pairs" help)
panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y,  ...)
  # Removed "col = "cyan" from code block; original below
  # rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...) 
}

pairs(iris[1:4], 
      panel = panel.smooth,  # Optional smoother
      main = "Scatterplot Matrix for Iris Data Using pairs Function",
      diag.panel = panel.hist, 
      pch = 16, 
      col = brewer.pal(3, "Pastel1")[unclass(iris$Species)])

# Similar with "car" package
# Gives kernal density and rugplot for each variable
library(car)
scatterplotMatrix(~Petal.Length + Petal.Width + Sepal.Length + Sepal.Width | Species,
                  data = iris,
                  col = brewer.pal(3, "Dark2"),
                  main="Scatterplot Matrix for Iris Data Using \"car\" Package")


62

5:14

8. Charts for Three or More Variables - 4 Creating 3D scatter plots

#08 04 061 3d scatterplot 3d散布圖
#Multiple quantitative variables 多個數量變數
# Creating 3-D scatterplots

# Load data
?iris
data(iris)
iris[1:5, ]

#載入data iris
#安裝套件 scatterplot 3D
# Static 3D scatterplot
# Install and load the "scatterplot3d" package
install.packages("scatterplot3d")
require("scatterplot3d")



# Basic static 3D scatterplot
#畫3d scatterplot使用iris前三個variable
scatterplot3d(iris[1:3])


#接下來是modified 3D scatterplot
#有顏色 vertical lines 跟回歸平面
#S3d object 儲存資訊 出現vertical line
#Pch=16 實心圓形
#第26行
#利用s3d來畫plane
# Modified static 3D scatterplot
# Coloring, vertical lines
# and Regression Plane 
s3d <-scatterplot3d(iris[1:3],
                    pch = 16,
                    highlight.3d = TRUE,
                    type = "h",
                    main = "3D Scatterplot")
plane <- lm(iris$Petal.Length ~ iris$Sepal.Length + iris$Sepal.Width) 
s3d$plane3d(plane)


#spinning 3D plot 要在原始R中進行 R studio可能會當掉
#可以互動並觀察發生什麼事
#Require=load package rgl和 r color brewer
#因為r studio用這個會當掉 所以用原始的R來開
#Plot3d函式 載入xyz variables 進行3D display
#Col=Color
#Size=8 px
# Spinning 3D scatterplot
# Install and load the "rgl" package ("3D visualization 
# device system (OpenGL)")
# NOTE: This will cause RStudio to crash when graphics 
# window is closed. Instead, run this in the standard, 
# console version of R.
install.packages("rgl")
require("rgl")
require("RColorBrewer")
plot3d(iris$Petal.Length,  # x variable
       iris$Petal.Width,   # y variable
       iris$Sepal.Length,  # z variable
       xlab = "Petal.Length",
       ylab = "Petal.Width",
       zlab = "Sepal.Length",
       col = brewer.pal(3, "Dark2")[unclass(iris$Species)],
       size = 8)


63

0:43

8. Charts for Three or More Variables - 5 Challenge Creating your own scatter plot matrix



64

4:42

8. Charts for Three or More Variables - 6 Solution Creating your own scatter plot matrix
#08 06 063 challenge 缺檔案
#Scatterplot matrix 散布圖矩陣
# Creating Scatterplot Matrices

# Load data
gsd <- read.csv("~/Desktop/R/SearchData.csv", header = TRUE)
gsd[1:5, ]
#使用searchdata.csv
#5 variables: nba nfl fifa degree age
#Graph using pairs
#利用car package來畫 scatterplot matrix
#載入檔案存到gsd (google searched data)
#Header=true 有標頭
#51obsevations 10 variables
#gsd[1:5,]列出前五row來看看

#第一步，在對角畫直方圖
# Scatterplot matrix using "pairs"
# Put histograms on the diagonal (from "pairs" help)
panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y,  ...)
  # Removed "col = "cyan" from code block; original below
  # rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...) 
}

#第二步利用pairs函式畫散布圖矩陣
#使用gsd變數2 3 4及8 9 欄
#Pch=16 make dots 實心 solid
#28行前 畫出散布圖矩陣

pairs(gsd[c(2:4, 8:9)], 
      panel = panel.smooth,  # Optional smoother
      main = "Scatterplot Matrix for Google Search Data Using pairs Function",
      diag.panel = panel.hist, 
      pch = 16, 
      col = "lightgray")

	  
#第三步 也是畫散佈圖矩陣
#31行 load car這個library
#Load rcolorbrewer
# Scatterplot matrix using "cars"
library(car)
require(RColorBrewer)

#Car裡面有Scatterplotmatrix 函式
#使用nba nfl fifa degree age 這五個變數
#Data使用gsd
#Color 使用3個顏色 from set 2
scatterplotMatrix(~ nba + nfl + fifa + degree + age,
                  data = gsd,
                  col = brewer.pal(3, "Set2"),
                  main="Scatterplot Matrix for Google Search Data Using \"car\" Package")

65

9:27

9. Statistics for Three or More Variables - 1 Computing a multiple regression
#09 01 064
#Multiple regression 後半較難

# Computing a multiple regression

# Load data
?USJudgeRatings
data(USJudgeRatings)
USJudgeRatings[1:5, ]
#載入預設資料集us judge ratings
#43obs 12 variables
#取出前5 row 來看看

# Basic multiple regression
#Reg1物件 儲存lm=linear regression model
#RTEN as a function of 以下幾個變數
#查看reg1 coefficient
#reg1 = lm[12]
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + 
             DECI + PREP + FAMI + ORAL + WRIT + PHYS,
           data = USJudgeRatings)
reg1  # Gives the coefficients only
#查看更多information
#使用 summary
summary(reg1)  # Much more

#使用anova等等查看更多資訊
# More detailed summaries
anova(reg1)
coef(reg1)  # Or coefficients(reg1)
confint(reg1)  # CI for coefficients
resid(reg1)  # Or residuals; Residuals case-by-case
hist(residuals(reg1))  # Histogram of residuals
# And others

# Possibility of stepwise variables selection
# (backwards and forwards); exercise caution!

# Backwards stepwise regression
# Repeating the first regression model, which contains
# all of the predictor variables and serves as the 
# starting point
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + 
             DECI + PREP + FAMI + ORAL + WRIT + PHYS,
           data = USJudgeRatings)
regb <- step(reg1,
             direction = "backward",
             trace = 0)  # Don't print the steps
summary(regb)
# Give the hypothesis testing info.

# Forwards stepwise regression
# Start with model that has nothing but a constant
reg0 <- lm(RTEN ~ 1, data = USJudgeRatings)  # Minimal model
reg0
regf <- step(reg0,  # Start with minimal model
             direction = "forward",
             scope = (~ CONT + INTG + DMNR + DILG + 
                        CFMG + DECI + PREP + FAMI + 
                        ORAL + WRIT + PHYS),
             data = USJudgeRatings,
             trace = 0)  # Don't print the steps
summary(regf)

# For many more options, see the "rms" package
# ("Regression Modeling Strategies")

# CLEAN UP
detach("package:datasets", unload = TRUE) # Unloads the datasets package.
rm(list = ls()) # Remove all objects from the workspace.

66

5:57

9. Statistics for Three or More Variables - 2 Comparing means with a two factor ANOVA
#09 02 065 ANOVA 兩個分類變數 1個數量變數 缺code
#Comparing means with 2 step ANOVA (2 way ANOVA)
#2 categorial variables (predictors) and 1 quantitative outcome

# LOAD DATA
require("datasets") # Load the datasets package.
data(warpbreaks)
#載入預設資料集 warpbreaks
#54 observations 3 variables

#2 predictors:Type of wool: A or B
#Level of tension: low L medium M high H
#1 quantitative outcome: break

#Boxplot break as a function of wool and tension
#2x3=6個 box:AL BL AM BM AH BH

#aov:analysis of variance
#breaks=outcome variable
# ANOVA: METHOD 1
aov1 <- aov(breaks ~ wool + tension + wool:tension,
data = warpbreaks)
summary(aov1) # ANOVA table
#As a function of wool, tension, wool:tension(:表示交互作用interaction)
#以上有三個factor:wool, tension, wool:tension
#Summary 查看詳細統計資料
#Sum of square, mean square,
#Tension的p value 遠小於0.05 有顯著影響
#Wool:tension p value也很小 有interaction
#第19行
#計算aov1 means等

#Post hoc test
#TukeyHSD 查看誰有顯著影響
#BL is significant different from AL 因為p value很小
#AL （wool A low tension組）的所有p value都很小 故 AL #跟所有人都有顯著差異

# ANOVA: METHOD 2
aov2 <- aov(breaks ~ wool*tension,
data = warpbreaks)
 
# CLEAN UP
detach("package:datasets", unload = TRUE) # Unloads the datasets package.
rm(list = ls()) # Remove all objects from workspace.
 
 

67

14:15

9. Statistics for Three or More Variables - 3 Conducting a cluster analysis
#09 03 066 不易
#Cluster analysis 相同性質者組成一組之樹狀圖
# Conducting a cluster analysis

# Load data
?mtcars
data(mtcars)
mtcars[1:5, ]
mtcars1 <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables
mtcars1[1:5, ]
#載入預設資料mtcar 32obs 11 variables
#取出前5 row來看看
#取出1234 67 9 10 11 這些9個變數存至mtcar1
#取出mtcar1 前5 row 來看看

# Three major kinds of clustering:
#   1. Split into set number of clusters (e.g., kmeans)
#   2. Hierarchical: Start separate and combine
#   3. Dividing: Start with a single group and split

#有三種cluster analysis
#Kmeans
#hierarchical 先分開再組在一起
#Dividing
#本例使用的是2 hierarchical


# We'll use hierarchical clustering
# Need distance matrix (dissimilarity matrix)
#函式Dist=dissimilarity/ distance
d <- dist(mtcars1)
d  # Huge matrix

#Distance matrix
#hclust=hierarchical cluster analysis
#存進c 物件
# Use distance matrix for clustering
c <- hclust(d)
c

# Plot dendrogram of clusters
plot(c)
#Plot dendogram
#plot(c)
#出現兩兩相似放一起的樹狀圖


# Put observations in groups
# Need to specify either k = groups or h = height
g3 <- cutree(c, k = 3)  # "g3" = "groups 3"
#Cutree = cluster tree
#Group 3組
#K=3 = how many groups I want



# cutree(hcmt, h = 230) will give same result
g3
# Or do several levels of groups at once
# "gm" = "groups/multiple"
gm <- cutree(c, k = 2:5) # or k = c(2, 4)
gm

# Draw boxes around clusters
rect.hclust(c, k = 2, border = "gray")
rect.hclust(c, k = 3, border = "blue")
rect.hclust(c, k = 4, border = "green4")
rect.hclust(c, k = 5, border = "darkred")
#rect.hclust=
#Rectangle of hierarchical cluster analysis
#c=c物件
#K=2 出現灰色的線 把原本的樹狀圖分成2大組
#K=3 把原本的樹狀圖分成3大組
#K=4 把原本的樹狀圖分成4大組
#K=5 把原本的樹狀圖分成5大組

# k-means clustering
km <- kmeans(mtcars1, 3)
km
#K means clustering
#函式kmeans 使用資料mtcar1 分為3組
#Split into 3 clusters
#存進km物件並查看資料

#Require cluster 套件
#畫km的cluster plot 出現大圓形
#Shade則是用陰影填滿大圓形
# Graph based on k-means
require(cluster)
clusplot(mtcars1,  # data frame
         km$cluster,  # cluster data
         color = TRUE,  # color
         #          shade = TRUE,  # Lines in clusters
         lines = 3,  # Lines connecting centroids
         labels = 2)  # Labels clusters and cases

68

10:32

9. Statistics for Three or More Variables - 4 Conducting a principal componentsfactor analysis
#09 04 067 不易
#Principle component analysis/factor analysis


# Conducting a principal components/factor analysis

# From "psych" package documentation (p. 213)
# "The primary empirical difference between a components 
# versus a factor model is the treatment of the variances
# for each item. Philosophically, components are weighted
# composites of observed variables while in the factor
# model, variables are weighted composites of the factors."

# Load data 
?mtcars
data(mtcars)
mtcars[1:5, ]
mtcars1 <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables
mtcars1[1:5, ]
#載入預設資料mtcar 32obs 11 variables
#取出前5 row來看看
#取出1234 67 9 10 11 這些9個變數存至mtcar1
#取出mtcar1 前5 row 來看看


# Principle components model using default method
# If using entire data frame:
pc <- prcomp(mtcars1,
             center = TRUE,  # Centers means to 0 (optional)
             scale = TRUE)  # Sets unit variance (helpful)
#pc= principle component 物件
#prcomp 函式
#使用資料data frame mtcars1			 
			 
			 
# Or specify variables:
# pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am + 
#                gear + carb, data = mtcars, scale = TRUE)
?prcomp  # Generally preferred
?princomp  # Very slightly different method, similar to S

# Get summary stats
summary(pc)

# Screeplot
plot(pc)

# Get standard deviations and how variables load on PCs
pc

# See how cases load on PCs
predict(pc)

# Biplot
biplot(pc)

# Factor Analysis
# Varimax rotation by default
# Gives chi square test that number of factors
# is sufficient to match data (want p > .05).
# Also gives uniqueness values for variables,
# variable loadings on factors, and variance
# statistics.
factanal(mtcars1, 1)
factanal(mtcars1, 2)
factanal(mtcars1, 3)
factanal(mtcars1, 4)  # First w/p > .05

#第52行
#1factor
#2factor
#3factor
#4factor




69

0:40

9. Statistics for Three or More Variables - 5 Challenge Creating a cluster analysis


70

4:29

9. Statistics for Three or More Variables - 6 Solution Creating a cluster analysis 缺檔案

# Cluster analysis

#Challenge: cluster analysis
#Data: stateclusterdata.csv
#Hierarchical cluster analysis of : states
#Dendogram
#Cluster boxes on dendogram

# Load data
scd <- read.csv("~/Desktop/R/StateClusterData.csv", header = TRUE)
rownames(scd) <- scd[,1]  # Use state names for row names
scd[,1] <- NULL  # Remove state names as variable
scd[1:5, ]
#讀進csv 有標頭header 進scd物件
#Scd: 51 observations 13 variables
#Rownames函式 選取scd第一個column
#scd[,1]指派null 意思為remove the first column
#此時scd有51obs 12 variables



# We'll use hierarchical clustering
#來做hierarchical cluster analysis
#Dist函式=distance matrix
#hclust函式=hierarchical cluster analysis
#出現樹狀圖
d <- dist(scd)  # Distance matrix
c <- hclust(d)  # Get clusters
plot(c)  # Dendrogram

# Draw boxes around clusters
rect.hclust(c, k = 2, border = "gray")
rect.hclust(c, k = 3, border = "blue")
rect.hclust(c, k = 4, border = "green4")
rect.hclust(c, k = 5, border = "darkred")
#在樹狀圖上畫分類box
#K=2 = 2 major clusters=2 boxes
#K=3 = 3 major clusters=3 boxes
#K=4 = 4 major clusters=4 boxes
#K=5 = 5 major clusters=5 boxes


71

3:41

10. Conclusion - 1 Next steps


文字筆記全

R ex 01-07 載入外部csv 和 txt
Read.table載入excel
Read.csv 載入csv
header=true表示 data有標頭

1-07
(Data$admin)
Show the variable admin

Margin.table(data,1)
Show the first variable

Round (data, 2)
四捨五入小數兩位

1-08
Bar plot (x, col) 此處的col指color
Color()102 數字是指顏色號碼

1-09
Pastel2
Set3 可愛的配色

02-01 16 bar chart
Descending 依序排列則加入order=true
Set margin:上下左右

2-03
Histogram 是 time series

Xlab x label
Lwd line width 2px
dnorm=density normal
Add=true add to existing diagram

2-04 box plot
以 rten 為變數畫的圖
Median 大概是接近8

2-05 overlaying plots
Dataset Swiss
Take only fertility data
Xlim= x limit
Ylim = y limit
Add=true
Density normal distribution
Lwd = line width =3 px

2-06
簡單方法：按圖上方的export
載入已存在的dataset chickwts 其中的變數 feed
Dev off 必加！ 非常重要
也可存成pdf

2-08
疊加三個圖的範例
Pl物件 =已存在的dataset iris 裡面的變數 petal.length
Pl= numeric[150]
Border=0 remove border from the chart
Main=標題
Line+density means kernel density line
Object=pl
Lwd =line width=2px
第三個疊加 rug (line plot) 上去
03 01 24
Rep blue 3990
重複 blue 這個data 3990次
Groups =character[14645]裡面有14645個data
物件groups.t1 =table[5]
Create frequency table
Sort table 並存到物件groups.t2
Groups.t2=array[5]
Prop 計算各自比例
四捨五入至小數點2位
乘以100則為百分比

03 02 25
使用內建的dataset cars
Str(cats) structure of dataset cars
Summary 算出四分位數 中位數等
第一個 只取speed variable
第二個 算speed, dist 兩個variable
Boxplot.stats
$stats= tukey 5 variables(接近四分位數）
$n= data個數
$conf =confidence level
$out=outliers

Install package psych
Describe為敘述性統計
Trimmed= trimmed mean
Mad= 絕對差中位數Median absolute deviation
Se =standard error

03 03 26 single proportion
假設檢定 與CI proportional test
98 wins out of 162 games
Is it significant>0.5？
Greater than=> one tail
Prop.test(98,162)
Chi square=6.7222 degree of freedom=1
P value= 0.009522
Result:Significant >0.5


03 04 27 single mean
假設檢定 與CI
使用內建dataset quakes
Quake[1:5, ]為取出X軸前5個data, 留空白表示 all variable
只使用$mag這個variable
存至mag=numeric[1000]
單一樣本t檢定
假設檢定預設mean為0

t.test(mag)結果
t value=362.7599 可正可負
Degree of freedom=999 因為有1000個sample
Pvalue <2.2e-16
True mean不等於0
CI 4.59-4.64
Mean of x=4.62
故significant

One sided t test
Population mean=4=mu
Is the mean significantly greater than 4?
t=48.7較上一個小

03 05 28
如果data 有 categorial variable
則使用chi square
本例為 one sample chi square test
Goodness of fit test
使用dataset hair eye color
將chi square chisq的結果存至物件chi1
再來看結果
X squared=133.473 頗大
Df=3 因為只有4個眼睛顏色的category
P value極小
Significantly different


P=c(.41,.32,.15,.12)
Vector storing proportion
Compare to (.25,.25,.25,.25) chi square
物件chi2
X square 變小了 6.4717
Df=3因為有4個sample
P value變大了 0.09>0.05
沒有significantly different H0未被推翻

03 06 29
Robust statistics
Examine Outliers and non normality
data does not fit
使用預設dataset state.area
藉由觀察histogram and boxplot
可發現有明顯的outlier
Summary area 看敘述性統計
Mean 72370離median 56222很遠
Not robust
接下來計算 trimmed mean 把左右%5包含outlier給去掉
Trimmed mean=59957.22
若去掉左右各10%
Trimmed mean=57524離median又更近了
若去掉左右各50的mean表示這是中位數
計算 standard deviation 發現標準差很大 有很大的outlier時可以改取mad=median absolute deviation

03 08 challenge 031 重要 取特定資料
Require package psych 有你要的資訊
c(1,4,7) 取出我要的變數
c(3,4,11,12) 只取mean sd skew kurtosis
04 01 032 檢查 outliers
第一部分是Categorial data的outliers
載入csv到OS
View(OS) 打開來看看這個表格
Outlier表示占比例<10%的東西
本範例中
Windows phone 0.032 blackberry 0.029到others 都小於10%
可以刪掉或都放到others裡面
我們使用function subset只取OS裡大於proportion 0.1 的資料存到物件OS.hi裡
OS.hi剩下android 和iOS

第二部分是 quantitative data
See outlier in boxplot
使用預設dataset river
利用boxplot.stats 可以發現超多 outliers
現在要把outliers 去除
只取<1210的值
存到rivers.low
發現樣本數改變後仍有outliers
所以再試一次只取<1055的值存到rivers.low2
直到無outlier為止

04 02 033 變數轉換
Transforming variables
Require datasets
使用預設的data islands
用histogram和boxplot 檢查發現數都擠在下面 是非常skew的data
使用z score scale function將數值轉換為mean=0 standard deviation=1
並存至island.z物件
檢查mean(island.z)應為0
sd(island.z)應為1
使用 as.numeric 將island.z 由matrix轉為numeric此時遺失掉原本的國家資訊 剩下數字
如果outlier明顯大於其他人很多 可以用對數轉換
Log(island)存進islands.ln
可以用自然對數或log10 log2
對數轉換後看直方圖發現數值變靠近很多
如果X有0 造成取對數錯誤則必須X+1

Squaring 取平方
Ranking
Dichotomising 分為大和小兩部分
If islands>1000 assign 1 to continent
Else assign 0 to continent

04 03 034
Composite variables
rnorm(1000000) 一百萬個random normal variables 存進rn1
rn2也是
Min約-5 max約+5 接近normal distribution
Rn.mean為rn1+rn2的平均
Random normal mean

rn.prod為兩者相乘
Min約-13.34 max約12.45

Kurtosis
安裝moments package 跟psych
Kurtosi(rn1)和kurtosi(rn2)應該都很接近0
Cauchy=鐘型曲線 但很高 very skew
兩個normal dist相乘就很像Cauchy

04 04 035 missing data 重要
X1裡 which is NA ? Index number傳回4 （R的index number從1開始）

na.rm=true
意思是remove NA =true （大小寫視為相同，把x1的NA去掉再取mean)

x2<-x1, copy x1 to x2
把0塞進x2的NA
x2[is.na(x2)]<-0 很重要
這時x2的NA都變成0了
Option2寫法也很重要
意思是x1裡若有NA則用0取代NA
若不是NA則remain x1
然後塞進變數x3

04 06 037
Transform skewed dataset
X軸keep all rows所以留空白
Y軸只要column2所以填入2
x<-xskew[,2]
畫圖發現尖峰在右 為negative skew
這種時候就是用平方來解決
x2=x平方
Histogram 發現比較不skew
Box plot發現下方很多outliers

X4=x4次方
Histogram 發現對稱多了
Box plot發現下方沒outliers了接近bell curve了
05 01 038 selecting cases 篩選特定條件
重要，只選一部分data
使用預設dataset mtcars
只使用裡面的$qsec 變數

直的只選qsec，並且要符合另一欄cyl=8

第22行
只取mtcars$hp裡大於中位數的row來取mean
29行
Cyl.8儲存的是：
Row只選cyl=8
Column全選，故留空白
第32行
Row只選cyl欄等於8且carb欄大於等於4
Column全選，故留空白

05 02 039 analyzing by subgroup
使用預設dataset iris
我們發現data裡的species是各種品種, 只有三種，為setosa versicolor,及virginica

14行 aggregate
~意思是function of
Fun=mean
意思是使用function:為取平均mean
本行意思是 Mean of petal width for each of the species
執行結果就是setosa 的petal width平均為0.246；versicolor 的petal width平均為1.326；virginica 的petal width平均為2.026

18行cbind =column bind
~意思是as the function of
Fun=mean, function為平均數
出來的結果就是
Setosa versicolor virginica 為rows
Petal width(V1)和petal length(V2)為columns
裡面的6個數為平均值

05 03 040 重要 存檔讀檔融合
Merging files 可以自己加入變數
使用內建data longley
a1儲存的是左上方 row第1到14 column1到6 注意R計數是從1開始
a2儲存的是右上方 row第1到14 column6和7 注意6和上面重複 因為要重複他才知道怎麼merge
b儲存的是底部data row只有第15和16 column則是全選
把a1 a2 b都存進txt裡面
清除系統後
再讀進a1至a1t 讀進a2至a2t
a.1.2為merge這兩個by variable ”year”
左上角和右上角合併 用merge

接下來和底部合併 用rbind (row bind)
讀進b存進all.data
檢查all.data 發現出現不必要的row name
現在要清空all data的row name
row.names(all.data)<-null



05 05 042

Challenge
Dataset使用tooth growth
Group使用變數supp
Compare mean and median of length

Supp只有兩種類 OJ 和VC

Aggregate
$len as a function of $supp, (以變數supp作分類）function=mean
出來結果$Len OJ種類的mean=20.66333
$len VC種類的mean=16.96333
下一行
function=median
出來結果$Len OJ種類的median=22.7
$len VC種類的median=16.5
06 01 043 畫box plot和散布圖
載入預設dataset insectsprays進spray
Data長相是一欄數字count以及種類groupABCDEF spray
(使用ABCDEF種殺蟲劑spray各殺死count數量的蟲）

現在要分別求種類ABCDEF的mean
方法為利用aggregate
變數Count as a function of 變數spray
Function是mean
出來的表格means就是各個種類的殺蟲劑spray平均殺掉多少隻蟲子

第15行
新的dataset mean.data
t=transpose 轉置xy
Means[-1]
意思為把means表格第一欄的ABCDEF刪掉 此時為垂直data 再轉置為水平data
存到mean.data

第16行 column name此時是V1到V6
參照means表格 row全選 column選第一欄
把V1到V6改回ABCDEF

此時mean.data是一個水平的矩陣，有index name為ABCDEF
可畫bar plot

06 02 044
Group boxplots
要用到mass package
記得要install 然後 load require mass package
使用裡面的painters 資料
裡面有欄school種類資料是ABCDEFGH
Draw boxplot, $expression as a function of $school
載入顏色套件
第23行 顏色
第24行 X 軸名稱 以name取代ABCDEFGH
notch在此先不用
畫出很美的boxplot
最後unload package並清除

06 03 045
Scatter plots
使用data cars
50列 2欄 speed and distance

Plot畫散布圖
Pch=16 change the markers to filled circles
Color gray
Main主標題
Xlab ylab x y軸標題

畫回歸線
abline
lm意思為linear model
Distance as a function of variable speed
Color:dark red
Line width led=2px

下一條是 locally weighed line

安裝套件car for回歸
來畫scatterplot 不但有CI 還有附贈boxplot

06 05 047
Challenge
gsd =google search data
Load searchdata.csv
gsd row只取1:5 column全選

畫box plot nfl as a function of region
Region x軸
nfl y軸
現在我只要看region=midwest的data
16行 x軸region y軸nfl
17行 color使用set2裡面的4個顏色
Box width=0.5 a little thinner
Whisklty=1 solid line
Staplelty是box上下兩端的line設為0
Outpch outlier的圖標使用16 filled circle
outcol outlier color使用set裡的4色
Main title x y軸title

07 01 048計算回歸相關係數

使用內建swiss 數據
Data(Swiss)有6個變數 47個物件
Cor(Swiss)=correlation of Swiss
將其四捨五入 round 至小數2位

15行 算r ，假設檢定及confidence interval
cor.test(fertility變數， education變數）
t=-5.95 df=45 p很小
假設檢定：correlation不等於0
CI在-0.79到-0.46間 明顯不等於0
Cor=-0.66
安裝並載入hmisc套件來取得matrix 的p value
as.matrix是個函數，會把swiss弄成matrix
然後再套rcorr 算r
出來結果第一個是r
第二個是probability value

07 02 049
Bivariate regression
載入預設data trees 31obs. 3 variables
Girth height volume
Trees[1:5,] 載入row1到5 column全選
直方圖Histogram $height
Histogram $girth有點skew
散布圖plot(girth,height)
畫回歸線abline
Lm=linear model
Height (y軸）as a function of girth（x軸）

我們要來建線性回歸並預測值
Lm=linear model
Height (y軸）as a function of girth（x軸）
選擇data=trees全部data
放進reg這個物件
Reg1執行看到裡面截距62.031，1.054
用summary查看細節發現
P=0.00276小於0.05
故girth明顯與heigh有關 significant 可以用來預測height
R squared=0.2697
P value=0.002758(0.00276)
計算confidence interval
Confint(reg1)計算confidence interval 出來的結果離0很遠
Predict(reg1)
以girth來推測height
第26行 interval=prediction
出現fit lwr upr三欄
意思就是當girth=8時 fit的hight為73.62937
95%信賴區間最低可到62.02569
最高可到85.23305
第29.30行
Linear model influence

07 03 050兩小樣本t檢定
Comparing means with t test
2 sample t test
載入sleep預設資料集
Sleep[1:5,]選取row1-5 column全選
可以發現有 extra group ID 三個變數
Extra是指多睡幾小時 group為第幾組
sd儲存sleep[,1:2] row全選 column只選extra 和group 這兩欄
此時sd有20observation跟2個variable
以sd 畫個histogram直方圖
以sd 畫個以組別分類extra的boxplot
可以發現第二組睡得比較多 extra比較大
第16行
以extra by group1, group2進行兩樣本t檢定
P value=0.07939頗大
H0 mean相差=0 H1 mean相差!=0
95%CI for difference in mean
-3.365到0.205
Mean in group1=0.75 mean in group2 =2.33

19行t.test自訂t檢定
Extra breaking down and predicted by group
Data=sd
I want to know whether 1 group is less than the other
Alternative=less, one tailed t test
Confidence level=0.80
出來結果，t值 df值不變
P value=0.0397 有significant 差別
80%CI值 從無限大開始 因為是one tail

26行 另一個範例兩樣本t檢定
rnorm 產出random normal 隨機產生常態分配存進x
X: 30 samples mean=20 sd =5
rnorm 產出random normal 存進y
Y: 30 samples mean=22 sd =5
t.test(x,y)對這兩個隨機產生的分佈來做t檢定
注意 每次執行 x y random normal都會改變
有機會有時有significant difference 有時沒有

07 04 051
paired mean paired t test
小樣本前後差異比較
t檢定檢查1 group, before and after

rnorm 產出random normal 隨機產生常態分配存進t1
t1有50個sample mean=52 sd=6
隨機產生常態分配存進「t1-t2兩者相差」的數dif
dif 有50個sample mean=6 sd=12
t2=t1+dif
畫histogram看t1發現果然是鐘型
t2有點skew
Boxplot發現t2因為加上了標準差大的dif
所以box比t1長

Create parallel coordinate plot
19行利用data.frame函數來combine t1 t2 並存入pairs
檢查pairs發現row是50列 column 是t1 t2兩個變數

Create parallel coordinate plot要先載入套件mass
parcoord =parallel coordinate plot
數值使用pairs
Var label=true 會列出max min
我們來看這連結兩欄t1 t2的線陡不陡
答案是蠻平的

24行來做paired t test
t.test函數
t2,t1 因為是paired t test所以paired=true

27行做更複雜的t檢定
Mu = population mean=6
意思是假設檢定非H0=0兩者difference 是否等於0 而是H0=兩者difference 是否等於6
Alternative=greater單尾檢定
99%CI
答案是p頗大 不拒絕H0=兩者difference等於6
Not significant different from 6

07 05 052
One way, one factor ANOVA
Comparing means with ANOVA

隨機產生四組常態分配x1-x4
30個樣本 mean分別為40 41 45 45 sd都是8
預先計算可以發現她們p=.025 significant different

現在把這四組data組合用data.frame函式和cbind函式（column bind函式）組合在一起並存至xdf
用summary觀察xdf(x data frame)的統計資料
此時row30個數 column 4欄

現在用stack將四個變數堆疊成一欄數 一欄group
並存至xs
此時xs有120個數 兩欄變數 values ind 一欄values是120個數 一欄ind(independent variable)是x1到x4

再來conduct one way ANOVA
使用aov=analysis of variance函式
values (左欄的數）as a function of ind（右欄的group)
Data使用xs
存進物件anova1
光打anova1會顯示SSR等ANOVA結果
而summary(anova1)會顯示假設檢定結果
P value=0.001很小 有significant different
(結果會每次執行不同因為rnorm每次都產生不同東西）

本例至今只知道significant different
要知道誰跟誰特別different
就要用以下方法
Post hoc=after fact comparison
TukeyHSD(anova1)
Examine 哪邊 significant different
出來結果 每組都會兩兩比較
Lwr upr是CI
P adj=p value
P value小的就是 significant different之處

第27.28行是其他檢查方法

07 06 053
Comparing proportion
Total number of each group=100
Vector n5=concatinate （repeat 100 5次）
n5=[100,100,100,100,100]總數
Another vector:number of success
X5=concat[65,60,60,50,45]成功數量
Proportion test(x5/n5)
Chi square=10.9578
Estimates=[0.65,0.60,0.60,0.50,0.45]
P=0.02704<0.05
表示 Group之間有顯著差異 not uniform distributed

若只有兩個group
Proportion test 會給CI(95%)
n2=[40,40] number of trial
x2=[30,20] number of success
prop.test(x2/n2) CI=0.80(80%)
Chi square =4.32
p=0.03767<0.05組別間有顯著差異
CI of difference 9%~41%
0.75-0.50=25% difference

07 07 054 難
Creating crosstabs for categorial variables
情況：if you have 2 categorial variables 兩個以上的獨立分類變數
解法：Chi squared test of independence
Or chi square cross tabs

Structure of default dataset:titanic
轉成flat table 比較好看
大約是分成四組 探討男女 成人小孩 的存活數
Tdf 為轉換後的titanic table
是將目標轉換成「每一個人」是男是女 是否為小孩 是否存活 的table
Tdf[1:5,] 只取前5列來檢查看看 column全選

Create contingency table
ttab =使用table function組合兩個變數class 和 survived
出來的結果是row有 1st 2nd 3rd crew
Column為no未存活跟yes存活

接下來要轉成百分比
Cell percentage , row percentage , column percentage 只取到小數第二位
乘以100是轉成百分比
Prop.table(ttab,1)意思為row percent
Round 上述，2 意思是上述只取到小數第二位
*100為轉成百分比
這就是row percent

Prop.table(ttab,2)意思為column percent
Prop.table(ttab)意思為以全部加總之cell percent

來做chi square test存進tchi
發現p極小 顯示這是非常significant different
一開始看數字也知道 1st class的存活率顯著較高

第30行為查看tchi這個chi squared test的各種細節

07 08 055 難難
處理放射狀的圖 quantile regression
計算robust statistics ( center, Spread) for bivariate associations (curve associations, symmetries)

安裝以下packages
安裝 quantreg =quantile regression
使用預設dataset engel

Attach data之後 variable就可以直接寫 不加$字號
#19行 create empty data frame
Variable $income $foodexp
Point函數：畫圓點
Pch是圓點的樣式
有far outliers

5% 10%~95% 的 quantile of the data 存進 taus

Calculate vertical height of the quantile
Sequence(income最小值，income最大值, divides by 100)此為x values
yy calculate each value of y of regression lines
圖就畫出5% 10%~95% 的 quantile regression線
abline則是傳統回歸線 設為lm linear model深紅色
rq 是median regression %50處的regression 受到outlier影響較小

Legend 圖例
3000=income 1000=foodexp food expenses
最後detach dataset

07 10 057 challenge
Compare proportion
Data:mlb2011.csv
Outcome: home win/allwins
Compare all 30 teams at once
Compare just highest and lowest

載入data, header=true有標頭 共6個變數 30個數
只載入前5row 看看

Prop.test(home win/all wins)
出現30個proportion
P value很大 表示組別間沒差異

第二部分為了要更有差異，現在只比較最大組59%和最小組43%

P=0.0524
還是沒顯著差異

08 01 058 難在處理data
三組直方圖 多組變數直方圖
Clustered bar chart for frequencies
Multi variables chart
使用dataset warpbreaks

下面是把data處理成2x3的矩陣

Besides=true
We want the factors to be grouped
Col=color
bor =border =NA turn off border
Legend圖例
Locator=1 我們可以在圖上任一處滑鼠點一下來放這個圖例
Rowname為data裡的 A B
Fill=填入顏色

08 02 059 多組變數散布圖
Scatterplot for grouped data
本範例為 One categorial variable, two quantitative variables

使用預設data iris
只取row1到5來看看
150 Observations 5 variables
安裝car套件

函式sp就是scatterplot之意
Width as a function of length broken down by species
出現三組散佈圖

08 03 060 散布圖矩陣圖難懂
Scatterplot matrixes

基本的 scatterplot matrix
Pairs 函式
只取iris only 前四個variables

Modified scatterplot matrix
使用Rcolorbrewer套件
Use 3 colors from pastel1
（函式全名display Rcolorbrewer palette)
下面再用一次pair
Unclass:color according to the species

08 04 061 3d scatterplot
Multiple quantitative variables
載入data iris
安裝套件 scatterplot 3D

畫3d scatterplot使用iris前三個variable

接下來是modified 3D scatterplot
有顏色 vertical lines 跟回歸平面
S3d object 儲存資訊 出現vertical line
Pch=16 實心圓形
第26行
利用s3d來畫plane

29行 spinning 3D plot
可以互動並觀察發生什麼事
Require=load package rgl和 r color brewer
因為r studio用這個會當掉 所以用原始的R來開
Plot3d函式 載入xyz variables 進行3D display
Col=Color
Size=8 px

08 06 063 challenge
Scatterplot matrix 散布圖矩陣

使用searchdata.csv
5 variables: nba nfl fifa degree age
Graph using pairs
利用car package來畫 scatterplot matrix

載入檔案存到gsd (google searched data)
Header=true 有標頭
51obsevations 10 variables
gsd[1:5,]列出前五row來看看

第一步，在對角畫直方圖

第二步利用pairs函式畫散布圖矩陣
使用gsd變數2 3 4及8 9 欄
Pch=16 make dots 實心 solid
28行前 畫出散布圖矩陣

第三步 也是畫散佈圖矩陣
31行 load car這個library
Load rcolorbrewer

Car裡面有Scatterplotmatrix 函式
使用nba nfl fifa degree age 這五個變數
Data使用gsd
Color 使用3個顏色 from set 2

09 01 064
Multiple regression 後半較難

載入預設資料集us judge ratings
43obs 12 variables
取出前5 row 來看看

Reg1物件 儲存lm=linear regression model
RTEN as a function of 以下幾個變數
查看reg1 coefficient
reg1 = lm[12]

查看更多information
使用 summary

使用anova等等查看更多資訊

42行 retention as a function of 1 (constant)

09 02 065
Comparing means with 2 step ANOVA (2 way ANOVA)
2 categorial variables (predictors) and 1 quantitative outcome

載入預設資料集 warpbreaks
54 observations 3 variables

2 predictors:Type of wool: A or B
Level of tension: low L medium M high H
1 quantitative outcome: break

Boxplot break as a function of wool and tension
2x3=6個 box:AL BL AM BM AH BH

aov:analysis of variance
breaks=outcome variable
As a function of wool, tension, wool:tension(:表示交互作用interaction)
以上有三個factor:wool, tension, wool:tension
Summary 查看詳細統計資料
Sum of square, mean square,

Tension的p value 遠小於0.05 有顯著影響
Wool:tension p value也很小 有interaction

第19行
計算aov1 means等

Post hoc test
TukeyHSD 查看誰有顯著影響
BL is significant different from AL 因為p value很小
AL （wool A low tension組）的所有p value都很小 故 AL 跟所有人都有顯著差異

09 03 066 不易

Cluster analysis 相同性質者組成一組

載入預設資料mtcar 32obs 11 variables
取出前5 row來看看
取出1234 67 9 10 11 這些9個變數存至mtcar1
取出mtcar1 前5 row 來看看

有三種cluster analysis
Kmeans
hierarchical 先分開再組在一起
Dividing
本例使用的是2 hierarchical
函式Dist=dissimilarity/ distance

Distance matrix
hclust=hierarchical cluster analysis
存進c 物件

Plot dendogram
plot(c)
出現兩兩相似放一起的樹狀圖

Cutree = cluster tree
Group 3組
K=3 = how many groups I want

rect.hclust=
Rectangle of hierarchical cluster analysis
c=c物件
K=2 出現灰色的線 把原本的樹狀圖分成2大組
K=3 把原本的樹狀圖分成3大組

K means clustering
函式kmeans 使用資料mtcar1 分為3組
Split into 3 clusters
存進km物件並查看資料

Require cluster 套件
畫km的cluster plot 出現大圓形
Shade則是用陰影填滿大圓形


09 04 067 不易
Principle component analysis/factor analysis

載入預設資料mtcar 32obs 11 variables
取出前5 row來看看
取出1234 67 9 10 11 這些9個變數存至mtcar1
取出mtcar1 前5 row 來看看

pc= principle component 物件
prcomp 函式
使用資料data frame mtcars1

第52行
1factor
2factor
3factor
4factor

09 06 069
Challenge: cluster analysis
Data: stateclusterdata.csv
Hierarchical cluster analysis of : states
Dendogram
Cluster boxes on dendogram

讀進csv 有標頭header 進scd物件
Scd: 51 observations 13 variables
Rownames函式 選取scd第一個column
scd[,1]指派null 意思為remove the first column
此時scd有51obs 12 variables

來做hierarchical cluster analysis
Dist函式=distance matrix
hclust函式=hierarchical cluster analysis
出現樹狀圖

在樹狀圖上畫box
K=2 = 2 major clusters=2 boxes
K=3 = 3 major clusters=3 boxes
K=5 = 5 major clusters=5 boxes


