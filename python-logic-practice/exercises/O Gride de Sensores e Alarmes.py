matriz = []

for l in range(3):
    vlinha = []
    for c in range(3):
        vtemp = int(input("DIgite a temperatura registrada no sensor:"))
        vlinha.append(vtemp)
    matriz.append(vlinha)
    
mtemp = matriz[0][0]
pos_l = 0
pos_c = 0
for l in range(3):
    for c in range(3):
        if matriz[l][c] > mtemp :
            mtemp = matriz[l][c]
            pos_l = l
            pos_c = c
        if matriz[l][c] > 80:
            print("!!⚠️☢️ALERTA TEMPERATURA MAIOR QUE 80 IDENTIFICADA☢️⚠️!!")
        print(f"Posição: Linha {l}, Coluna {c}")
        
print(f"A maior temperatura registrada foi: {mtemp}°C")
print(f"Posição do maior valor:\n Linha {pos_l},\n Coluna {pos_c}")