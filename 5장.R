#도수분포표 작성
favorite <- c('WINTER','SUMMER','SPRING', 'SUMMER','SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite)
table(favorite)/length(favorite)

ds <- table(favorite)
ds
barplot(ds, main = 'favorite season')
pie(ds, main = 'favorite season')

favorite.color <- c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2)
ds <- table(favorite.color)
ds
barplot(ds, main='favorite color')
colors <- c('green', 'red', 'blue')
names(ds) <- colors
ds
barplot(ds, main = 'favorite colors', col = )
pie(ds, main = 'favorite color', col = c('green', 'red', 'blue'))
