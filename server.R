server <- function(input, output) { 
  data <- cars
  
  output$fig1<- renderPlotly({
    ggplotly(ggplot(data=data, aes(x=speed, y=dist)) +
               geom_line(linetype = "dashed", color = 'red')+
               geom_point())
  })
  
  output$fig2<- renderPlotly({
    ggplotly(ggplot(data=data, aes(x=speed, y=dist)) +
               geom_line(linetype = "dashed", color = 'blue')+
               geom_point())
    
  })
  
  output$fig3<- renderPlotly({
    ggplotly(ggplot(data=data, aes(x=speed, y=dist)) +
               geom_line(linetype = "dashed", color = 'blue')+
               geom_point())
    
  })
  
  data2 <- diamonds
  
  group_cut <- data2%>%
    group_by(cut) %>% 
    summarise(n = n())
  
  output$fig3 <- renderPlotly({
    ggplotly(ggplot(data=group_cut, aes(x=cut, y=n))+
               geom_bar(fill ="orange",
                         stat = "identity"))
             
  })
  
  
  }

