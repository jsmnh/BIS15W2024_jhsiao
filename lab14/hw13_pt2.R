# HW 13 Part 2
UC_admit <- read_csv("data/UC_admit.csv")

ui <- dashboardPage(
  
  dashboardHeader(title = "Admissions by Ethinicity Across UC Campuses"),
  
  dashboardSidebar(disable=T),
  
  dashboardBody(
    fluidRow(
      box(title = "Plot Options", width = 2, #can control size of boxes
          
          selectInput("x", "Select Year", choices = c("2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019"), selected = "2010"),
          
          selectInput("y", "Select Campus", choices = c("Berkeley", "Davis", "Irvine", "Los_Angeles", "Merced", "Riverside", "San_Diego", "Santa_Barbara", "Santa_Cruz"), selected = "Berkeley"),
          
          radioButtons("z", "Select Category", choices = c("Admits", "Applicants", "Enrollees"), selected = "Admits"),
          
      ), # close the first box    
      
      box(title = "Plot of UC Admission Data", width = 9,
          plotOutput("plot", width = "800px", height = "600px")
      ) # close the second box
    ) # close the row
  ) # close the dashboard body
) # close the ui

server <- function(input, output, session) {
  
  session$onSessionEnded(stopApp) #automatically stop the app when close it
  
  output$plot <- renderPlot({
    UC_admit %>% 
      filter(Academic_Yr==input$x & Campus==input$y & Category==input$z) %>% 
      ggplot(aes(x=reorder(Ethnicity, FilteredCountFR), y=FilteredCountFR))+
      geom_col(fill="pink2", alpha=0.6, color="grey20")+
      theme_light()+
      labs(x="Ethnicity",
           y="Count")
  })
}

shinyApp(ui, server)