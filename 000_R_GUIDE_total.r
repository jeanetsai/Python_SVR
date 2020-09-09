https://www.r-project.org/
�h R project �� download �U�� R
�åh Rstudio �U�� Rstudio (32 bits �n���ª���)
File=>New File=>Rscript

1.3 Taking a first look at the interface
�ֱ���:����:ctrl+enter

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
�k�U��packages
File=>New File=>Rscript��J
install.packages("ggplot2")
����:ctrl+enter
require("ggplot2")
�W�@������ �k�U��ggplot2�۰ʥ��Ī�ܸ��J����

�ˬd��s: tools=>check updates
�Υk�U��packages => check updates


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

# Using R��s built-in datasets

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
x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)  # Concatenate �}�C
x5
?c
#5 4 1 6 7 2 2 3 2 8

x6 <- scan()  # After running this command, go to console
# Hit return after each number �ϥΪ̿�J
# Hit return twice to stop ���⦸enter�ӵ���
x6
?scan

ls()  # List objects (same as Workspace viewer)
?ls
#�C�X�W�z��������
#x1 x2 x3 x4 x5 x6

rm(list = ls())  # Clean up

10

8:54

1. Getting Started - 7 Importing data
01-07 ���J�~��csv �M txt
Read.table���Jtxt
Read.csv ���Jcsv
header=true��� data�����Y
str���structure���Ostring

trends.csv <- read.csv("~/Google Drive/repos/r/R-Statistics-Essential-Training/R-Statistics-Essential-Training/1-Getting Started/7-GoogleTrends.csv", header = TRUE) #header=true��� data�����Y
str(trends.csv)
View(trends.csv)

trends.txt <- read.table("~/Google Drive/repos/r/R-Statistics-Essential-Training/R-Statistics-Essential-Training/1-Getting Started/7-GoogleTrends.txt", header = TRUE, sep = "\t") #header=true��� data�����Y
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
#�|�ˤ��J�p�ƨ��

# Get marginal frequencies from original table
margin.table(UCBAdmissions, 1)  # Admit
margin.table(UCBAdmissions, 2)  # Gender
margin.table(UCBAdmissions, 3)  # Dept
margin.table(UCBAdmissions)     # Total
?margin.table
round(prop.table(admit.dept), 2)  # �|�ˤ��J�p�ƨ��Show as proportions w/2 digits

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
#Bar plot (x, col) ���B��col��color
#Color()102 �Ʀr�O���C�⸹�X
# Working with color

# Barplot
x = c(12, 4, 21, 17, 13, 9)
barplot(x)
#Bar plot (x, col) ���B��col��color
#Color()102 �Ʀr�O���C�⸹�X
barplot(x, col = colors() [102])  # darkseagreen
barplot(x, col = colors() [602])  # Back to slategray3
#�]��ϥ�RGB
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

#install.packages("RColorBrewer")#�O�o���w��RColorBrewer packages
#Pastel2
#Set3 �i�R���t��
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
#�ϥιw�]�� data data(chickwts)
#Descending �̧ǱƦC�h�[�Jorder=true
# To put the bars in descending order, add "order":
barplot(feeds[order(feeds, decreasing = TRUE)])
#Set margin:�W�U���k
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
# Cleveland (1985), page 264: ��Data that can be shown by
# pie charts always can be shown by a dot chart. This means
# that judgements of position along a common scale can be
# made instead of the less accurate angle judgements.��
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
#Histogram �O time series
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

#�H rten ���ܼƵe����
#Median �j���O����8
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
#²��s�Ϥ�k�G���ϤW�誺export

# R Statistics Essential Training
# Ex02_06
# Exporting charts

# Load data ���J�w�s�b��dataset chickwts �䤤���ܼ� feed
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
dev.off()  # ���[�I �D�`���n Close device (run in same block)

# �]�i�s��pdf OR this one for PDF file (Run entire block at once)
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

�|�[�T�ӹϪ��d��
Pl���� =�w�s�b��dataset iris �̭����ܼ� petal.length
Pl= numeric[150]
Border=0 remove border from the chart
Main=���D
Line+density means kernel density line
Object=pl
Lwd =line width=2px
�ĤT���|�[ rug (line plot) �W�h

25

3:34

3. Statistics for One Variable - 1 Calculating frequencies

# R Statistics Essential Training
# Ex03_01
# Calculating frequencies

# LOAD DATASET
# Data is the number of hits (in millions) for each word on Google
groups <- c(rep("blue",   3990),#Rep blue 3990���� blue �o��data 3990��
            rep("red",    4140),
            rep("orange", 1890),
            rep("green",  3770),
            rep("purple",  855))
#Groups =character[14645]�̭���14645��data
# CREATE FREQUENCY TABLES
groups.t1 <- table(groups)  # Creates frequency table 
groups.t1  # Print table ����groups.t1 =table[5]

# MODIFY FREQUENCY TABLES Sort table �æs�쪫��groups.t2
groups.t2 <- sort(groups.t1, decreasing = TRUE)  # Sorts by frequency, saves table
groups.t2  # Print table Groups.t2=array[5]

# PROPORTIONS AND PERCENTAGES
prop.table(groups.t2)  # Give proportions of total Prop �p��U�ۤ��
round(prop.table(groups.t2), 2)  # Give proportions w/2 decimal places �|�ˤ��J�ܤp���I2��
round(prop.table(groups.t2), 2) * 100  # Give percentages w/o decimal places ���H100�h���ʤ���

rm(list = ls())  # Clean up


26

5:44

3. Statistics for One Variable - 2 Calculating descriptives

# R Statistics Essential Training
# Ex03_02
# Calculating descriptives

# LOAD DATASET �ϥΤ��ت�dataset cars
require("datasets")
?cars
cars
str(cars) #Str(cats) structure of dataset cars
data(cars)

# CALCULATE DESCRIPTIVES Summary ��X�|����� ����Ƶ�
summary(cars$speed)  # Summary for one variable  �u��speed variable
summary(cars)  # Summary for entire table ��speed, dist ���variable

#Boxplot.stats
#$stats= tukey 5 variables(����|����ơ^
# Tukey's five-number summary: minimum, lower-hinge,
# median, upper-hinge, maximum. No labels.
fivenum(cars$speed)

# Boxplot stats: hinges, n, CI, outliers
#n= data�Ӽ�
#$conf =confidence level
#$out=outliers
boxplot.stats(cars$speed)

# ALTERNATIVE DESCRIPTIVES
# From the package "psych"
#Install package psych
#Describe���ԭz�ʲέp
#Trimmed= trimmed mean
#Mad= ����t�����Median absolute deviation
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
#���]�˩w �PCI proportional test
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
#Is it significant>0.5�H
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
#���]�˩w �PCI

# Load data
#�ϥΤ���dataset quakes
#Quake[1:5, ]�����XX�b�e5��data, �d�ťժ�� all variable
?quakes
quakes[1:5, ]  # See the first 5 lines of the data
mag <- quakes$mag  # �u�ϥ�$mag�o��variable Just load the magnitude variable
#�s��mag=numeric[1000]
mag[1:5]  # First 5 lines

# Use t-test for one-sample ��@�˥�t�˩w
# Default t-test (compares mean to 0)���]�˩w�w�]mean��0
t.test(mag)

#t.test(mag)���G
#t value=362.7599 �i���i�t
#Degree of freedom=999 �]����1000��sample
#Pvalue <2.2e-16
#True mean������0
#CI 4.59-4.64
#Mean of x=4.62
#�Gsignificant

# One-sided t-test w/mu = 4
t.test(mag, alternative = "greater", mu = 4)
#One sided t test
#Population mean=4=mu
#Is the mean significantly greater than 4?
#t=48.7���W�@�Ӥp


rm(list = ls())  # Clean up


29

5:10

3. Statistics for One Variable - 5 Using a single categorical variable One sample chi square test

# R Statistics Essential Training
# Ex03_05
# Single categorical variable: One sample chi-square test
#�p�Gdata �� categorial variable
#�h�ϥ�chi square
#���Ҭ� one sample chi square test
#Goodness of fit test
# Load data �ϥ�dataset hair eye color
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
#�Nchi square chisq�����G�s�ܪ���chi1 �A�Ӭݵ��G
chi1 <- chisq.test(eyes)  # Save tests as object "chi1"
chi1  # Check results
# ���G
#X squared=133.473 ��j
#Df=3 �]���u��4�Ӳ����C�⪺category
#P value���p
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

#����chi2 ���G
#X square �ܤp�F 6.4717
#Df=3�]����4��sample
#P value�ܤj�F 0.09>0.05
#�S��significantly different H0���Q��½


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

# Load data �ϥιw�]dataset state.area
?state.area
data(state.area)  # Gets error message
area <- state.area  # But can save as vector
area
hist(area)
boxplot(area)
boxplot.stats(area)
summary(area)

#�ǥ��[��histogram and boxplot
#�i�o�{�����㪺outlier
#Summary area �ݱԭz�ʲέp
#Mean 72370��median 56222�ܻ�
#Not robust


# Robust methods for describing center:
mean(area)  # NOT robust
median(area)
mean(area, trim = .05)  # 5% from each end (10% total)
mean(area, trim = .10)  # 10% from each end (20% total)
mean(area, trim = .20)  # 20% from each end (40% total)
mean(area, trim = .50)  # 50% from each end = median

#���U�ӭp�� trimmed mean �⥪�k%5�]�toutlier���h��
#Trimmed mean=59957.22
#�Y�h�����k�U10%
#Trimmed mean=57524��median�S���F
#�Y�h�����k�U50��mean��ܳo�O�����
#�p�� standard deviation �o�{�зǮt�ܤj ���ܤj��outlier�ɥi�H���mad=median absolute deviation


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

challenge 031 ���n ���S�w���
Require package psych ���A�n����T
c(1,4,7) ���X�ڭn���ܼ�
c(3,4,11,12) �u��mean sd skew kurtosis

33

6:43

4. Modifying Data - 1 Examining outliers

# R Statistics Essential Training
# Ex04_01
# Examining outliers �ˬd outliers

# Categorical data �Ĥ@�����OCategorial data��outliers
# Outlier is < 10%
# Worldwide shipments of smartphone OS
# in millions for 2013 Q1
OS <- read.csv("~/Desktop/R/OS.csv", header = TRUE)#���Jcsv��OS
View(OS)#View(OS) ���}�Ӭݬݳo�Ӫ��
OS

# Outlier has proportion < .10
# Either combine into "other" (if homogeneous) or delete
#Outlier��ܥe���<10%���F��
#���d�Ҥ� Windows phone 0.032 blackberry 0.029��others ���p��10%
#�i�H�R���γ����others�̭�
#�ڭ̨ϥ�function subset�u��OS�̤j��proportion 0.1 ����Ʀs�쪫��OS.hi��
#OS.hi�ѤUandroid �MiOS
OS.hi <- subset(OS, Proportion > 0.1)
OS.hi

# Quantitative data �ĤG�����O quantitative data
# See outliers in boxplots See outlier in boxplots
require("datasets")
?rivers #�ϥιw�]dataset river
data(rivers)  # Lengths of Major North American Rivers
hist(rivers)
boxplot(rivers, horizontal = TRUE) 
boxplot.stats(rivers) #�Q��boxplot.stats �i�H�o�{�W�h outliers

#�{�b�n��outliers �h��
#�u��<1210����
#�s��rivers.low
#�o�{�˥��Ƨ��ܫᤴ��outliers
#�ҥH�A�դ@���u��<1055���Ȧs��rivers.low2
#����Loutlier����

rivers.low  <- rivers[rivers < 1210]  # Remove outliers
boxplot(rivers.low, horizontal = TRUE)  # Has new outliers
boxplot.stats(rivers.low)
rivers.low2  <- rivers[rivers < 1055]  # Remove again
boxplot(rivers.low2)  # Still one outlier

rm(list = ls())  # Clean up

34

9:27

4. Modifying Data - 2 Transforming variables �ܼ��ഫ

# R Statistics Essential Training
# Ex04_02
# Transforming variables

# Load Data �ϥιw�]��data islands
require("datasets")
# The areas in thousands of square miles of the
# landmasses which exceed 10,000 square miles.
?islands
islands
hist(islands, breaks = 16)
boxplot(islands)
#��histogram�Mboxplot �ˬd�o�{�Ƴ����b�U�� �O�D�`skew��data

#�ϥ�z score scale function�N�ƭ��ഫ��mean=0 standard deviation=1
#�æs��island.z����
#�ˬdmean(island.z)����0
#sd(island.z)����1
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
#�ϥ� as.numeric �Nisland.z ��matrix�ରnumeric���ɿ򥢱��쥻����a��T �ѤU�Ʀr
islands.z <- as.numeric(islands.z)  # Converts from matrix back to numeric
islands.z

# Logarithmic Transformations �p�Goutlier����j���L�H�ܦh �i�H�ι���ഫ
#Log(island)�s�iislands.ln
#�i�H�Φ۵M��Ʃ�log10 log2
islands.ln <- log(islands)  # Natural log (base = e)
# islands.log10 <- log10(islands)  # Common log (base = 10)
# islands.log2 <- log2(islands)  # Binary log (base = 2)
#����ഫ��ݪ���ϵo�{�ƭ��ܾa��ܦh
#�p�GX��0 �y������ƿ��~�h����X+1
hist(islands.ln)
boxplot(islands.ln)
# Note: Add 1 to avoid undefined logs when X = 0
# x.ln <- log(x + 1)

# Squaring
# For negatively skewed variables
# Distribution may need to be recentered so that all values are positive (0 is okay)
#Squaring ������
#Ranking

# Ranking
islands.rank1 <- rank(islands)
hist(islands.rank1)
boxplot(islands.rank1)
# ties.method = c("average", "first", "random", "max", "min")
islands.rank2 <- rank(islands, ties.method = "random")
hist(islands.rank2)
boxplot(islands.rank2)

#Dichotomising �����j�M�p�ⳡ��
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
#rnorm(1000000) �@�ʸU��random normal variables �s�irn1
rn1 <- rnorm(1000000)
hist(rn1)
summary(rn1)

# Create variable rn2 with 1 million random normal values
#rn2�]�O�@�ʸU��random normal variables �s�irn2 
rn2 <- rnorm(1000000)
hist(rn2)
summary(rn2)
#Min��-5 max��+5 ����normal distribution

# Average scores across two variables
#Rn.mean��rn1+rn2������
#Random normal mean
rn.mean <- (rn1 + rn2)/2
hist(rn.mean)

# Multiply scores across two variables
#rn.prod����̬ۭ�
#Min��-13.34 max��12.45(�C���@���|���@��)

rn.prod <- rn1 * rn2
hist(rn.prod)
summary(rn.prod)

# Kurtosis comparisons
# The package "moments" gives kurtosis where a
# mesokurtic, normal distribution has a value of 3.
# The package "psych" recenters the kurtosis values
# around 0, which is more common now.
#Kurtosis
#�w��moments package ��psych
install.packages("psych")
help(package = "psych")
require("psych")

#Kurtosi(rn1)�Mkurtosi(rn2)���ӳ��ܱ���0
#Cauchy=�������u ���ܰ� very skew
#���normal dist�ۭ��N�ܹ�Cauchy
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
#missing data ���n

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
#X1�� which is NA ? Index number�Ǧ^4 �]R��index number�q1�}�l�^

# Ignore missing values with na.rm = T
mean(x1, na.rm = T)
#na.rm=true
#�N��Oremove NA =true �]�j�p�g�����ۦP�A��x1��NA�h���A��mean)

# Replace missing values with 0 (or other number)
# Option 1: Using "is.na"
x2 <- x1
#x2<-x1, copy x1 to x2
#��0��ix2��NA
x2[is.na(x2)] <- 0
x2
#x2[is.na(x2)]<-0 �ܭ��n
#�o��x2��NA���ܦ�0�F

# Option 2: using "ifelse"
#Option2�g�k�]�ܭ��n
#�N��Ox1�̭Y��NA�h��0���NNA
#�Y���ONA�hremain x1
#�M���i�ܼ�x3
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
X�bkeep all rows�ҥH�d�ť�
Y�b�u�ncolumn2�ҥH��J2
x<-xskew[,2]
�e�ϵo�{�y�p�b�k ��negative skew
�o�خɭԴN�O�Υ���ӸѨM
x2=x����
Histogram �o�{�����skew
Box plot�o�{�U��ܦhoutliers

X4=x4����
Histogram �o�{��٦h�F
Box plot�o�{�U��Soutliers�F����bell curve�F

39

5:31

5. Working with the Data File - 1 Selecting cases

# R Statistics Essential Training
# Ex05_01 #���n�A�u��@����data
# Selecting cases #selecting cases �z��S�w����

# Load data
?mtcars
data(mtcars)
mtcars
#�ϥιw�]dataset mtcars
#�u�ϥθ̭���$qsec �ܼ�

# Mean quarter-mile time (for all cars)
mean(mtcars$qsec)

# Mean quarter-mile time (for 8-cylinder cars)
# Use square brackets to indicate what to select
# in this format: [rows] 
#�����u��qsec�A�åB�n�ŦX�t�@��cyl=8
mean(mtcars$qsec[mtcars$cyl == 8])

# Median horsepower (for all cars)
median(mtcars$hp)

# Mean MPG for cars above median horsepower
#�u��mtcars$hp�̤j�󤤦�ƪ�row�Ө�mean
mean(mtcars$mpg[mtcars$hp > median(mtcars$hp)])

# Create new data frame for 8-cylinder cars
# To create a new data frame, must indicate
# which rows and columns to copy in this
# format: [rows, columns]. To select all
# columns, leave second part blank.
cyl.8 <- mtcars[mtcars$cyl == 8, ]
#Cyl.8�x�s���O�G
#Row�u��cyl=8
#Column����A�G�d�ť�

# Select 8-cylinder cars with 4+ barrel carburetors
#Row�u��cyl�浥��8�Bcarb��j�󵥩�4
#Column����A�G�d�ť�
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
#�ϥιw�]dataset iris
#�ڭ̵o�{data�̪�species�O�U�ث~��, �u���T�ءA��setosa versicolor,��virginica

# Split the data file and repeat analyses
# with "aggregate"
# Compare groups on mean of one variable
aggregate(iris$Petal.Width ~ iris$Species, FUN = mean)
#14�� aggregate
#~�N��Oas a function of
#Fun=mean
#�N��O�ϥ�function:��������mean
#����N��O Mean of petal width for each of the species
#���浲�G�N�Osetosa ��petal width������0.246�Fversicolor ��petal #width������1.326�Fvirginica ��petal width������2.026

# Compare groups on several variables
# Use cbind to list outcome variables


aggregate(cbind(iris$Petal.Width, iris$Petal.Length) ~ iris$Species, FUN = mean)
#cbind =column bind
#~�N��Oas the function of
#Fun=mean, function��������
#�X�Ӫ����G�N�O
#Setosa versicolor virginica ��rows
#Petal width(V1)�Mpetal length(V2)��columns
#�̭���6�ӼƬ�������



rm(list = ls())  # Clean up

41

5:17

5. Working with the Data File - 3 Merging files ���n �s��Ū�ɿĦX

# R Statistics Essential Training
# Ex05_03
# Merging files Merging files �i�H�ۤv�[�J�ܼ�

# Load data
?longley
data(longley)

# Split up longley �ϥΤ���data longley
a1 <- longley[1:14, 1:6]  # Starting data
a2 <- longley[1:14, 6:7]  # New column to add (with "Year" to match)
#a1�x�s���O���W�� row��1��14 column1��6 �`�NR�p�ƬO�q1�}�l
#a2�x�s���O�k�W�� row��1��14 column6�M7 �`�N6�M�W������ �]���n���ƥL�~���D���merge

b <- longley[15:16, ]     # New rows to add
#b�x�s���O����data row�u����15�M16 column�h�O����

write.table(a1, "~/Desktop/R/longley.a1.txt", sep="\t")
write.table(a2, "~/Desktop/R/longley.a2.txt", sep="\t")
write.table(b, "~/Desktop/R/longley.b.txt", sep="\t")
rm(list=ls()) # Clear out everything to start fresh

# Import data
#��a1 a2 b���s�itxt�̭�
#�M���t�Ϋ�
#�AŪ�ia1��a1t Ū�ia2��a2t
a1t <- read.table("~/Desktop/R/longley.a1.txt", sep="\t")
a2t <- read.table("~/Desktop/R/longley.a2.txt", sep="\t")

# Take early years (a1t) and add columns (a2t)
# Must specify variable to match cases
a.1.2 <- merge(a1t, a2t, by = "Year")  # Merge two data frames
a.1.2  # Check results
#a.1.2��merge�o���by variable ��year��
#���W���M�k�W���X�� ��merge

# Add two more cases at bottom
b <- read.table("~/Desktop/R/longley.b.txt", sep="\t")
all.data <- rbind(a.1.2, b)  # "Row Bind"
#���U�өM�����X�� ��rbind (row bind)
#Ū�ib�s�iall.data

all.data  # Check data
#�ˬdall.data �o�{�X�{�����n��row name
#�{�b�n�M��all data��row name
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
Dataset�ϥ�tooth growth
Group�ϥ��ܼ�supp
Compare mean and median of length

Supp�u������� OJ �MVC

Aggregate
$len as a function of $supp, (�H�ܼ�supp�@�����^function=mean
�X�ӵ��G$Len OJ������mean=20.66333
$len VC������mean=16.96333
�U�@��
function=median
�X�ӵ��G$Len OJ������median=22.7
$len VC������median=16.5

44

4:34

6. Charts for Associations - 1 Creating bar charts of group means
#�ebox plot�M������
# R Statistics Essential Training
# Ex06_01
# Creating bar charts of group means

# Load data
?InsectSprays
spray <- InsectSprays  # Load data with shorter name
#���J�w�]dataset insectsprays�ispray
#Data���۬O�@��Ʀrcount�H�κ���groupABCDEF spray
#(�ϥ�ABCDEF�ر��ξ�spray�U����count�ƶq���Ρ^


# To plot means, first get the means for the groups 
means <- aggregate(spray$count ~ spray$spray, FUN = mean)
means
plot(means)  # Gets lines for means
#�{�b�n���O�D����ABCDEF��mean
#��k���Q��aggregate
#�ܼ�Count as a function of �ܼ�spray
#Function�Omean
#�X�Ӫ����means�N�O�U�Ӻ��������ξ�spray���������h�ְ��Τl


# To get a barplot, need to extract means and reorganize
mean.data <- t(means[-1])  # Removes first columns, transposes second
#�s��dataset mean.data
#t=transpose ��mxy
#Means[-1]
#�N�䬰��means���Ĥ@�檺ABCDEF�R�� ���ɬ�����data �A��m������data
#�s��mean.data
colnames(mean.data) <- means[, 1]
#column name���ɬOV1��V6
#�ѷ�means��� row���� column��Ĥ@��
#��V1��V6��^ABCDEF

# Basic barplot for means
barplot(mean.data)
#����mean.data�O�@�Ӥ������x�}�A��index name��ABCDEF
#�i�ebar plot

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
#�n�Ψ�mass package
#�O�o�ninstall �M�� load require mass package
require(MASS)
?painters
#�ϥθ̭���painters ���
# For an interesting follow-up on this data, see
# "Taste Endures! The Rankings of Roger de Piles (?1709)
# and Three Centuries of Art Prices" by Kathryn Graddy at
browseURL("http://people.brandeis.edu/~kgraddy/published%20papers/DePiles_complete.pdf")
data(painters)
painters
#painters�̭�����school������ƬOABCDEFGH
# Draw boxplots of outcome (Expression) by group (School)
# Basic version
boxplot(painters$Expression ~ painters$School)
#Draw boxplot, $expression as a function of $school

# Modified version
require("RColorBrewer")
#���J�C��M��
boxplot(painters$Expression ~ painters$School,
        col = brewer.pal(8, "Pastel2"),#�C��
		#X �b�W�� �Hname���NABCDEFGH
        names  = c("Renais.",
                   "Mannerist",
                   "Seicento",
                   "Venetian",
                   "Lombard",
                   "16th C.",
                   "17th C.",
                   "French"),
#         notch = TRUE,  # Not good because of small samples; don't use notch�b��������
        boxwex = 0.5,  # Width of box
        whisklty = 1,  # Whisker line type; 1 = solid line
        staplelty = 0,  # Staple type; 0 = none
        outpch = 16,  # Outlier symbol; 16 = filled circle
        outcol = brewer.pal(8, "Pastel2"),  # Outlier color
        main = "Expression Ratings of Painters by School\nFrom \"painters\" Dataset in \"MASS\" Package",
        xlab = "Painter's School",
        ylab = "Expression Ratings")
#�e�X�ܬ���boxplot
#�̫�unload package�òM��
# Clean up
detach("package:MASS", unload=TRUE)
detach("package:RColorBrewer", unload=TRUE)
rm(list = ls())


46

5:03

6. Charts for Associations - 3 Creating scatter plots
#������
# R Statistics Essential Training
# Ex06_03
# Creating scatterplots

# Load data
?cars
data(cars)
cars
#�ϥ�data cars
#50�C 2�� speed and distance

# Basic scatterplot
plot(cars)
#Plot�e������

# Modified scatterplot
plot(cars,
     pch = 16, #Pch=16 change the markers to filled circles
     col = "gray", #Color gray
     main = "Speed vs. Stopping Distance for Cars in 1920s\nFrom \"cars\" Dataset", #Main�D���D
     xlab = "Speed (MPH)", #Xlab ylab x y�b���D
     ylab = "Stopping Distance (feet)")
# Linear regression line �e�^�k�u  
abline(lm(cars$dist ~ cars$speed),
 #�e�^�k�uabline lm�N�䬰linear model�ADistance as a function of variable speed
       col = "darkred", #Color:dark red
       lwd = 2)  #Line width lwd=2px
# "locally weighted scatterplot smoothing"�U�@���O locally weighed line
lines(lowess (cars$speed, cars$dist), 
      col = "blue", 
      lwd = 2)  

# "car" package ("Companion to Applied Regression")�w�ˮM��car for�^�k
# Has many variations on scatterplots
install.packages("car")
help(package = "car")
require(car)
# "scatterplot" has marginal boxplots, smoothers, and quantile regression intervals
#�ӵescatterplot ������CI �٦�����boxplot
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
gsd row�u��1:5 column����

�ebox plot nfl as a function of region
Region x�b
nfl y�b
�{�b�ڥu�n��region=midwest��data
16�� x�bregion y�bnfl
17�� color�ϥ�set2�̭���4���C��
Box width=0.5 a little thinner
Whisklty=1 solid line
Staplelty�Obox�W�U��ݪ�line�]��0
Outpch outlier���ϼШϥ�16 filled circle
outcol outlier color�ϥ�set�̪�4��
Main title x y�btitle

49

3:56

7. Statistics for Associations - 1 Calculating correlation
#07 01 048�p��^�k�����Y��
# Load data
data(swiss)
swiss
#�ϥΤ���swiss �ƾ�
#Data(Swiss)��6���ܼ� 47�Ӫ���



# COrrelation
#Cor(Swiss)=correlation of Swiss
cor(swiss)
# ew ugly lets round
#�N��|�ˤ��J round �ܤp��2��
round(cor(swiss), 2)

#��r �A���]�˩w��confidence interval
# If want to test a pair of variables at a time
# The following gives r, T-test, CI's etc.
cor.test(swiss$Fertility, swiss$Education)
#cor.test(fertility�ܼơA education�ܼơ^
# again, for a pair of variables
#t=-5.95 df=45 p�ܤp
#���]�˩w�Gcorrelation������0
#CI�b-0.79��-0.46�� ���㤣����0
#Cor=-0.66

# If want probability values
install.packages("Hmisc")
require("Hmisc")
#First need to turn data into a matrix
rcorr(as.matrix(swiss))
# first table is R-values, second is P-values
#�w�˨ø��Jhmisc�M��Ө��omatrix ��p value
#as.matrix�O�Ө�ơA�|��swiss�˦�matrix
#�M��A�Mrcorr ��r
#�X�ӵ��G�Ĥ@�ӬOr
#�ĤG�ӬOprobability value


50

6:14

7. Statistics for Associations - 2 Computing a bivariate regression
#Bivariate regression is a linear regression between two variables
# LOAD DATA
require(��datasets��) # Load the datasets package. 
data(trees) 
#���J�w�]data trees 31obs. 3 variables Girth height volume
# Load data into the workspace. 
trees[1:5, ] # Show the first 5 lines.
#Trees[1:5,] ���Jrow1��5 column����

# GRAPHICAL CHECK
hist(trees$Height) #�����Histogram $height
hist(trees$Girth) #����� Histogram $girth���Iskew
plot(trees$Girth, trees$Height) #������plot(girth,height)
abline(lm(trees$Height ~ trees$Girth))

# BASIC REGRESSION MODEL 
#�ڭ̭n�ӫؽu�ʦ^�k�ùw����
#Lm=linear model
#Height (y�b�^as a function of girth�]x�b�^
#���data=trees����data
#��ireg1�o�Ӫ���
reg1 <- lm(Height ~ Girth, data = trees) 
reg1
#Reg1����ݨ�̭��I�Z62.031�A1.054

# Save the model. 
summary(reg1) 
# Get regression output. Call:lm(formula = Height ~ Girth, data = trees)
#��summary�d�ݲӸ`�o�{
#P=0.00276�p��0.05
#�Ggirth����Pheigh���� significant �i�H�Ψӹw��height
#R squared=0.2697
#P value=0.002758(0.00276)


# Confidence intervals for coefficients
confint(reg1)
#�p��confidence interval
#Confint(reg1)�p��confidence interval �X�Ӫ����G��0�ܻ�


# Predict values based on regression equation
predict(reg1)  # Predicted height based on girth
#Predict(reg1)
#�Hgirth�ӱ���height
predict(reg1, interval = "prediction")  # CI for predicted height

#interval=prediction
#�X�{fit lwr upr�T��
#�N��N�O��girth=8�� fit��hight��73.62937
#95%�H��϶��̧C�i��62.02569
#�̰��i��85.23305

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

#07 03 050��p�˥�t�˩w
#Comparing means with t test
#2 sample t test

# Comparing means with the t-test

# Load data
?sleep
sleep[1:5, ]
#���Jsleep�w�]��ƶ�
#Sleep[1:5,]���row1-5 column����
#�i�H�o�{�� extra group ID �T���ܼ�
#Extra�O���h�δX�p�� group���ĴX��
sd <- sleep[, 1:2]  # Save just the first two variables
sd[1:5, ]  # Show the first 5 cases
#sd�x�ssleep[,1:2] row���� column�u��extra �Mgroup �o����
#����sd��20observation��2��variable


# Some quick plots to check data
hist(sd$extra, col = "lightgray")
boxplot(extra ~ group, data = sd)
#�Hsd �e��histogram�����
#�Hsd �e�ӥH�էO����extra��boxplot
#�i�H�o�{�ĤG�պαo����h extra����j

# Independent 2-group t-test (with defaults)
#H0:mean = 0
#H1: mean not==0
t.test(extra ~ group, data = sd)
#�Hextra by group1, group2�i���˥�t�˩w
#P value=0.07939��j
#H0 mean�ۮt=0 H1 mean�ۮt!=0
#95%CI for difference in mean
#-3.365��0.205
#Mean in group1=0.75 mean in group2 =2.33



# t-test with options
#H0:   group scores are equal
#H1: one of the groups is less
t.test(extra ~ group, # Same: Specifies variables.
 data = sd, # Same: Specifies data set.
 alternative = "less", # One-tailed test.
 conf.level = 0.80) # 80% CI (vs. 95%)
#t.test�ۭqt�˩w
#Extra breaking down and predicted by group
#Data=sd
#I want to know whether 1 group is less than the other
#Alternative=less, one tailed t test
#Confidence level=0.80
#�X�ӵ��G�At�� df�Ȥ���
#P value=0.0397 ��significant �t�O
#80%CI�� �q�L���j�}�l �]���Oone tail
	   
	   
	   
# Create two groups of random data in separate variables
# Good because actual difference is known
x <- rnorm(30, mean = 20, sd = 5)
y <- rnorm(30, mean = 22, sd = 5)
t.test(x, y)
#�t�@�ӽd�Ҩ�˥�t�˩w
#rnorm ���Xrandom normal �H�����ͱ`�A���t�s�ix
#X: 30 samples mean=20 sd =5
#rnorm ���Xrandom normal �s�iy
#Y: 30 samples mean=22 sd =5
#t.test(x,y)��o����H�����ͪ����G�Ӱ�t�˩w
#�`�N �C������ x y random normal���|����
#�����|���ɦ�significant difference ���ɨS��

#CLEAN UP 
detach("package:datasets", unload = TRUE) # Unloads data sets
package.
rm(list = ls()) # Remove all objects from workspace.

52

6:36

7. Statistics for Associations - 4 Comparing paired means Paired t test
#paired mean paired t test
#�p�˥��e��t����� ��CODE
#t�˩w�ˬd1 group, before and after


# CREATE SIMULATED DATA
t1 <- rnorm(50, mean = 52, sd = 6) # Time 1
dif <- rnorm(50, mean = 6, sd = 12) # Difference
t2 <- t1 + dif # Time 2

#rnorm ���Xrandom normal �H�����ͱ`�A���t�s�it1
#t1��50��sample mean=52 sd=6
#�H�����ͱ`�A���t�s�i�ut1-t2��̬ۮt�v����dif
#dif ��50��sample mean=6 sd=12
#t2=t1+dif
#�ehistogram��t1�o�{�G�M�O����
#t2���Iskew
#Boxplot�o�{t2�]���[�W�F�зǮt�j��dif
#�ҥHbox��t1��

#Create parallel coordinate plot
#19��Q��data.frame��ƨ�combine t1 t2 �æs�Jpairs
#�ˬdpairs�o�{row�O50�C column �Ot1 t2����ܼ�

#Create parallel coordinate plot�n�����J�M��mass
#parcoord =parallel coordinate plot
#�ƭȨϥ�pairs
#Var label=true �|�C�Xmax min
#�ڭ̨Ӭݳo�s������t1 t2���u�~���~
#���׬O�Z����


# PAIRED T-TEST WITH DEFAULTS
t.test(t2, t1, paired = TRUE) # Must specify "paired"

#�Ӱ�paired t test
#t.test���
#t2,t1 �]���Opaired t test�ҥHpaired=true

# PAIRED T-TEST WITH OPTIONS
t.test(t2, t1,
 paired = TRUE,
 mu = 6, # Specify a non-0 null value.
 alternative = "greater", # One-tailed test
 conf.level = 0.99) # 99% CI (vs. 95%)

#���������t�˩w
#Mu = population mean=6
#�N��O���]�˩w�DH0=0���difference �O�_����0 �ӬOH0=���difference �O�_����6
#Alternative=greater����˩w
#99%CI
#���׬Op��j ���ڵ�H0=���difference����6
#Not significant different from 6 
 
# CLEAN UP
rm(list = ls()) # Remove all objects from the workspace.
 
 
 
 
 
 
53

8:28

7. Statistics for Associations - 5 Comparing means with a one factor analysis of variance ANOVA 

#One way, one factor ANOVA ��CODE
#Comparing means with ANOVA

#�H�����ͥ|�ձ`�A���tx1-x4
#30�Ӽ˥� mean���O��40 41 45 45 sd���O8
#�w���p��i�H�o�{�o��p=.025 significant different
# CREATE SIMULATION DATA
# Step 1: Each group in a separate variable.
x1 <- rnorm(30, mean = 40, sd = 8) # Group 1, mean = 40
x2 <- rnorm(30, mean = 41, sd = 8) # Group 1, mean = 41
x3 <- rnorm(30, mean = 44, sd = 8) # Group 1, mean = 44
x4 <- rnorm(30, mean = 45, sd = 8) # Group 1, mean = 45

#�{�b��o�|��data�զX��data.frame�禡�Mcbind�禡�]column #bind�禡�^�զX�b�@�_�æs��xdf
#��summary�[��xdf(x data frame)���έp���
#����row30�Ӽ� column 4��
# Step 2: Combine vectors into a single data frame.
xdf <- data.frame(cbind(x1, x2, x3, x4)) # xdf = "x data frame"

#�{�b��stack�N�|���ܼư��|���@��� �@��group
#�æs��xs
#����xs��120�Ӽ� �����ܼ� values ind �@��values�O120�Ӽ� �@��ind(independent variable)�Ox1��x4
# Step 3: Stack data to get the outcome column and group column.
xs <- stack(xdf) # xs = "x stack"

# ONE-FACTOR ANOVA
#�A��conduct one way ANOVA
#�ϥ�aov=analysis of variance�禡
#values (���檺�ơ^as a function of ind�]�k�檺group)
#Data�ϥ�xs
#�s�i����anova1
anova1 <- aov(values ~ ind, data = xs) # Basic model.
summary(anova1) # Model summary.
#����anova1�|���SSR��ANOVA���G
#��summary(anova1)�|��ܰ��]�˩w���G
#P value=0.001�ܤp ��significant different
#(���G�|�C�����椣�P�]��rnorm�C�������ͤ��P�F��^


#���Ҧܤ��u���Dsignificant different
#�n���D�ָ�֯S�Odifferent
#�N�n�ΥH�U��k
#Post hoc=after fact comparison
#TukeyHSD(anova1)
#Examine ���� significant different
#�X�ӵ��G �C�ճ��|�����
#Lwr upr�OCI
#P adj=p value
#P value�p���N�O significant different���B

# POST-HOC COMPARISONS
TukeyHSD(anova1)

#��27.28��O��L�ˬd��k

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
#Vector n5=concatinate �]repeat 100 5���^
#n5=[100,100,100,100,100]�`��
n5 <- c(rep(100, 5))

#Another vector:number of success
#X5=concat[65,60,60,50,45]���\�ƶq
# Another specifies the number of people who are in category
# Same as "number of successes"
x5 <- c(65, 60, 60, 50, 45)
prop.test(x5, n5)
#Proportion test(x5/n5)
#Chi square=10.9578
#Estimates=[0.65,0.60,0.60,0.50,0.45]
#P=0.02704<0.05
#��� Group��������ۮt�� not uniform distributed



# If there are only two groups, then it gives a confidence
# interval for the difference between the groups; 
# the default CI is .95
# CREATE SIMULATION DATA FOR 2 GROUPS
n2 <- c(40, 40)  # Number of trials
x2 <- c(30, 20)  # Number of successes
prop.test(x2, n2, conf.level = .95)

#�Y�u�����group
#Proportion test �|��CI(95%)
#n2=[40,40] number of trial
#x2=[30,20] number of success
#prop.test(x2/n2) CI=0.80(80%)
#Chi square =4.32
#p=0.03767<0.05�էO������ۮt��
#CI of difference 9%~41%
#0.75-0.50=25% difference


# CLEAN UP
rm(list = ls()) # Remove all objects from the workspace.

55

5:11

7. Statistics for Associations - 7 Creating cross tabs for categorical variables

#07 07 054 ��
#Creating crosstabs for categorial variables
#���p�Gif you have 2 categorial variables ��ӥH�W���W�ߤ����ܼ�
#�Ѫk�GChi squared test of independence
#Or chi square cross tabs

# chi test Creating crosstabs for categorical variables

# Load data
?Titanic
str(Titanic) #Structure of default dataset:titanic
Titanic
ftable(Titanic)  # Makes "flat" table

#�নflat table ����n��
#�j���O�����|�� ���Q�k�k ���H�p�� ���s����




# Convert table to data frame with one row per observation
tdf <- as.data.frame(lapply(as.data.frame.table(Titanic), function(x)rep(x, as.data.frame.table(Titanic)$Freq)))[, -5]
tdf[1:5, ]  # Check first five rows of data
#Tdf ���ഫ�᪺titanic table
#�O�N�ؼ��ഫ���u�C�@�ӤH�v�O�k�O�k �O�_���p�� �O�_�s�� ��table
#Tdf[1:5,] �u���e5�C���ˬd�ݬ� column����


# Create contingency table
ttab <- table(tdf$Class, tdf$Survived)
ttab
#Create contingency table
#ttab =�ϥ�table function�զX����ܼ�class �M survived
#�X�Ӫ����G�Orow�� 1st 2nd 3rd crew
#Column��no���s����yes�s��


#���U�ӭn�ন�ʤ���
#Cell percentage , row percentage , column percentage �u����p�ƲĤG��
#���H100�O�ন�ʤ���
#Prop.table(ttab,1)�N�䬰row percent
#Round �W�z�A2 �N��O�W�z�u����p�ƲĤG��
#*100���ন�ʤ���
#�o�N�Orow percent
# Call also get cell, row, and column %
# With rounding to get just 2 decimal places
# Multiplied by 100 to make %
round(prop.table(ttab, 1), 2) * 100 # row %
round(prop.table(ttab, 2), 2) * 100 # column %
round(prop.table(ttab), 2) * 100    # cell %
#Prop.table(ttab,2)�N�䬰column percent
#Prop.table(ttab)�N�䬰�H�����[�`��cell percent

#�Ӱ�chi square test�s�itchi
#�o�{p���p ��ܳo�O�D�`significant different
#�@�}�l�ݼƦr�]���D 1st class���s���v��۸���
# Chi-squared test
tchi <- chisq.test(ttab)
tchi

#��30�欰�d��tchi�o��chi squared test���U�زӸ`
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

7. Statistics for Associations - 8 Computing robust statistics for bivariate associations ��code

#07 08 055 ����
#�B�z��g������ quantile regression
#�p��robust statistics ( center, Spread) for bivariate associations (curve #associations, symmetries)

# Computing robust statistics for bivariate associations

#�w�˥H�Upackages
#�w�� quantreg =quantile regression
#�ϥιw�]dataset engel


# Robust regression: A sampling of packages
help(package = "robust")
help(package = "robustbase")
help(package = "MASS")  # See rlm ("robust linear model")
help(package = "quantreg")  # Quantile regression

#Attach data���� variable�N�i�H�����g ���[$�r��
#19�� create empty data frame
#Variable $income $foodexp
#Point��ơG�e���I
#Pch�O���I���˦�
#��far outliers

#5% 10%~95% �� quantile of the data �s�i taus

#Calculate vertical height of the quantile
#Sequence(income�̤p�ȡAincome�̤j��, divides by 100)����x values
#yy calculate each value of y of regression lines
#�ϴN�e�X5% 10%~95% �� quantile regression�u
#abline�h�O�ǲΦ^�k�u �]��lm linear model�`����
#rq �Omedian regression %50�B��regression ����outlier�v�T���p

#Legend �Ϩ�
#3000=income 1000=foodexp food expenses
#�̫�detach dataset





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

#���Jdata, header=true�����Y �@6���ܼ� 30�Ӽ�
#�u���J�e5row �ݬ�

#Prop.test(home win/all wins)
#�X�{30��proportion
#P value�ܤj ��ܲէO���S�t��

#�ĤG�������F�n�󦳮t���A�{�b�u����̤j��59%�M�̤p��43%

#P=0.0524
#�٬O�S��ۮt��


59

3:44

8. Charts for Three or More Variables - 1 Creating clustered bar charts for means

# Creating clustered bar chart for frequencies


#08 01 058 ���b�B�zdata
#�T�ժ���� �h���ܼƪ����
#Clustered bar chart for frequencies
#Multi variables chart
#�ϥ�dataset warpbreaks
# Load data
# Built-in dataset "warpbreaks"
?warpbreaks
# Doesn't work:


barplot(breaks ~ wool*tension, data = warpbreaks)
# RESTRUCTURE DATA �U���O��data�B�z��2x3���x�}

data <- tapply(warpbreaks$breaks,
               list(warpbreaks$wool,
                    warpbreaks$tension),
               mean)

#Besides=true
#We want the factors to be grouped
#Col=color
#bor =border =NA turn off border
#Legend�Ϩ�
#Locator=1 �ڭ̥i�H�b�ϤW���@�B�ƹ��I�@�U�ө�o�ӹϨ�
#Rowname��data�̪� A B
#Fill=��J�C��			   
			   
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
#08 02 059 �h���ܼƴ�����
#Scatterplot for grouped data
#���d�Ҭ� One categorial variable, two quantitative variables
#1�����A2�ƶq


# Load data
?iris
data(iris)
iris[1:5, ]
#�ϥιw�]data iris
#�u��row1��5�Ӭݬ�
#150 Observations 5 variables


# Load "car" package
require(car)  # "Companion to Applied Regression" �w��car�M��

# Single scatterplot with groups marked
# Function can be called "scatterplot" or "sp"
#�禡sp�N�Oscatterplot���N
#Width as a function of length broken down by species
#�X�{�T�մ��G��
sp(Sepal.Width ~ Sepal.Length | Species,
   data = iris, 
   xlab = "Sepal Width", 
   ylab = "Sepal Length", 
   main = "Iris Data", 
   labels = row.names(iris))


61

6:11

8. Charts for Three or More Variables - 3 Creating scatter plot matrices
#08 03 060 �����ϯx�}����
#Scatterplot matrixes
# Creating scatterplot matrices

# Load data
?iris
data(iris)
iris[1:5, ]

# Basic scatterplot matrix
#�򥻪� scatterplot matrix
#Pairs �禡
#�u��iris only �e�|��variables
pairs(iris[1:4])

# Modified scatterplot matrices

# Create palette with RColorBrewer
require("RColorBrewer")
display.brewer.pal(3, "Pastel1")
#Modified scatterplot matrix
#�ϥ�Rcolorbrewer�M��
#Use 3 colors from pastel1
#�]�禡���Wdisplay Rcolorbrewer palette)

#�U���A�Τ@��pair
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

#08 04 061 3d scatterplot 3d������
#Multiple quantitative variables �h�Ӽƶq�ܼ�
# Creating 3-D scatterplots

# Load data
?iris
data(iris)
iris[1:5, ]

#���Jdata iris
#�w�ˮM�� scatterplot 3D
# Static 3D scatterplot
# Install and load the "scatterplot3d" package
install.packages("scatterplot3d")
require("scatterplot3d")



# Basic static 3D scatterplot
#�e3d scatterplot�ϥ�iris�e�T��variable
scatterplot3d(iris[1:3])


#���U�ӬOmodified 3D scatterplot
#���C�� vertical lines ��^�k����
#S3d object �x�s��T �X�{vertical line
#Pch=16 ��߶��
#��26��
#�Q��s3d�ӵeplane
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


#spinning 3D plot �n�b��lR���i�� R studio�i��|��
#�i�H���ʨ��[��o�ͤ����
#Require=load package rgl�M r color brewer
#�]��r studio�γo�ӷ|�� �ҥH�έ�l��R�Ӷ}
#Plot3d�禡 ���Jxyz variables �i��3D display
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
#08 06 063 challenge ���ɮ�
#Scatterplot matrix �����ϯx�}
# Creating Scatterplot Matrices

# Load data
gsd <- read.csv("~/Desktop/R/SearchData.csv", header = TRUE)
gsd[1:5, ]
#�ϥ�searchdata.csv
#5 variables: nba nfl fifa degree age
#Graph using pairs
#�Q��car package�ӵe scatterplot matrix
#���J�ɮצs��gsd (google searched data)
#Header=true �����Y
#51obsevations 10 variables
#gsd[1:5,]�C�X�e��row�Ӭݬ�

#�Ĥ@�B�A�b�﨤�e�����
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

#�ĤG�B�Q��pairs�禡�e�����ϯx�}
#�ϥ�gsd�ܼ�2 3 4��8 9 ��
#Pch=16 make dots ��� solid
#28��e �e�X�����ϯx�}

pairs(gsd[c(2:4, 8:9)], 
      panel = panel.smooth,  # Optional smoother
      main = "Scatterplot Matrix for Google Search Data Using pairs Function",
      diag.panel = panel.hist, 
      pch = 16, 
      col = "lightgray")

	  
#�ĤT�B �]�O�e���G�ϯx�}
#31�� load car�o��library
#Load rcolorbrewer
# Scatterplot matrix using "cars"
library(car)
require(RColorBrewer)

#Car�̭���Scatterplotmatrix �禡
#�ϥ�nba nfl fifa degree age �o�����ܼ�
#Data�ϥ�gsd
#Color �ϥ�3���C�� from set 2
scatterplotMatrix(~ nba + nfl + fifa + degree + age,
                  data = gsd,
                  col = brewer.pal(3, "Set2"),
                  main="Scatterplot Matrix for Google Search Data Using \"car\" Package")

65

9:27

9. Statistics for Three or More Variables - 1 Computing a multiple regression
#09 01 064
#Multiple regression ��b����

# Computing a multiple regression

# Load data
?USJudgeRatings
data(USJudgeRatings)
USJudgeRatings[1:5, ]
#���J�w�]��ƶ�us judge ratings
#43obs 12 variables
#���X�e5 row �Ӭݬ�

# Basic multiple regression
#Reg1���� �x�slm=linear regression model
#RTEN as a function of �H�U�X���ܼ�
#�d��reg1 coefficient
#reg1 = lm[12]
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + 
             DECI + PREP + FAMI + ORAL + WRIT + PHYS,
           data = USJudgeRatings)
reg1  # Gives the coefficients only
#�d�ݧ�hinformation
#�ϥ� summary
summary(reg1)  # Much more

#�ϥ�anova�����d�ݧ�h��T
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
#09 02 065 ANOVA ��Ӥ����ܼ� 1�Ӽƶq�ܼ� ��code
#Comparing means with 2 step ANOVA (2 way ANOVA)
#2 categorial variables (predictors) and 1 quantitative outcome

# LOAD DATA
require("datasets") # Load the datasets package.
data(warpbreaks)
#���J�w�]��ƶ� warpbreaks
#54 observations 3 variables

#2 predictors:Type of wool: A or B
#Level of tension: low L medium M high H
#1 quantitative outcome: break

#Boxplot break as a function of wool and tension
#2x3=6�� box:AL BL AM BM AH BH

#aov:analysis of variance
#breaks=outcome variable
# ANOVA: METHOD 1
aov1 <- aov(breaks ~ wool + tension + wool:tension,
data = warpbreaks)
summary(aov1) # ANOVA table
#As a function of wool, tension, wool:tension(:��ܥ椬�@��interaction)
#�H�W���T��factor:wool, tension, wool:tension
#Summary �d�ݸԲӲέp���
#Sum of square, mean square,
#Tension��p value ���p��0.05 ����ۼv�T
#Wool:tension p value�]�ܤp ��interaction
#��19��
#�p��aov1 means��

#Post hoc test
#TukeyHSD �d�ݽ֦���ۼv�T
#BL is significant different from AL �]��p value�ܤp
#AL �]wool A low tension�ա^���Ҧ�p value���ܤp �G AL #��Ҧ��H������ۮt��

# ANOVA: METHOD 2
aov2 <- aov(breaks ~ wool*tension,
data = warpbreaks)
 
# CLEAN UP
detach("package:datasets", unload = TRUE) # Unloads the datasets package.
rm(list = ls()) # Remove all objects from workspace.
 
 

67

14:15

9. Statistics for Three or More Variables - 3 Conducting a cluster analysis
#09 03 066 ����
#Cluster analysis �ۦP�ʽ�̲զ��@�դ��𪬹�
# Conducting a cluster analysis

# Load data
?mtcars
data(mtcars)
mtcars[1:5, ]
mtcars1 <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables
mtcars1[1:5, ]
#���J�w�]���mtcar 32obs 11 variables
#���X�e5 row�Ӭݬ�
#���X1234 67 9 10 11 �o��9���ܼƦs��mtcar1
#���Xmtcar1 �e5 row �Ӭݬ�

# Three major kinds of clustering:
#   1. Split into set number of clusters (e.g., kmeans)
#   2. Hierarchical: Start separate and combine
#   3. Dividing: Start with a single group and split

#���T��cluster analysis
#Kmeans
#hierarchical �����}�A�զb�@�_
#Dividing
#���ҨϥΪ��O2 hierarchical


# We'll use hierarchical clustering
# Need distance matrix (dissimilarity matrix)
#�禡Dist=dissimilarity/ distance
d <- dist(mtcars1)
d  # Huge matrix

#Distance matrix
#hclust=hierarchical cluster analysis
#�s�ic ����
# Use distance matrix for clustering
c <- hclust(d)
c

# Plot dendrogram of clusters
plot(c)
#Plot dendogram
#plot(c)
#�X�{���ۦ���@�_���𪬹�


# Put observations in groups
# Need to specify either k = groups or h = height
g3 <- cutree(c, k = 3)  # "g3" = "groups 3"
#Cutree = cluster tree
#Group 3��
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
#c=c����
#K=2 �X�{�Ǧ⪺�u ��쥻���𪬹Ϥ���2�j��
#K=3 ��쥻���𪬹Ϥ���3�j��
#K=4 ��쥻���𪬹Ϥ���4�j��
#K=5 ��쥻���𪬹Ϥ���5�j��

# k-means clustering
km <- kmeans(mtcars1, 3)
km
#K means clustering
#�禡kmeans �ϥθ��mtcar1 ����3��
#Split into 3 clusters
#�s�ikm����ìd�ݸ��

#Require cluster �M��
#�ekm��cluster plot �X�{�j���
#Shade�h�O�γ��v�񺡤j���
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
#09 04 067 ����
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
#���J�w�]���mtcar 32obs 11 variables
#���X�e5 row�Ӭݬ�
#���X1234 67 9 10 11 �o��9���ܼƦs��mtcar1
#���Xmtcar1 �e5 row �Ӭݬ�


# Principle components model using default method
# If using entire data frame:
pc <- prcomp(mtcars1,
             center = TRUE,  # Centers means to 0 (optional)
             scale = TRUE)  # Sets unit variance (helpful)
#pc= principle component ����
#prcomp �禡
#�ϥθ��data frame mtcars1			 
			 
			 
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

#��52��
#1factor
#2factor
#3factor
#4factor




69

0:40

9. Statistics for Three or More Variables - 5 Challenge Creating a cluster analysis


70

4:29

9. Statistics for Three or More Variables - 6 Solution Creating a cluster analysis ���ɮ�

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
#Ū�icsv �����Yheader �iscd����
#Scd: 51 observations 13 variables
#Rownames�禡 ���scd�Ĥ@��column
#scd[,1]����null �N�䬰remove the first column
#����scd��51obs 12 variables



# We'll use hierarchical clustering
#�Ӱ�hierarchical cluster analysis
#Dist�禡=distance matrix
#hclust�禡=hierarchical cluster analysis
#�X�{�𪬹�
d <- dist(scd)  # Distance matrix
c <- hclust(d)  # Get clusters
plot(c)  # Dendrogram

# Draw boxes around clusters
rect.hclust(c, k = 2, border = "gray")
rect.hclust(c, k = 3, border = "blue")
rect.hclust(c, k = 4, border = "green4")
rect.hclust(c, k = 5, border = "darkred")
#�b�𪬹ϤW�e����box
#K=2 = 2 major clusters=2 boxes
#K=3 = 3 major clusters=3 boxes
#K=4 = 4 major clusters=4 boxes
#K=5 = 5 major clusters=5 boxes


71

3:41

10. Conclusion - 1 Next steps


��r���O��

R ex 01-07 ���J�~��csv �M txt
Read.table���Jexcel
Read.csv ���Jcsv
header=true��� data�����Y

1-07
(Data$admin)
Show the variable admin

Margin.table(data,1)
Show the first variable

Round (data, 2)
�|�ˤ��J�p�ƨ��

1-08
Bar plot (x, col) ���B��col��color
Color()102 �Ʀr�O���C�⸹�X

1-09
Pastel2
Set3 �i�R���t��

02-01 16 bar chart
Descending �̧ǱƦC�h�[�Jorder=true
Set margin:�W�U���k

2-03
Histogram �O time series

Xlab x label
Lwd line width 2px
dnorm=density normal
Add=true add to existing diagram

2-04 box plot
�H rten ���ܼƵe����
Median �j���O����8

2-05 overlaying plots
Dataset Swiss
Take only fertility data
Xlim= x limit
Ylim = y limit
Add=true
Density normal distribution
Lwd = line width =3 px

2-06
²���k�G���ϤW�誺export
���J�w�s�b��dataset chickwts �䤤���ܼ� feed
Dev off ���[�I �D�`���n
�]�i�s��pdf

2-08
�|�[�T�ӹϪ��d��
Pl���� =�w�s�b��dataset iris �̭����ܼ� petal.length
Pl= numeric[150]
Border=0 remove border from the chart
Main=���D
Line+density means kernel density line
Object=pl
Lwd =line width=2px
�ĤT���|�[ rug (line plot) �W�h
03 01 24
Rep blue 3990
���� blue �o��data 3990��
Groups =character[14645]�̭���14645��data
����groups.t1 =table[5]
Create frequency table
Sort table �æs�쪫��groups.t2
Groups.t2=array[5]
Prop �p��U�ۤ��
�|�ˤ��J�ܤp���I2��
���H100�h���ʤ���

03 02 25
�ϥΤ��ت�dataset cars
Str(cats) structure of dataset cars
Summary ��X�|����� ����Ƶ�
�Ĥ@�� �u��speed variable
�ĤG�� ��speed, dist ���variable
Boxplot.stats
$stats= tukey 5 variables(����|����ơ^
$n= data�Ӽ�
$conf =confidence level
$out=outliers

Install package psych
Describe���ԭz�ʲέp
Trimmed= trimmed mean
Mad= ����t�����Median absolute deviation
Se =standard error

03 03 26 single proportion
���]�˩w �PCI proportional test
98 wins out of 162 games
Is it significant>0.5�H
Greater than=> one tail
Prop.test(98,162)
Chi square=6.7222 degree of freedom=1
P value= 0.009522
Result:Significant >0.5


03 04 27 single mean
���]�˩w �PCI
�ϥΤ���dataset quakes
Quake[1:5, ]�����XX�b�e5��data, �d�ťժ�� all variable
�u�ϥ�$mag�o��variable
�s��mag=numeric[1000]
��@�˥�t�˩w
���]�˩w�w�]mean��0

t.test(mag)���G
t value=362.7599 �i���i�t
Degree of freedom=999 �]����1000��sample
Pvalue <2.2e-16
True mean������0
CI 4.59-4.64
Mean of x=4.62
�Gsignificant

One sided t test
Population mean=4=mu
Is the mean significantly greater than 4?
t=48.7���W�@�Ӥp

03 05 28
�p�Gdata �� categorial variable
�h�ϥ�chi square
���Ҭ� one sample chi square test
Goodness of fit test
�ϥ�dataset hair eye color
�Nchi square chisq�����G�s�ܪ���chi1
�A�Ӭݵ��G
X squared=133.473 ��j
Df=3 �]���u��4�Ӳ����C�⪺category
P value���p
Significantly different


P=c(.41,.32,.15,.12)
Vector storing proportion
Compare to (.25,.25,.25,.25) chi square
����chi2
X square �ܤp�F 6.4717
Df=3�]����4��sample
P value�ܤj�F 0.09>0.05
�S��significantly different H0���Q��½

03 06 29
Robust statistics
Examine Outliers and non normality
data does not fit
�ϥιw�]dataset state.area
�ǥ��[��histogram and boxplot
�i�o�{�����㪺outlier
Summary area �ݱԭz�ʲέp
Mean 72370��median 56222�ܻ�
Not robust
���U�ӭp�� trimmed mean �⥪�k%5�]�toutlier���h��
Trimmed mean=59957.22
�Y�h�����k�U10%
Trimmed mean=57524��median�S���F
�Y�h�����k�U50��mean��ܳo�O�����
�p�� standard deviation �o�{�зǮt�ܤj ���ܤj��outlier�ɥi�H���mad=median absolute deviation

03 08 challenge 031 ���n ���S�w���
Require package psych ���A�n����T
c(1,4,7) ���X�ڭn���ܼ�
c(3,4,11,12) �u��mean sd skew kurtosis
04 01 032 �ˬd outliers
�Ĥ@�����OCategorial data��outliers
���Jcsv��OS
View(OS) ���}�Ӭݬݳo�Ӫ��
Outlier��ܥe���<10%���F��
���d�Ҥ�
Windows phone 0.032 blackberry 0.029��others ���p��10%
�i�H�R���γ����others�̭�
�ڭ̨ϥ�function subset�u��OS�̤j��proportion 0.1 ����Ʀs�쪫��OS.hi��
OS.hi�ѤUandroid �MiOS

�ĤG�����O quantitative data
See outlier in boxplot
�ϥιw�]dataset river
�Q��boxplot.stats �i�H�o�{�W�h outliers
�{�b�n��outliers �h��
�u��<1210����
�s��rivers.low
�o�{�˥��Ƨ��ܫᤴ��outliers
�ҥH�A�դ@���u��<1055���Ȧs��rivers.low2
����Loutlier����

04 02 033 �ܼ��ഫ
Transforming variables
Require datasets
�ϥιw�]��data islands
��histogram�Mboxplot �ˬd�o�{�Ƴ����b�U�� �O�D�`skew��data
�ϥ�z score scale function�N�ƭ��ഫ��mean=0 standard deviation=1
�æs��island.z����
�ˬdmean(island.z)����0
sd(island.z)����1
�ϥ� as.numeric �Nisland.z ��matrix�ରnumeric���ɿ򥢱��쥻����a��T �ѤU�Ʀr
�p�Goutlier����j���L�H�ܦh �i�H�ι���ഫ
Log(island)�s�iislands.ln
�i�H�Φ۵M��Ʃ�log10 log2
����ഫ��ݪ���ϵo�{�ƭ��ܾa��ܦh
�p�GX��0 �y������ƿ��~�h����X+1

Squaring ������
Ranking
Dichotomising �����j�M�p�ⳡ��
If islands>1000 assign 1 to continent
Else assign 0 to continent

04 03 034
Composite variables
rnorm(1000000) �@�ʸU��random normal variables �s�irn1
rn2�]�O
Min��-5 max��+5 ����normal distribution
Rn.mean��rn1+rn2������
Random normal mean

rn.prod����̬ۭ�
Min��-13.34 max��12.45

Kurtosis
�w��moments package ��psych
Kurtosi(rn1)�Mkurtosi(rn2)���ӳ��ܱ���0
Cauchy=�������u ���ܰ� very skew
���normal dist�ۭ��N�ܹ�Cauchy

04 04 035 missing data ���n
X1�� which is NA ? Index number�Ǧ^4 �]R��index number�q1�}�l�^

na.rm=true
�N��Oremove NA =true �]�j�p�g�����ۦP�A��x1��NA�h���A��mean)

x2<-x1, copy x1 to x2
��0��ix2��NA
x2[is.na(x2)]<-0 �ܭ��n
�o��x2��NA���ܦ�0�F
Option2�g�k�]�ܭ��n
�N��Ox1�̭Y��NA�h��0���NNA
�Y���ONA�hremain x1
�M���i�ܼ�x3

04 06 037
Transform skewed dataset
X�bkeep all rows�ҥH�d�ť�
Y�b�u�ncolumn2�ҥH��J2
x<-xskew[,2]
�e�ϵo�{�y�p�b�k ��negative skew
�o�خɭԴN�O�Υ���ӸѨM
x2=x����
Histogram �o�{�����skew
Box plot�o�{�U��ܦhoutliers

X4=x4����
Histogram �o�{��٦h�F
Box plot�o�{�U��Soutliers�F����bell curve�F
05 01 038 selecting cases �z��S�w����
���n�A�u��@����data
�ϥιw�]dataset mtcars
�u�ϥθ̭���$qsec �ܼ�

�����u��qsec�A�åB�n�ŦX�t�@��cyl=8

��22��
�u��mtcars$hp�̤j�󤤦�ƪ�row�Ө�mean
29��
Cyl.8�x�s���O�G
Row�u��cyl=8
Column����A�G�d�ť�
��32��
Row�u��cyl�浥��8�Bcarb��j�󵥩�4
Column����A�G�d�ť�

05 02 039 analyzing by subgroup
�ϥιw�]dataset iris
�ڭ̵o�{data�̪�species�O�U�ث~��, �u���T�ءA��setosa versicolor,��virginica

14�� aggregate
~�N��Ofunction of
Fun=mean
�N��O�ϥ�function:��������mean
����N��O Mean of petal width for each of the species
���浲�G�N�Osetosa ��petal width������0.246�Fversicolor ��petal width������1.326�Fvirginica ��petal width������2.026

18��cbind =column bind
~�N��Oas the function of
Fun=mean, function��������
�X�Ӫ����G�N�O
Setosa versicolor virginica ��rows
Petal width(V1)�Mpetal length(V2)��columns
�̭���6�ӼƬ�������

05 03 040 ���n �s��Ū�ɿĦX
Merging files �i�H�ۤv�[�J�ܼ�
�ϥΤ���data longley
a1�x�s���O���W�� row��1��14 column1��6 �`�NR�p�ƬO�q1�}�l
a2�x�s���O�k�W�� row��1��14 column6�M7 �`�N6�M�W������ �]���n���ƥL�~���D���merge
b�x�s���O����data row�u����15�M16 column�h�O����
��a1 a2 b���s�itxt�̭�
�M���t�Ϋ�
�AŪ�ia1��a1t Ū�ia2��a2t
a.1.2��merge�o���by variable ��year��
���W���M�k�W���X�� ��merge

���U�өM�����X�� ��rbind (row bind)
Ū�ib�s�iall.data
�ˬdall.data �o�{�X�{�����n��row name
�{�b�n�M��all data��row name
row.names(all.data)<-null



05 05 042

Challenge
Dataset�ϥ�tooth growth
Group�ϥ��ܼ�supp
Compare mean and median of length

Supp�u������� OJ �MVC

Aggregate
$len as a function of $supp, (�H�ܼ�supp�@�����^function=mean
�X�ӵ��G$Len OJ������mean=20.66333
$len VC������mean=16.96333
�U�@��
function=median
�X�ӵ��G$Len OJ������median=22.7
$len VC������median=16.5
06 01 043 �ebox plot�M������
���J�w�]dataset insectsprays�ispray
Data���۬O�@��Ʀrcount�H�κ���groupABCDEF spray
(�ϥ�ABCDEF�ر��ξ�spray�U����count�ƶq���Ρ^

�{�b�n���O�D����ABCDEF��mean
��k���Q��aggregate
�ܼ�Count as a function of �ܼ�spray
Function�Omean
�X�Ӫ����means�N�O�U�Ӻ��������ξ�spray���������h�ְ��Τl

��15��
�s��dataset mean.data
t=transpose ��mxy
Means[-1]
�N�䬰��means���Ĥ@�檺ABCDEF�R�� ���ɬ�����data �A��m������data
�s��mean.data

��16�� column name���ɬOV1��V6
�ѷ�means��� row���� column��Ĥ@��
��V1��V6��^ABCDEF

����mean.data�O�@�Ӥ������x�}�A��index name��ABCDEF
�i�ebar plot

06 02 044
Group boxplots
�n�Ψ�mass package
�O�o�ninstall �M�� load require mass package
�ϥθ̭���painters ���
�̭�����school������ƬOABCDEFGH
Draw boxplot, $expression as a function of $school
���J�C��M��
��23�� �C��
��24�� X �b�W�� �Hname���NABCDEFGH
notch�b��������
�e�X�ܬ���boxplot
�̫�unload package�òM��

06 03 045
Scatter plots
�ϥ�data cars
50�C 2�� speed and distance

Plot�e������
Pch=16 change the markers to filled circles
Color gray
Main�D���D
Xlab ylab x y�b���D

�e�^�k�u
abline
lm�N�䬰linear model
Distance as a function of variable speed
Color:dark red
Line width led=2px

�U�@���O locally weighed line

�w�ˮM��car for�^�k
�ӵescatterplot ������CI �٦�����boxplot

06 05 047
Challenge
gsd =google search data
Load searchdata.csv
gsd row�u��1:5 column����

�ebox plot nfl as a function of region
Region x�b
nfl y�b
�{�b�ڥu�n��region=midwest��data
16�� x�bregion y�bnfl
17�� color�ϥ�set2�̭���4���C��
Box width=0.5 a little thinner
Whisklty=1 solid line
Staplelty�Obox�W�U��ݪ�line�]��0
Outpch outlier���ϼШϥ�16 filled circle
outcol outlier color�ϥ�set�̪�4��
Main title x y�btitle

07 01 048�p��^�k�����Y��

�ϥΤ���swiss �ƾ�
Data(Swiss)��6���ܼ� 47�Ӫ���
Cor(Swiss)=correlation of Swiss
�N��|�ˤ��J round �ܤp��2��

15�� ��r �A���]�˩w��confidence interval
cor.test(fertility�ܼơA education�ܼơ^
t=-5.95 df=45 p�ܤp
���]�˩w�Gcorrelation������0
CI�b-0.79��-0.46�� ���㤣����0
Cor=-0.66
�w�˨ø��Jhmisc�M��Ө��omatrix ��p value
as.matrix�O�Ө�ơA�|��swiss�˦�matrix
�M��A�Mrcorr ��r
�X�ӵ��G�Ĥ@�ӬOr
�ĤG�ӬOprobability value

07 02 049
Bivariate regression
���J�w�]data trees 31obs. 3 variables
Girth height volume
Trees[1:5,] ���Jrow1��5 column����
�����Histogram $height
Histogram $girth���Iskew
������plot(girth,height)
�e�^�k�uabline
Lm=linear model
Height (y�b�^as a function of girth�]x�b�^

�ڭ̭n�ӫؽu�ʦ^�k�ùw����
Lm=linear model
Height (y�b�^as a function of girth�]x�b�^
���data=trees����data
��ireg�o�Ӫ���
Reg1����ݨ�̭��I�Z62.031�A1.054
��summary�d�ݲӸ`�o�{
P=0.00276�p��0.05
�Ggirth����Pheigh���� significant �i�H�Ψӹw��height
R squared=0.2697
P value=0.002758(0.00276)
�p��confidence interval
Confint(reg1)�p��confidence interval �X�Ӫ����G��0�ܻ�
Predict(reg1)
�Hgirth�ӱ���height
��26�� interval=prediction
�X�{fit lwr upr�T��
�N��N�O��girth=8�� fit��hight��73.62937
95%�H��϶��̧C�i��62.02569
�̰��i��85.23305
��29.30��
Linear model influence

07 03 050��p�˥�t�˩w
Comparing means with t test
2 sample t test
���Jsleep�w�]��ƶ�
Sleep[1:5,]���row1-5 column����
�i�H�o�{�� extra group ID �T���ܼ�
Extra�O���h�δX�p�� group���ĴX��
sd�x�ssleep[,1:2] row���� column�u��extra �Mgroup �o����
����sd��20observation��2��variable
�Hsd �e��histogram�����
�Hsd �e�ӥH�էO����extra��boxplot
�i�H�o�{�ĤG�պαo����h extra����j
��16��
�Hextra by group1, group2�i���˥�t�˩w
P value=0.07939��j
H0 mean�ۮt=0 H1 mean�ۮt!=0
95%CI for difference in mean
-3.365��0.205
Mean in group1=0.75 mean in group2 =2.33

19��t.test�ۭqt�˩w
Extra breaking down and predicted by group
Data=sd
I want to know whether 1 group is less than the other
Alternative=less, one tailed t test
Confidence level=0.80
�X�ӵ��G�At�� df�Ȥ���
P value=0.0397 ��significant �t�O
80%CI�� �q�L���j�}�l �]���Oone tail

26�� �t�@�ӽd�Ҩ�˥�t�˩w
rnorm ���Xrandom normal �H�����ͱ`�A���t�s�ix
X: 30 samples mean=20 sd =5
rnorm ���Xrandom normal �s�iy
Y: 30 samples mean=22 sd =5
t.test(x,y)��o����H�����ͪ����G�Ӱ�t�˩w
�`�N �C������ x y random normal���|����
�����|���ɦ�significant difference ���ɨS��

07 04 051
paired mean paired t test
�p�˥��e��t�����
t�˩w�ˬd1 group, before and after

rnorm ���Xrandom normal �H�����ͱ`�A���t�s�it1
t1��50��sample mean=52 sd=6
�H�����ͱ`�A���t�s�i�ut1-t2��̬ۮt�v����dif
dif ��50��sample mean=6 sd=12
t2=t1+dif
�ehistogram��t1�o�{�G�M�O����
t2���Iskew
Boxplot�o�{t2�]���[�W�F�зǮt�j��dif
�ҥHbox��t1��

Create parallel coordinate plot
19��Q��data.frame��ƨ�combine t1 t2 �æs�Jpairs
�ˬdpairs�o�{row�O50�C column �Ot1 t2����ܼ�

Create parallel coordinate plot�n�����J�M��mass
parcoord =parallel coordinate plot
�ƭȨϥ�pairs
Var label=true �|�C�Xmax min
�ڭ̨Ӭݳo�s������t1 t2���u�~���~
���׬O�Z����

24��Ӱ�paired t test
t.test���
t2,t1 �]���Opaired t test�ҥHpaired=true

27�氵�������t�˩w
Mu = population mean=6
�N��O���]�˩w�DH0=0���difference �O�_����0 �ӬOH0=���difference �O�_����6
Alternative=greater����˩w
99%CI
���׬Op��j ���ڵ�H0=���difference����6
Not significant different from 6

07 05 052
One way, one factor ANOVA
Comparing means with ANOVA

�H�����ͥ|�ձ`�A���tx1-x4
30�Ӽ˥� mean���O��40 41 45 45 sd���O8
�w���p��i�H�o�{�o��p=.025 significant different

�{�b��o�|��data�զX��data.frame�禡�Mcbind�禡�]column bind�禡�^�զX�b�@�_�æs��xdf
��summary�[��xdf(x data frame)���έp���
����row30�Ӽ� column 4��

�{�b��stack�N�|���ܼư��|���@��� �@��group
�æs��xs
����xs��120�Ӽ� �����ܼ� values ind �@��values�O120�Ӽ� �@��ind(independent variable)�Ox1��x4

�A��conduct one way ANOVA
�ϥ�aov=analysis of variance�禡
values (���檺�ơ^as a function of ind�]�k�檺group)
Data�ϥ�xs
�s�i����anova1
����anova1�|���SSR��ANOVA���G
��summary(anova1)�|��ܰ��]�˩w���G
P value=0.001�ܤp ��significant different
(���G�|�C�����椣�P�]��rnorm�C�������ͤ��P�F��^

���Ҧܤ��u���Dsignificant different
�n���D�ָ�֯S�Odifferent
�N�n�ΥH�U��k
Post hoc=after fact comparison
TukeyHSD(anova1)
Examine ���� significant different
�X�ӵ��G �C�ճ��|�����
Lwr upr�OCI
P adj=p value
P value�p���N�O significant different���B

��27.28��O��L�ˬd��k

07 06 053
Comparing proportion
Total number of each group=100
Vector n5=concatinate �]repeat 100 5���^
n5=[100,100,100,100,100]�`��
Another vector:number of success
X5=concat[65,60,60,50,45]���\�ƶq
Proportion test(x5/n5)
Chi square=10.9578
Estimates=[0.65,0.60,0.60,0.50,0.45]
P=0.02704<0.05
��� Group��������ۮt�� not uniform distributed

�Y�u�����group
Proportion test �|��CI(95%)
n2=[40,40] number of trial
x2=[30,20] number of success
prop.test(x2/n2) CI=0.80(80%)
Chi square =4.32
p=0.03767<0.05�էO������ۮt��
CI of difference 9%~41%
0.75-0.50=25% difference

07 07 054 ��
Creating crosstabs for categorial variables
���p�Gif you have 2 categorial variables ��ӥH�W���W�ߤ����ܼ�
�Ѫk�GChi squared test of independence
Or chi square cross tabs

Structure of default dataset:titanic
�নflat table ����n��
�j���O�����|�� ���Q�k�k ���H�p�� ���s����
Tdf ���ഫ�᪺titanic table
�O�N�ؼ��ഫ���u�C�@�ӤH�v�O�k�O�k �O�_���p�� �O�_�s�� ��table
Tdf[1:5,] �u���e5�C���ˬd�ݬ� column����

Create contingency table
ttab =�ϥ�table function�զX����ܼ�class �M survived
�X�Ӫ����G�Orow�� 1st 2nd 3rd crew
Column��no���s����yes�s��

���U�ӭn�ন�ʤ���
Cell percentage , row percentage , column percentage �u����p�ƲĤG��
���H100�O�ন�ʤ���
Prop.table(ttab,1)�N�䬰row percent
Round �W�z�A2 �N��O�W�z�u����p�ƲĤG��
*100���ন�ʤ���
�o�N�Orow percent

Prop.table(ttab,2)�N�䬰column percent
Prop.table(ttab)�N�䬰�H�����[�`��cell percent

�Ӱ�chi square test�s�itchi
�o�{p���p ��ܳo�O�D�`significant different
�@�}�l�ݼƦr�]���D 1st class���s���v��۸���

��30�欰�d��tchi�o��chi squared test���U�زӸ`

07 08 055 ����
�B�z��g������ quantile regression
�p��robust statistics ( center, Spread) for bivariate associations (curve associations, symmetries)

�w�˥H�Upackages
�w�� quantreg =quantile regression
�ϥιw�]dataset engel

Attach data���� variable�N�i�H�����g ���[$�r��
#19�� create empty data frame
Variable $income $foodexp
Point��ơG�e���I
Pch�O���I���˦�
��far outliers

5% 10%~95% �� quantile of the data �s�i taus

Calculate vertical height of the quantile
Sequence(income�̤p�ȡAincome�̤j��, divides by 100)����x values
yy calculate each value of y of regression lines
�ϴN�e�X5% 10%~95% �� quantile regression�u
abline�h�O�ǲΦ^�k�u �]��lm linear model�`����
rq �Omedian regression %50�B��regression ����outlier�v�T���p

Legend �Ϩ�
3000=income 1000=foodexp food expenses
�̫�detach dataset

07 10 057 challenge
Compare proportion
Data:mlb2011.csv
Outcome: home win/allwins
Compare all 30 teams at once
Compare just highest and lowest

���Jdata, header=true�����Y �@6���ܼ� 30�Ӽ�
�u���J�e5row �ݬ�

Prop.test(home win/all wins)
�X�{30��proportion
P value�ܤj ��ܲէO���S�t��

�ĤG�������F�n�󦳮t���A�{�b�u����̤j��59%�M�̤p��43%

P=0.0524
�٬O�S��ۮt��

08 01 058 ���b�B�zdata
�T�ժ���� �h���ܼƪ����
Clustered bar chart for frequencies
Multi variables chart
�ϥ�dataset warpbreaks

�U���O��data�B�z��2x3���x�}

Besides=true
We want the factors to be grouped
Col=color
bor =border =NA turn off border
Legend�Ϩ�
Locator=1 �ڭ̥i�H�b�ϤW���@�B�ƹ��I�@�U�ө�o�ӹϨ�
Rowname��data�̪� A B
Fill=��J�C��

08 02 059 �h���ܼƴ�����
Scatterplot for grouped data
���d�Ҭ� One categorial variable, two quantitative variables

�ϥιw�]data iris
�u��row1��5�Ӭݬ�
150 Observations 5 variables
�w��car�M��

�禡sp�N�Oscatterplot���N
Width as a function of length broken down by species
�X�{�T�մ��G��

08 03 060 �����ϯx�}������
Scatterplot matrixes

�򥻪� scatterplot matrix
Pairs �禡
�u��iris only �e�|��variables

Modified scatterplot matrix
�ϥ�Rcolorbrewer�M��
Use 3 colors from pastel1
�]�禡���Wdisplay Rcolorbrewer palette)
�U���A�Τ@��pair
Unclass:color according to the species

08 04 061 3d scatterplot
Multiple quantitative variables
���Jdata iris
�w�ˮM�� scatterplot 3D

�e3d scatterplot�ϥ�iris�e�T��variable

���U�ӬOmodified 3D scatterplot
���C�� vertical lines ��^�k����
S3d object �x�s��T �X�{vertical line
Pch=16 ��߶��
��26��
�Q��s3d�ӵeplane

29�� spinning 3D plot
�i�H���ʨ��[��o�ͤ����
Require=load package rgl�M r color brewer
�]��r studio�γo�ӷ|�� �ҥH�έ�l��R�Ӷ}
Plot3d�禡 ���Jxyz variables �i��3D display
Col=Color
Size=8 px

08 06 063 challenge
Scatterplot matrix �����ϯx�}

�ϥ�searchdata.csv
5 variables: nba nfl fifa degree age
Graph using pairs
�Q��car package�ӵe scatterplot matrix

���J�ɮצs��gsd (google searched data)
Header=true �����Y
51obsevations 10 variables
gsd[1:5,]�C�X�e��row�Ӭݬ�

�Ĥ@�B�A�b�﨤�e�����

�ĤG�B�Q��pairs�禡�e�����ϯx�}
�ϥ�gsd�ܼ�2 3 4��8 9 ��
Pch=16 make dots ��� solid
28��e �e�X�����ϯx�}

�ĤT�B �]�O�e���G�ϯx�}
31�� load car�o��library
Load rcolorbrewer

Car�̭���Scatterplotmatrix �禡
�ϥ�nba nfl fifa degree age �o�����ܼ�
Data�ϥ�gsd
Color �ϥ�3���C�� from set 2

09 01 064
Multiple regression ��b����

���J�w�]��ƶ�us judge ratings
43obs 12 variables
���X�e5 row �Ӭݬ�

Reg1���� �x�slm=linear regression model
RTEN as a function of �H�U�X���ܼ�
�d��reg1 coefficient
reg1 = lm[12]

�d�ݧ�hinformation
�ϥ� summary

�ϥ�anova�����d�ݧ�h��T

42�� retention as a function of 1 (constant)

09 02 065
Comparing means with 2 step ANOVA (2 way ANOVA)
2 categorial variables (predictors) and 1 quantitative outcome

���J�w�]��ƶ� warpbreaks
54 observations 3 variables

2 predictors:Type of wool: A or B
Level of tension: low L medium M high H
1 quantitative outcome: break

Boxplot break as a function of wool and tension
2x3=6�� box:AL BL AM BM AH BH

aov:analysis of variance
breaks=outcome variable
As a function of wool, tension, wool:tension(:��ܥ椬�@��interaction)
�H�W���T��factor:wool, tension, wool:tension
Summary �d�ݸԲӲέp���
Sum of square, mean square,

Tension��p value ���p��0.05 ����ۼv�T
Wool:tension p value�]�ܤp ��interaction

��19��
�p��aov1 means��

Post hoc test
TukeyHSD �d�ݽ֦���ۼv�T
BL is significant different from AL �]��p value�ܤp
AL �]wool A low tension�ա^���Ҧ�p value���ܤp �G AL ��Ҧ��H������ۮt��

09 03 066 ����

Cluster analysis �ۦP�ʽ�̲զ��@��

���J�w�]���mtcar 32obs 11 variables
���X�e5 row�Ӭݬ�
���X1234 67 9 10 11 �o��9���ܼƦs��mtcar1
���Xmtcar1 �e5 row �Ӭݬ�

���T��cluster analysis
Kmeans
hierarchical �����}�A�զb�@�_
Dividing
���ҨϥΪ��O2 hierarchical
�禡Dist=dissimilarity/ distance

Distance matrix
hclust=hierarchical cluster analysis
�s�ic ����

Plot dendogram
plot(c)
�X�{���ۦ���@�_���𪬹�

Cutree = cluster tree
Group 3��
K=3 = how many groups I want

rect.hclust=
Rectangle of hierarchical cluster analysis
c=c����
K=2 �X�{�Ǧ⪺�u ��쥻���𪬹Ϥ���2�j��
K=3 ��쥻���𪬹Ϥ���3�j��

K means clustering
�禡kmeans �ϥθ��mtcar1 ����3��
Split into 3 clusters
�s�ikm����ìd�ݸ��

Require cluster �M��
�ekm��cluster plot �X�{�j���
Shade�h�O�γ��v�񺡤j���


09 04 067 ����
Principle component analysis/factor analysis

���J�w�]���mtcar 32obs 11 variables
���X�e5 row�Ӭݬ�
���X1234 67 9 10 11 �o��9���ܼƦs��mtcar1
���Xmtcar1 �e5 row �Ӭݬ�

pc= principle component ����
prcomp �禡
�ϥθ��data frame mtcars1

��52��
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

Ū�icsv �����Yheader �iscd����
Scd: 51 observations 13 variables
Rownames�禡 ���scd�Ĥ@��column
scd[,1]����null �N�䬰remove the first column
����scd��51obs 12 variables

�Ӱ�hierarchical cluster analysis
Dist�禡=distance matrix
hclust�禡=hierarchical cluster analysis
�X�{�𪬹�

�b�𪬹ϤW�ebox
K=2 = 2 major clusters=2 boxes
K=3 = 3 major clusters=3 boxes
K=5 = 5 major clusters=5 boxes


