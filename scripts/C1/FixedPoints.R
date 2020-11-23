library(arrangements)

n <- 10
p <- data.frame(permutations(n,n))

for (j in 1:n){
    p[[paste0('X',j)]] <- (p[[paste0('X',j)]] == j)*1
}

p$rs <- rowSums(p[1:n])
print(sum(p$rs==0)/length(p$rs))