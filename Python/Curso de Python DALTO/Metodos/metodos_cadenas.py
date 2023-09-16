#Escribimos las cadenas que vamos a utilizar para los ejercicios
cadena1 = "Hola, soy Dalto"
cadena2 = "06415130"
cadena3 = "abcdef"
cadena4 = "Mip,For,Short"

#Recuerda que todos los métodos son funciones
#Pero no todas las funciones son métodos

#Existe la funcion dir que me permite ver los distintos metodos que puedo utilizar con una cadena de texto
#print(dir(cadena1))

#Para llamar a un metodo es el DATO.METODO()

###Lista de métodos

##Métodos de conversión
#Convierte a Mayúsculas
mayus = cadena1.upper()
print(mayus)

#Convierte a minúsculas
minus = cadena1.lower()
print(minus)

#Convierte primera a mayúsculas
primer_letra_mayus = cadena1.capitalize()
print(primer_letra_mayus)

##Métodos de búsqueda
#Buscamos una cadena en otra cadena, si no hay coincidencias retorna -1
busq_find = cadena1.find("Hola")
print(busq_find)

#Buscamos una cadena en otra cadena, si no hay coincidencias lanza una excepción
busq_index = cadena1.index("D")
print(busq_index)

##Métodos de consulta
#Si es numérico devolvemos True, si no devolvemos False
es_numerico = cadena2.isnumeric()
print(es_numerico)
#Si es alfa numérico devolvemos True, si no devolvemos False
es_alfanumerico = cadena3.isalpha()
print(es_alfanumerico)

#Contamos las coincidencias de una cadena dentro de otra cadena
contar = cadena1.count("a")
print(contar)
#Cuantos caracteres tiene una cadena
#OJO que este se escribe como función, no como método
contar_caracteres = len(cadena1)
print(contar_caracteres)

#Verificamos si una cadena empieza con otra cadena dada,
#si es así devuelve True
empieza_con = cadena1.startswith("Hol")
print(empieza_con)
#Verificamos si una cadena termina con otra cadena dada,
#si es así devuelve True
termina_con = cadena1.endswith("Dalto")
print(termina_con)

##Método para reemplazar cadenas donde haya coincidencia
cadena_nueva = cadena4.replace(',', ' ')
print(cadena_nueva)

##Método para separar cadenas con la cadena que le pasemos
#OJO que esto nos devuelve una lista según lo que deseemos separar en base al caracter
cadena_separada = cadena4.split(',')
print(cadena_separada)
#Vamos a imprimir los índices por separado, observa como no creamos variables
#Sólo invocamos el índice que buscamos de la lista y separamos por comas
print("Elementos\n", cadena_separada[0], "\n", cadena_separada[1], "\n", cadena_separada[2])