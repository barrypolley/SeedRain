silver <- read.csv("SilverBeechViable.csv", header=TRUE)

plot(silver$month, silver$Cum.Sum,
     type="n",
     xlab="Month during year 2014",
     ylab="Cumulative count of viable Silver Beech seeds")

shinyServer(function(input, output) {

  # Use the input checkboxes to determine which lines to plot
  output$value <- renderPrint({ input$siteGroup })
# beech
# renderPlot

})


