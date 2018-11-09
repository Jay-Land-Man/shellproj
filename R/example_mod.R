# This is where you would put your modules in separate scripts

#' The slider modular ui
#'
#' @param id the relevant prefix
#'
#' @return html that builds the slider
#' @export
slider_text_ui <- function(id) {

  ns <- shiny::NS(id)

  shiny::tagList(
    shiny::sliderInput(ns("slider"), "Slide me", 0, 100, 1),
    shiny::textOutput(ns("number"))
  )
} # Keep all of the objects in the global environment nice and unique

#' The slider mod server
#'
#' @param input input class object
#' @param output output class object
#' @param session
#'
#' @return a reactive procedure/set of instructions
#' @export
slider_text_server <- function(input, output, session) { # Notice that the session in included as it is used by the callModule function
  output$number <- shiny::renderText({
    input$slider
  }) # You do not have to use ns() >> shiny will match
}
