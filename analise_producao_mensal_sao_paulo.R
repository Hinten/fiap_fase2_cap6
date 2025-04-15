# AliceCarolineMarinhodeAssis_RM566_fase2_cap7



# Data frame com os dados de produção por mês na cidade de São Paulo
producao_mensal <- data.frame(
  MES = c("Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", 
          "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"),
  PRODUCAO = c(10878678, 10878678, 10878678, 10436298, 10436298, 10436298,
               10436298, 10436298, 9191156, 9191156, 9191156, 9161795)
)

print(producao_mensal)



# 1. Medidas de Tendência Central - Média
media <- mean(producao_mensal$PRODUCAO)

# 1. Medidas de Tendência Central - Mediana
mediana <- median(producao_mensal$PRODUCAO)

# 1. Medidas de Tendência Central - Moda
moda <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
moda_valor <- moda(producao_mensal$PRODUCAO)



# 2.Medidas de Dispersão - Amplitude
amplitude <- diff(range(producao_mensal$PRODUCAO))

# 2.Medidas de Dispersão - Desvio padrão
desvio_padrao <- sd(producao_mensal$PRODUCAO)

# 2.Medidas de Dispersão - Variância
variancia <- var(producao_mensal$PRODUCAO)
cv <- (desvio_padrao / media) * 100



# 3. Medidas Separatrizes - Quartis
quartis <- quantile(producao_mensal$PRODUCAO, probs = c(0.25, 0.5, 0.75))

# 3. Medidas Separatrizes - Decis
decis <- quantile(producao_mensal$PRODUCAO, probs = seq(0.1, 0.9, by = 0.1))

# 3. Medidas Separatrizes - Percentis
percentis <- quantile(producao_mensal$PRODUCAO, probs = seq(0.01, 0.99, by = 0.01))



# 4. Análise Gráfica - Gráfico de barras da produção por mês
barplot(producao_mensal$PRODUCAO,
        names.arg = producao_mensal$MES,
        col = "magenta",
        main = "Produção por Mês em São Paulo",
        xlab = "Mês",
        ylab = "Produção (mil toneladas)",
        las = 2)  # Gira os nomes dos meses na horizontal

# 4. Análise Gráfica - Histograma
hist(producao_mensal$PRODUCAO,
     main = "Histograma da Produção por Mês",
     xlab = "Produção (mil t)",
     col = "cyan",
     breaks = 10)

# 4. Análise Gráfica - Boxplot
boxplot(producao_mensal$PRODUCAO,
        main = "Boxplot da Produção por Mês",
        ylab = "Produção (mil t)",
        col = "limegreen")

# 4. Análise Gráfica - Curva de densidade
plot(density(producao_mensal$PRODUCAO),
     main = "Curva de Densidade da Produção por Mês",
     xlab = "Produção (mil t)",
     col = "purple",
     lwd = 2)


# 14. Imprimir resultados
print(paste("Média geral:", media))
print(paste("Mediana:", mediana))
print(paste("Moda:", moda_valor))
print(paste("Amplitude:", amplitude))
print(paste("Desvio padrão:", desvio_padrao))
print(paste("Variância:", variancia))
print(paste("Coeficiente de variação (%):", round(cv, 2)))


print("Quartis:")
print(quartis)

print("Decis:")
print(decis)

print("Percentis:")
print(percentis)