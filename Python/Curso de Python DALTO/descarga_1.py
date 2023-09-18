print("---------------------------------------------------------")
print("Bienvenido a la calculadora para definir gastos mensuales")
print("---------------------------------------------------------")

ingreso_semanal = int(input("Escribe tu ingreso semanal\n"))
meta_sueldo = (ingreso_semanal * 4) * 3
mes = str(input("Escribe el nombre del mes\n"))

gasto_fijo_semanal = int(input("Escribe el costo obligatorio semanal\n"))
lista = [0,0,0,0]

lista[0] = ingreso_semanal - gasto_fijo_semanal
lista[1] = ingreso_semanal - gasto_fijo_semanal
lista[2] = ingreso_semanal - gasto_fijo_semanal
lista[3] = ingreso_semanal - gasto_fijo_semanal

print("Tu meta debe ser alcanzar\n", meta_sueldo)
print(mes)
for semana in lista:
    print(semana)

suma_mes = sum(lista)
print("Esto fue lo recaudado en el mes\n", suma_mes)

gasto_creditos_semana_1 = int(input("Ingresa lo que destinarás para los créditos de la semana uno\n"))
gasto_creditos_semana_2 = int(input("Ingresa lo que destinarás para los créditos de la semana dos\n"))
gasto_creditos_semana_3 = int(input("Ingresa lo que destinarás para los créditos de la semana tres\n"))
gasto_creditos_semana_4 = int(input("Ingresa lo que destinarás para los créditos de la semana cuatro\n"))

lista_2 = [0,0,0,0]

lista_2[0] = lista[0] - gasto_creditos_semana_1
lista_2[1] = lista[1] - gasto_creditos_semana_2
lista_2[2] = lista[2] - gasto_creditos_semana_3
lista_2[3] = lista[3] - gasto_creditos_semana_4

print("Sobrantes\n", lista_2)
print("Esto es lo que tienes al final de", mes, "\n", sum(lista_2))
print("Tu meta debe ser\n", meta_sueldo)
print("Podrías estar ahorrando esto extra\n", (sum(lista) - sum(lista_2)))
print("Te falta\n", (meta_sueldo - sum(lista_2)) )
