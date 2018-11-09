#' Calls functions that into html page
#'
#' @export
#'
app_ui <- function(){
  shiny::fluidPage(
    shellproj::slider_text_ui("one"),
    shellproj::slider_text_ui("two")
  )
}
