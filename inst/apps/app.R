

server_fn <- function(input, output, session) {
  shellproj::app_server(input, output, session #,
                        # data = "specitfy your file path"
  ) # A separate function that allows you to call an external and independent data source
}

app <- shiny::shinyApp(ui = shellproj::app_ui(),
                       server = server_fn
)

