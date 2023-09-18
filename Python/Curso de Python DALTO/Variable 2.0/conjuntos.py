#Creando un conjunto con set

conjunto = set(["Dato1"])
print(conjunto)

conjunto1 = frozenset(["dato1","dato2"])
conjunto2 = {conjunto1, "dato3"}
print(type(conjunto1) , "\n", conjunto1)
print(conjunto2)

#Teoría de conjuntos

conjunto1 = {1,3,5,7}
conjunto2 = {2,4,6,8}

#Observa como se utilizala teoría de los conjuntos mediante la función
#issubset(), debe darnos el resultado como True.
resultado = conjunto2.issubset(conjunto1)
print(resultado)
print(type(resultado))
#La siguiente forma también verifica como se debe comportar un subconjunto.
#Se escribe un menor o igual que <= pára definir si es True
resultado = conjunto2 <= conjunto1
print(resultado)
print(type(resultado))
#Verificando como es un super conjunto
resultado = conjunto2.issuperset(conjunto1)
print(resultado)
resultado = conjunto2 > conjunto1
print(resultado)
#Verificar si hay algún número en común
resultado = conjunto2.isdisjoint(conjunto1)
print(resultado)