# HW 13 Part 3
UC_admit <- read_csv("data/UC_admit.csv")

ui <- dashboardPage(
  
  dashboardHeader(title = "Admissions Across UC Campuses 2010-2019"),
  
  dashboardSidebar(disable=T),
  
  dashboardBody(
    fluidRow(
      box(title = "Plot Options", width = 3, #can control size of boxes
          
          selectInput("x", "Select Campus", choices = c("Berkeley", "Davis", "Irvine", "Los_Angeles", "Merced", "Riverside", "San_Diego", "Santa_Barbara", "Santa_Cruz"), selected = "Berkeley"),
          
          radioButtons("y", "Select Category", choices = c("Admits", "Applicants", "Enrollees"), selected = "Admits"),
          
          selectInput("z", "Select Ethnicity", choices = c("African American", "All", "American Indian", "Asian", "Chicano/Latino", "International", "Unknown", "White"), selected = "African American"),
          
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
      mutate(Academic_Yr=as.factor(Academic_Yr)) %>% 
      filter(Campus==input$x & Category==input$y & Ethnicity==input$z) %>% 
      ggplot(aes(x=Academic_Yr, y=FilteredCountFR))+
      geom_col(fill="royalblue", alpha=0.6, color="grey20")+
      theme_light()+
      labs(x="Year",
           y="Count")
  })
}

shinyApp(ui, server)