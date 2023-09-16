#AND
resultado = True & True #Devolver True
resultado2 = False & True #Devolver False
resultado3 = True & False #Devolver False
resultado4 = False & False #Devolver False

#OR
resultado5 = True | True #Devolver True
resultado6 = False | True #Devolver True
resultado7 = True | False #Devolver True
resultado8 = False | False #Devolver False

#NOT
resultado9 = not True #Devolver False
resultado10 = not False #Devolver True

print("AND\n", resultado, "\n", resultado2, "\n", resultado3, "\n", resultado4)

print("OR\n", resultado5, "\n", resultado6, "\n", resultado7, "\n", resultado8)

print("NOT\n", resultado9, "\n", resultado10)
