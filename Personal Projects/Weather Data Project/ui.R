library(shiny)

fluidPage(
  
  # Give the page a title
  titlePanel("Average Temperature for Vancouver, B.C."),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("month", "Month:", mymonths),
      
      hr(),
      helpText("Data from the Government of Canada Website.")
    ),
    
    # Create a spot for the plot
    mainPanel(
      plotOutput("VanPlot")  
    )
    
  )
)


