library("tidyverse")
library(shiny)

homerange <- read_csv("data/Tamburelloetal_HomeRangeDatabase.csv")

ui <- fluidPage(
  
  radioButtons("x", "Select Fill Variable", choices=c("trophic.guild", "thermoregulation"), 
               selected = "trophic.guild"),
  
  plotOutput("plot") 
)

server <- function(input, output, session) {
  output$plot <- renderPlot({ #Make a plot
    
    ggplot(data=homerange, aes_string(x="locomotion",fill=input$x))+
      geom_bar(positon="dodge", alpha=0.8, color="black")+
      labs(x=NULL, fill="Fill Variable")
    
    
  })
  
}

shinyApp(ui, server)