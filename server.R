

library(shiny)
library(datasets)


shinyServer(function(input, output) {
  
  
  # Reactive expression to compose a data frame containing all of the values
  resposta <- reactive({
    
    rooms<-as.numeric(input$rooms)
if(input$area=="Area1"){area<-1}
if(input$area=="Area2"){area<-2}
if(input$area=="Area3"){area<-3}
if(input$area=="Area4"){area<-4}
if(input$area=="Area5"){area<-5}
if(input$area=="Area6"){area<-6}
if(input$area=="Area7"){area<-7}
if(input$area=="Area8"){area<-8}
if(input$area=="Area9"){area<-9}
if(input$area=="Area10"){area<-10}
if(input$area=="Area11"){area<-11}

    
    result<- 4.573339*rooms + 1.675435*input$m2 + 20.732307*area
    result<-round(result)

    
    # Compose data frame
    data.frame(
      Name = c("Rooms", 
               "Square meters",
               "Neighborhood",
               "The value of your home in thousands of dollars is:"),
      
      Value = as.character(c(input$rooms, 
                             input$m2,
                             input$area,
                             result)), 
      stringsAsFactors=FALSE)
  })   
  
  
  

  
  
  # Show the values using an HTML table
    output$values <- renderTable({
    resposta()
  })

# Generate an HTML table view of the data
output$table <- renderTable({
base
})
  
})



