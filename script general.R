

# NOTA AL PIE Esto es un SCRIPT, es el espacio donde se guarda todo
# el código, de tal manera que pudas compartirlo y seguirlo trabajando


# ================= 2. CONTROL DE VERSIONES ===================

# PARA SUBIR A LA NUBE
# git add . (para confirmar qué cosas se quieren agregar pa)
# git commit -m "algún comentario que informe lo que se va a subir"
# git push

# PARA BAJAR DE LA NUBE
# git pull
# si arroja problemas o error (eg. al correrlo desde otro PC con cambios)
# corra git stash, y luego git pull
# esto consolida los consolida los cambios evitando inconsistencias


# ================= 3. EXPRESIONES GENERALES ===================

# COMENTARIOS
# <- cuando lleva éste símbolo, indica que es un comentario
# ésto implica que el programa ignora ésta línea, igual que tu crush a tí

# los comentarios sirven para dejar información sobre como funciona tu 
# tu código

# USENLOS POR TODAS LAS WAIFUS!!!! Creamente que lamentarán no hacerlo

# PRO TIP: usar ctrl+c para comentar y descomentar de una

# coméntamente descoméntame si te atreves!!! 

# TEXTO O CARÁCTERES
"esto es un texto, y uso comillas para identificarme"
'comillas simples también sirven!! :)'

# PRO TIP: para ejecutar el código usa ctrl+enter
# puedes ejecutar la línea específica seleccionandola, y dandole al shortcut

# NÚMEROS (si tal cual, no tienen mucha ciencia)
1
100
1000
999

# COSAS (objetos, comandos, palabras reservadas)
TRUE & FALSE 
T & F # pueden resumirse como T y F
# +, -, /, *, ^(**), ~, (), [], {}, :, ==,  &&, ||, &, |, 
# NA, NaN, inf (-inf), $
hola  # ojo cuando corro esto, dice "objeto" no existe
sum()
# %>% %in% <- lo comento porque me da problemas
# " <-  " vs " = "  # esto se conoce como asignación (lawful good vs caothic evil) 
# funciona al revés también " 1 -> a "


# TERMINOS RESERVADOS
# for
# in
# while
# if 
# else
# break
# for <- "hola"   # descomentar y correr



# ================= 4. PAQUETES ===============================

# INSTALANDO
install.packages("nombre de la librería")
lapply(c("paquete 1", "paquete 2", "paquete n"), install.packages)

# INSTALADAS
installed.packages()
"ggplot2" %in% installed.packages()

# ACTIVAR LIBRERÍAS
library(nombre_libreria)
require(nombre_libreria) # ambos hacen lo mismo pero convencionalmente
                         # se usa dentro de funciones



# ================= 5. OPERACIONES ==============================

# ARITMÉTICA
2 + 2 # ojo, pueden ir juntas, espacios es solo por orden
2 - 2
-2 - 2
2 * 2
4 / 2
2 ^ 2

# LOGICA
T & T
T & F
F & F
T | T
T | F
F | F
T&(T&F) # no necesitan pensarlo, R ya lo hizo por ustedes
        # mejor aprendan a programar y céntrense en las interpretaciones

# ÁLGEBRA
a <- 2
3 -> b

a + b
a - b
a * b
a * -b
a / b
a ^ b
a^2 + b^2

a * b * a / b  # aver aver, que resultado nos dará???
rm(a, b) # remuevo cosas que no me sirven (no necesito hacerlo, es solo pa mostrar)

a <- T
b <- F

a * b # mucho ojo con esto, valor binario!
a * a
-a

a&(a|b)

# ITERACIONES
for (i in 1:5) {
  print(i)   # indentación, hace código legible
}

a <- 1
while(a < 10){
  a <- a + 1
  print(a)
}

a <- 1
while (T) { # esto hace un loop infinito
 
  print(a)
  if(a == 12){
    break # quiebra una secuencia
  }
  a <- a + 1
}

# FUNCIONES
sum(1:5)
1 + 2 + 3 + 4 + 5

class("caracter")
class(1)
class(T)

paste("hola", 1, sep = " - ")
paste0("hola=", "konnichiwa")

# crear funciones
soy_la_mera_verga <- function(){
  return("pos obvio") # return también quiebra una secuencia
                      # pero distinto de break, retorna algo
} # fin soy_la_mera_verga

soy_la_mera_verga()

animescience_best_pagina <- function(booleano){
  if(booleano){
    print(paste("eres la mera verga?", soy_la_mera_verga(), sep = " "))
  } else {
    return("shinga tu madre")
  } 
} # fin animescience_best_pagina

animescience_best_pagina(F)
animescience_best_pagina(T)

marx_best_waifu <- function(texto){
  if(texto == "si"){
    return("camarada")
  } else if (texto == "no sé"){
    return("lea un poco más")
  } else {
    return("shinga tu madre")
  }
}# fin marx_best_waifu

marx_best_waifu("si")
marx_best_waifu("no sé")
marx_best_waifu("no")

# pero ojo!! case sensitive
marx_best_waifu("Si")
marx_best_waifu("sI")


# lanzamiento de moneda (lanzamientos, éxito, chance)
moneda <- rbinom(100, 1, .5)
moneda

hist(moneda) # mejor con ggplot

# pseudo random
set.seed(123)
moneda1 <- rbinom(10, 1, .5)
moneda1
set.seed(123)
moneda2 <- rbinom(10, 1, .5)
moneda2

# RECURSIONES
desde_hasta <- function(desde, hasta){
  while(desde <= hasta){
    print(desde)
    desde <- desde + 1
  }
}

desde_hasta(1,15)

desde_hasta2 <- function(desde, hasta){
  if(desde == hasta){
    return(desde)
  } else{
    print(desde)
    desde_hasta2(desde + 1, hasta)
  }
}




# ================= 6. OBJETOS DE R ==============================

# VECTORES

a <- c(1, 4, 5)
b <- c(2, "a", a)

b[2]

a + a
a ** a 

b[b == "a"]
which(b == "a")

a <- c(T, T, F, F)
b <- c(T, F, T, F)

a & b
a && b

# MATRICES
matrix(1:5, ncol = 5, nrow = 4)

matriz1 <- matrix(1:5, ncol = 5, nrow = 4)

matriz1 * matriz1
(matriz1 * matriz1)[2,3]
mat1 <- matriz1 * matriz1

a <- letters

matrix(a, ncol = 2)

# DATA FRAMES
a <- letters
b <- letters[26:1]

data.frame(a, b, a, b)
df1 <- data.frame(a, b, a, b)
View(df)

df1[2,3]

df1$a.1

a <- c(T, T, F, F)
b <- c(1:4)

df2 <- data.frame(a, b)


# LISTAS
lista <- list()

lista[[1]] <- df1
lista[[2]] <- df2
lista[[3]] <- "hola"

lista[[2]][2]

# ELEMENTO COMPLEJO
a <- rnorm(100, 10, 5)
b <- rbinom(100, 5, 1/5)

length(a)
length(b)

cor.test(a, b)

df3 <- data.frame(a, b)

lm(a ~ b, data = df3)

regresion <- lm(a ~ b, data = df3)

summary(regresion)

regresion$coefficients

# ================= 7. DATA FRAMES ================================

# exportar data
write.table(df3, "df3.csv", sep = T, row.names = F, col.names = T)










