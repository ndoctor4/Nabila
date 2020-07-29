library(shiny)
library(tidyverse)

function(input, output) {
  
  v1 <- reactive({
    filter(Van17, MonthAbb == input$month)
  })
  
  v2 <- reactive({
    filter(Van18, MonthAbb == input$month)
  })
  
  v3 <- reactive({
    filter(Van19, MonthAbb == input$month)
  })
  
  output$VanPlot <- renderPlot({
    ymin = min(v1()$MeanTemp, v2()$MeanTemp, v3()$MeanTemp, na.rm=T)
    ymax = max(v1()$MeanTemp, v2()$MeanTemp, v3()$MeanTemp, na.rm=T)
    
    plot(x=v1()$Day, y=v1()$MeanTemp, type="l", 
         xlab = "Days", ylab = "Average Temperature in Celsius",
         xlim = c(0,max(v1()$Day)), ylim = c(ymin,ymax),
         col="turquoise3", lwd=2)
    lines(x=v2()$Day, y=v2()$MeanTemp, col="violetred2", lwd=2)
    lines(x=v3()$Day, y=v3()$MeanTemp, col="springgreen3", lwd=2)
    
    par(xpd=TRUE)
    legend(x=max(v1()$Day)-2, y=ymax+2, legend=c("2017", "2018", "2019"),
           col=c("turquoise3", "violetred2", "springgreen3"), 
           lty=c(1,1,1), cex=0.8)
    
  })
}