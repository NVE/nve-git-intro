require(stats)

data <- cars

for (i in 1:10) {
  
  write.table(data, file = paste("Cars", i, ".txt", sep = ""))
  
}