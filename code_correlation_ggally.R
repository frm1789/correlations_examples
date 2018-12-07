#install.packages("GGally")

library(ggplot2)
library(GGally)

ggplot <- function(...) 
ggplot2::ggplot(...) + scale_color_brewer(palette="Purples") + scale_fill_brewer(palette="Purples")
unlockBinding("ggplot",parent.env(asNamespace("GGally")))
assign("ggplot",ggplot,parent.env(asNamespace("GGally")))

graph_corr <- ggpairs(iris, mapping = aes(color = Species), 
                      columns = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species'), 
                      columnLabels = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')) 
graph_corr <- graph_corr + theme_minimal()
graph_corr