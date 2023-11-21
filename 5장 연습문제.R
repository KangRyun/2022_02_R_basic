###1
edu <- infert[,"education"]
edu
unique(edu)
table(edu)
edu_ds <- table(edu)
barplot(edu_ds)

###2
gender <- c('F', 'F', 'F', 'M', 'M', 'F', 'F', 'F', 'M', 'M')
table(gender)
gender_ds <- table(gender)
barplot(gender_ds)
pie(gender_ds)

###3
season <- c('여름', '겨울', '봄', '가을', '여름', '가을', '겨울', '여름', '여름', '가을')
table(season)
season_ds <- table(season)
barplot(season_ds)
pie(season_ds)

###5
score <- c(90,85,73,80,85,65,78,50,68,96)
names(score) <- c('KOR','ENG','ATH','HIST','SOC','MUSIC','BIO','EARTH','PHY','ART')
score
mean(score)
median(score)
sd(score)
names(score)[which.max(score)]
boxplot(score)
boxplot.stats(score)    
hist(score,
     main= '학생성적',
     col = 'purple',
     )        

###5
mean(mtcars[,'wt'])
median(mtcars[,'wt'])
mean(mtcars[,'wt'], trim = 0.15)
sd(mtcars[,'wt'])

summary((mtcars[,'wt']))
table((mtcars[,'cyl']))
barplot(table((mtcars[,'cyl'])))
wt_ds <- (mtcars[,'wt'])
hist(wt_ds)
boxplot(wt_ds)
boxplot.stats(wt_ds)

disp_ds <- mtcars[,'disp']
boxplot(disp_ds)
boxplot.stats(disp_ds)

mpg_ds <- mtcars[,"mpg"]
boxplot(mtcars[,"mpg"]~mtcars[,'gear'])
#기어가 4일 때 연비가 좋다는 것을 알 수있다, 기어가 높아도 연비가 낮은것은 기술력의 차이라고 생각한다

###6
head(trees)
mean(trees[,'Girth'])
median(trees[,'Girth'])
mean(trees[,'Girth'], trim = 0.15)
sd(trees[,'Girth'])
hist(trees[,"Girth"])
boxplot(trees[,'Girth'])
mean(trees[,'Height'])
median(trees[,'Height'])
mean(trees[,'Height'], trim = 0.15)
sd(trees[,'Height'])
hist(trees[,"Height"])
boxplot((trees[,"Height"]))

###7
head(Orange)
mean(Orange[,'age'])
median(Orange[,'age'])
mean(Orange[,'age'], trim = 0.15)
sd(Orange[,'age'])
hist(Orange[,'age'])
boxplot(Orange[,'age']~Orange[,'Tree'])
mean(Orange[Orange[,"Tree"]!=2,]$circumference)
median(Orange[Orange[,"Tree"]!=2,]$circumference)
mean(Orange[Orange[,"Tree"]!=2,]$circumference,trim = 0.15)  
sd(Orange[Orange[,"Tree"]!=2,]$circumference)
hist(Orange[Orange[,"Tree"]!=2,]$circumference)
boxplot(Orange[,'circumference']~Orange[,"Tree"])
