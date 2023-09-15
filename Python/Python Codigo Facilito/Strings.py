mensaje = "Hola"
mensaje += " "
mensaje += "Mario"
print(mensaje)

print("Concatenación:")

mensaje = "Hola"
espacio = " "
nombre = "Mario"
print(mensaje + espacio + nombre)

numero_uno = 4
numero_dos = 6
resultado = numero_uno + numero_dos
resultado = str(resultado)
print("El resultado de la suma es: " + resultado)

print("Búsqueda:")

mensaje = "Hola Mario"
buscar_subcadena = mensaje.find("Mario")
print(buscar_subcadena)

print("Extracción:")
mensaje = "Hola Mario"
extraer_cadena = mensaje[5:10]
print(extraer_cadena)

print("Comparación:")

mensaje_uno = "Hola"
mensaje_dos = "Hola"
mensaje_tres = "Mario"
print(mensaje_uno == mensaje_dos)
print(mensaje_uno == mensaje_tres)
