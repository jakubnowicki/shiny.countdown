library(shiny)
library(shiny.countdown)

ui <- fluidPage(
    countdownOutput("counter")
)

server <- function(input, output) {
    output$counter <- renderCountdown({
        countdown("2015-11-12T13:00:00")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
