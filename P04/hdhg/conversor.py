
def split_entrada_memoria(entrada=3):
    return "data_out({}) <= \"{}\";".format(c,linea[entrada:].replace("\n",""))


if __name__ == '__main__':
    with open("practica_4_TV.csv","r") as f:
        c = 0
        for linea in f.readlines():
            linea = linea.replace(",","")
            print(split_entrada_memoria(3))
            c += 1
