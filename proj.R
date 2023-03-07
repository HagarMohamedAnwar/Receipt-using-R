
#Hagar Mohamed 20107325 & Mohamed Wael 20107387

print("Please choose the data you want to select from")
data <- read.csv(file.choose())

count=0

print(data)
print("Enter the item number you want to select")
print("You can enter -1 to quit")
while(TRUE){
  choice <- as.integer(readline(prompt = ))
  if(choice %in% as.integer(rownames(data)) == TRUE)
  {
    data[choice,3]=data[choice,3]+1
    count=count+1
    print("Next item:")
  } 
  else if(choice == -1) 
  {
    break
  } 
  else
  {
    print("Wrong value, please enter a valid number:")
  }
}

mean <- mean(data[data$Ordered > 0,2])
min <- min(data[data$Ordered > 0,2])
max <- max(data[data$Ordered > 0,2])
sum <- 0
prt = function()
{
  
cat("Receipt\nMF STORE\n")
for(i in 1: nrow(data))
{
  if(data[i,3]>0)
  {
    cat(data[i,3],"x",data[i,1],"\n")
    sum <- sum + data[i,2]*data[i,3]
  }
}

cat("Number of items: ",count,"\n")
cat("Mean price of all items: ",mean,"$\n")
cat("Min item price: ",min,"$\n")
cat("Max item price: ",max,"$\n")
cat("Required to pay: ",sum,"$\n")
}
prt()