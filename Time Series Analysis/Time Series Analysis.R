library(MASS)

# Dates
date_2011 <- as.Date(c('2011-07-01', '2011-07-08', '2011-07-15', '2011-07-22', '2011-07-29', '2011-08-06', '2011-08-13', '2011-08-20', '2011-08-27', '2011-09-03', '2011-09-10', '2011-09-17', '2011-09-24'))
date_2012 <- as.Date(c('2012-07-01', '2012-07-08', '2012-07-15', '2012-07-22', '2012-07-29', '2012-08-06', '2012-08-13', '2012-08-20', '2012-08-27', '2012-09-03', '2012-09-10', '2012-09-17', '2012-09-24'))

# 2011 sales figures
jp_total_2011 <- c(5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795, 6659)
sa_total_2011 <- c(2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041, 3072)
nz_total_2011 <- c(3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667, 4714)
total_2011 <- c(jp_total_2011, sa_total_2011, nz_total_2011)

# normalization
jp_total_2011n <- scale(jp_total_2011)
sa_total_2011n <- scale(sa_total_2011)
nz_total_2011n <- scale(nz_total_2011)
total_2011n <- data.frame(jp = jp_total_2011n, sa = sa_total_2011n, nz = nz_total_2011n)
# correlation check
cor(total_2011n)

# 2011 data frame and feature creation
week <- 1:13
weeks <- c(rep(1:13, 3))
country <- c(rep('JP', 13), rep('SA', 13), rep('NZ', 13))
launch <- c(rep('bf',3), 'launch', rep('af',9))
launch <- c(rep((c(rep('bf',3), 'launch', rep('af',9))),3))

jp_one_week_bf_2011 <- c(NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795)
jp_two_week_bf_2011 <- c(NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597)
jp_three_week_bf_2011 <- c(NA, NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648)
sa_one_week_bf_2011 <- c(NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041)
sa_two_week_bf_2011 <- c(NA, NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982)
nz_one_week_bf_2011 <- c(NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667)
nz_two_week_bf_2011 <- c(NA, NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576)
one_week_bf_2011 <- c(jp_one_week_bf_2011, sa_one_week_bf_2011, nz_one_week_bf_2011)
two_week_bf_2011 <- c(jp_two_week_bf_2011, sa_two_week_bf_2011, nz_two_week_bf_2011)

# data frame
data_2011 <- data.frame(amount = total_2011, one_week_bf = one_week_bf_2011, two_week_bf = two_week_bf_2011, country = country, weeks = weeks, launch = launch)
jp_2011 <- data.frame(amount = jp_total_2011, one_week_bf = jp_one_week_bf_2011, two_week_bf = jp_two_week_bf_2011, three_week_bf = jp_three_week_bf_2011, launch = launch, week = week)
View(data_2011)

# exploratory analysis
plot(jp_total_2011n ~ week, col="red", pch = 20, type = "l", main = "Plot of iShades sales in JP, SA & NZ in 2011 3Q", xlab = "Weeks in 2011 3Q", ylab = 'Sales (normalized)')
lines(sa_total_2011n ~ week, col="blue", pch = 20)
lines(nz_total_2011n ~ week, col="green", pch=20)
legend('topright', c("Japan", "South Asia", "New Zealand"), lty=1, lwd=2.5, col=c("red", "blue", "green"))

# 2012 data
japan_total_2012 <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)
japan_s <- c(2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA, NA, NA)
japan_t_2012 <- xts(japan_total, date_2012)
japan_s_2012 <- xts(japan_s, date_2012)
japan_s_2012

par(mfrow=c(1,2))
plot(japan_2011, ylim = c(0, 14000))
plot(japan_t_2012, ylim = c(0, 14000))
plot(japan_s_2012, ylim = c(0, 14000))

acf(japan_2011)
Box.test(japan_2011)
pacf(japan_2011)

=================================
# data frame and feature creation
japan_total <- data.frame(amt = total_amt, date = c(date_2011, date_2012), year = year, launch = launch, one_week_bf = one_week_bf, two_week_bf = two_week_bf, three_week_bf = three_week_bf, week = c(week, week))
View(japan_total)

japan_2011 <- data.frame(amt = japan_total_2011, date = date_2011, year = rep(2011, 13), launch = launch_2011, one_week_bf = one_week_bf_2011, two_week_bf = two_week_bf_2011, three_week_bf = three_week_bf_2011, week = c(1:13))
View(japan_2011)

total_amt <- c(japan_total_2011, japan_total_2012)
year <- c(rep(2011, 13), rep(2012, 13))
launch_2011 <- as.factor(c(rep('bf',3), 'launch', rep('af',9)))
japan_2011$launch[1:13]
launch_total <- c(rep('bf',3), 'launch', rep('af',9), rep('bf', 5), 'launch', rep('af', 7))
week <- c(1:13)
one_week_bf_2011 <- c(NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795)
one_week_bf_2012 <- c(NA, 7946, 6641, 5975, 5378, NA, NA, NA, NA, NA, NA, NA, NA)
one_week_bf <- c(one_week_bf_2011, one_week_bf_2012)
two_week_bf_2011 <- c(NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597)
two_week_bf_2012 <- c(NA, NA, 7946, 6641, 5975, NA, NA, NA, NA, NA, NA, NA, NA)
two_week_bf <- c(two_week_bf_2011, two_week_bf_2012)
three_week_bf_2011 <- c(NA, NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648)
three_week_bf_2012 <- c(NA, NA, NA, 7946, 6641, NA, NA, NA, NA, NA, NA, NA, NA)
three_week_bf <- c(three_week_bf_2011, three_week_bf_2012)
=============================================
# basic model
model0 <- lm(amount ~ launch + one_week_bf + two_week_bf + country, data = data_2011)
summary(model0)
plot(model0)

# quadratic models
model1 <- lm(amount ~ launch + I(one_week_bf^2) + country, data = data_2011)
summary(model1)
plot(model1)
model2 <- lm(amount ~ launch + I(one_week_bf^2) + I(two_week_bf^2), data = data_2011)
summary(model2)
plot(model2)

# basic model (jp) (best model in RSE and fit)
model0 <- lm(amount ~ launch + one_week_bf + two_week_bf, data = jp_2011)
summary(model0)
plot(model0)
AIC(model0)

# better than previous, but concerns about overfitting
model0a <- lm(amount ~ launch + one_week_bf, data = jp_2011)
summary(model0a)
plot(model0a)
AIC(model0a)

model0b <- lm(amount ~ launch + one_week_bf + two_week_bf + three_week_bf, data = jp_2011)
summary(model0b)
plot(model0b)
AIC(model0b)

# quadratic models (jp)
model1 <- lm(amount ~ launch + I(one_week_bf^2), data = jp_2011)
summary(model1)
plot(model1)
AIC(model1)
model2 <- lm(amount ~ launch + I(one_week_bf^2) + I(two_week_bf^2), data = jp_2011)
summary(model2)
plot(model2)
AIC(model2)

# interaction model (same as model 1)
model3 <- lm(amount ~ launch*I(one_week_bf^2), data = jp_2011)
summary(model3)
plot(model3)

# plot of actual and predicted values
plot(jp_2011$amount ~ jp_2011$week, col = "red", type = 'l')
lines(3:13, model0$fitted, col="blue")
lines(2:13, model0a$fitted, col="orange")
lines(4:13, model0b$fitted, col="cyan")
lines(2:13, model1$fitted, col="green")
lines(3:13, model2$fitted, col="blueviolet")

# predictions
jp_total_2012 <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)
jp_one_week_bf_2012 <- c(NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA)
jp_two_week_bf_2012 <- c(NA, NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA)
launch_2012 <- c(rep('bf', 5), 'launch', rep('af', 7))
newdata <- data.frame(amount = jp_total_2012, one_week_bf = jp_one_week_bf_2012, two_week_bf = jp_two_week_bf_2012, launch = launch_2012, week = week)
View(newdata)
predict(model0, newdata, interval='predict')
