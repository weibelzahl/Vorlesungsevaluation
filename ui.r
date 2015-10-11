library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  img(src = "logo.jpg", align = "right"),
  titlePanel("Evaluation von Vorlesungen (ab SS2015)"),
  verticalLayout(
    fileInput(
      'data_vorlesung', 'Limesurveydaten (R Export)',
      accept=c('text/csv', 
               'text/comma-separated-values,text/plain', 
               '.csv')
    ),
    selectInput('kategorie', 'Studiengang und Modul/Fach', choices = list(
      `BSc General Management 2. Semester` = 
        c(Alle = 'BScGM2', 
          "Wirtschaftsrecht; Prof. Dr. Bernd Rohlfing" = "BScGM2_1",
          "Steuerrecht; Dr. Frank Oettler" = "BScGM2_2",
          "Handelsrechtliche Bewertung; Prof. Dr. Antje-Britta Mörstedt" = "BScGM2_3",
          "Makroökonomik; Prof. Dr. Joachim Ahrens" = "BScGM2_4",
          "Grundlagen Wirtschaftsinformatik II; Prof. Dr. Hubert Schüle" = "BScGM2_5",
          "Statistik; Dr. Andrea Eickemeyer" = "BScGM2_6",
          "Produktion; Prof. Dr. Jürgen Bloech" = "BScGM2_7",
          "Marketing; Prof. Dr. Hans-Christian Riekhof" = "BScGM2_8",
          "Vertrieb; Prof. Dr. Michael Heinlein" = "BScGM2_9",
          "Englisch II; Robert Óbraonáin" = "BScGM2_10_1",
          "Englisch II; Hiltraud Haindorff" = "BScGM2_10_2",
          "Englisch II; Dorina Achelaritei" = "BScGM2_10_3",
          "2. Fremdsprache; Chinesisch - Weihong Chen-Dieckmann" = "BScGM2_11_1",
          "2. Fremdsprache; Spanisch - Mónica Naranjo-Merboldt" = "BScGM2_11_3",
          "2. Fremdsprache; Spanisch - Heike Georges" = "BScGM2_11_3",
          "Präsentationstechniken / Visualisierung / Rhetorik; Björn Thullner" = "BScGM2_12_1",
          "Präsentationstechniken / Visualisierung / Rhetorik; Katrin Schöft" = "BScGM2_12_2"),
      `BSc General Management 4. Semester` = 
        c(Alle = 'BScGM4', 
          "Controlling; Prof. Dr. Frank Albe" = "BScGM4_1",
          "Kostenrechnungssysteme; Prof. Dr. Frank Albe" = "BScGM4_2",
          "Bilanzen; Prof. Dr. Michael Dusemond" = "BScGM4_3",
          "Planspiel; Prof. Dr. Frank Albe" = "BScGM4_4",
          "Internationales Management;Prof. Dr. Hans-Christian Riekhof" = "BScGM4_5",
          "Wirtschaftspolitik; Prof. Dr. Joachim Ahrens" = "BScGM4_6",
          "Englisch IV; Robert Óbraonáin" = "BScGM4_7_1",
          "Englisch IV; Hiltraud Haindorff" = "BScGM4_7_2",
          "Englisch IV; Susan Schanz" = "BScGM4_7_3",
          "Fremdsprache IV; Chinesisch - Mingqiu Zhou" = "BScGM4_8_1",
          "Fremdsprache IV; Spanisch Fortgeschrittene - Mónica Naranjo-Merboldt" = "BScGM4_8_2",
          "Fremdsprache IV; Spanisch Anfänger - Heike Georges" = "BScGM4_8_3",
          "Fremdsprache IV; Französisch - Lyliane Pieper-Debeneix" = "BScGM4_8_4",
          "Teamtraining; Herr Björn Thullner" = "BScGM4_9",
          "Business Process Management; Prof. Dr. Hubert Schüle" = "BScGM4_10"),
      `Master General Management` = 
        c(Alle = 'MAGM', 
          "Auditing/ Revision; Prof. Dr. Frank Beine / Prof. Dr. Andrejewski" = "MAGM_1",
          "International Accounting; Prof. Dr. Michael Dusemond" = "MAGM_2",
          "Konzernrechnungslegung; Prof. Dr. Michael Dusemond" = "MAGM_3",
          "Innovationsmanagement; Prof. Dr. Manfred Zilling" = "MAGM_4",
          "Managment für den Mittelstand; Prof. Dr. Frank Albe /  Prof. Dr. Bernhard Vollmar" = "MAGM_5",
          "Unternehmensnachfolge;Prof. Dr. Bernhard Vollmar" = "MAGM_6",
          "Industrielles Management II; Prof. Dr. Jürgen Bloech" = "MAGM_7",
          "Tourism and Travel Management II; Prof. Dr. Frank Albe" = "MAGM_8",
          "Vertriebsmanagement II; Prof. Dr. Michael Heinlein" = "MAGM_9",
          "Internationales Marketing II;Prof. Dr. Hans-Christian Riekhof" = "MAGM_10",
          "E-Business II;Prof. Dr. Manfred Zilling / Prof. Dr. Hubert Schüle" = "MAGM_11",
          "Corporate Financial Management II; Prof. Dr. Bernhard Vollmar" = "MAGM_12",
          "International Political Economy;Prof. Dr. Joachim Ahrens" = "MAGM_13",
          "Englisch;Frau Susan Schan" = "MAGM_14",
          "Leadership-Training;Herr Andreas Biskup" = "MAGM_15"),
      Psychologie = c(`noch nicht implementiert` = 'Psy2')
    ), selectize = FALSE),
        dateInput('date2',
              label = paste('Datumsangabe im Report'),
              value = as.character(Sys.Date()),
              format = "dd/mm/yyyy",
              startview = 'month', language = 'de', weekstart = 1
    ),
    downloadButton('downloadPDF', "Erstelle PDF"),
    p(textOutput("datenstruktur")),
  hr(), 
  p("PFH Private Hochschule Göttingen; last update 11/10/2015", align = "right")
)))

