#rozdział 6

#zad1
install.packages("stringr")
library(stringr)
tekst = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
str_sub(tekst, start = 38, end = 39)

#zad2
horoskop = function(imie,miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)){
    cat(paste("osoba o imieniu", imie, "będzie miała jutro szczęście"))}
  else{
    cat(paste("osoba o imieniu", imie, "będzie miała jutro nieszczęście"))
  }
}
horoskop("Agata", 3)

#zad3
horoskop = function(imie,miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)
  (str_detect(imie, pattern = "K")
   str_detect(imie, pattern = "M")
   str_detect(imie, pattern = "Z")))
  {    cat(paste("osoba o imieniu", imie, "będzie miała jutro szczęście"))}
  else{
    cat(paste("osoba o imieniu", imie, "będzie miała jutro nieszczęście"))
  }
  
  #zad4
  
  pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
  2019-marzec-14: 14.3"
  pomiary = str_replace_all(pomiary, pattern = "[\\/|.]", replacement = "\\-")
  
  str_extract_all(pomiary, pattern = "[0-9]+[\\-][a-z0-9]+[\\-][0-9]*")
  
  
  #zad5
  pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
  2019-marzec-14: 14.3"
  
  wartosci = str_extract_all(pomiary, pattern ="[0-9]+[\\.][0-9]*")

  wartosci = as.numeric(wartosci[[1]][-3])
