#Las variables se declaran y se definen
a = 2
b = 3
c = a + b
print(c)

#Pueden ser de tipo 'String'
nombre = "Mario"

#Lo números pueden sumar y restar al valor anterior si se añade el operador antes del igual, esto se llama concatenar
numero = 10
print(numero)

#Concatenar Suma
numero +=1
print(numero)

#Concatenar Resta
numero -=2
print(numero)

#Concatenar con '+'
bienvenida = "Hola" + " ¿Cómo estás?"
print (bienvenida)

#Este tipo de String es llamado 'f-strings'
bienvenida = f"Hola {nombre} ¿Cómo estás?"
print(bienvenida)

#Usa el comando 'del(variable)' para eliminar el valor asignado de la variable
#del(nombre)

#Estos son los operadores de pertenencia con 'in' y 'not in'
print("Mario" in bienvenida)
print("Mario" not in bienvenida)

#Definiendo una variable con 'camelCase'
nombreCompletoDeTuTioMaster = "Lucas Dalto"
print(nombreCompletoDeTuTioMaster)

#Definiendo una variable con 'snake_case'
nombre_completo_de_tu_tio_master = "Lucas Dalto"
print(nombre_completo_de_tu_tio_master)