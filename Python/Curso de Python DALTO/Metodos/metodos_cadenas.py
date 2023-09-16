#Escribimos las cadenas que vamos a utilizar para los ejercicios
cadena1 = "Hola, soy Dalto"
cadena2 = "06415130"
cadena3 = "abcdef"

#Recuerda que todos los métodos son funciones
#Pero no todas las funciones son métodos

#Existe la funcion dir que me permite ver los distintos metodos que puedo utilizar con una cadena de texto
print(dir(cadena1))

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

