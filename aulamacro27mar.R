
###### alimentar o programa com os dados (taxa de juros, selic)
###### taxa de juros pessoa física
tx<-read.csv2("taxa1.csv", header = T)
head(tx)
class(tx)
txst<-ts(tx, start = c(2011, 03), frequency = 12)
txst

###### selic
selic<-read.csv2("selic1.csv", header = T)
head(selic)
selicst<- ts(selic, start = c(2011, 03), frequency = 12)
selicst

############# gráficos lado a lado
par(mfrow=c(1,2))

plot(txst, col='orange', main = 'juros pessoa física', ylab = "taxa de juros",
     xlab="meses/anos")
plot(selicst, col='blue', main = "selic mensal", ylab= "selic", xlab="meses/anos")

