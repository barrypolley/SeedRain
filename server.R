shinyServer(function(input, output) {

  # Use the input checkboxes to determine which lines to plot
  output$value <- renderPrint({ input$siteGroup })

})


