#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
   shinydashboardPlus::dashboardPagePlus(
     dashboardHeader(title = title("BEIYAUKWELI"),
                     mod_header_ui("notification")),
     dashboardSidebar(mod_sidebar_ui("sidebar")),
     dashboardBody(
       tabItems(
         tabItem(tabName = "dashboard", mod_body_dashboard_ui("dashboard")),
         tabItem(tabName = "table", mod_body_table_ui("table"))
        
       )
     )
   )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'beiyaukweli'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

