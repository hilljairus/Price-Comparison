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
      shinydashboard::valueBoxOutput(ns("number_of_data")),
      shinydashboard::valueBoxOutput(ns("number_week_promotion")),
      shinydashboard::valueBoxOutput(ns("shop_of_the_week"))
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
 output$number_of_data<-shinydashboard::renderValueBox(
   shinydashboard::valueBox(8,"Number of Research conducted")
 )
 output$number_week_promotion<-shinydashboard::renderValueBox(
   shinydashboard::valueBox(5, "Promotions this week",color = "purple")
 )
 output$shop_of_the_week<-shinydashboard::renderValueBox(
   shinydashboard::valueBox("Naivas","Cheapest Shop",color ="yellow")
 )
}
    
## To be copied in the UI
# mod_body_dashboard_ui("body_dashboard_ui_1")
    
## To be copied in the server
# callModule(mod_body_dashboard_server, "body_dashboard_ui_1")
 
