########################################################
# Data and Feature Creation
########################################################

# Dates
date_2011 <- as.Date(c('2011-07-01', '2011-07-08', '2011-07-15', '2011-07-22', '2011-07-29', '2011-08-06', '2011-08-13', '2011-08-20', '2011-08-27', '2011-09-03', '2011-09-10', '2011-09-17', '2011-09-24'))
date_2012 <- as.Date(c('2012-07-01', '2012-07-08', '2012-07-15', '2012-07-22', '2012-07-29', '2012-08-06', '2012-08-13', '2012-08-20', '2012-08-27', '2012-09-03', '2012-09-10', '2012-09-17', '2012-09-24'))

# Japan 2011 Sales Figures and data frame
<<<<<<< HEAD
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch', rep('af',9))
countdown_2011 <- factor(-3:9)
=======
week <- factor(1:13)
launch_2011 <- c(rep('bf',2), 'launch', rep('af',9))
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1

jp_total_2011 <- c(5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795, 6659)
jp_total_1wbf_2011 <- c(NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597, 6795)
jp_total_2wbf_2011 <- c(NA, NA, 5297, 4398, 4979, 13445, 10433, 9390, 8920, 8474, 8051, 7648, 6597)
<<<<<<< HEAD
jp_2011_data <- data.frame(amount = jp_total_2011, one_week_bf = jp_total_1wbf_2011, two_week_bf = jp_total_2wbf_2011, week = week, launch = launch_2011, count = countdown)
View(jp_2011_data)

# Japan 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- c(rep('bf',5), 'launch', rep('af',7))
countdown_2012 <- factor(-5:7)
=======

jp_2011_data <- data.frame(original = jp_total_2011, amount = scale(jp_total_2011), one_week_bf = scale(jp_total_1wbf_2011), two_week_bf = scale(jp_total_2wbf_2011), week = week, launch = launch_2011)
jp_2011_data

# Japan 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- c(rep('bf',4), 'launch', rep('af',7))
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1

jp_total_2012 <- c(7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA, NA)
jp_total_1wbf_2012 <- c(NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA, NA)
jp_total_2wbf_2012 <- c(NA, NA, 7946, 6641, 5975, 5378, 5217, NA, NA, NA, NA, NA, NA)
<<<<<<< HEAD
jp_2012_data <- data.frame(amount = jp_total_2012, one_week_bf = jp_total_1wbf_2012, two_week_bf = jp_total_2wbf_2012, week = week, launch = launch_2012, count = countdown_2012)
View(jp_2012_data)
=======

jp_2012_data <- data.frame(original = jp_total_2012, amount = scale(jp_total_2012), one_week_bf = scale(jp_total_1wbf_2012), two_week_bf = scale(jp_total_2wbf_2012), week = week, launch = launch_2012)
jp_2012_data
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)

# Silver

jp_s_2012 <- c(2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA, NA, NA)
jp_s_1wbf_2012 <- c(NA, 2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA, NA)
jp_s_2wbf_2012 <- c(NA, NA, 2394, 2027, 1824, 1642, 1593, NA, NA, NA, NA, NA, NA)
                        
jp_s_2012_data <- data.frame(original = jp_s_2012, amount = scale(jp_s_2012), one_week_bf = scale(jp_s_1wbf_2012), two_week_bf = scale(jp_s_2wbf_2012), week = week, launch = launch_2012)
jp_s_2012_data

# Pink

jp_p_2012 <- c(1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA, NA, NA)
jp_p_1wbf_2012 <- c(NA, 1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA, NA)
jp_p_2wbf_2012 <- c(NA, NA, 1645, 1403, 1263, 1136, 1102, NA, NA, NA, NA, NA, NA)
jp_p_2012_data <- data.frame(original = jp_p_2012, amount = scale(jp_p_2012), one_week_bf = scale(jp_p_1wbf_2012), two_week_bf = scale(jp_p_2wbf_2012), week = week, launch = launch_2012)
jp_p_2012_data

jp_r_2012 <- c(679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA, NA, NA)
jp_r_1wbf_2012 <- c(NA, 679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA, NA)
jp_r_2wbf_2012 <- c(NA, NA, 679, 567, 510, 459, 445, NA, NA, NA, NA, NA, NA)
jp_r_2012_data <- data.frame(original = jp_r_2012, amount = scale(jp_r_2012), one_week_bf = scale(jp_r_1wbf_2012), two_week_bf = scale(jp_r_2wbf_2012), week = week, launch = launch_2012)
jp_r_2012_data

jp_g_2012 <- c(1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA, NA, NA)
jp_g_1wbf_2012 <- c(NA, 1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA, NA)
jp_g_2wbf_2012 <- c(NA, NA, 1285, 1042, 937, 844, 819, NA, NA, NA, NA, NA, NA)
jp_g_2012_data <- data.frame(original = jp_g_2012, amount = scale(jp_g_2012), one_week_bf = scale(jp_g_1wbf_2012), two_week_bf = scale(jp_g_2wbf_2012), week = week, launch = launch_2012)
jp_g_2012_data

jp_b_2012 <- c(1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA, NA, NA)
jp_b_1wbf_2012 <- c(NA, 1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA, NA)
jp_b_2wbf_2012 <- c(NA, NA, 1943, 1602, 1441, 1297, 1258, NA, NA, NA, NA, NA, NA)
jp_b_2012_data <- data.frame(original = jp_b_2012, amount = scale(jp_b_2012), one_week_bf = scale(jp_b_1wbf_2012), two_week_bf = scale(jp_b_2wbf_2012), week = week, launch = launch_2012)
jp_b_2012_data

# South Asia 2011 Sale Figures and data frame
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch1', 'launch2', rep('af',8))

sa_total_2011 <- c(2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041, 3072)
sa_total_1wbf_2011 <- c(NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982, 3041)
sa_total_2wbf_2011 <- c(NA, NA, 2375, 2172, 2033, 4573, 5545, 4436, 3549, 3371, 3203, 3042, 2982)
sa_2011_data <- data.frame(original = sa_total_2011, amount = scale(sa_total_2011), one_week_bf = scale(sa_total_1wbf_2011), two_week_bf = scale(sa_total_2wbf_2011), week = week, launch = launch_2011)
sa_2011_data

# South Asia 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- factor(c(rep('bf',5), 'launch1', 'launch2', rep('af',6)))

sa_total_2012 <- c(6554, 5567, 5011, 4509, 4373, NA, NA, NA, NA, NA, NA, NA, NA)
sa_total_1wbf_2012 <- c(NA, 6554, 5567, 5011, 4509, 4373, NA, NA, NA, NA, NA, NA, NA)
sa_total_2wbf_2012 <- c(NA, NA, 6554, 5567, 5011, 4509, 4373, NA, NA, NA, NA, NA, NA)
sa_2012_data <- data.frame(original = sa_total_2012, amount = scale(sa_total_2012), one_week_bf = scale(sa_total_1wbf_2012), two_week_bf = scale(sa_total_2wbf_2012), week = week, launch = launch_2012)
sa_2012_data

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)

# Silver
sa_s_2012 <- c(2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA, NA, NA)
sa_s_1wbf_2012 <- c(NA, 2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA, NA)
sa_s_2wbf_2012 <- c(NA, NA, 2106, 1783, 1604, 1444, 1401, NA, NA, NA, NA, NA, NA)
sa_s_2012_data <- data.frame(original = sa_s_2012, amount = scale(sa_s_2012), one_week_bf = scale(sa_s_1wbf_2012), two_week_bf = scale(sa_s_2wbf_2012), week = week, launch = launch_2012)
sa_s_2012_data

sa_p_2012 <- c(1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA, NA, NA)
sa_p_1wbf_2012 <- c(NA, 1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA, NA)
sa_p_2wbf_2012 <- c(NA, NA, 1220, 1040, 937, 842, 817, NA, NA, NA, NA, NA, NA)
sa_p_2012_data <- data.frame(original = sa_p_2012, amount = scale(sa_p_2012), one_week_bf = scale(sa_p_1wbf_2012), two_week_bf = scale(sa_p_2wbf_2012), week = week, launch = launch_2012)
sa_p_2012_data

sa_r_2012 <- c(644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA, NA, NA)
sa_r_1wbf_2012 <- c(NA, 644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA, NA)
sa_r_2wbf_2012 <- c(NA, NA, 644, 548, 493, 444, 430, NA, NA, NA, NA, NA, NA)
sa_r_2012_data <- data.frame(original = sa_r_2012, amount = scale(sa_r_2012), one_week_bf = scale(sa_r_1wbf_2012), two_week_bf = scale(sa_r_2wbf_2012), week = week, launch = launch_2012)
sa_r_2012_data

sa_g_2012 <- c(847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA, NA, NA)
sa_g_1wbf_2012 <- c(NA, 847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA, NA)
sa_g_2wbf_2012 <- c(NA, NA, 847, 720, 648, 583, 565, NA, NA, NA, NA, NA, NA)
sa_g_2012_data <- data.frame(original = sa_g_2012, amount = scale(sa_g_2012), one_week_bf = scale(sa_g_1wbf_2012), two_week_bf = scale(sa_g_2wbf_2012), week = week, launch = launch_2012)
sa_g_2012_data

sa_b_2012 <- c(1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA, NA, NA)
sa_b_1wbf_2012 <- c(NA, 1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA, NA)
sa_b_2wbf_2012 <- c(NA, NA, 1738, 1477, 1329, 1196, 1160, NA, NA, NA, NA, NA, NA)
sa_b_2012_data <- data.frame(original = sa_b_2012, amount = scale(sa_b_2012), one_week_bf = scale(sa_b_1wbf_2012), two_week_bf = scale(sa_b_2wbf_2012), week = week, launch = launch_2012)
sa_b_2012_data

# New Zealand 2011 Sale Figures and data frame
week <- 1:13
launch_2011 <- c(rep('bf',3), 'launch1', 'launch2', rep('af',8))

nz_total_2011 <- c(3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667, 4714)
nz_total_1wbf_2011 <- c(NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576, 4667)
nz_total_2wbf_2011 <- c(NA, NA, 3700, 3333, 3119, 7018, 8509, 6807, 5446, 5173, 4915, 4669, 4576)
nz_2011_data <- data.frame(original = nz_total_2011, amount = scale(nz_total_2011), one_week_bf = scale(nz_total_1wbf_2011), two_week_bf = scale(nz_total_2wbf_2011), week = week, launch = launch_2011)
nz_2011_data

# New Zealand 2012 Sale Figures and data frames
week <- 1:13
launch_2012 <- factor(c(rep('bf',5), 'launch1', 'launch2', rep('af',6)))

nz_total_2012 <- c(5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA, NA, NA)
nz_total_1wbf_2012 <- c(NA, 5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA, NA)
nz_total_2wbf_2012 <- c(NA, NA, 5181, 4333, 3898, 3509, 3403, NA, NA, NA, NA, NA, NA)
nz_2012_data <- data.frame(original = nz_total_2012, amount = scale(nz_total_2012), one_week_bf = scale(nz_total_1wbf_2012), two_week_bf = scale(nz_total_2wbf_2012), week = week, launch = launch_2012)
nz_2012_data

# Colour Breakdown (Silver, Pink, Red, Green, Blue; actual, one week before, two weeks before)
nz_s_2012 <- c(1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA, NA, NA)
nz_s_1wbf_2012 <- c(NA, 1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA, NA)
nz_s_2wbf_2012 <- c(NA, NA, 1817, 1538, 1384, 1246, 1209, NA, NA, NA, NA, NA, NA)
nz_s_2012_data <- data.frame(original = nz_s_2012, amount = scale(nz_s_2012), one_week_bf = scale(nz_s_1wbf_2012), two_week_bf = scale(nz_s_2wbf_2012), week = week, launch = launch_2012)
nz_s_2012_data

nz_p_2012 <- c(795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA, NA, NA)
nz_p_1wbf_2012 <- c(NA, 795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA, NA)
nz_p_2wbf_2012 <- c(NA, NA, 795, 678, 610, 549, 532, NA, NA, NA, NA, NA, NA)
nz_p_2012_data <- data.frame(original = nz_p_2012, amount = scale(nz_p_2012), one_week_bf = scale(nz_p_1wbf_2012), two_week_bf = scale(nz_p_2wbf_2012), week = week, launch = launch_2012)
nz_p_2012_data

nz_r_2012 <- c(562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA, NA, NA)
nz_r_1wbf_2012 <- c(NA, 562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA, NA)
nz_r_2wbf_2012 <- c(NA, NA, 562, 469, 422, 380, 369, NA, NA, NA, NA, NA, NA)
nz_r_2012_data <- data.frame(original = nz_r_2012, amount = scale(nz_r_2012), one_week_bf = scale(nz_r_1wbf_2012), two_week_bf = scale(nz_r_2wbf_2012), week = week, launch = launch_2012)
nz_r_2012_data

nz_g_2012 <- c(532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA, NA, NA)
nz_g_1wbf_2012 <- c(NA, 532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA, NA)
nz_g_2wbf_2012 <- c(NA, NA, 532, 431, 388, 349, 339, NA, NA, NA, NA, NA, NA)
nz_g_2012_data <- data.frame(original = nz_g_2012, amount = scale(nz_g_2012), one_week_bf = scale(nz_g_1wbf_2012), two_week_bf = scale(nz_g_2wbf_2012), week = week, launch = launch_2012)
nz_g_2012_data

nz_b_2012 <- c(1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA, NA, NA)
nz_b_1wbf_2012 <- c(NA, 1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA, NA)
nz_b_2wbf_2012 <- c(NA, NA, 1475, 1216, 1094, 984, 955, NA, NA, NA, NA, NA, NA)
nz_b_2012_data <- data.frame(original = nz_b_2012, amount = scale(nz_b_2012), one_week_bf = scale(nz_b_1wbf_2012), two_week_bf = scale(nz_b_2wbf_2012), week = week, launch = launch_2012)
nz_b_2012_data

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
# Model Creation and Prediction (Prototyping; Japan)
########################################################

# Linear: Amount ~ launch + one_week_before
model1 <- lm(amount ~ launch + one_week_bf, data = jp_2011_data)
summary(model1)

# Linear: Amount ~ launch + one_week_before + two_week_before (Best in RSE and Fit)
<<<<<<< HEAD
model1b <- lm(amount ~ launch + one_week_bf + two_week_bf + count, data = jp_2011_data)
=======
model1b <- lm(amount ~ launch + one_week_bf + scale(two_week_bf), data = jp_2011_data)
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1
summary(model1b)

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
<<<<<<< HEAD
plot(jp_2011_data$amount ~ jp_2011_data$week, col = "red", lwd = 1.5, pch = 20, xlab = "Weeks in 2011 3Q", ylab = "Sales")
lines(2:13, model1$fitted, col="blue", lwd = 2)
lines(3:13, model1b$fitted, col="cyan", lwd = 2)
lines(2:13, model1c$fitted, col="orange", lwd = 2)
lines(2:13, model2$fitted, col="blueviolet", lwd = 2)
lines(3:13, model2b$fitted, col="green", lwd = 2)

legend('topright', c("Model: Launch + 1 week before", "Model: Launch + 1, 2 weeks before", "Model: Launch*1 week before (interaction)", "Model: Launch + (1 week before)^2)", "Model: Launch + (1, 2 weeks before)^2"), lty=1, lwd=2.5, col=c("blue", "cyan", "orange", "blueviolet", "green"))
=======
plot(jp_2011_data$amount ~ jp_2011_data$week, col = "red", lwd = 1.5, pch = 20, xlab = "Weeks 1-13 in 2011 Q3", ylab = "Sales")
lines(2:13, model1$fitted, col="blue", lwd = 1.5)
lines(3:13, model1b$fitted, col="cyan", lwd = 1.5)
lines(2:13, model1c$fitted, col="orange", lwd = 1.5)
lines(2:13, model2$fitted, col="blueviolet", lwd = 1.5)
lines(3:13, model2b$fitted, col="green", lwd = 1.5)

legend('topright', c("Actual Data", "Model: Launch + 1 week before", "Model: Launch + 1, 2 weeks before", "Model: Launch*1 week before", "Model: Launch + (1 week before)^2", "Model: Launch + (1, 2 weeks before)^2"), lty=1, lwd=2.5, col=c("red", "blue", "cyan", "orange", "blueviolet", "green"))

########################################################
# Functions to predict data
########################################################
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1

# function with amount ~ launch + one_week_before
fit1 <- function(x, y, z) {
    amount <- x
    one_week_bf <- y
    launch <- z
    week <- 1:13
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, launch = launch, week = week)
<<<<<<< HEAD
    for (i in 1:13) {
=======
    for (i in 1:12) {
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1
        predicted <- predict(model1, newdata)
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
        predicted <- predict(model1b, newdata)
        newdata$amount[i+2] <- predicted[i+2]
        try(newdata$one_week_bf[i+3] <- predicted[i+2])
        try(newdata$two_week_bf[i+4] <- predicted[i+2])
    }
    return(newdata)
}

<<<<<<< HEAD
# Forecast with 2011 Total Data: Model1 and Model1b
jp_2011_fc_a <- fit1(jp_2011_data$amount, jp_2011_data$one_week_bf, jp_2011_data$launch)
View(jp_2011_fc_a)

jp_2011_fc_b <- fit2(jp_2011_data$amount, jp_2011_data$one_week_bf, jp_2011_data$two_week_bf, jp_2011_data$launch)
View(jp_2011_fc_b)

plot(jp_2011_data$amount ~ jp_2011_data$week, col = "red", pch = 20)
lines(1:13, jp_2011_fc_a$amount, col = 'green')
lines(1:13, jp_2011_fc_b$amount, col = 'blue')

# Forecast with 2012 Total Data: Model1 and Model1b
jp_2012_fc_a <- fit1(jp_2012_data$amount, jp_2012_data$one_week_bf, jp_2012_data$launch)
View(jp_2012_fc_a)

jp_2012_fc_b <- fit2(jp_2012_data$amount, jp_2012_data$one_week_bf, jp_2012_data$two_week_bf, jp_2012_data$launch)
View(jp_2012_fc_b)

plot(jp_2012_data$amount ~ jp_2012_data$week, col = "red", pch = 20, ylim = c(1000, 15000))
lines(1:13, jp_2012_fc_a$amount, col = 'green')
lines(1:13, jp_2012_fc_b$amount, col = 'blue')

# Forecast with 2012 Silver Data: Model1 and Model1b
jp_s_2012_fc_a <- fit1(jp_s_2012_data$amount, jp_s_2012_data$one_week_bf, jp_s_2012_data$launch)
View(jp_s_2012_fc_a)

jp_s_2012_fc_b <- fit2(jp_s_2012_data$amount, jp_s_2012_data$one_week_bf, jp_s_2012_data$two_week_bf, jp_s_2012_data$launch)
View(jp_s_2012_fc_b)

plot(jp_s_2012_data$amount ~ jp_s_2012_data$week, col = "red", pch = 20, ylim = c(1000, 15000))
lines(1:13, jp_s_2012_fc_a$amount, col = 'green')
lines(1:13, jp_s_2012_fc_b$amount, col = 'blue')






=======
# function to denormalize predicted values; x = original, y = scale
denom <- function(x, y) {
    original <- x$original
    scal <- y
    result <- scal*sd(original, na.rm = T) + mean(original, na.rm = T)
    frame <- cbind(result[c(1,2)], x[6], x[5])
}

########################################################
# Fitting Japan 2011 Total data
########################################################

jp_total_2011_fca <- fit1(jp_2011_data$amount, jp_2011_data$one_week_bf, jp_2011_data$launch)
jp_total_2011_fca
jp_total_2011_fca_n <- denom(jp_2011_data, jp_total_2011_fca)
jp_total_2011_fca_n

jp_total_2011_fcb <- fit2(jp_2011_data$amount, jp_2011_data$one_week_bf, jp_2011_data$two_week_bf, jp_2011_data$launch)
jp_total_2011_fcb
jp_total_2011_fcb_n <- denom(jp_2011_data, jp_total_2011_fcb)
jp_total_2011_fcb_n

plot(1:13, jp_2011_data$original, type = "p", pch = 20, col = "red")
lines(jp_total_2011_fca_n$week, jp_total_2011_fca_n$amount, col = 'blue')
lines(jp_total_2011_fcb_n$week, jp_total_2011_fcb_n$amount, col = 'green')

########################################################
# Fitting Japan 2012 Total data
########################################################

jp_total_2012_fca <- fit1(jp_2012_data$amount, jp_2012_data$one_week_bf, jp_2012_data$launch)
jp_total_2012_fca
jp_total_2012_fca_n <- denom(jp_2012_data, jp_total_2012_fca)
jp_total_2012_fca_n

jp_total_2012_fcb <- fit2(jp_2012_data$amount, jp_2012_data$one_week_bf, jp_2012_data$two_week_bf, jp_2012_data$launch)
jp_total_2012_fcb
jp_total_2012_fcb_n <- denom(jp_2012_data, jp_total_2012_fcb)
jp_total_2012_fcb_n

plot(1:13, jp_2012_data$original, pch = 20, col = "red")
lines(jp_total_2012_fca_n$week, jp_total_2012_fca_n$amount, col = 'blue')
lines(jp_total_2012_fcb_n$week, jp_total_2012_fcb_n$amount, col = 'green')

# Silver

jp_s_2012_fca <- fit1(jp_s_2012_data$amount, jp_s_2012_data$one_week_bf, jp_s_2012_data$launch)
jp_s_2012_fca
jp_s_2012_fca_n <- denom(jp_s_2012_data, jp_s_2012_fca)
jp_s_2012_fca_n

jp_s_2012_fcb <- fit2(jp_s_2012_data$amount, jp_s_2012_data$one_week_bf, jp_s_2012_data$two_week_bf, jp_s_2012_data$launch)
jp_s_2012_fcb
jp_s_2012_fcb_n <- denom(jp_s_2012_data, jp_s_2012_fcb)
jp_s_2012_fcb_n

plot(1:13, jp_s_2012_data$original, col = "red", pch = 20, ylim = c(1000, 16000))
lines(jp_s_2012_fca_n$week, jp_s_2012_fca_n$amount, col = 'blue')
lines(jp_s_2012_fcb_n$week, jp_s_2012_fcb_n$amount, col = 'green')

# Pink

jp_p_2012_fca <- fit1(jp_p_2012_data$amount, jp_p_2012_data$one_week_bf, jp_p_2012_data$launch)
jp_p_2012_fca
jp_p_2012_fca_n <- denom(jp_p_2012_data, jp_p_2012_fca)
jp_p_2012_fca_n

plot(1:13, jp_p_2012_data$original, col = "red", pch = 20, ylim = c(1000, 16000))
lines(jp_p_2012_fca_n$week, jp_p_2012_fca_n$amount, col = 'blue')

# Red

jp_r_2012_fca <- fit1(jp_r_2012_data$amount, jp_r_2012_data$one_week_bf, jp_r_2012_data$launch)
jp_r_2012_fca
jp_r_2012_fca_n <- denom(jp_r_2012_data, jp_r_2012_fca)
jp_r_2012_fca_n

plot(1:13, jp_r_2012_data$original, col = "red", pch = 20, ylim = c(1000, 16000))
lines(jp_r_2012_fca_n$week, jp_r_2012_fca_n$amount, col = 'blue')

# Green

jp_g_2012_fca <- fit1(jp_g_2012_data$amount, jp_g_2012_data$one_week_bf, jp_g_2012_data$launch)
jp_g_2012_fca
jp_g_2012_fca_n <- denom(jp_g_2012_data, jp_g_2012_fca)
jp_g_2012_fca_n

plot(1:13, jp_g_2012_data$original, col = "red", pch = 20, ylim = c(1000, 16000))
lines(jp_g_2012_fca_n$week, jp_g_2012_fca_n$amount, col = 'blue')

# Blue

jp_b_2012_fca <- fit1(jp_b_2012_data$amount, jp_b_2012_data$one_week_bf, jp_b_2012_data$launch)
jp_b_2012_fca
jp_b_2012_fca_n <- denom(jp_b_2012_data, jp_b_2012_fca)
jp_b_2012_fca_n

plot(1:13, jp_b_2012_data$original, col = "red", pch = 20, ylim = c(1000, 16000))
lines(jp_b_2012_fca_n$week, jp_b_2012_fca_n$amount, col = 'blue')

########################################################
# Model Creation and Prediction (South Asia)
########################################################

# Linear: Amount ~ launch + one_week_before
model_sa <- lm(amount ~ launch + one_week_bf, data = sa_2011_data)
summary(model_sa)

model_sa2 <- lm(amount ~ launch + one_week_bf + two_week_bf, data = sa_2011_data)
summary(model_sa2)

plot(1:13, sa_2011_data$amount, type = "p", pch = 20, col = "red")
lines(2:13, model_sa$fitted, col = "blue")
lines(3:13, model_sa2$fitted, col = "green")

########################################################
# Function to predict data (South Asia)
########################################################

# function with amount ~ launch + one_week_before
fit_sa <- function(x, y, z) {
    amount <- x
    one_week_bf <- y
    launch <- z
    week <- 1:13
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, launch = launch, week = week)
    for (i in 1:12) {
        predicted <- predict(model_sa, newdata)
        newdata$amount[i+1] <- predicted[i+1]
        try(newdata$one_week_bf[i+2] <- predicted[i+1])
    }
    return(newdata)
}

fit_sa2 <- function(x, y, z, a) {
    amount <- x
    one_week_bf <- y
    two_week_bf <- z
    launch <- a
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, two_week_bf = two_week_bf, launch = launch, week = week)
    for (i in 1:11) {
        predicted <- predict(model1b, newdata)
        newdata$amount[i+2] <- predicted[i+2]
        try(newdata$one_week_bf[i+3] <- predicted[i+2])
        try(newdata$two_week_bf[i+4] <- predicted[i+2])
    }
    return(newdata)
}

########################################################
# Fitting South Africa 2011 Total data
########################################################

sa_total_2011_fca <- fit_sa(sa_2011_data$amount, sa_2011_data$one_week_bf, sa_2011_data$launch)
sa_total_2011_fca
sa_total_2011_fca_n <- denom(sa_2011_data, sa_total_2011_fca)
sa_total_2011_fca_n

sa_total_2011_fca2 <- fit_sa2(sa_2011_data$amount, sa_2011_data$one_week_bf, sa_2011_data$two_week_bf, sa_2011_data$launch)
sa_total_2011_fca2
sa_total_2011_fca_n2 <- denom(sa_2011_data, sa_total_2011_fca)
sa_total_2011_fca_n2

plot(1:13, sa_2011_data$original, type = "p", pch = 20, col = "red")
lines(sa_total_2011_fca_n$week, sa_total_2011_fca_n$amount, col = 'blue')

########################################################
# Fitting South Africa 2012 Total data
########################################################

# Silver

sa_s_2012_fca <- fit_sa(sa_s_2012_data$amount, sa_s_2012_data$one_week_bf, sa_s_2012_data$launch)
sa_s_2012_fca
sa_s_2012_fca_n <- denom(sa_s_2012_data, sa_s_2012_fca)
sa_s_2012_fca_n

plot(1:13, sa_s_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_s_2012_fca_n$week, sa_s_2012_fca_n$amount, col = 'blue')

# Pink

sa_p_2012_fca <- fit_sa(sa_p_2012_data$amount, sa_p_2012_data$one_week_bf, sa_p_2012_data$launch)
sa_p_2012_fca
sa_p_2012_fca_n <- denom(sa_p_2012_data, sa_p_2012_fca)
sa_p_2012_fca_n

plot(1:13, sa_p_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_p_2012_fca_n$week, sa_p_2012_fca_n$amount, col = 'blue')

# Red

sa_r_2012_fca <- fit_sa(sa_r_2012_data$amount, sa_r_2012_data$one_week_bf, sa_r_2012_data$launch)
sa_r_2012_fca
sa_r_2012_fca_n <- denom(sa_r_2012_data, sa_r_2012_fca)
sa_r_2012_fca_n

plot(1:13, sa_r_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_r_2012_fca_n$week, sa_r_2012_fca_n$amount, col = 'blue')

# Green

sa_g_2012_fca <- fit_sa(sa_g_2012_data$amount, sa_g_2012_data$one_week_bf, sa_g_2012_data$launch)
sa_g_2012_fca
sa_g_2012_fca_n <- denom(sa_g_2012_data, sa_g_2012_fca)
sa_g_2012_fca_n

plot(1:13, sa_g_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_g_2012_fca_n$week, sa_g_2012_fca_n$amount, col = 'blue')

# Blue

sa_b_2012_fca <- fit_sa(sa_b_2012_data$amount, sa_b_2012_data$one_week_bf, sa_b_2012_data$launch)
sa_b_2012_fca
sa_b_2012_fca_n <- denom(sa_b_2012_data, sa_b_2012_fca)
sa_b_2012_fca_n

plot(1:13, sa_b_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_b_2012_fca_n$week, sa_b_2012_fca_n$amount, col = 'blue')


########################################################
# Model Creation and Prediction (New Zealand)
########################################################

# Linear: Amount ~ launch + one_week_before
model_nz <- lm(amount ~ launch + one_week_bf, data = nz_2011_data)
summary(model_nz)

model_nz2 <- lm(amount ~ launch + one_week_bf + two_week_bf, data = nz_2011_data)
summary(model_nz2)

plot(1:13, nz_2011_data$amount, type = "p", pch = 20, col = "red")
lines(2:13, model_sa$fitted, col = "blue")
lines(3:13, model_sa2$fitted, col = "green")

########################################################
# Function to predict data (South Asia)
########################################################

# function with amount ~ launch + one_week_before
fit_nz <- function(x, y, z) {
    amount <- x
    one_week_bf <- y
    launch <- z
    week <- 1:13
    newdata <- data.frame(amount = amount, one_week_bf = one_week_bf, launch = launch, week = week)
    for (i in 1:12) {
        predicted <- predict(model_nz, newdata)
        newdata$amount[i+1] <- predicted[i+1]
        try(newdata$one_week_bf[i+2] <- predicted[i+1])
    }
    return(newdata)
}

########################################################
# Fitting New Zealand 2011 Total data
########################################################

nz_total_2011_fca <- fit_nz(nz_2011_data$amount, nz_2011_data$one_week_bf, nz_2011_data$launch)
nz_total_2011_fca
nz_total_2011_fca_n <- denom(nz_2011_data, nz_total_2011_fca)
nz_total_2011_fca_n

plot(1:13, nz_2011_data$original, type = "p", pch = 20, col = "red")
lines(nz_total_2011_fca_n$week, nz_total_2011_fca_n$amount, col = 'blue')

########################################################
# Fitting New Zealand 2012 Total data
########################################################

# Silver

nz_s_2012_fca <- fit_nz(nz_s_2012_data$amount, nz_s_2012_data$one_week_bf, nz_s_2012_data$launch)
nz_s_2012_fca
nz_s_2012_fca_n <- denom(nz_s_2012_data, nz_s_2012_fca)
nz_s_2012_fca_n

plot(1:13, nz_s_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(nz_s_2012_fca_n$week, nz_s_2012_fca_n$amount, col = 'blue')

# Pink

nz_p_2012_fca <- fit_nz(nz_p_2012_data$amount, nz_p_2012_data$one_week_bf, nz_p_2012_data$launch)
nz_p_2012_fca
nz_p_2012_fca_n <- denom(nz_p_2012_data, nz_p_2012_fca)
nz_p_2012_fca_n

plot(1:13, nz_p_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(nz_p_2012_fca_n$week, nz_p_2012_fca_n$amount, col = 'blue')

# Red

nz_r_2012_fca <- fit_nz(nz_r_2012_data$amount, nz_r_2012_data$one_week_bf, nz_r_2012_data$launch)
nz_r_2012_fca
nz_r_2012_fca_n <- denom(nz_r_2012_data, nz_r_2012_fca)
nz_r_2012_fca_n

plot(1:13, nz_r_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(nz_r_2012_fca_n$week, nz_r_2012_fca_n$amount, col = 'blue')

# Green

nz_g_2012_fca <- fit_nz(nz_g_2012_data$amount, nz_g_2012_data$one_week_bf, nz_g_2012_data$launch)
nz_g_2012_fca
nz_g_2012_fca_n <- denom(nz_g_2012_data, nz_g_2012_fca)
nz_g_2012_fca_n

plot(1:13, nz_g_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(nz_g_2012_fca_n$week, nz_g_2012_fca_n$amount, col = 'blue')

# Blue

nz_b_2012_fca <- fit_nz(nz_b_2012_data$amount, nz_b_2012_data$one_week_bf, nz_b_2012_data$launch)
nz_b_2012_fca
nz_b_2012_fca_n <- denom(nz_b_2012_data, nz_b_2012_fca)
nz_b_2012_fca_n

plot(1:13, sa_b_2012_data$original, type = "p", pch = 20, col = "red", ylim = c(0, 5000))
lines(sa_b_2012_fca_n$week, sa_b_2012_fca_n$amount, col = 'blue')
>>>>>>> 3e161c6b3d668b06b02b8f3c2836a228f54d66f1

