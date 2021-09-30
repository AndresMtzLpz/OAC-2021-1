#import mif
import csv

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

errors = []

def print_errors():
    global errors
    for error in errors:
        print("salida:\033[93m{}\033[0m no valida, Direccion \033[93m0x{}\033[0m".format(error["salida"],error["dir"]))

def get_data(mif_file):
    with open(mif_file) as f:
        mem = mif.load(f)
    return mem

def asm_default():
    instruction = {
        "nCRI":1,
        "EB1":0,
        "EB0":0,
        "nWB":1,
        "EA1":0,
        "EA0":0,
        "nWA":1,
        "selbus":0,
        "UPA9":0,
        "UPA8":0,
        "UPA7":0,
        "UPA6":0,
        "UPA5":0,
        "UPA4":0,
        "UPA3":0,
        "UPA2":0,
        "UPA1":0,
        "UPA0":0,
        "nOEUPA":1,
        "nDUPA":1,
        "selmux":0,
        "nEX2":1,
        "nEX1":1,
        "nEX0":1,
        "X2":0,
        "X1":0,
        "X0":0,
        "EnaY":0,
        "nERA2":1,
        "nERA1":1,	
        "nERA0":1,
        "RA2":0,
        "RA1":0,
        "RA0":0,
        "nEAP2":1,
        "nEAP1":1,
        "nEAP0":1,
        "AP2":0,
        "AP1":0,
        "AP0":0,
        "nEPC2":1,
        "nEPC1":1,
        "nEPC0":1,
        "PC2":0,
        "PC1":0,
        "PC0":0,
        "nCBD":1,	
        "nAS":1,
        "nRW":1,
        "BD":0,
        "DINT":0,	
        "HINT":0,	
        "SET_IRQ":0,
        "SET_XIRQ":0,
        "B9":0,
        "B8":0,
        "B7":0,
        "B6":0,	
        "B5":0,	
        "B4":0,	
        "B3":0,	
        "B2":0,	
        "B1":0,	
        "B0":0,	
        "CC":0,	
        "CN":0,	
        "CV":0,	
        "CZ":0,	
        "CI":0,
        "CH":0,	
        "CX":0,	
        "CS":0,	
        "nHB":1,
        "ACCSEC":0
    }
    return instruction

def get_new_asm_struct():
    asm_struct = {
    "Q3":[],
    "Q2":[],
    "Q1":[],
    "Q0":[],
    "P4":[],
    "P3":[],
    "P2":[],
    "P1":[],
    "P0":[],
    "VF":[],
    "I1":[],
    "I0":[],
    "L11":[],
    "L10":[],
    "L9":[],
    "L8":[],
    "L7":[],
    "L6":[],
    "L5":[],
    "L4":[],
    "L3":[],
    "L2":[],
    "L1":[],
    "L0":[],
    "nCRI":[],
    "EB1":[],
    "EB0":[],
    "nWB":[],
    "EA1":[],
    "EA0":[],
    "nWA":[],
    "selbus":[],
    "UPA9":[],
    "UPA8":[],
    "UPA7":[],
    "UPA6":[],
    "UPA5":[],
    "UPA4":[],
    "UPA3":[],
    "UPA2":[],
    "UPA1":[],
    "UPA0":[],
    "nOEUPA":[],
    "nDUPA":[],
    "selmux":[],
    "nEX2":[],
    "nEX1":[],
    "nEX0":[],
    "X2":[],
    "X1":[],
    "X0":[],
    "EnaY":[],
    "nERA2":[],
    "nERA1":[],	
    "nERA0":[],
    "RA2":[],
    "RA1":[],
    "RA0":[],
    "nEAP2":[],
    "nEAP1":[],
    "nEAP0":[],
    "AP2":[],
    "AP1":[],
    "AP0":[],
    "nEPC2":[],
    "nEPC1":[],
    "nEPC0":[],
    "PC2":[],
    "PC1":[],
    "PC0":[],
    "nCBD":[],	
    "nAS":[],
    "nRW":[],
    "BD":[],
    "DINT":[],	
    "HINT":[],	
    "SET_IRQ":[],
    "SET_XIRQ":[],
    "B9":[],
    "B8":[],
    "B7":[],
    "B6":[],	
    "B5":[],	
    "B4":[],	
    "B3":[],	
    "B2":[],	
    "B1":[],	
    "B0":[],	
    "CC":[],	
    "CN":[],	
    "CV":[],	
    "CZ":[],	
    "CI":[],
    "CH":[],	
    "CX":[],	
    "CS":[],	
    "nHB":[],
    "ACCSEC":[]
    }
    return asm_struct

def instruction_to_string(direccion = "000", prueba="00000", vf="0",inst="00",liga="000000000000", mutations = []):
    instruction = asm_default()
    salidas_x = list(instruction.keys())
    salidas = []
    global errors
    for salida in salidas_x:
        salidas.append(salida.lower())

    
    mutations_X = []
    for mut in mutations:
        if mut.lower() not in salidas:
            error = {
                "salida":mut.lower(), 
                "dir":direccion
            }
            errors.append(error)
            print("{} wooo".format(mut.lower()))
        else:
            mutations_X.append(mut.lower())
    mutations = mutations_X
    string_completa = ""
    for key in instruction:
        i = instruction[key]
        if key.lower() in mutations:
            i = int(not i)
        string_completa += str(i)
        #print(key, i)
    instruction = string_completa
    #direccion = "{0:X}".format(int(direccion,2))
    while len(direccion) < 3:
        direccion = "0{0}".format(direccion)
    payload = "{}{}{}{}{}".format(prueba,vf,inst,liga,instruction)
    print("======{}======".format(direccion))
    get_info_instruccion(payload)
    print("======{}======".format(direccion))
    codigo = "elsif(dir = X\"{}\") then data <= \"{}\";\n".format(direccion,payload)
    return codigo

def get_info_instruccion(inst):
    print("prueba: {0:X}".format(int(inst[:5],2)))
    print("vf: {}".format(inst[5]))
    print("ins:{}".format(inst[6:8]))
    print("liga: {0:X}".format(int(inst[8:20],2)))
    inst = inst[20:]
    default = asm_default()
    pos = 0
    for key in default:
        i = default[key]
        if int(inst[pos]) != int(i):
            print(key)
        pos += 1

def asm_list_to_csv(csv_file, lista_asm, asm_columns):
    try:
        with open(csv_file, 'w') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=asm_columns)
            writer.writeheader()
            for data in lista_asm:
                writer.writerow(data)
    except IOError:
        print("I/O error")

def dec_to_dir_bin(dec, tam):
    strbin = "{0:b}".format(dec)
    listbin = []
    while len(strbin) < tam:
        strbin = "0{0}".format(strbin)
    for strr in strbin:
        listbin.append(strr)
    return strbin

def csv_to_mif(csv_file, mif_file):
    asm_lista_dicts = []
    with open(csv_file, 'r') as csv_file:
        reader = csv.reader(csv_file, delimiter=",")
        line_count = 0
        for row in reader:
            if line_count == 0:
                asm_keys = row
            else:
                asm_struct_template = get_new_asm_struct()
                asm_data = row
                k = 0
                asm_data_string = ""
                for key in asm_keys:
                    asm_struct_template[key] = asm_data[k]
                    asm_data_string += asm_data[k]
                    k += 1
                asm_lista_dicts.append(asm_struct_template)
            line_count += 1

def instruction_to_string_eha(direccion="000", prueba="00",vf="0", inst="00", liga="000", mutations=[]):
    return instruction_to_string(direccion=direccion, 
        prueba=dec_to_dir_bin(int(prueba,16),5),
        vf=vf, 
        inst=inst,
        liga=dec_to_dir_bin(int(liga,16),12), 
        mutations=mutations)
'''
if __name__ == "__main__":
    lista_asm = []
    mem = get_data("rom_content.mif")
    #print(mif.dumps(mem))
    print(mem[0x00][0])
    print(mem[0x00][1])
    print(mem[0x00][2])
    estructura_asm = get_new_asm_struct()
    asm_lista = list(estructura_asm.keys())
    asm_lista.reverse()
    direccion = 0
    for mdir in mem:
        c = 0
        estructura_asm = get_new_asm_struct()
        dirList = dec_to_dir_bin(direccion)
        dirList.reverse()
        for mdata in mdir:
            estructura_asm[asm_lista[c]] = mdata
            c += 1
        for dirData in dirList:
            try:
                estructura_asm[asm_lista[c]] = dirData
                c += 1
            except:
                pass
        new_dict={}
        for k,v in estructura_asm.items():
            dict_element={k:v}
            dict_element.update(new_dict)
            new_dict=dict_element
        lista_asm.append(new_dict)
        direccion += 1
    asm_lista.reverse()
    asm_list_to_csv("asm_.csv", lista_asm, asm_lista)
    csv_to_mif("asm_.csv", "rom.mif")
'''
'''
if __name__ == "__main__":

    i = asm_default()
    #instruction_to_string("000",dec_to_dir_bin(int("00",16),5),"0","00",dec_to_dir_bin(int("F08",16),12),[])
    mem = get_data("rom_content.mif")
    inicio = 0x260
    fin = 0x26B
    point = inicio
    for mdir in mem[inicio:fin+1]:
        ins = ""
        for dat in mdir.tolist():
            ins += str(dat)
        print("=========={0:X}============".format(point))
        get_info_instruccion(ins[::-1])
        print("========================")
        point += 1
'''
if __name__ == "__main__":
    # LDAB(DIR)
    instrucciones = ""
    instrucciones += instruction_to_string_eha(direccion="D60",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="D61",prueba="00",vf="0",mutations=["nera0","ra0","ra1","pc0","nas"])
    instrucciones += instruction_to_string_eha(direccion="D62",prueba="00",vf="0",mutations=["nera2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="D63",prueba="00",vf="0",mutations=["nas","nwb","eb0"])
    instrucciones += instruction_to_string_eha(direccion="D64",prueba="0f",vf="1",inst="11" ,mutations=["cz","cn","cv","b4","b7","b2"])
    instrucciones += instruction_to_string_eha(direccion="D65",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    # LDAA(DIR)
    instrucciones += instruction_to_string_eha(direccion="960",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="961",prueba="00",vf="0",mutations=["nera0","ra0","ra1","pc0","nas"])
    instrucciones += instruction_to_string_eha(direccion="962",prueba="00",vf="0",mutations=["nera2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="963",prueba="00",vf="0",mutations=["nas","nwa","ea0"])
    instrucciones += instruction_to_string_eha(direccion="964",prueba="0f",vf="1",inst="11" ,mutations=["cz","cn","cv","b3","b6","b2"])
    instrucciones += instruction_to_string_eha(direccion="965",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    # JMP(EXT)
    instrucciones += instruction_to_string_eha(direccion="7E0",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="7E1",prueba="00",vf="0",mutations=["nas","bd","nera1","ra2","pc0"])
    instrucciones += instruction_to_string_eha(direccion="7E2",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="7E3",prueba="00",vf="0",mutations=["nas","nera0","ra0","ra1","pc0"])
    instrucciones += instruction_to_string_eha(direccion="7E4",prueba="0f",vf="1",inst="11" ,mutations=["pc2","pc0","nepc1","nepc0","nera1","nera0"])
    instrucciones += instruction_to_string_eha(direccion="7E5",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    # ABA(INH)
    instrucciones += instruction_to_string_eha(direccion="1B0",prueba="00",vf="0",mutations=["ea1","ea0","eb1","eb0","upa0","selmux","upa7"])
    instrucciones += instruction_to_string_eha(direccion="1B1",prueba="0f",vf="1",inst="11" ,mutations=["noeupa","ndupa","ea0","nwa","cn","cz","cv","cc"])
    instrucciones += instruction_to_string_eha(direccion="1B2",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    # BRA
    instrucciones += instruction_to_string_eha(direccion="200",prueba="00",vf="0",mutations=["nhb","nera0","ra1","ra0","nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="201",prueba="00",vf="0",mutations=["pc0","nas","upa2","upa1","upa0","upa5","upa4"])
    instrucciones += instruction_to_string_eha(direccion="202",prueba="00",vf="0",mutations=["nepc0","upa2","upa1","selmux","upa7"])
    instrucciones += instruction_to_string_eha(direccion="203",prueba="00",vf="1",inst="01", liga="205",mutations=["noeupa","ndupa","nepc0","pc1","pc0","cc"])
    instrucciones += instruction_to_string_eha(direccion="204",prueba="18",vf="0",inst="01", liga="206",mutations=["nepc1","selbus","upa2","upa1","upa0"])
    instrucciones += instruction_to_string_eha(direccion="205",prueba="00",vf="0",mutations=["nepc1","selbus","upa2","upa1","upa0","upa5"])
    instrucciones += instruction_to_string_eha(direccion="206",prueba="00",vf="0",mutations=["nepc1","noeupa","ndupa","pc2"])
    instrucciones += instruction_to_string_eha(direccion="207",prueba="0f",vf="1",inst="11" ,mutations=["nera0","cc","b0"])
    instrucciones += instruction_to_string_eha(direccion="208",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    #BNE
    instrucciones += instruction_to_string_eha(direccion="260",prueba="12",vf="0",inst="01", liga="200",mutations=[])
    instrucciones += instruction_to_string_eha(direccion="261",prueba="0f",vf="1",inst="11" ,mutations=["pc0"])
    instrucciones += instruction_to_string_eha(direccion="262",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])
    #BEQ
    instrucciones += instruction_to_string_eha(direccion="270",prueba="12",vf="1",inst="01", liga="200",mutations=[])
    instrucciones += instruction_to_string_eha(direccion="271",prueba="0f",vf="1",inst="11" ,mutations=["pc0"])
    instrucciones += instruction_to_string_eha(direccion="272",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])

    #INCA
    instrucciones += instruction_to_string_eha(direccion="180",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="181",prueba="00",vf="0",mutations=["nCRI","pc0","nas"])
    instrucciones += instruction_to_string_eha(direccion="182",prueba="00",vf="0",mutations=["nas","nwa","ea0"])
    instrucciones += instruction_to_string_eha(direccion="183",prueba="00",vf="0",mutations=["X0"])
    instrucciones += instruction_to_string_eha(direccion="184",prueba="00",vf="0",mutations=["cz","b4","b3"])
    instrucciones += instruction_to_string_eha(direccion="185",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])

    #STAA
    instrucciones += instruction_to_string_eha(direccion="A70",prueba="00",vf="0",mutations=["nepc2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="A71",prueba="00",vf="0",mutations=["pc0","nas","upa2","upa1","upa0","upa5","upa4"])
    instrucciones += instruction_to_string_eha(direccion="A72",prueba="00",vf="0",mutations=["nepc0","upa2","upa1","selmux","upa7"])
    instrucciones += instruction_to_string_eha(direccion="A73",prueba="00",vf="0",mutations=["ndupa","noeupa","ra0","ra1","nera0"])
    instrucciones += instruction_to_string_eha(direccion="A74",prueba="00",vf="0",mutations=["nera2","ncbd"])
    instrucciones += instruction_to_string_eha(direccion="A75",prueba="00",vf="0",mutations=["ea0","nas","nwa"])
    instrucciones += instruction_to_string_eha(direccion="A76",liga="09",prueba="18",vf="0",inst="01" ,mutations=["nepc2","ncbd"])



    print(instrucciones)
    print_errors()
    #get_info_instruccion("1100000100000000100110010010000000000011011100001110001110000110000110000000000000000000000010")
