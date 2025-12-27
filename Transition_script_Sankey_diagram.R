## Importation des packages 

library(terra)
library(raster)
library(dplyr)


##importation des données 

raster_2015 <- rast("C:/Users/ACER/Downloads/LULC_2015.tif")

raster_2019 <- rast("C:/Users/ACER/Downloads/LULC_2019.tif")

##matrice de changement 

matrix <- crosstab(c(raster_2015, raster_2019))

##conversion en dataframe 


matrix <- as.data.frame(matrix)

##graphique 

library(dplyr)
library(ggplot2)
library(ggalluvial)

# Ta matrice de transition
matrice <- matrix %>%
  rename(from = discrete_classification,
         to = discrete_classification.1,
         freq = Freq) %>%
  filter(freq > 0, from != to)# On garde uniquement les transitions observées

##graphique 

plot1  <- ggplot(matrice, aes(axis1 = from, axis2 = to, 
                    y = freq))+
  geom_alluvium(aes(fill = from), width = 1/12)+
  geom_stratum(width = 1/12, color = "black")+
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))+
  labs(title = "Transition entre classes d'occupation de 2015 à 2019")+
  theme_minimal()

ggsave("Sankey_diagram.jpeg", plot1)

##Calcul des aires 

aire <- matrix %>% 
  mutate(area_ha = Freq * pixel_area / 10000) %>% 
  filter(area_ha > 0)


##classe ayant modifié 

aire_changement <- matrice %>% 
  mutate(area_ha = freq * pixel_area / 10000)
