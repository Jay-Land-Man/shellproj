#' The main server function for this shiny app
#'
#' @param input input object
#' @param output output object
#'
#' @export
app_server <- function(input, output, session) {
  shiny::callModule(shellproj::slider_text_server, "one")
  shiny::callModule(shellproj::slider_text_server, "two")
}
