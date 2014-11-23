# Load observations for viable Silver Beech seeds
silver <- read.csv("SilverBeechViable.csv", header=TRUE)

# Create empty plot frame
plot(silver$month, silver$Cum.Sum,
type="n",
xlab="Month during year 2014",
ylab="Cumulative count of viable Silver Beech seeds")

# Plot different lines for different locations
# Approach based on Figure 11.19 in 'R In Action 2ed' by Robert Kabacoff (pub: Manning)
sites <- c("Borer Flat", "Hunters Hill", "Rough Creek", "Station Creek", "Thisbe Stream", "Turret Head", "Wainui Stream")
elementCount <- length(sites)
colors <- rainbow(elementCount)
linetype <- c(1:elementCount)
plotchar <- seq(18, 18+elementCount, 1)

# For the slide example, two locations were used to illustrate pattern
# For this code, we'll implement a loop to draw the lines
# For the Shiny app, there will be a user-selectable group of sites (checkboxes) as the dynamic piece
for (i in 1:elementCount) 
{
    loc <- subset(silver, MonitoringPlace == sites[i])
    lines(loc$month, loc$Cum.Sum,
        type="b", lwd=2,
        lty=linetype[i],col=colors[i],pch=plotchar[i])
}
legend("topleft", inset=.05, title="[Site]", col=colors, pch=plotchar, sites)


