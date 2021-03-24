library(stringr)
#Zadanie1

tekst1 = list("TERYT 18; podkarpackie; Rzeszów; 0.2 He; A",
              "TERYT 22; pomorskie;   Gdańsk; 12 C ; B")
str_sub(tekst1[1], start = -5, end = -4)
str_sub(tekst1[2], start = -5, end = -4)

#Zadanie2
horoskop = function(imie, miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)){
  cat(paste("osoba o imieniu", imie, "będzie miała jutro szczęście"))
  } else{
    cat(paste("osoba o imieniu", imie, "będzie miała jutro nieszczęście"))
  }
  }
horoskop("Natalia",12)
horoskop("Ola", 5)

#zadanie3
horoskop = function(imie, miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)|
      (str_detect(imie, pattern = "K")|
       str_detect(imie,pattern = "M")|
       str_detect(imie, pattern = "Z"))){
    cat(paste("osoba o imieniu", imie, "będzie miała jutro szczęście"))
  } else{
    cat(paste("osoba o imieniu", imie, "będzie miała jutro nieszczęście"))
  }
}
horoskop("Marta",5)

#Zadanie4

dane = c("2019-03-11: 23.5, 
         19/03/12: 12.7,
         2019.03.13: 11.1, 
         2019-marzec-14: 14.3")

dane = str_replace(dane,
            pattern = "2019.03.13",
            replacement = "2019-03-13")

dane = str_replace_all(dane, 
                       pattern = "[\\/]", 
                       replacement = "\\-")

dane
str_extract_all(dane, 
                pattern = "[0-9]+[\\-][a-z0-9]+[\\-][0-9]*")


#Zadanie 5

dane2 =  str_extract_all(dane, 
                         pattern = "[0-9]+[\\.][0-9]")
dane2
