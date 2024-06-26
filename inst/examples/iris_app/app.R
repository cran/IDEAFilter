library(shiny)
library(IDEAFilter)
library(dplyr)
data(iris)
iris <- iris %>%
  mutate(Species_chr = as.character(Species))

ui <- fluidPage(
  titlePanel("Filter Data Example"),
  fluidRow(
    column(8,
           verbatimTextOutput("data_filter_code"),
           dataTableOutput("data_summary")
    ),
    column(4, IDEAFilter_ui("data_filter"))))

server <- function(input, output, session) {
  
  filtered_data <- IDEAFilter("data_filter", data = iris, verbose = FALSE)
  
  output$data_filter_code <- renderPrint({
    cat(gsub("%>%", "%>% \n ",
             gsub("\\s{2,}", " ",
                  paste0(
                    capture.output(attr(filtered_data(), "code")),
                    collapse = " "))
    ))
  })
  
  output$data_summary <- renderDataTable({
    filtered_data() 
  }, 
  options = list(
    scrollX = TRUE,
    pageLength = 5
  ))
  
}

shinyApp(ui = ui, server = server)