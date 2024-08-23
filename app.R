#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
install.packages("fastmap")

library(shiny)
library(ggplot2)
library(tidyr)
library(dplyr)

setwd("/Users/Evelyn Lilian/Desktop/Genómica Funcional/")

# Aquí llamaremos a nuestra tabla de datos y la guardaremos en una variable dentro de R
counts = read.table("metadata.txt", header=TRUE,  sep="\t", comment.char="") 

# Interfaz de usuario
ui <- fluidPage(
  titlePanel("Visualización Interactiva de Genes con Gráficos de Barras"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("genes", "Seleccione los genes a visualizar:", 
                  choices = counts$target_id, 
                  selected = counts$target_id[1],
                  multiple = TRUE),
      
      checkboxGroupInput("columns", "Seleccione las columnas para graficar:", 
                         choices = names(counts)[2:10], 
                         selected = names(counts)[2:3])
    ),
    
    mainPanel(
      plotOutput("barPlot")
    )
  )
)

# Lógica del servidor
server <- function(input, output) {
  
  output$barPlot <- renderPlot({
    # Filtrar los genes seleccionados
    selected_data <- counts %>%
      filter(target_id %in% input$genes)
    
    # Filtrar las columnas seleccionadas
    selected_data <- selected_data %>%
      select(target_id, all_of(input$columns))
    
    # Transformar los datos para ggplot2 usando pivot_longer
    melted_data <- selected_data %>%
      pivot_longer(cols = -target_id, names_to = "Column", values_to = "Value")
    
    # Graficar
    ggplot(melted_data, aes(x = target_id, y = Value, fill = Column)) +
      geom_bar(stat = "identity", position = "dodge") +
      theme_minimal() +
      labs(x = "Gene", y = "Valor", fill = "Columna") +
      scale_fill_brewer(palette = "Spectral")
  })
}

# Ejecutar la aplicación Shiny
shinyApp(ui = ui, server = server)
