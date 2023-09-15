#Aqui se pueden escribir valores fijos que no pueda determinar el usuario
#ingreso_mensual = 92000
#gasto_mensual = 30000

#Con esto se puede capturar con la consola los datos a comparar
ingreso_mensual = int(input("Escribe tu ingreso mensual\n"))
gasto_mensual = int(input("Escribe tu gasto mensual\n"))

if ingreso_mensual > 10000:
    #El siguiente codigo es un poco viejo, te sirve para saber la estructura del if else dentro del mismo
    #print("Estás bien económicamente en cualquier parte del mundo\n")
    #if gasto_mensual < 7000:
    #    print("Estás bien")
    #else:
    #    print("Estás gastando mucho")
    
    #Nótese como se puede utilizar una operación completa en vez de crear una variable para comparar según
    #nuestra condición#
    if (ingreso_mensual - gasto_mensual) > 30000:
        #Observen como escribo la cantidad resultante sin tener que crear una variable
        print("Manten este margen\n", (ingreso_mensual - gasto_mensual))
    #OJO, en Python se nombra como elif al else if
    elif ingreso_mensual - gasto_mensual < 0:
        print("Estás en deficit\n", (ingreso_mensual - gasto_mensual))
    elif ingreso_mensual - gasto_mensual > 3000:
        print("Tranquilo que estas gastando\n", (ingreso_mensual - gasto_mensual))
    else:
        print("Estás gastando mucho")
    #Termina condición

elif (ingreso_mensual - gasto_mensual) > 1000:
    print("Estas bien en latinoamérica\n", (ingreso_mensual - gasto_mensual))
    
elif (ingreso_mensual - gasto_mensual) > 500:
    print("Estas bien en Argentina\n")

elif  (ingreso_mensual - gasto_mensual) > 200:
    print("Estas bien en Venezuela\n")
else:
    print("Eres pobre")