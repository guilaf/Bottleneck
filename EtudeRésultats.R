result<-read.table("C:\\Users\\glafforgue\\Desktop\\Marie\\Bottleneck\\combi_result.csv",sep=";",header=TRUE) 

result1 <- result[ , - c(6:9)]

ResultTrue <- subset(result1, cte != FALSE)

# Elimination des doublons
ResultTrue <- ResultTrue[!duplicated(ResultTrue[,]),]

a <-table(ResultTrue[,1])
b <- table(ResultTrue[,2])
tA <-table(ResultTrue[,3])
tD <-table(ResultTrue[,4])
ma <-table(ResultTrue[,5])

print("a :")
print(a)

print("b :")
print(table(ResultTrue[,2]))

print("tA :")
print(table(ResultTrue[,3]))

print("tD :")
print(table(ResultTrue[,4]))

print("ma :")
print(table(ResultTrue[,5]))

ab <- table(ResultTrue[,1:2])

tAtD <- table(ResultTrue[,3:4])

abtAtD <- table(ResultTrue[,1:4])
abtAtDm <- table(ResultTrue)
abm <-  subset(ResultTrue, select=c(a, b, ma))
abm <- table(abm)

table(ResultTrue[,3]==30 & ResultTrue[,4]==30)
qsd = subset(ResultTrue, ResultTrue[,1]==1 & ResultTrue[,2]==1)
plot(jitter(qsd[,3], 0.8), jitter(qsd[,4], 0.8))
table(qsd[,3:4])


max(abtAtDm)

plot(ab)
plot(tAtD)

write.table(ResultTrue, "GroupTrue.csv", row.names=TRUE, quote = FALSE, na = "", sep = ";") 


