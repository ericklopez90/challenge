import re

print("Ingrese la operación a realizar: ")
# Solicitar información
input = input()
# Contruir expresión regular
regex = re.compile(r'^[0-9\-\+\*\/]+$')
# Validar expresión regular
if regex.search(input):
    # Interpretar Cadena como operación
    print("El resultado es: ")
    result = eval(input)
    print(result)
else:
    print("Patron no aceptado")

