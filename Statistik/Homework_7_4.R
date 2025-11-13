# Library Mass laden
library(MASS)

# Datensatz laden
data(survey)
#help(survey) # Reactivate this to see some basic stuff about our dataset 

# Sturktur analysieren
cat("Anzahl Beobachtungen (Zeilen):", nrow(survey), "\n")
cat("Anzahl der Variablen (Spalten):", ncol(survey), "\n")
cat("Dimension", paste(dim(survey)), "\n")
cat("\nStruktur des Datensatzes:\n")
str(survey)

# Man hat also einen Datensatz mit 237 Zeilen und 12 Spalten --> Dimension von 237 x 12

#  Überblick über den Datensatz mit der Survey Funktion
cat("Zusammenfassung des Datensatzes:\n")

# Die Summary Zeigt uns für die verschiedenen Variablen also sofort den Median, Mean, Max, Min
# und die jeweiligen Quantile dann im Boxplot-
summary(survey)

# Greifen wir also nun auf die Variable Age zu

attach(survey)

# Berechnen wir einige Statistiken für Age
cat("Statistik für Alter (Age): \n")
cat("Maximum:", max(Age, na.rm=TRUE), "\n")
cat("Mittelwert:", mean(Age, na.rm=TRUE), "\n")
cat("Median:", median(Age,na.rm=TRUE), "\n")
cat("Quantile:\n")
print(quantile(Age,na.rm = TRUE))

# Nun schauen wir uns noch die Standardabweichung an
cat("Standardabweichung:" , sd(Age, na.rm = TRUE), "\n")

# Und vergleichen dies mit dem was man aus dem summary() erhält
cat("\n Vergleich mit summary()-Befehl:\n")
summary(Age)

# Nun Plotten wir noch ein Histogramm für die Altersverteilung der Befragten
# wir markieren das Stichprobenmittel in blau und Median in rot im Histogramm.
# Dazu verwenden wir abline() für die Markierungen

# Histogramm erstellen
hist(Age, 
     main = "Altersverteilung der Befragten",
     xlab = "Alter (Jahre)",
     ylab = "Häufigkeit",
     col = "lightblue",
     border = "black")

# Mittelwert (blau) und Median (rot) markieren
abline(v = mean(Age, na.rm = TRUE), col = "blue", lwd = 2, lty = 2)
abline(v = median(Age, na.rm = TRUE), col = "red", lwd = 2, lty = 2)

# Legende hinzufügen
legend("topright", 
       legend = c(paste("Mittelwert =", round(mean(Age, na.rm = TRUE), 2)),
                 paste("Median =", round(median(Age, na.rm = TRUE), 2))),
       col = c("blue", "red"),
       lwd = 2,
       lty = 2,
       title = "Lageparameter")


# Subset für Befragte unter 30 Jahren erstellen
AgeSub30 <- Age[Age < 30 & !is.na(Age)]

cat("Statistiken für Befragte unter 30 Jahren:\n")
cat("Anzahl Beobachtungen:", length(AgeSub30), "\n")
cat("Minimum:", min(AgeSub30), "\n")
cat("Maximum:", max(AgeSub30), "\n")
cat("Mittelwert:", mean(AgeSub30), "\n")
cat("Median:", median(AgeSub30), "\n")
cat("Standardabweichung:", sd(AgeSub30), "\n")

cat("\nZusammenfassung für AgeSub30:\n")
summary(AgeSub30)


# Histogramm für die eingeschränkte Gruppe
hist(AgeSub30,
     main = "Altersverteilung der Befragten unter 30 Jahren",
     xlab = "Alter (Jahre)",
     ylab = "Häufigkeit",
     col = "lightgreen",
     border = "black")

abline(v = mean(AgeSub30), col = "blue", lwd = 2, lty = 2)
abline(v = median(AgeSub30), col = "red", lwd = 2, lty = 2)

legend("topright",
       legend = c(paste("Mittelwert =", round(mean(AgeSub30), 2)),
                 paste("Median =", round(median(AgeSub30), 2))),
       col = c("blue", "red"),
       lwd = 2,
       lty = 2)