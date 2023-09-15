print("--------------------------------")
print("Introduce dos números a comparar")
print("--------------------------------\n")

num_uno = int(input("Introduce el primer número: "))

num_dos = int(input("\nIntroduce el segundo número: "))

print("\nLos números a comparar son:", num_uno, "y", num_dos, "\n")

if num_uno == num_dos:
    print("Los números son iguales\n")

elif num_uno != num_dos:
    print("Los números son diferentes\n")

    if num_uno <= num_dos:
        print("El número", num_uno, "es menor o igual que", num_dos)
        if num_uno < num_dos:
            print("El número", num_uno, "es menor a", num_dos)
    elif num_uno >= num_dos:
        print("El número", num_uno, "es mayor o igual que", num_dos)
        if num_uno > num_dos:
            print("El número", num_uno, "es mayor a", num_dos)
    else:
        print("Los números son invalidos")

else:
    print("Números no válidos")

print("\nFin.")
