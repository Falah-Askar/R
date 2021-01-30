








rm(list = ls())
setwd(choose.dir())
setwd()

library(ggplot2)
library(openxlsx)


fl <- read.xlsx("Bezirk.xlsx" , sheet = "Sheet1")

fl

meine_Flaeche <- ggplot(fl, aes(x = Auswertung , y = Prozent))+geom_point()
+ylim(0.0 ,36)

meine_Flaeche + ggtitle("Auswertung der Fläche", subtitle = "Für Auswahl den beste Standord")+ geom_point(col = "cyan4", size = 4)


myff <- meine_Flaeche + geom_point(aes(col = Auswertung), size=5)

myff

myff2 <- myff +  ggtitle("Auswertung der Fläche", subtitle = "Für Auswahl den beste Standord")+ylab("Prozent  %")

myff2

myff3 <- myff2 + theme(plot.title = element_text(face = "bold",
                                               size = 16,
                                               hjust = 0.5),
                     plot.subtitle = element_text(hjust = 0.5))


myff3


myff5 <- fl [which(fl[,"Auswertung"] == "Sehr gut"),]
myff5



library(ggrepel)
library(ggalt)


myff4 <- myff3 + geom_encircle(aes(x = Auswertung, y = Prozent),
                               data = myff5,
                               color = "red",
                               size = 5)
myff4
myff6 <- myff4 +scale_y_continuous(breaks =
                                         seq(from = 0, to = 37, by = 3))

myff6



mf1 <- meine_Flaeche+geom_point(aes(col = Auswertung) , size = Auswertung)
  geom_point(aes(col = Auswertung), size = Auswertung)


myF1 <- meine_Flaeche+geom_point(aes(col = Auswertung), size = Auswertung)
myF1
myF3 <-myF+scale_y_continuous(breaks =
                         seq(from = 0, to = 37, by = 5))
myF4 <- myF3+ ggtitle("Auswertung der Fläche", subtitle = "Für Auswahl den beste Standord")

myF5 <- myF4 +theme(plot.title = element_text(face = "bold",
                                              size = 16,
                                              hjust = 0.5),
                    plot.subtitle = element_text(hjust = 0.5))



myF6 <- myF5+geom_text(aes(label = Prozent), size = 3)
 
myF6

library(ggrepel)









