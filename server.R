silver <- read.csv("SilverBeechViable.csv", header=TRUE)

shinyServer(function(input, output) {

  # Remove this and reference in ui.R when code works
  output$value <- renderPrint({ input$siteGroup })

  # Use the input checkboxes to determine which lines to plot
  output$beech <- renderPlot({
    ## frame
    plot(silver$month, silver$Cum.Sum,
         type="n",
         xlab="Month during year 2014",
         ylab="Cumulative count of viable Silver Beech seeds")
    ## setup
    sites <- c("Borer Flat", "Hunters Hill", "Rough Creek", "Station Creek", "Thisbe Stream", "Turret Head", "Wainui Stream")
    elementCount <- length(sites)
    colors <- rainbow(elementCount)
    linetype <- c(1:elementCount)
    plotchar <- seq(18, 18+elementCount, 1)
    ## lines
    for (i in 1:elementCount) 
    {
      loc <- subset(silver, MonitoringPlace == sites[i])
      lines(loc$month, loc$Cum.Sum,
            type="b", lwd=2,
            lty=linetype[i],col=colors[i],pch=plotchar[i])
    }
    ## legend
    legend("topleft", inset=.05, title="[Site]", col=colors, pch=plotchar, sites)
  })

})



