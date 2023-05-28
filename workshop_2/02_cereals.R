library(shiny)
library(DT)
library(readr)
library(dplyr)
library(plotly)

# Read in data ---------------------------------------------------------

df <- read_csv("data/cereal_clean.csv") |> select(-Manufacturer)
nutrient_dense <- c( "Carbs", "Fiber",  "Potassium","Protein", "Vitamins")

# UI section ------------------------------------------------------------


ui <- fluidPage(
  
  # Header section -------------------------------------------------------
  
  
  fluidRow(style="padding:40px; background: #03bf7b; color: #ffffff; text-align:center",
           icon("bowl-rice", "fa-2xl", lib = "font-awesome"),
           h1("Adult Cereal Selector")
  ), # end fluid row
  
  fluidRow(style="padding:40px; background: #f2f2f2",
           h3("Nutritional Density ", align="center"),
           p("Let's start by ranking cereals based on their nutritional density. Which ones have more of the 'good stuff'? ", align="center")
  ), # end fluid row
  
  # Bar chart section -------------------------------------------------------
  fluidRow(
    column(3,radioButtons(inputId="bar_var", #references the input to server
                          label = h3("Select Variable"), # text that appears on UI
                          choices=nutrient_dense,
                          selected="Protein")),
    column(9, plotOutput("bar_plot"))
  ),
  # Data table section ----------------------------------------------------
  DTOutput("table"),
  # Scatter plot section --------------------------------------------------
  plotlyOutput("scatter_plot")
  
) # end UI


# Server section -------------------------------------------------------

server <- function(input, output, session) {
  
  # Bar chart section -------------------------------------------------------
  
  # render barchart
  output$bar_plot <- renderPlot({
    ggplot(df |> arrange(desc(.data[[input$bar_var]])) |> head(10),
           aes(y=.data[[input$bar_var]], 
               x=Name)) + 
      geom_bar(stat="identity", fill = "#0add8c") +
      theme(axis.title.x=element_blank())
  })
  
  # Data table section ----------------------------------------------------
  
  # render table
  output$table <- renderDT(df |> arrange(desc(Protein)) |> head(10))
  
  # Scatter plot section --------------------------------------------------
  
  # render scatterplot
  output$scatter_plot <- renderPlotly({plot_ly(data = df, x= ~Protein, y = ~Sugars,
                                               type = "scatter", mode = "markers",
                                               hovertemplate = paste0(
                                                 df$Name, "<br>", "Protein", ": %{x}<br>", "Sugars", ": %{y}<extra></extra>")) 
  })
  
  
}

shinyApp(ui, server)