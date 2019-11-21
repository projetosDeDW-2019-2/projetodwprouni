#TODO instalar os pacotes abaixo
install.packages("devtools")
install.packages("tidyr")
install.packages("dplyr")
install.packages("ggplot2")
library(devtools)
devtools::install_github('abjur/abjData')

#TODO alterar para a pasta onde esta salvo o local.csv
setwd("C:/Users/Igor/Downloads")


#TODO Selecionar tudo abaixo e dar control+Enter
library(tidyr)
library(dplyr)
library(ggplot2)

#id: representa o estado
#variavel: representa quantidade de alunos
#dataset <- data.frame("id" = c("PE","AC"), "variavel" = c(293.394,33.551))
dataset <- read.csv("tiintegralnotasCERTO.csv",sep=";")

dataset %>% 
  constroi_mapa_tematico()


constroi_mapa_tematico <- function(dataset){
  dataset %>% 
    inner_join(abjData::br_uf_map) %>% {
      ggplot(.) +
        geom_map(aes(x = long, y = lat,
                     map_id = id, fill = variavel),
                 color = 'gray32', map = ., data = .) + 
        theme_void() +
        coord_equal()
    }
}

dataset %>% 
  constroi_mapa_tematico() +
  ggtitle("Tecnológico/Curso a Distância/Nota integral cotas") +
  scale_fill_continuous(name = "Quantidade", low = 'white', high = 'green',
                        na.value = 'white')

