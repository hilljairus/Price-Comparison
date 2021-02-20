#' body_table UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_body_table_ui <- function(id){
  ns <- NS(id)
  tagList(
 shinydashboard::box(width = 3,
     list(
      shinyWidgets::airDatepickerInput("s1","Pick a date"),
      shiny::selectInput("s2","Sector", c("Supermarkets","Pharmacy"))
     )),
 shinydashboard::box(width = 9, DT::dataTableOutput(ns("table")))
  )
}
    
#' body_table Server Function
#'
#' @noRd 
mod_body_table_server <- function(input, output, session){
  ns <- session$ns
 output$table<-DT::renderDataTable(iris)
}
    
## To be copied in the UI
# mod_body_table_ui("body_table_ui_1")
    
## To be copied in the server
# callModule(mod_body_table_server, "body_table_ui_1")
 
