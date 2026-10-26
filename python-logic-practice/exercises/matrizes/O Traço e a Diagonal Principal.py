import random 

matriz = []

for l in range(3):
    line = []
    for c in range(3):
        vnum = random.randint(0, 100)
        line.append(vnum)
    matriz.append(line)

TotalAmount = 0
for l in range(3):
    for c in range(3):
        if matriz[l] == matriz[c]:
            TotalAmount += matriz[l][c]

print("\n ======FORMATTED MATRIZ======")

for linha in matriz:
    print(" ".join(f"{item:4}" for item in linha))

print(f"The total amount of main diagonal is: {TotalAmount}")