presidents <- read.fwf("ch02_presidents", widths = c(9, 15, 3), col.names = c("id","name","months"))

with(
  data=presidents, 
   {
    plot(months, rep(2.5, length(months)),
         main = "dot plot and jitter plot",
         xlab = "months", ylab = "",
         pch = 15, col = "blue", 
         xlim = c(0, 150), ylim=c(0, 3))
    
    points(months, jitter(rep(1.5, length(months)), 20), col = "black")
    })
