library(shiny)
library(ggplot2)
# options(error=recover)

shinyServer(function(input, output) {

  output$downloadPDF <-
    downloadHandler(
      filename = function() {
        paste("Vorlesungsevaluation_", paste(as.character(input$kategorie)), ".pdf", sep = "")
      },
      content = function(file) {
        # get file
        inFile <- input$data_vorlesung

        # hand over config
        studiengang_modul_id <- paste(as.character(input$kategorie))
        datum <- paste("", format(input$date2, format = "%d.%m.%Y"))

        # generate PDF
        library(knitr)
        knit2pdf("generic_vorlesung_mini.rnw", encoding = "UTF-8")

        # copy pdf to 'file'
        file.copy("generic_vorlesung_mini.pdf", file)
        
        # delete generated files
        file.remove(
          "generic_vorlesung_mini.pdf", 
          "generic_vorlesung_mini.tex",
          "generic_vorlesung_mini.aux", 
          "generic_vorlesung_mini.log",
          "generic_vorlesung_mini.toc"
        )
        
        # delete folder with plots
        unlink("figure", recursive = TRUE)
      },
      contentType = "application/pdf"
    )
})
