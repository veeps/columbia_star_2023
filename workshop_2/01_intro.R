library(shiny)

ui <- fluidPage(
    h1("Sample of UI elements"),
    actionButton("meow", "Click Here"),
    p("Here are my widgets:"),
    sliderInput(inputId = "slider", # input ID to connect to server
                 label= "Value:", min=0, max=100, value=55),
    selectInput(inputId = "animals", # input ID to connect to server
                label = "Pick an animal", # Text to display on UI
                choices = c("cat", "bear", "dog")),
    radioButtons(inputId= "radio",
                 label = "Select your beverage",
                 choices=c("coffee", "sparkling water", "regular water", "juice", "beer", "wine")),
    checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                       selected = 1),
    dateRangeInput("dates", label = h3("Date range"))
    
)

server <- function(input, output, session) {
    
}

shinyApp(ui, server)