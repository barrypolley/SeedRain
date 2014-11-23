silver <- read.csv("SilverBeechViable.csv", header=TRUE)

shinyUI(fluidPage(
  titlePanel("Seed Fall Counts for 2014"),

  sidebarLayout(
    sidebarPanel( 
      h3("How To"),
      p("Compare the seed fall for the 2014 season across several New Zealand sites by selecting and unselecting the checkboxes. A strong upward trend..."),
      br(),
      p("The slide show explains what this pattern means for conservation."),
      br(),
      checkboxGroupInput("siteGroup", 
        label = h3("Sites"), 
        choices = list("Borer Flat" = 1, 
           "Hunters Hill" = 2, "Rough Creek" = 3,
           "Station Creek" = 4, "Thisbe Stream" = 5,
           "Turret Head" = 6, "Wainui Stream" = 7))
      ),
    mainPanel(
      h2("Seed counts by month"),
      p("plot will go here")
      )
  )
))