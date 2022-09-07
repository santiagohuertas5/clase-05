#Santiago Huertas 
#07-09-2022


#limpiar entorno
rm(list=ls())


## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # función tabyl: frecuencias relativas
       dplyr) # contiene conjuntos de datos.

#Importar datos 
data_csv = import(file="input/datos_censo.csv" , skip=6 , encoding="UTF-8")

data_xls = import(file="input/datos_excel.xlsx", skip=9)

#Exportar

export(x=data_csv, file="output/data_csv.csv")
export(x=data_xls , file="output/data_excel.xlsx")
export(x=data_xls , file="output/data_r.rds")

#Convertir
convert(in_file = "input/datos_censo.csv" , out_file="output/datos_convert.rds")

convert(in_file="file path.xlsx" , out_file="file path.rds")


##Explorar bases de datos 
data(package="dplyr")

#Obtener datos 
db= as_tibble(x=starwars)

head(x = db , n = 5) 
tail(db)
str(object = mtcars) 


#Para una base de datos muy grande 
skim(data = db)


#Renombrar variables
db = rename(.data = db , weigth=mass , height_cm=height) ## de la librería dplyr
colnames(db)

df = select_all(.tbl=db , toupper) ## de la librería dplyr

colnames(data_csv)

data_csv2=clean_names(data_csv)
colnames(data_csv2)
