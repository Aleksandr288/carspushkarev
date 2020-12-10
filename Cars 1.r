car<-list(
  wheel=4,
  steering=T,
  engine=T,
  drive="I'm driving",
  beep="beeep-beeep"
)
class(car)<-"auto"
print.auto<-function(motors){
  cat(car$drive, "\n")
  cat(car$beep, "\n")
  cat("Колеса= ", car$wheel, "\n")
  cat("Руль= ", car$steering, "\n")
  cat("Двигатель= ", car$engine, "\n")
  cat("Название ", motors$name,"\n" )
  cat("Топливо  ", motors$fueltype,"\n" )
}

k1<-list(
  name= "Нисан",
  fueltype="Бензин"
)
class(k1)<-c("auto1","auto")

k2<-list(
  name= "Хэндай",
  fueltype="Дизель"
)
class(k2)<-c("auto2","auto")

k3<-list(
  name= "Тесла",
  fueltype="Электричество"
)
class(k3)<-c("auto3","auto")

info <- function(){
  v <- readline("Информацию о каком автомобиле вы хотите (Жига, Крузак 200, Порш Тайкан)?: ")
  if(v == "Нисан") print (k1)
  if(v == "Хэндай") print (k2)
  if(v == "Тесла") print (k3)
}
info()
