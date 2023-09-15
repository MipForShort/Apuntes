ingreso_mensual = 30000
gasto_mensual = 5000

if ingreso_mensual > 10000:
    #print("Estás bien económicamente en cualquier parte del mundo\n")
    #if gasto_mensual < 7000:
    #    print("Estás bien")
    #else:
    #    print("Estás gastando mucho")
    if ingreso_mensual - gasto_mensual < 0:
        print("Estás en deficit")
    elif ingreso_mensual - gasto_mensual > 3000:
        print("Bien apá, estás bien")
    else:
        print("Estás gastando mucho")
    
    
#Ojo, en Python se escribe como elif el else if
elif ingreso_mensual > 1000:
    print("Estas bien en latinoamérica\n")
    
elif ingreso_mensual > 500:
    print("Estas bien en Argentina\n")

elif ingreso_mensual > 200:
    print("Estas bien en Venezuela\n")
    
else:
    print("Eres pobre")