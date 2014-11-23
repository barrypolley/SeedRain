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
  })
  beech(silver)
  # "beech" is the plot name
  # renderPlot

})



