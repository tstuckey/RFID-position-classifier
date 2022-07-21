library(e1071)
x=matrix (rnorm (20*2) , ncol =2)
y <- c(rep (-1,10) , rep (1 ,10) )
x[y==1 ,]= x[y==1,] + 1
plot(x, col = (3 - y))

dat <- data.frame(x=x, y=as.factor (y))
svmfit = svm(y ~ .,  data = dat ,  kernel ="radial" ,  cost =1,  scale =FALSE )
plot(svmfit, dat)
