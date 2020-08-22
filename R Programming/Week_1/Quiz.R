# Quiz 1
data = read.csv("Week_1/hw1_data.csv")
names(data)

head(data,2)

nrow(data)

tail(data, 2)

data[47, 1]

sub = subset(data, is.na(Ozone))
data[complete.cases(data),]

sub = subset(data, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)

sub = subset(data, Ozone > 31 & Temp > 90, select = Solar.R)
apply(sub, 2, mean)

sub = subset(data, Month == 6, select = Temp)
apply(sub, 2, mean)

sub = subset(data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
