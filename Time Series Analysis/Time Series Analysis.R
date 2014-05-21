########################################################
# Data and Feature Creation
########################################################

# Dates
date_2011 <- as.Date(c('2011-07-01', '2011-07-08', '2011-07-15', '2011-07-22', '2011-07-29', '2011-08-06', '2011-08-13', '2011-08-20', '2011-08-27', '2011-09-03', '2011-09-10', '2011-09-17', '2011-09-24'))
date_2012 <- as.Date(c('2012-07-01', '2012-07-08', '2012-07-15', '2012-07-22', '2012-07-29', '2012-08-06', '2012-08-13', '2012-08-20', '2012-08-27', '2012-09-03', '2012-09-10', '2012-09-17', '2012-09-24'))

# Japan 2011 Sales Figures and data frame
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch', rep('af',9))

jp_total_2011 <- c(5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795, 6659)
jp_total_1wbf_2011 <- c(NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795)
jp_total_2wbf_2011 <- c(NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597)
jp_2011_data <- data.frame(amount = jp_total_2011, one_week_bf = jp_total_1wbf_2011, two_week_bf = jp_total_2wbf_2011, week = week, launch = launch_2011)
View(jp_2011_data)

# Japan 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- c(rep('bf',5), 'launch', rep('af',7))

jp_total_2012 <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)
jp_total_1wbf_2012 <- c(NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA)
jp_total_2wbf_2012 <- c(NA, NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA)
jp_2012_data <- data.frame(amount = jp_total_2012, one_week_bf = jp_total_1wbf_2012, two_week_bf = jp_total_2wbf_2012, week = week, launch = launch_2012)
View(jp_2012_data)

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)
jp_s_2012 <- c(2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA, NA, NA)
jp_s_1wbf_2012 <- c(NA, 2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA, NA)
jp_s_2wbf_2012 <- c(NA, NA, 2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA)
jp_s_2012_data <- data.frame(amount = jp_s_2012, one_week_bf = jp_s_1wbf_2012, two_week_bf = jp_s_2wbf_2012, week = week, launch = launch_2012)
View(jp_s_2012_data)

jp_p_2012 <- c(1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA, NA, NA)
jp_p_1wbf_2012 <- c(NA, 1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA, NA)
jp_p_2wbf_2012 <- c(NA, NA, 1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA)
jp_p_2012_data <- data.frame(amount = jp_p_2012, one_week_bf = jp_p_1wbf_2012, two_week_bf = jp_p_2wbf_2012, week = week, launch = launch_2012)
View(jp_p_2012_data)

jp_r_2012 <- c(679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA, NA, NA)
jp_r_1wbf_2012 <- c(NA, 679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA, NA)
jp_r_2wbf_2012 <- c(NA, NA, 679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA)
jp_r_2012_data <- data.frame(amount = jp_r_2012, one_week_bf = jp_r_1wbf_2012, two_week_bf = jp_r_2wbf_2012, week = week, launch = launch_2012)
View(jp_r_2012_data)

jp_g_2012 <- c(1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA, NA, NA)
jp_g_1wbf_2012 <- c(NA, 1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA, NA)
jp_g_2wbf_2012 <- c(NA, NA, 1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA)
jp_g_2012_data <- data.frame(amount = jp_g_2012, one_week_bf = jp_g_1wbf_2012, two_week_bf = jp_g_2wbf_2012, week = week, launch = launch_2012)
View(jp_g_2012_data)

jp_b_2012 <- c(1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA, NA, NA)
jp_b_1wbf_2012 <- c(NA, 1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA, NA)
jp_b_2wbf_2012 <- c(NA, NA, 1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA)
jp_b_2012_data <- data.frame(amount = jp_b_2012, one_week_bf = jp_b_1wbf_2012, two_week_bf = jp_b_2wbf_2012, week = week, launch = launch_2012)
View(jp_b_2012_data)

# South Asia 2011 Sale Figures and data frame
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch', rep('af',9))

sa_total_2011 <- c(2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041, 3072)
sa_total_1wbf_2011 <- c(NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041)
sa_total_2wbf_2011 <- c(NA, NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982)
sa_2011_data <- data.frame(amount = sa_total_2011, one_week_bf = sa_total_1wbf_2011, two_week_bf = sa_total_2wbf_2011, week = week, launch = launch_2011)
View(sa_2011_data)

# South Asia 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- c(rep('bf',5), 'launch', rep('af',7))

sa_total_2012 <- c(3325, 2823, 2541, 2286, 2218, NA, NA, NA, NA, NA, NA, NA, NA)
sa_total_1wbf_2012 <- c(NA, 3325, 2823, 2541, 2286, 2218, NA, NA, NA, NA, NA, NA, NA)
sa_total_2wbf_2012 <- c(NA, NA, 3325, 2823, 2541, 2286, 2218, NA, NA, NA, NA, NA, NA)
sa_2012_data <- data.frame(amount = sa_total_2012, one_week_bf = sa_total_1wbf_2012, two_week_bf = sa_total_2wbf_2012, week = week, launch = launch_2012)
View(sa_2012_data)

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)
sa_s_2012 <- c(2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA, NA, NA)
sa_s_1wbf_2012 <- c(NA, 2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA, NA)
sa_s_2wbf_2012 <- c(NA, NA, 2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA)
sa_s_2012_data <- data.frame(amount = sa_s_2012, one_week_bf = sa_s_1wbf_2012, two_week_bf = sa_s_2wbf_2012, week = week, launch = launch_2012)
View(sa_s_2012_data)

sa_p_2012 <- c(1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA, NA, NA)
sa_p_1wbf_2012 <- c(NA, 1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA, NA)
sa_p_2wbf_2012 <- c(NA, NA, 1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA)
sa_p_2012_data <- data.frame(amount = sa_p_2012, one_week_bf = sa_p_1wbf_2012, two_week_bf = sa_p_2wbf_2012, week = week, launch = launch_2012)
View(sa_p_2012_data)

sa_r_2012 <- c(644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA, NA, NA)
sa_r_1wbf_2012 <- c(NA, 644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA, NA)
sa_r_2wbf_2012 <- c(NA, NA, 644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA)
sa_r_2012_data <- data.frame(amount = sa_r_2012, one_week_bf = sa_r_1wbf_2012, two_week_bf = sa_r_2wbf_2012, week = week, launch = launch_2012)
View(sa_r_2012_data)

sa_g_2012 <- c(847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA, NA, NA)
sa_g_1wbf_2012 <- c(NA, 847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA, NA)
sa_g_2wbf_2012 <- c(NA, NA, 847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA)
sa_g_2012_data <- data.frame(amount = sa_g_2012, one_week_bf = sa_g_1wbf_2012, two_week_bf = sa_g_2wbf_2012, week = week, launch = launch_2012)
View(sa_g_2012_data)

sa_b_2012 <- c(1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA, NA, NA)
sa_b_1wbf_2012 <- c(NA, 1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA, NA)
sa_b_2wbf_2012 <- c(NA, NA, 1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA)
sa_b_2012_data <- data.frame(amount = sa_b_2012, one_week_bf = sa_b_1wbf_2012, two_week_bf = sa_b_2wbf_2012, week = week, launch = launch_2012)
View(sa_b_2012_data)

# New Zealand 2011 Sale Figures and data frame
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch', rep('af',9))

nz_total_2011 <- c(3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667, 4714)
nz_total_1wbf_2011 <- c(NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667)
nz_total_2wbf_2011 <- c(NA, NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576)
nz_2011_data <- data.frame(amount = nz_total_2011, one_week_bf = nz_total_1wbf_2011, two_week_bf = nz_total_2wbf_2011, week = week, launch = launch_2011)
View(nz_2011_data)

# New Zealand 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- c(rep('bf',5), 'launch', rep('af',7))

nz_total_2012 <- c(5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA, NA, NA)
nz_total_1wbf_2012 <- c(NA, 5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA, NA)
nz_total_2wbf_2012 <- c(NA, NA, 5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA)
nz_2012_data <- data.frame(amount = nz_total_2012, one_week_bf = nz_total_1wbf_2012, two_week_bf = nz_total_2wbf_2012, week = week, launch = launch_2012)
View(nz_2012_data)

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)
nz_s_2012 <- c(1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA, NA, NA)
nz_s_1wbf_2012 <- c(NA, 1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA, NA)
nz_s_2wbf_2012 <- c(NA, NA, 1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA)
nz_s_2012_data <- data.frame(amount = nz_s_2012, one_week_bf = nz_s_1wbf_2012, two_week_bf = nz_s_2wbf_2012, week = week, launch = launch_2012)
View(nz_s_2012_data)

nz_p_2012 <- c(795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA, NA, NA)
nz_p_1wbf_2012 <- c(NA, 795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA, NA)
nz_p_2wbf_2012 <- c(NA, NA, 795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA)
nz_p_2012_data <- data.frame(amount = nz_p_2012, one_week_bf = nz_p_1wbf_2012, two_week_bf = nz_p_2wbf_2012, week = week, launch = launch_2012)
View(nz_p_2012_data)

nz_r_2012 <- c(562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA, NA, NA)
nz_r_1wbf_2012 <- c(NA, 562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA, NA)
nz_r_2wbf_2012 <- c(NA, NA, 562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA)
nz_r_2012_data <- data.frame(amount = nz_r_2012, one_week_bf = nz_r_1wbf_2012, two_week_bf = nz_r_2wbf_2012, week = week, launch = launch_2012)
View(nz_r_2012_data)

nz_g_2012 <- c(532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA, NA, NA)
nz_g_1wbf_2012 <- c(NA, 532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA, NA)
nz_g_2wbf_2012 <- c(NA, NA, 532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA)
nz_g_2012_data <- data.frame(amount = nz_g_2012, one_week_bf = nz_g_1wbf_2012, two_week_bf = nz_g_2wbf_2012, week = week, launch = launch_2012)
View(nz_g_2012_data)

nz_b_2012 <- c(1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA, NA, NA)
nz_b_1wbf_2012 <- c(NA, 1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA, NA)
nz_b_2wbf_2012 <- c(NA, NA, 1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA)
nz_b_2012_data <- data.frame(amount = nz_b_2012, one_week_bf = nz_b_1wbf_2012, two_week_bf = nz_b_2wbf_2012, week = week, launch = launch_2012)
View(nz_b_2012_data)

########################################################
# Exploratory Analysis
########################################################

# normalization
jp_total_2011n <- scale(jp_total_2011)
sa_total_2011n <- scale(sa_total_2011)
nz_total_2011n <- scale(nz_total_2011)
total_2011n <- data.frame(jp = jp_total_2011n, sa = sa_total_2011n, nz = nz_total_2011n)
# correlation check
cor(total_2011n)

# plots
plot(jp_total_2011n ~ week, col="red", pch = 20, type = "l", main = "Plot of iShades sales in JP, SA & NZ in 2011 3Q", xlab = "Weeks in 2011 3Q", ylab = 'Sales (normalized)')
lines(sa_total_2011n ~ week, col="blue", pch = 20)
lines(nz_total_2011n ~ week, col="green", pch=20)
legend('topright', c("Japan", "South Asia", "New Zealand"), lty=1, lwd=2.5, col=c("red", "blue", "green"))

# autocorrelation tests for time series analysis
acf(jp_total_2011)
Box.test(japan_2011)
pacf(japan_2011)

########################################################
# Model Creation and Prediction (Prototyping)
########################################################

# Linear: Amount ~ launch + one_week_before
model1 <- lm(amount ~ launch + one_week_bf, data = jp_2011_data)
summary(model1)
plot(model1)

# Linear: Amount ~ launch + one_week_before + two_week_before (Best in RSE and Fit)
model1b <- lm(amount ~ launch + one_week_bf + two_week_bf, data = jp_2011_data)
summary(model1b)
plot(model1b)

# Linear(Interaction): Amount ~ launch + one_week_before + launch*one_week_before
model1c <- lm(amount ~ launch*one_week_bf, data = jp_2011_data)
summary(model1c)
plot(model1c)

# Quadratic: Amount ~ launch + one_week_before^2
model2 <- lm(amount ~ launch + I(one_week_bf^2), data = jp_2011_data)
summary(model2)
plot(model2)

# Quadratic: Amount ~ launch + one_week_before^2 + two_week_before^2
model2b <- lm(amount ~ launch + I(one_week_bf^2) + I(two_week_bf^2), data = jp_2011_data)
summary(model2b)
plot(model2)

# plot of actual and predicted values
plot(jp_2011$amount ~ jp_2011$week, col = "red", lwd = 1.5, pch = 20)
lines(2:13, model1$fitted, col="blue", lwd = 1.5)
lines(3:13, model1b$fitted, col="cyan")
lines(2:13, model1c$fitted, col="orange", lwd = 1.5)
lines(2:13, model2$fitted, col="blueviolet")
lines(3:13, model2b$fitted, col="green", lwd = 1.5)

legend('topright', c("Actual Data", "Model: Launch + 1, 2 weeks before", "Model: Launch + 1, 2, 3 weeks before", "Model: Launch + (1, 2 weeks before)^2"), lty=1, lwd=2.5, col=c("red", "blue", "orange", "green"))
=======
plot(jp_2011$amount ~ jp_2011$week, col = "red", pch = 20)
points(1:13, jp_total_2012a, col = 'blue', pch = 20)
lines(1:13, predict(model0, newdata), col='green')
lines(1:13, predict(model0a, newdata), col='orange')
lines(1:13, newdata2$amount, col = 'green')
lines(1:13, newdata3$amount, col = 'pink')
lines(1:13, predict(model0b, newdata), col='cyan')
lines(1:13, predict(model1, newdata), col='green')
lines(1:13, predict(model2, newdata), col='blueviolet')
lines(1:13, predict(model3, newdata), col='brown')
lines(3:13, model0$fitted, col="blue")
lines(2:13, model0a$fitted, col="orange")
lines(4:13, model0b$fitted, col="cyan")
lines(2:13, model1$fitted, col="green")
lines(3:13, model2$fitted, col="blueviolet")

# predictions
jp_total_2012a <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)

jp_three_week_bf_2012a <- c(NA, NA, NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA)
jp_total_2012 <- c(7946, 6641, 5975, 5378, 5217, 13700, 10642, 9757, 8874, 8239, 7755, 7390, NA)
jp_one_week_bf_2012 <- c(NA, 7946, 6641, 5975, 5378, 5217, 13700, 10642, 9757, 8874, 8239, 7755, 7390)
jp_two_week_bf_2012 <- c(NA, NA, 7946, 6641, 5975, 5378, 5217, 13700, 10642, 9757, 8874, 8239, 7755)
launch_2012 <- c(rep('bf', 5), 'launch', rep('af', 7))
newdata <- data.frame(amount = jp_total_2012a, one_week_bf = jp_one_week_bf_2012a, launch = launch_2012, week = week)
View(newdata)
View(predict(model0, newdata))
predict(model0a, newdata)

amount <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)
one_week_bf <- c(NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA)
launch_2012 <- c(rep('bf', 5), 'launch', rep('af', 7))

# function with amount ~ launch + one_week_before
fit1 <- function(x, y, z) {
    amount <- x
    one_week_bf <- y
    launch <- z
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, launch = launch, week = week)
    for (i in 1:12) {
        predicted <- predict(model0a, newdata)
        newdata$amount[i+1] <- predicted[i+1]
        try(newdata$one_week_bf[i+2] <- predicted[i+1])
    }
    return(newdata)
}

# function with amount ~ launch + one_week_before + two_week_before
fit2 <- function(x, y, z, a) {
    amount <- x
    one_week_bf <- y
    two_week_bf <- z
    launch <- a
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, two_week_bf = two_week_bf, launch = launch, week = week)
    for (i in 1:11) {
        predicted <- predict(model0, newdata)
        newdata$amount[i+2] <- predicted[i+2]
        try(newdata$one_week_bf[i+3] <- predicted[i+2])
        try(newdata$two_week_bf[i+4] <- predicted[i+2])
    }
    return(newdata)
}

# test with 2011 data
newdata2 <- fit1(jp_total_2011, jp_one_week_bf_2011, launch_2011)
View(newdata2)
rm(newdata2)

newdata3 <- fit2(jp_total_2011, jp_one_week_bf_2011, jp_two_week_bf_2011, launch_2011)
View(newdata3)

#test with 2012 data
newdata2 <- fit1(jp_total_2012a, jp_one_week_bf_2012a, launch_2012)
View(newdata2)

newdata3 <- fit2(jp_total_2012a, jp_one_week_bf_2012a, jp_two_week_bf_2012a, launch_2012)
View(newdata3)

lines(1:13, newdata2$amount, col = 'green')
lines(1:13, newdata3$amount, col = 'pink')
