k <- start + 1
# LimeSurvey Field type: A
data[, k] <- as.character(data[, k])
attributes(data)$variable.labels[k] <- "[Vermittlung von Fachwissen] Lehr-/Lerninhalte der Vorlesung \"Wirtschaftsrecht\""
data[, k] <- factor(data[, k], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k] <- "k1a_SQ001"
# LimeSurvey Field type: A
data[, k+1] <- as.character(data[, k+1])
attributes(data)$variable.labels[k+1] <- "[Vermittlung von Methoden wissenschaftlichen Arbeitens] Lehr-/Lerninhalte der Vorlesung \"Wirtschaftsrecht\""
data[, k+1] <- factor(data[, k+1], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+1] <- "k1a_SQ002"
# LimeSurvey Field type: A
data[, k+2] <- as.character(data[, k+2])
attributes(data)$variable.labels[k+2] <- "[Schulung meines wissenschaftlich-fachlichen Denkens] Lehr-/Lerninhalte der Vorlesung \"Wirtschaftsrecht\""
data[, k+2] <- factor(data[, k+2], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+2] <- "k1a_SQ003"
# LimeSurvey Field type: A
data[, k+3] <- as.character(data[, k+3])
attributes(data)$variable.labels[k+3] <- "[Anregung zu kritischer Reflexion] Lehr-/Lerninhalte der Vorlesung \"Wirtschaftsrecht\""
data[, k+3] <- factor(data[, k+3], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+3] <- "k1a_SQ004"
# LimeSurvey Field type: A
data[, k+4] <- as.character(data[, k+4])
attributes(data)$variable.labels[k+4] <- "[Angemessener Praxisbezug] Lehr-/Lerninhalte der Vorlesung \"Wirtschaftsrecht\""
data[, k+4] <- factor(data[, k+4], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+4] <- "k1a_SQ005"
# LimeSurvey Field type: A
data[, k+5] <- as.character(data[, k+5])
attributes(data)$variable.labels[k+5] <- "[Konzeption und Aufbau der Vorlesung] Vermittlung der Lern-/Lehrinhalte"
data[, k+5] <- factor(data[, k+5], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+5] <- "k1b_SQ001"
# LimeSurvey Field type: A
data[, k+6] <- as.character(data[, k+6])
attributes(data)$variable.labels[k+6] <- "[Klarheit der Lernziele (zu erwerbendes bzw. vertiefendes Wissen)] Vermittlung der Lern-/Lehrinhalte"
data[, k+6] <- factor(data[, k+6], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+6] <- "k1b_SQ002"
# LimeSurvey Field type: A
data[, k+7] <- as.character(data[, k+7])
attributes(data)$variable.labels[k+7] <- "[Didaktische Fähigkeiten der/des Lehrenden zur Vermittlung und Veranschaulichung der Inhalte] Vermittlung der Lern-/Lehrinhalte"
data[, k+7] <- factor(data[, k+7], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+7] <- "k1b_SQ003"
# LimeSurvey Field type: A
data[, k+8] <- as.character(data[, k+8])
attributes(data)$variable.labels[k+8] <- "[Anregende und lebendige Gestaltung der Vorlesung] Vermittlung der Lern-/Lehrinhalte"
data[, k+8] <- factor(data[, k+8], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+8] <- "k1b_SQ004"
# LimeSurvey Field type: A
data[, k+9] <- as.character(data[, k+9])
attributes(data)$variable.labels[k+9] <- "[Zur Verfügung gestellte Materialien] Vermittlung der Lern-/Lehrinhalte"
data[, k+9] <- factor(data[, k+9], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+9] <- "k1b_SQ005"
# LimeSurvey Field type: A
data[, k+10] <- as.character(data[, k+10])
attributes(data)$variable.labels[k+10] <- "[Angemessener Einsatz von Medien] Vermittlung der Lern-/Lehrinhalte"
data[, k+10] <- factor(data[, k+10], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+10] <- "k1b_SQ006"
# LimeSurvey Field type: A
data[, k+11] <- as.character(data[, k+11])
attributes(data)$variable.labels[k+11] <- "[Möglichkeiten zur aktiven Beteiligung und Mitarbeit in der Vorlesung (entsprechend der Anzahl der Teilnehmer/innen in der Veranstaltung)] Vermittlung der Lern-/Lehrinhalte"
data[, k+11] <- factor(data[, k+11], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+11] <- "k1b_SQ007"
# LimeSurvey Field type: A
data[, k+12] <- as.character(data[, k+12])
attributes(data)$variable.labels[k+12] <- "[Bereitschaft der/des Lehrenden, Vorschläge, Rückmeldungen und Kritik offen aufzunehmen] Vermittlung der Lern-/Lehrinhalte"
data[, k+12] <- factor(data[, k+12], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+12] <- "k1b_SQ008"
# LimeSurvey Field type: A
data[, k+13] <- as.character(data[, k+13])
attributes(data)$variable.labels[k+13] <- "[Arbeitsatmosphäre in der Vorlesung] Vermittlung der Lern-/Lehrinhalte"
data[, k+13] <- factor(data[, k+13], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+13] <- "k1b_SQ009"
# LimeSurvey Field type: A
data[, k+14] <- as.character(data[, k+14])
attributes(data)$variable.labels[k+14] <- "[Erwartungen der/des Lehrenden an bereits vorhandenes Wissen und Können] Bitte beurteilen Sie die folgenden Aspekte der Vermittlung der Lehrinhalte in der Vorlesung:"
if(nrow(subset(itemlevels, Studiengang==studiengang_id & Modul==i & Item==15, select = 1))>0){
  data[, k+14] <- factor(data[, k+14], levels=c("A1","A2","A6","A5","A4","A3","A7","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}else{
  data[, k+14] <- factor(data[, k+14], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}
names(data)[k+14] <- "k1c_SQ001"
# LimeSurvey Field type: A
data[, k+15] <- as.character(data[, k+15])
attributes(data)$variable.labels[k+15] <- "[Tempo der Arbeit in der Vorlesung] Bitte beurteilen Sie die folgenden Aspekte der Vermittlung der Lehrinhalte in der Vorlesung:"
if(nrow(subset(itemlevels, Studiengang==studiengang_id & Modul==i & Item==16, select = 1))>0){
  data[, k+15] <- factor(data[, k+15], levels=c("A1","A2","A6","A5","A4","A3","A7","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}else{
  data[, k+15] <- factor(data[, k+15], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}
names(data)[k+15] <- "k1c_SQ002"
# LimeSurvey Field type: A
data[, k+16] <- as.character(data[, k+16])
attributes(data)$variable.labels[k+16] <- "[Arbeitsaufwand für Vor- und Nachbereitung der Vorlesung] Bitte beurteilen Sie die folgenden Aspekte der Vermittlung der Lehrinhalte in der Vorlesung:"
if(nrow(subset(itemlevels, Studiengang==studiengang_id & Modul==i & Item==17, select = 1))>0){
  data[, k+16] <- factor(data[, k+16], levels=c("A1","A2","A6","A5","A4","A3","A7","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}else{
  data[, k+16] <- factor(data[, k+16], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}
names(data)[k+16] <- "k1c_SQ003"
# LimeSurvey Field type: A
data[, k+17] <- as.character(data[, k+17])
attributes(data)$variable.labels[k+17] <- "[Arbeitsaufwand für die Vorlesung insgesamt]"
if(nrow(subset(itemlevels, Studiengang==studiengang_id & Modul==i & Item==18, select = 1))>0){
  data[, k+17] <- factor(data[, k+17], levels=c("A1","A2","A6","A5","A4","A3","A7","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}else{
  data[, k+17] <- factor(data[, k+17], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("zu hoch", "2", "3", "4", "5", "6", "zu niedrig", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
}
names(data)[k+17] <- "k1c_SQ004"
# LimeSurvey Field type: A
data[, k+18] <- as.character(data[, k+18])
attributes(data)$variable.labels[k+18] <- "[Größe und Zustand des Raumes bzw. der Räume für die Vorlesung] Organisation und Rahmenbedingungen"
data[, k+18] <- factor(data[, k+18], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+18] <- "k1d_SQ001"
# LimeSurvey Field type: A
data[, k+19] <- as.character(data[, k+19])
attributes(data)$variable.labels[k+19] <- "[Angemessenheit und Funktionalität der technischen Ausstattung] Organisation und Rahmenbedingungen"
data[, k+19] <- factor(data[, k+19], levels=c("A1","A7","A6","A5","A4","A3","A2","A8"),labels=c("sehr gut", "2", "3", "4", "5", "6", "sehr schlecht", "für diese Veranstaltung irrelevant bzw. kann ich (derzeit) nicht beurteilen"))
names(data)[k+19] <- "k1d_SQ002"
# LimeSurvey Field type: A
data[, k+20] <- as.character(data[, k+20])
attributes(data)$variable.labels[k+20] <- "[Welche Note geben Sie der Vorlesung insgesamt? ] Gesamteinschätzung der Vorlesung \"Wirtschaftsrecht\""
mydebugger <- paste("item labels: id:", studiengang_id, ", i:", i, ", k:", k)
if(nrow(subset(itemlevels, Studiengang==studiengang_id & Modul==i & Item==21, select = 1))>0){
  mydebugger <- paste(mydebugger, ", A1-A6")
  data[, k+20] <- factor(data[, k+20], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("1", "2", "3", "4", "5", "6"))
}else{
  data[, k+20] <- factor(data[, k+20], levels=c("A1","A6","A5","A4","A3","A2"),labels=c("1", "2", "3", "4", "5", "6"))
}
names(data)[k+20] <- "k1e_SQ001"
# LimeSurvey Field type: A
data[, k+21] <- as.character(data[, k+21])
attributes(data)$variable.labels[k+21] <- "Raum für weitere Rückmeldungen und Vorschläge"
names(data)[k+21] <- "k1f"
# LimeSurvey Field type: A
data[, k+22] <- as.character(data[, k+22])
attributes(data)$variable.labels[k+22] <- "Was hat Ihnen gut gefallen?"
names(data)[k+22] <- "k1fa"
# LimeSurvey Field type: A
data[, k+23] <- as.character(data[, k+23])
attributes(data)$variable.labels[k+23] <- "Was können wir besser machen? (z. B. Inhalte, Vermittlung, Organisation, dieser Fragebogen)"
names(data)[k+23] <- "k1fb"
