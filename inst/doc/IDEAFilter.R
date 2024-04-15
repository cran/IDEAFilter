## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(IDEAFilter)
#  library(dplyr)
#  shinyApp(
#    ui = fluidPage(
#      titlePanel("Filter Data Example"),
#      fluidRow(
#        column(8, dataTableOutput("data_summary")),
#        column(4, IDEAFilter_ui("data_filter")))),
#    server = function(input, output, session) {
#      filtered_data <- IDEAFilter("data_filter", data = iris, verbose = FALSE)
#      output$data_summary <-
#        renderDataTable(filtered_data(),
#      options = list(scrollX = TRUE, pageLength = 5))
#    }
#  )

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(IDEAFilter)
#  app <- system.file("examples", "starwars_app", package = "IDEAFilter")
#  runApp(app)

## ----eval=FALSE---------------------------------------------------------------
#  list(
#    is_droid = list(filter_na = TRUE, filter_fn = ~ isTRUE(.x)),
#    mass = list(filter_fn = ~ .x < 50))
#  )

