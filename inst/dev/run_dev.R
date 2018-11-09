#based off: https://rtask.thinkr.fr/blog/our-shiny-template-to-design-a-prod-ready-app/

rstudioapi::documentSaveAll()
rm(list = ls(all.names = TRUE))# clean environneent
devtools::document('.') # create NAMESPACE and man
devtools::load_all('.') # load package
options(app.prod = FALSE) # TRUE = production mode, FALSE = development mode
# options(shinyreactlog = TRUE) # Press ctrl-F3 to view the reactivity diagram, could also try shiny::showReactLog()
shiny::runApp('inst/apps',
              launch.browser = TRUE) # run the main app
