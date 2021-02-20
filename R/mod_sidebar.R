#' sidebar UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_sidebar_ui <- function(id){
  ns <- NS(id)
  shinydashboard::sidebarMenu(id=ns("tabs"),
              shinydashboard::menuItem("Dashboard", tabName = "dashboard", icon = shiny::icon("dashboard")),
              
              #Display tabular representation of the data
              shinydashboard::menuItem("Tables", tabName = "table",icon = shiny::icon("table")),
    
              #Redirect to datasource social
              shinydashboard::menuItem("Social",icon = shiny::icon("external-link"), href = "https://www.twitter.com")
              )
}
    
#' sidebar Server Function
#'
#' @noRd 
mod_sidebar_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_sidebar_ui("sidebar_ui_1")
    
## To be copied in the server
# callModule(mod_sidebar_server, "sidebar_ui_1")
 
