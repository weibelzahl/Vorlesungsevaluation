library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  img(src = "logo.jpg", align = "right"),
  titlePanel("Evaluation von Vorlesungen (ab SS2016)"),
  verticalLayout(
    fileInput(
      'data_vorlesung', 'Limesurveydaten (R Export)',
      accept=c('text/csv', 
               'text/comma-separated-values,text/plain', 
               '.csv')
    ),
    # radioButtons('format', "Format", c("pdf"="pdf", "html"="html")),  
    selectInput('kategorie', 'Studiengang und Modul/Fach', choices = list(
      `BSc General Management 1. Semester` = 
        c(Alle = 'BScGM1', 
          "Mikroökonomik; Prof. Dr. Joachim Ahrens" = "BScGM1_1",
          "Gründungsmanagement; Prof. Dr. Bernhard H. Vollmar" = "BScGM1_2",
          "Methodisches Arbeiten I; Prof. Dr. Joachim Ahrens" = "BScGM1_3",
          "Grundlagen der Wirtschaftsinformatik I; Prof. Dr. Hubert Schüle" = "BScGM1_4",
          "Buchführung und Abschluss; Prof. Dr. Antje Mörstedt" = "BScGM1_5", 
          "Kosten- und Leistungsrechnung; Prof. Dr. Manfred P. Zilling" = "BScGM1_6",
          "Methodisches Arbeiten II; Joachim Algermissen" = "BScGM1_7",
          "Englisch I; Robert Óbraonáin" = "BScGM1_8_1",
          "Englisch I; Hiltraud Haindorff" = "BScGM1_8_2",
          "2. Fremdsprache; Chinesisch - Weihong Chen-Dieckmann" = "BScGM1_9_1",
          "2. Fremdsprache; Spanisch Fortgeschrittene - Mónica Naranjo-Merboldt" = "BScGM1_9_2",
          "2. Fremdsprache; Spanisch - Heike Georges" = "BScGM1_9_3",
          "2. Fremdsprache; Französisch - Heike Georges" = "BScGM1_9_4",
          "Zeitmanagement; Björn Thullner" = "BScGM1_10"),
      `BSc General Management 1. Semester (nur Mathematik und Einführung BWL)` = 
        c(Alle = 'BScGM1ABWL', 
          "Mathematik; Markus Ahlborn" = "BScGM1ABWL_1",
          "Einführung in die BWL; Prof. Dr. Frank Albe" = "BScGM1ABWL_2"),
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
          "Englisch II; Antje Menster" = "BScGM2_10_3",
          "2. Fremdsprache; Französisch - Heike George" = "BScGM2_11_1",
          "2. Fremdsprache; Spanisch - Mónica Naranjo-Merboldt" = "BScGM2_11_2",
          "2. Fremdsprache; Spanisch - Heike Georges" = "BScGM2_11_3",
          "2. Fremdsprache; Chinesisch - Weihong Chen-Dieckmann" = "BScGM2_11_4",
          "Präsentationstechniken / Visualisierung / Rhetorik; Björn Thullner" = "BScGM2_12_1",
          "Präsentationstechniken / Visualisierung / Rhetorik; Katrin Schöft" = "BScGM2_12_2"),
      `BSc General Management 3. Semester` = 
        c(Alle = 'BScGM3', 
          "Finanzierung/Investition;Prof. Dr. Bernhard H. Vollmar" = "BScGM3_1",
          "Organisation/Personal; Prof. Dr. Antje-Britta Mörstedt" = "BScGM3_2",
          "Logistische Prozesse; Dr. Lothar Herold" = "BScGM3_3",
          "Grundlagen Wirtschaftsinformatik III; Prof. Dr. Hubert Schüle" = "BScGM3_4",
          "BWL ausgewählter Wirtschaftssektoren; Prof. Dr. Michael Heinlein" = "BScGM3_5",
          "Globale Wirtschaft; Prof. Dr. Joachim Ahrens" = "BScGM3_6",
          "Fallstudien / Projektarbeit; Pro-City GmbH Göttingen - Prof. Dr. Ahrens" = "BScGM3_7_1",
          "Fallstudien / Projektarbeit; MAS-Analytics UG - Prof. Dr. Vollmar" = "BScGM3_7_2",
          "Fallstudien / Projektarbeit; Bio-Zentrale Naturprodukte GmbH - Prof. Dr. Voss" = "BScGM3_7_3",
          "Fallstudien / Projektarbeit; Göttinger Symphonie Orchester - Prof. Dr. Sierke" = "BScGM3_7_4",
          "Fallstudien / Projektarbeit; Regionales Demografie Netzwerk (ReDeNetz) - Prof. Dr. Mörstedt" = "BScGM3_7_5",
          "Fallstudien / Projektarbeit; Gemeinnütziger Tierschutzverein Herzenshunde von Feteni - Prof. Dr. Mörstedt" = "BScGM3_7_6",
          "Fallstudien / Projektarbeit; Deutsches Rotes Kreuz - Prof. Dr. Ahrens" = "BScGM3_7_7",
          "Fallstudien / Projektarbeit; Deloitte & Touche GmbH - Prof. Dr. Albe" = "BScGM3_7_8",
          "Englisch III; Robert Óbraonáin" = "BScGM3_8_1",
          "Englisch III; Hiltraud Haindorff" = "BScGM3_8_2",
          "Englisch III; Antje Menster" = "BScGM3_8_3",
          "2. Fremdsprache III; Chinesisch - Weihong Chen-Dieckmann" = "BScGM3_9_1",
          "2. Fremdsprache III; Spanisch Fortgeschrittene - Mónica Naranjo-Merboldt" = "BScGM3_9_2",
          "2. Fremdsprache III; Spanisch Anfänger - Heike Georges" = "BScGM3_9_3",
          "Soft Skills III; Michael Ballhause" = "BScGM3_10"),
      `BSc General Management 4. Semester` = 
        c(Alle = 'BScGM4', 
          "Controlling; Prof. Dr. Frank Albe" = "BScGM4_1",
          "Kostenrechnungssysteme; Prof. Dr. Frank Albe" = "BScGM4_2",
          "Bilanzen; Prof. Dr. Michael Dusemond" = "BScGM4_3",
          "Planspiel; Prof. Dr. Frank Albe" = "BScGM4_4",
          "Internationales Management; Prof. Dr. Hans-Christian Riekhof" = "BScGM4_5",
          "Wirtschaftspolitik; Prof. Dr. Joachim Ahrens" = "BScGM4_6",
          "Englisch IV; Antje Menster" = "BScGM4_7_1",
          "Englisch IV; Hiltraud Haindorff" = "BScGM4_7_2",
          "Englisch IV; Susan Schanz" = "BScGM4_7_3",
          "Fremdsprache IV; Chinesisch - Weihong Chen-Dieckmann" = "BScGM4_8_1",
          "Fremdsprache IV; Spanisch - Mónica Naranjo-Merboldt" = "BScGM4_8_2",
          "Fremdsprache IV; Spanisch - Heike Georges" = "BScGM4_8_3",
          "Teamtraining; Herr Björn Thullner" = "BScGM4_9",
          "Business Process Management; Prof. Dr. Hubert Schüle" = "BScGM4_10"),
      `BSc General Management 5. Semester` = 
        c(Alle = 'BScGM5', 
          "Corporate Law; Prof. Dr. Bernd Rohlfing" = "BScGM5_1",
          "Executive Management; Prof. Dr. Frank Albe, Prof. Dr. Hans-Christian Riekhof" = "BScGM5_2",
          "Strategisches Food and Agribusiness Management;Prof. Dr. Julian Voss" = "BScGM5_3",
          "Marketing für Lebensmittel und Agrarprodukte;Prof. Dr. Julian Voss" = "BScGM5_4",
          "Vertiefungsfach BWL I;Entrepreneurship - Prof. Dr. Manfred Zilling / Prof. Dr. Bernhard Vollmar" = "BScGM5_5_1",
          "Vertiefungsfach BWL I; Industrielles Management - Prof. Dr. Bloech" = "BScGM5_5_2",
          "Vertiefungsfach BWL I; Tourism and Travel Management - Prof. Dr. Albe" = "BScGM5_5_3",
          "Vertiefungsfach BWL I; International Accounting/Controlling - Prof. Dr. Andrejewski / Prof. Dr. Dusemond" = "BScGM5_5_4",
          "Vertiefungsfach BWL I; Internationales Marketing - Prof. Dr. Riekhof" = "BScGM5_5_5",
          "Vertiefungsfach BWL I; Vertriebsmanagement - Prof. Dr. Heinlein" = "BScGM5_5_6",
          "Vertiefungsfach BWL II;Entrepreneurship - Prof. Dr. Manfred Zilling / Prof. Dr. Bernhard Vollmar" = "BScGM5_6_1",
          "Vertiefungsfach BWL II; Industrielles Management - Prof. Dr. Bloech" = "BScGM5_6_2",
          "Vertiefungsfach BWL II; Tourism and Travel Management - Prof. Dr. Albe" = "BScGM5_6_3",
          "Vertiefungsfach BWL II; International Accounting/Controlling - Prof. Dr. Andrejewski / Prof. Dr. Dusemond" = "BScGM5_6_4",
          "Vertiefungsfach BWL II; Internationales Marketing - Prof. Dr. Riekhof" = "BScGM5_6_5",
          "Vertiefungsfach BWL II; Vertriebsmanagement - Prof. Dr. Heinlein" = "BScGM5_6_6",
          "Englisch V; Frau Susan Schanz" = "BScGM5_7_1",
          "Englisch V; Frau Marie Smith" = "BScGM5_7_2",
          "Fremdsprache V; Chinesisch - Mingqiu Zhou" = "BScGM5_8_1",
          "Fremdsprache V; Spanisch - Heike Georges" = "BScGM5_8_2",
          "Fremdsprache V; Spanisch - Mónica Naranjo-Merboldt" = "BScGM5_8_3",
          "Soft Skills V, Gesprächs- und Verhandlungsführung; Björn Thullner" = "BScGM5_9"),
      `BSc Psychologie/Wirtschaftspsychologie 1. Semester` = 
        c(Alle = 'BScPsy1', 
          "Historische Entwicklung der Psychologie; Prof. Dr. Michael Gutmann" = "BScPsy1_1",
          "Einführung in die Forschungsmethoden; Prof. Dr. Stephan Weibelzahl" = "BScPsy1_2",
          "Aktuelle Forschungsfelder der Psychologie; Prof. Dr. Anja Lepach" = "BScPsy1_3",
          "Statistik - Diskriptive Statistik; Prof. Dr. Monika Fleischhauer" = "BScPsy1_4",
          "Wahrnehmung und Sprache; Prof. Dr. Dorit Wenke" = "BScPsy1_5",
          "Lernen und Gedächtnis; Prof. Dr. Dorit Wenke" = "BScPsy1_6",
          "Biopsychologische Grundlagen; Prof. Dr. Anja Lepach" = "BScPsy1_7",
          "Biologische Psychologie Vertiefung; Prof. Dr. Anja Lepach" = "BScPsy1_8",
          "Differentielle Psychologie - Theoretische Ansätze; Prof. Dr. Monika Fleischhauer" = "BScPsy1_9",
          "Differentielle Psychologie - Vertiefung;Prof. Dr. Monika Fleischhauer" = "BScPsy1_10"),
      `BSc Psychologie/Wirtschaftspsychologie 2. Semester` = 
        c(Alle = 'BScPsy2', 
          "Wirtschaftspolitik;Prof. Dr. Joachim Ahrens" = "BScPsy2_1",
          "Statistik II - Testverfahren; Andreas Cordes" = "BScPsy2_2",
          "Statistik II - Computergestützte Datenanalyse; Andreas Cordes" = "BScPsy2_3",
          "Denken und Entscheiden; Prof. Dr. Dorit Wenke" = "BScPsy2_4",
          "Angewandte Entscheidungspsychologie; Prof. Dr. Dorit Wenke" = "BScPsy2_5",
          "Biologische Psychologie; Prof. Dr. Anja Lepach-Engelhardt" = "BScPsy2_6",
          "Differentielle Psychologie - Methoden und Intelligenz; Prof. Dr. Monika Fleischhauer" = "BScPsy2_7",
          "Differentielle Psychologie - Vertiefung; Prof. Dr. Monika Fleischhauer" = "BScPsy2_8",
          "Sozialpsychologie, Individuum und Soziale Welt; Prof. Dr. Frank Vogelgesang" = "BScPsy2_9",
          "Sozialpsychologie, Vertiefung; Prof. Dr. Frank Vogelgesang" = "BScPsy2_10",
          "Ökonomische Psychologie und Entscheidungen; Prof. Dr. Stephan Weibelzahl" = "BScPsy2_11",
          "Alltagsverständnis von Ökonomie und Arbeitsmärkte; Prof. Dr. Stephan Weibelzahl" = "BScPsy2_12",
          "Wirtschaftspsychologie - Vertiefung; Prof. Dr. Stephan Weibelzahl" = "BScPsy2_13",
          "Ablauf einer empirischen Untersuchung, Techniken wissenschaftlichen Arbeitens; Prof. Dr. Dorit Wenke" = "BScPsy2_14",
          "Moderation, Präsentation und Schreiben; Prof. Dr. Dorit Wenke, Karen Weiske" = "BScPsy2_15",
          "Entwicklungspsychologie - kognitive, emotionale und soziale Entwicklung; Prof. Dr. Anja Lepach-Engelhardt" = "BScPsy2_16",
          "Entwicklungspsychologie - ausgewählte Bereiche der Entwicklung; Prof. Dr. Anja Lepach-Engelhardt" = "BScPsy2_17"),
          `Master General Management (SS)` = 
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
      `Master General Management (WS)` = 
        c(Alle = 'MAGMWS', 
          "Unternehmensbewertung M&A; Prof. Dr. Frank Beine" = "MAGMWS_1",
          "Steuern; Dr. Frank Oettler" = "MAGMWS_2",
          "Corporate Finance; Prof. Dr. Kai C. Andrejewski" = "MAGMWS_3",
          "Strategische Unternehmensführung; Dr. Jobst-Walter Dietz" = "MAGMWS_4",
          "Human Resources Management; Prof. Dr. Antje Mörstedt" = "MAGMWS_5",
          "Organisation; Prof. Dr. Antje Mörstedt" = "MAGMWS_6",
          "Strategische Unternehmensführung; Prof. Dr. Jobst-Walter Dietz" = "MAGMWS_7",
          "Industrielles Management I; Prof. Dr. Jürgen Bloech" = "MAGMWS_8",
          "Tourism and Travel Management I; Prof. Dr. Frank Albe" = "MAGMWS_9",
          "Vertriebsmanagement I; Prof. Dr. Michael Heinlein" = "MAGMWS_10",
          "Internationales Marketing I; Prof. Dr. Hans-Christian Riekhof" = "MAGMWS_11",
          "E-Business I; Prof. Dr. Hubert Schüle" = "MAGMWS_12",
          "Corporate Financial Management I; Prof. Dr. Bernhard Vollmar" = "MAGMWS_13",
          "Englisch; Frau Susan Schanz" = "MAGMWS_14",
          "Konfliktmanagement; Andreas Biskup" = "MAGMWS_15"),
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

