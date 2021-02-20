#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
 callModule(mod_header_server,"notification")
 callModule(mod_body_dashboard_server,"dashboard")
 callModule(mod_body_table_server,"table")
}
