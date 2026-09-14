#-------------------------------
#ΕΡΩΤΗΜΑ 1
#-------------------------------

#Δεδομένα 1
d1 <- c(30.3, 31.0, 31.1, 32.1, 32.6, 32.7, 33.4, 33.6, 34.2, 34.5)
head(d1)

#Υπολογισμός μέσης τιμής,τυπικής απόκλισης
#και σύνοψης των 5 αριθμών
fivenum(d1)
m1 <- mean(d1)#Μέση τιμή δεδομένων 1
s1 <- sd(d1)#Τυπική απόκλιση δεδομένων 1

quantiles <- seq(0.25, 0.75, by = 0.25)#Ποσοστημόρια προς έλεγχο

q_values1 <- quantile(d1, quantiles)#Τιμή ποσοστημορίων για τα δεδομένα 1

norm_values1 <- qnorm(quantiles, mean = m1, sd = s1)#Τιμή ποσοστημορίων 
#για την κανονική κατανομή με μέση τιμή m1 και τυπική απόκλιση s1

diff1 <- abs(q_values1 - norm_values1)#Απόλυτη τιμή διαφοράς των τιμών των ποσοστημορίων




#Δεδομένα 2
d2 <- c(0.0, 0.0, 0.2, 0.8, 1.2, 1.4, 3.2, 4.2, 6.4, 9.0)

#Υπολογισμός μέσης τιμής,τυπικής απόκλισης
#και σύνοψης των 5 αριθμών
fivenum(d2)
m2 <- mean(d2)
s2 <- sd(d2)


q_values2 <- quantile(d2, quantiles)

norm_values2 <- qnorm(quantiles, mean = m2, sd = s2)

diff2 <- abs(q_values2 - norm_values2)


#Δεδομένα 3
d3 <- c(0, 1, 6, 8, 10, 13, 15, 16, 17, 17,
        18, 18, 20, 20, 21, 25, 26, 30, 35, 39,
        40, 41, 43, 44, 46, 48, 52, 54, 58, 59,
        59, 60, 66, 81, 86, 87, 88, 89, 94, 96)

#Υπολογισμός μέσης τιμής,τυπικής απόκλισης
#και σύνοψης των 5 αριθμών
fivenum(d3)
m3 <- mean(d3)
s3 <- sd(d3)

hist(d3)
q_values3 <- quantile(d3, quantiles)

norm_values3 <- qnorm(quantiles, mean = m3, sd = s3)

diff_q3 <- abs(q_values2 - norm_values3)



median3 <- median(d3)

norm_q3_median <- qnorm(quantiles, mean = median3, sd = s3)

diff_q3 <- abs(data_q3 - norm_q3_median)


#-------------------------------
#ΕΡΩΤΗΜΑ 2
#-------------------------------
players_data <- read.csv("NBA players stats.csv", sep=",", header=TRUE, check.names=FALSE)
head(players_data)
dim(players_data)
length(readLines("NBA players stats.csv"))

#c
pie(table(players_data$Pos),main="Positions piechart")

hist(players_data$Age,xlab = "player age",main="Histogram of players ages")
hist(players_data$PTS,xlab = "player points",main="Histogram of players points")
hist(players_data$TRB,xlab = "player total rebounds",main="Histogram of players total rebounds")
hist(players_data$AST,xlab = "player assists",main="Histogram of players assists")
hist(players_data$TOV,xlab = "player turnovers",main="Histogram of players turnovers")
hist(players_data$FGpercentage,xlab = "player field goal percentage",main="Histogram of players field goal percentage")
hist(players_data$'2Ppercentage',xlab = "player 2 point shots made percentage",main="Histogram of players 2 point shots made percentage")
hist(players_data$FTpercentage,xlab = "player free throws made percentage",main="Histogram of players free throws made percentage")
hist(players_data$MP,xlab = "player average minutes played",main="Histogram of players average minutes played")
hist(players_data$G,xlab = "player Games played",main="Histogram of players Games played")
hist(players_data$GS,xlab = "player Games started as basic",main="Histogram of players Games started as basic")
hist(players_data$'3Ppercentage',xlab = "player 3 point shots made percentage",main="Histogram of players 3 point shots made percentage")

#d

#Age
fn_Age = fivenum(players_data$Age)
m_Age = mean(players_data$Age)
sd_Age = sd(players_data$Age)

#PTS
fn_PTS = fivenum(players_data$PTS)
m_PTS = mean(players_data$PTS)
sd_PTS = sd(players_data$PTS)

#TRB
fn_TRB = fivenum(players_data$TRB)
m_TRB = mean(players_data$TRB)
sd_TRB = sd(players_data$TRB)

#AST
fn_AST = fivenum(players_data$AST)
m_AST = mean(players_data$AST)
sd_AST = sd(players_data$AST)

#TOV
fn_TOV = fivenum(players_data$TOV)
m_TOV = mean(players_data$TOV)
sd_TOV = sd(players_data$TOV)

#FGpercentage
FGpercentage = na.omit(players_data$FGpercentage)
fn_FGpercentage = fivenum(FGpercentage)
m_FGpercentage = mean(FGpercentage)
sd_FGpercentage = sd(FGpercentage)

#2Ppercentage
percentage2P = na.omit(players_data$'2Ppercentage')
fn_2Ppercentage = fivenum(percentage2P)
m_2Ppercentage = mean(percentage2P)
sd_2Ppercentage = sd(percentage2P)

#MP
fn_MP = fivenum(players_data$MP)
m_MP = mean(players_data$MP)
sd_MP = sd(players_data$MP)

#G
fn_G = fivenum(players_data$G)
m_G = mean(players_data$G)
sd_G = sd(players_data$G)

#GS
fn_GS = fivenum(players_data$GS)
m_GS = mean(players_data$GS)
sd_GS = sd(players_data$GS)

#3Ppercentage
percentage3P = na.omit(players_data$'3Ppercentage')
fn_3Ppercentage = fivenum(percentage3P)
m_3Ppercentage = mean(percentage3P)
sd_3Ppercentage = sd(percentage3P)


#e
plot(players_data$MP,players_data$PTS,xlab="Minutes per game",ylab="Points per game")





#-------------------------------
#ΕΡΩΤΗΜΑ 3
#-------------------------------
#Ανάγνωση και αποθήκευση των δεδομένων στη μεταβλητή data
data <- read.table("survey_data_2025/survey_data_2025.csv", header=TRUE, sep=',')
data<-na.omit(data)
dim(data)
head(data)


#a
plot(data$height,data$shoe,xlab="Height",ylab="Shoe number")#Scatterplot των μεταβλητών

cor(data$height,data$shoe)#Υπολογισμός συντελεστή συσχέτισης


#b
model <- lm(data$shoe~data$height)#Υπολογίζει τις παραμέτρους της ευθείας μέσω
#της μεθόδου των ελαχίστων τετραγώνων
plot(data$height,data$shoe,xlab="Height",ylab="Shoe number")
abline(model)#Σχεδιάζει τη γραφική παράσταση της ευθείας ελαχίστων τετραγώνων

