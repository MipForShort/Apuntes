print("---------------------------------------------------------------------")
print("Programa que permite escribir la serie fibonacci segun un numero dado")
print("---------------------------------------------------------------------")


def fib(n):
    if n < 2:
        return n
    else:
        # fn = fn-1 + fn-2
        return fib(n-1) + fib(n-2)
    


for x in range(10):
    print(fib(x))

