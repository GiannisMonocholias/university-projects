# ================================
# ΑΣΚΗΣΗ 1 - ΧΡΟΝΟΙ ΔΙΕΚΠΕΡΑΙΩΣΗΣ  
# ================================


# -----------------------------------------
# (a) Εξέταση καταλληλότητας των δεδομένων
# -----------------------------------------
process_times <- c(82, 55, 58, 94, 86, 45, 42, 36, 41, 130,
           284, 96, 39, 107, 52, 54, 45, 81, 83, 38)
stem(process_times)

# -------------------------------------------
# (b) 95% Διάστημα εμπιστοσύνης για μέση τιμή
# -------------------------------------------
mean_pr_times <- mean(process_times)
sd_pr_times <-sd(process_times)

n <- length(process_times)
C <- 0.95
alpha <- 1 - C
df <- n - 1

t_star_pr_times <- qt(1 - alpha/2, df)
cat("t* = ",t_star_pr_times)
SE <- sd_pr_times/sqrt(n)

lower <- mean_pr_times - t_star_pr_times * SE
upper <- mean_pr_times + t_star_pr_times * SE

cat("\n95% Διάστημα εμπιστοσύνης για τη μέση τιμή m:\n")
cat("[", lower, ",", upper, "]\n")


# =======================================================
# ΑΣΚΗΣΗ 3 - ΥΠΟΛΟΓΙΣΜΟΣ P VALUE για διάφορες περιπτώσεις  
# =======================================================

#a.
cat("p value όταν Ha:μ > μ0:",1 - pnorm(1.34))

#b.
cat("p value όταν Ha:μ < μ0:",pnorm(1.34))

#c.
cat("p value όταν Ha:μ != μ0:",1- pnorm(1.34) + pnorm(-1.34))


# ===============================
# ΑΣΚΗΣΗ 5 - ΕΝΗΛΙΚΕΣ ΚΑΠΝΙΣΤΕΣ
# ===============================

cat("Ασκηση 5:\n\n")

# Δεδομενα
gender <- c(
  "A","A","A","A","G","A","G","G","G","A",
  "G","G","A","G","A","A","G","G","G","A",
  "G","G","A","A","A"
)

smoking <- c(
  "YES","NO","NO","YES","YES","YES","YES","NO","NO","YES",
  "NO","NO","NO","NO","YES","YES","NO","YES","NO","NO",
  "NO","YES","NO","NO","NO"
)

weight <- c(
  80,81,75,83,71,73,65,67,54,77,
  55,83,91,6,92,86,73,82,69,73,
  70,59,68,72,72
)

cat("Stemplot βαρους (ολα τα δεδομενα):\n")
stem(weight)

cat("\nΑφαιρουμε την ακραία τιμη 6\n\n")

# Αφαιρεση outlier
keep <- weight != 6

gender <- gender[keep]
smoking <- smoking[keep]
weight <- weight[keep]

cat("Νεο μεγεθος δειγματος n =", length(weight), "\n")

cat("\nStemplot βαρους (χωρις το 6):\n")
stem(weight)

# -----------------
# (α) 95% ΔΕ για μεσο βαρος
# -----------------
cat("\nΕρώτημα α\n")

n <- length(weight)
m <- mean(weight)
s <- sd(weight)
df <- n - 1

t_star <- qt(0.975, df)
SE <- s / sqrt(n)


CI_mean <- m + c(-1, 1) * t_star * SE

cat("m =", m, "\n")
cat("s =", s, "\n")
cat("95% CI: [", CI_mean[1], ",", CI_mean[2], "]\n")

# -----------------
# (β) 80% ΔΕ για διαφορα μεσων (ανδρες - γυναικες)
# df = min(n1-1, n2-1)
# -----------------
cat("\nΕρώτημα β\n")

men <- weight[gender == "A"]
women <- weight[gender == "G"]
cat("\n(β) Stemplot βαρους ανα φυλο\n")

cat("\nΑνδρες:\n")
stem(men)

cat("\nΓυναικες:\n")
stem(women)


n1 <- length(men)
n2 <- length(women)
cat("Πλήθος ανδρών: ",n1)
cat("Πλήθος γυναικών: ",n2)
m1 <- mean(men)
m2 <- mean(women)
cat("\Α mean: ",m1)
cat("\Β mean: ",m2)
s1 <- sd(men)
s2 <- sd(women)

df_b <- min(n1 - 1, n2 - 1)
cat("\ndf: ", df_b)
t_star_b <- qt(0.90, df_b)
cat("\nt*: ",t_star_b)

SE_b <- sqrt(s1^2 / n1 + s2^2 / n2)

CI_gender <- (m1 - m2) + c(-1, 1) * t_star_b * SE_b

cat("\n80% CI: [", CI_gender[1], ",", CI_gender[2], "]\n")

# -----------------
# (γ) Καπνισμα και βαρος – ελεγχος σημαντικοτητας
# H0: μ1 = μ2
# Ha: μ1 != μ2
# df = min(n1-1, n2-1)


# -----------------
cat("\nΕρώτημα γ\n")

smokers <- weight[smoking == "YES"]
nonsmokers <- weight[smoking == "NO"]
cat("\n(γ) Stemplot βαρους ανα καπνισμα\n")

cat("\nΚαπνιστες:\n")
stem(smokers)

cat("\nΜη καπνιστες:\n")
stem(nonsmokers)


n1 <- length(smokers)
n2 <- length(nonsmokers)

m1 <- mean(smokers)
m2 <- mean(nonsmokers)
cat("\nm1: ",m1)
cat("\nm2: ",m2)
s1 <- sd(smokers)
s2 <- sd(nonsmokers)
cat("\ns1: ",s1)
cat("\ns2: ",s2)

df_c <- min(n1 - 1, n2 - 1)
cat("\ndf: ",df_c)
t_stat <- (m1 - m2) / sqrt(s1^2 / n1 + s2^2 / n2)
p_value <- 2 * pt(-abs(t_stat), df_c)

cat("\nt* =", t_stat, "\n")
cat("p_value =", p_value, "\n")
cat("Συμπέρασμα:\n")
if (p_value < 0.05) {
  cat("Απορριπτουμε τη H0: υπαρχει διαφορα μεσων\n")
} else {
  cat("Δεν απορριπτουμε τη H0: δεν υπαρχει στατιστικα σημαντικη διαφορά\n")
}

# ===============================
# ΑΣΚΗΣΗ 6 – ΑΠΟΔΟΣΗ ΚΑΥΣΙΜΩΝ
# ===============================

cat("Ασκηση 6:\n\n")

# 1. Δεδομένα (20 ενδεέξεις)
x <- c(5.7, 4.6, 6.4, 6.3, 6.9, 5.2, 4.9, 5.4, 4.9, 5.6,
       5.4, 5.3, 4.9, 5.1, 5.0, 6.0, 6.3, 5.4, 5.3, 5.4)

cat("Οι τιμές του δείγματος είναι:\n")
print(x)

cat("\nΟι τιμές σε αύξουσα σείρα:\n")
print(sort(x))

# 2. Stemplot
cat("\nStemplot των τιμων:\n")
stem(x)

# 3. Βασικά στατιστικά μεγέθη
n <- length(x)
m <- mean(x)
s <- sd(x)

cat("\nΜέγεθος δείγματος n =", n, "\n")
cat("Δειγματικός μέσος x̄ =", m, "\n")
cat("Δειγματική τυπικη απόκλιση s =", s, "\n")

# 4. 95% Διάστημα εμπιστοσύνης για τη μέση τιμή m (t-διάστημα)
C <- 0.95
alpha <- 1 - C
df <- n - 1

t_star <- qt(1 - alpha/2, df)
cat("t* = ",t_star)
SE <- s / sqrt(n)

lower <- m - t_star * SE
upper <- m + t_star * SE

cat("\n95% Διάστημα εμπιστοσύνης για τη μέση τιμή m:\n")
cat("[", lower, ",", upper, "]\n")



# ==================================================
# ΑΣΚΗΣΗ 7 – ΕΛΕΓΧΟΣ ΦΟΥΣΚΩΜΑΤΟΣ ΤΙΜΩΝ ΑΠΟ ΣΥΝΕΡΓΕΙΟ
# ==================================================

cat("Ασκηση 7:\n\n")

# 1. Διαφορές εκτιμήσεων (Συνεργείο - Εμπειρογνώμονας)
diff <- c(100, 50, -50, 0, -50, 200, 250, 200, 150, 300)

cat("Οι διαφορές των εκτιμήσεων είναι:\n")
print(diff)

# 2. Ταξινόμηση δεόμενων
cat("\nΟι διαφορές σε αύξουσα σειρά:\n")
print(sort(diff))

# 3. Stemplot
cat("\nStemplot των διαφορών:\n")
stem(diff)

# 4. Βασικα στατιστικά μεγέθη
n <- length(diff)
m <- mean(diff)
s <- sd(diff)

cat("\nΜεγεθος δείγματος n =", n, "\n")
cat("Δειγματικος μέσος ̄ =",m, "\n")
cat("Δειγματική τυπική απόκλιση s =", s, "\n")

# 5. Ελεγχος σημαντικοτητας
# H0: μ = 0
# Ha: μ > 0

t_stat <- m / (s / sqrt(n))
p_value <- 1 - pt(t_stat, df = n - 1)

cat("\nΤιμη στατιστικού t =", t_stat, "\n")
cat("p_value =", p_value, "\n")

# 6. Συμπέρασμα (σε επιπεδο 5%)
cat("\nΣυμπερασμα:\n")

if (p_value < 0.05) {
  cat("Απορριπτουμε τη μηδενική υπόθεση.\n")
  cat("Υπάρχει ένδειξη οτι το συνεργείο φουσκώνει τις ζημιές.\n")
} else {
  cat("Δεν απορρίπτουμε τη μηδενική υπόθεση.\n")
  cat("Δεν υπάρχει στατιστικά σημαντικά ένδειξη υπερεκτίμησης.\n")
}



# ===============================
# ΑΣΚΗΣΗ 8 – ΤΥΧΑΙΟΣ ΑΚΕΡΑΙΟΣ 1..100
# ===============================

cat("Ασκηση 8\n\n")

# Διαβασμα αρχειου
data <- read.table("survey_data_2025/survey_data_2025.csv",header =TRUE,sep=',')

# Παίρνουμε number και gender
num <- data$number
gen <- data$gender

# Κραταμε μονο τιμες 1..100
ok <- !is.na(num) & num >= 1 & num <= 100
num <- num[ok]
gen <- gen[ok]

n <- length(num)

cat("n =", n, "\n\n")

# ===============================
# (α) t-ελεγχος: H0 μ = 50
# ===============================
mean_x <- mean(num)
sd_x <- sd(num)

t_val <- (mean_x - 50) / (sd_x / sqrt(n))
p_a <- 2 * pt(-abs(t_val), n - 1)

cat("(α) t-test\n")
cat("mean =", mean_x, "\n")
cat("t =", t_val, "\n")
cat("p-value =", p_a, "\n\n")

# ===============================
# (β) 90% Διαστημα εμπιστοσυνης
# ===============================
t_star <- qt(0.95, n - 1)
se <- sd_x / sqrt(n)

low <- mean_x - t_crit * se
up  <- mean_x + t_crit * se

cat("(β) 90% ΔΕ\n")
cat("[", low, ",", up, "]\n\n")

# ===============================
# (γ) z-ελεγχος για ομοιομορφη 1..100
# ===============================

z_val <- (mean_x - 50.5) / (28.866 / sqrt(n))
p_c <- 2 * pnorm(-abs(z_val))

cat("(γ) z-test\n")
cat("z =", z_val, "\n")
cat("p-value =", p_c, "\n\n")

# ===============================
# (δ) Διαφορα μεσων ανδρες - γυναικες
# ===============================
men <- num[gen == "man"]
women <- num[gen == "woman"]

cat("\nNumber of men: ", length(men))
cat("\nNumber of women: ", length(women))

m1 <- mean(men)
m2 <- mean(women)

s1 <- sd(men)
s2 <- sd(women)

n1 <- length(men)
n2 <- length(women)

df <- min(n1 - 1, n2 - 1)

t_score <- (m1 - m2) / sqrt(s1^2/n1 + s2^2/n2)
p_value <- 2 * pt(-abs(t_score), df)

cat("(δ) man vs woman\n")
cat("mean man =", m1, "\n")
cat("mean woman =", m2, "\n")
cat("t =", t_score, "\n")
cat("p-value =", p_value, "\n\n")

