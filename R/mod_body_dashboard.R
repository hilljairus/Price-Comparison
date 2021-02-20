#' body_dashboard UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_body_dashboard_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      shinydashboard::infoBoxOutput(ns("number_of_data")),
      shinydashboard::infoBoxOutput(ns("number_week_promotion")),
      shinydashboard::infoBoxOutput(ns("shop_of_the_week"))
    ),
    fluidRow(
        shinydashboard::box(title = "This week's summary",width = 6,
                            h3("Summary here"), 
                            verbatimTextOutput(ns("summary"))
                            ),
        shinydashboard::box(title = "Promotions", width = 6, 
                            h3("Week's Promotions here")
                            )
                                 
             
    )
 
  )
}
    
#' body_dashboard Server Function
#'
#' @noRd 
mod_body_dashboard_server <- function(input, output, session){
  ns <- session$ns
 output$number_of_data<-renderInfoBox(
   infoBox(title = "Number of Research conducted")
 )
 output$number_week_promotion<-renderInfoBox(
   infoBox(title = "Promotions this week")
 )
 output$shop_of_the_week<-renderInfoBox(
   infoBox(title = "Cheapest Shop")
 )
}
    
## To be copied in the UI
# mod_body_dashboard_ui("body_dashboard_ui_1")
    
## To be copied in the server
# callModule(mod_body_dashboard_server, "body_dashboard_ui_1")
 
