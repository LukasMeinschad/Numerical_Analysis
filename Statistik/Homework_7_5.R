library(MASS)
data(survey)

# Ermöglicht zugriff auf die Variablen
attach(survey)


cat("=== Aufgabe 5: Fehlende Werte und Scatterplots ===")


# Wir machen zuerst die Variable Height im Teil a)

cat("===== Teil a ====\n")

print(summary(Height))

# Wir versuchen das Stichprobenmittel (mean) zu bestimmen
cat("\n Stichprobenmittel \n")
height_mean_na <- mean(Height)
print(height_mean_na)
# Gibt wie erwartet NA zurück

# Bestimmen wri also die Anzahl an fehlenden Werten

missing_height <- sum(is.na(Height))
total_observations <- length(Height)
cat("\n Anzahl an fehlenden Werten:", missing_height, "von", total_observations)

# Berechnen des Prozentuellen Anteols
cat("\n Prozentueller Anteil an fehlenden Werten:", round(missing_height/total_observations * 100,2), "%\n")

# Berechnen wir einfach mit na.rm = TRUE dann werden die NAs nicht berücksichtigt

cat("\n ====== Teil b =======")
cat("Berechnung mit na.rm = True \n")

height_min <- min(Height, na.rm = TRUE)
height_max <- max(Height, na.rm = TRUE)
height_mean <- mean(Height, na.rm = TRUE)
height_median <- median(Height, na.rm = TRUE)
height_sd <- sd(Height, na.rm = TRUE)
height_quantiles <- quantile(Height, na.rm = TRUE)

cat("Minimum:", height_min, "\n")
cat("Maximum:", height_max, "\n")
cat("Mittelwert:", round(height_mean, 2), "\n")
cat("Median:", height_median, "\n")
cat("Standardabweichung:", round(height_sd, 2), "\n")
cat("Quantile:\n")
print(height_quantiles)

# Die können wir nun einfach mit summary() vergleichen

cat("\nVergleich mit summary() - sollten übereinstimmen:\n")
height_summary <- summary(Height)
print(height_summary)


# Nun im Teil c, machen wir die Spannweite VS Körpergröße der Dominanten Hand
cat("\n === Teil c ==== \n")

# Zuerst die beiden fehlenden Werte überprüfen

missing_wr_hnd <- sum(is.na(Wr.Hnd))
cat("Fehlende Werte in Wr.Hnd:", missing_wr_hnd, "von", length(Wr.Hnd), "\n")

# Mit der complete.cases Funktion finden wir die gemeinsem Fehlenden Werte
complete_cases <- complete.cases(Height, Wr.Hnd)
cat("Komplette Beobachtungen (ohne fehlende Werte):", sum(complete_cases), "\n")


plot(Height, Wr.Hnd,
     main = "Zusammenhang: Körpergröße vs. Handspannweite",
     xlab = "Körpergröße (cm)",
     ylab = "Spannweite dominante Hand (cm)",
     pch = 16,              # Feste Punkte
     col = "blue",          # Farbe der Punkte
     cex = 0.8,             # Punktgröße
     xlim = c(150, 200),    # X-Achsen Bereich
     ylim = c(15, 25))      # Y-Achsen Bereich

# Regressionslinie hinzufügen
abline(lm(Wr.Hnd ~ Height, na.action = na.omit), 
       col = "red", 
       lwd = 2,
       lty = 2)

# Legende hinzufügen
legend("topleft",
       legend = c("Datenpunkte", "Regressionslinie"),
       col = c("blue", "red"),
       pch = c(16, NA),
       lty = c(NA, 2),
       lwd = c(NA, 2))

# Korrelationskoeffizient berechnen
correlation <- cor(Height, Wr.Hnd, use = "complete.obs")
cat("Korrelationskoeffizient:", round(correlation, 3), "\n")

# Statistische Interpretation
cat("\nStatistische Interpretation:\n")
if (abs(correlation) > 0.7) {
  cat("Starker Zusammenhang\n")
} else if (abs(correlation) > 0.5) {
  cat("Mittlerer Zusammenhang\n")
} else if (abs(correlation) > 0.3) {
  cat("Schwacher Zusammenhang\n")
} else {
  cat("Sehr schwacher oder kein Zusammenhang\n")
}
