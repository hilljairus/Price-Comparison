#' header UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' 
title<-function(name){
  shiny::tags$a(href="https://osdashboard.shinyapps.io/Dashboard/",
                shiny::tags$img(src="www/logo.jpg", class="img-circle", height='40'),
                name)
}
mod_header_ui <- function(id){
  ns <- NS(id)
 dropdownMenuOutput(ns("notification"))
  
}
    
#' header Server Function
#'
#' @noRd 
mod_header_server <- function(input, output, session){
  ns <- session$ns
  output$notification<-shinydashboard::renderMenu(
    shinydashboard::dropdownMenu(type="notification", badgeStatus = "primary", icon = icon("bell"),
                                 shinydashboard::notificationItem(
                                   icon = icon("info-circle"), status = "info",
                                   text = shiny::div("Contact ---")
                                 )
                                 )
  )
 
}
    
## To be copied in the UI
# mod_header_ui("header_ui_1")
    
## To be copied in the server
# callModule(mod_header_server, "header_ui_1")
 
