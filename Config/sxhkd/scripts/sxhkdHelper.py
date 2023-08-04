import os 
import subprocess

archivo = "/home/bifuz/.config/sxhkd/scripts/sxhkdInstructions"
variable1 = []
variable2 = []
variable3 = []

with open(archivo, "r") as file:

    for linea in file:

        elementos = linea.split(";|")

        try:
            variable1.append(str(elementos[0]))
            variable2.append(elementos[1])
            variable3.append(str(elementos[2].removesuffix('\n')))
        except:
            print("ERROR")

rofi = ""
    
for i in range(len(variable1)):
    rofi += variable1[i] + "\t\t" + variable2[i] + "\n"

rofi = rofi[:-2]

proceso_echo = subprocess.Popen(["echo", rofi], stdout=subprocess.PIPE)
proceso_rofi = subprocess.Popen(["rofi", "-dmenu"], stdin=proceso_echo.stdout, stdout=subprocess.PIPE)

salida, err = proceso_rofi.communicate()

index = variable1.index(salida.decode('utf-8').split("\t")[0])

os.system(f"{variable3[index]} &>/dev/null &")
