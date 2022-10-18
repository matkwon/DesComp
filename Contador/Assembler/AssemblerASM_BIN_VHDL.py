"""
Criado em 18/10/2022

@autor: Matheus Kwon e João Zsigmond

Inspirado no seguinte código: https://github.com/Insper/DesignComputadores/tree/master/AssemblerASM_BIN_VHDL


Regras:

1) No Arquivo ASM.txt, linhas iniciadas com caracter ' ' ou '\n' ou '#' serão ignoradas.
2) Esse conversor serve para arquitetura Registrador-Memória.
2) Exemplo de codigo invalido:
                            0.___JSR @14 #comentario1   << Válido
                            1.___#comentario2           << Válido, mas ignorado ( Somente comentário )
                            2.___                       << Válido, mas ignorado ( Linha vazia )
                            3.___JMP @5  #comentario3   << Válido
                            4.___JEQ @9                 << Válido
                            5.___NOP                    << Válido
                            6.___NOP                    << Válido
                            7.___                       << Válido ( Linha vazia )
                            8.___LDI $5                 << Invalido ( Linha iniciada com espaço (' ') )
                            9.___ STA $0
                            10.__CEQ @0
                            11.__JMP @2  #comentario4
                            12.__NOP
                            13.__ LDI $4                << Invalido ( Linha iniciada com espaço (' ') )
                            14.__CEQ @0
                            15.__JEQ @3
                            16.__#comentario5           << Invalido ( Linha somente com comentário )
                            17.__JMP @13
                            18.__NOP
                            19.__RET
                                
3) Exemplo de código válido (Arquivo ASM.txt):
                            0.___JSR @14 #comentario1
                            1.___JMP @5  #comentario3
                            2.___JEQ @9
                            3.___NOP
                            4.___NOP
                            5.___LDI $5
                            6.___STA $0
                            7.___CEQ @0
                            8.___JMP @2  #comentario4
                            9.___NOP
                            10.__LDI $4
                            11.__CEQ @0
                            12.__JEQ @3
                            13.__JMP @13
                            14.__NOP
                            15.__RET
                            
6) Resultado do código válido (Arquivo BIN.txt):
                            0.__tmp(0) := x"90E"; -- comentario1
                            1.__tmp(1) := x"605"; -- comentario3
                            2.__tmp(2) := x"709"; -- JEQ @9
                            3.__tmp(3) := x"000"; -- NOP
                            4.__tmp(4) := x"000"; -- NOP
                            5.__tmp(5) := x"405"; -- LDI $5
                            6.__tmp(6) := x"500"; -- STA $0
                            7.__tmp(7) := x"800"; -- CEQ @0
                            8.__tmp(8) := x"602"; -- comentario4
                            9.__tmp(9) := x"000"; -- NOP
                            10._tmp(10) := x"404"; -- LDI $4
                            11._tmp(11) := x"800"; -- CEQ @0
                            12._tmp(12) := x"703"; -- JEQ @3
                            13._tmp(13) := x"60D"; -- JMP @13
                            14._tmp(14) := x"000"; -- NOP
                            15._tmp(15) := x"A00"; -- RET

"""



# assembly = 'C:\DesComp\Contador\Assembler\ASM.txt' #Arquivo de entrada de contem o assembly
# destinoBIN = 'C:\DesComp\Contador\Assembler\BIN.txt' #Arquivo de saída que contem o binário formatado para VHDL
assembly = 'ASM.txt' #Arquivo de entrada de contem o assembly
destinoBIN = 'BIN.txt' #Arquivo de saída que contem o binário formatado para VHDL

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
        "NOP":   "0",
        "LDA":   "1",
        "SOMA":  "2",
        "SUB":   "3",
        "AND":   "4",
        "LDI":   "5",
        "STA":   "6",
        "CLR":   "6",
        "JMP":   "7",
        "JEQ":   "8",
        "CEQ":   "9",
        "JSR":   "A",
        "RET":   "B",
}

#endereco de variáveis, outputs e labels
addr = {
        "LEDb": "256",
        "LED8": "257",
        "LED9": "258",

        "HEX0": "288",
        "HEX1": "289",
        "HEX2": "290",
        "HEX3": "291",
        "HEX4": "292",
        "HEX5": "293",

        "SWb": "320",
        "SW8": "321",
        "SW9": "322",

        "KEY0": "352",
        "KEY1": "353",
        "KEY2": "354",
        "KEY3": "355",
        "FPGA_RESET": "356",

        "LIM0": "2",
        "LIM1": "3",
        "LIM2": "4",
        "LIM3": "5",
        "LIM4": "6",
        "LIM5": "7",

        "MEM0": "8",
        "MEM1": "9",
        "MEM2": "11",
        "MEM3": "12",
        "MEM4": "13",
        "MEM5": "14",

        "FLAG": "15",
}

regs = {
        "R0" : "00",
        "R1" : "01",
        "R2" : "10",
        "R3" : "11",
}

flagClear = False

#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def converteArroba(line):
    line = line.split('@')[1].split(', ')[0]
    if line in addr.keys():
        line = addr[line]
    if flagClear:
        return bin(863 - int(line))[2:].upper().zfill(9)
    else:
        return bin(int(line))[2:].upper().zfill(9)
 
#Converte o valor após o caractere cifrão'$'
#em um valor hexadecimal de 2 dígitos (8 bits) 
def converteCifrao(line):
    line = line.split('$')
    return bin(int(line[1]))[2:].upper().zfill(9)

def converteReg(line):
    line = line.split(' ')
    if len(line) > 2:
        if '@' in line[1]:
            return regs[line[2]]
        else:
            return regs[line[1].strip(',')]
    else:
        return "00"
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split(' #')
    line = line[0]
    return line
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line, flagClear):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    if line[0] == "CLR":
        flagClear = True
    return format(int("0x" + mne[line[0]], 16), "b").zfill(4), flagClear

with open(assembly, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas
    
    
with open(destinoBIN, "w") as f:  #Abre o destino BIN

    cont = 0 #Cria uma variável para contagem
    
    for line in lines:
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            cont-=1
        elif ':' in line:
            line = line.split(':')
            addr[line[0]] = cont
            cont-=1
        cont+=1

    cont = 0
    
    for line in lines:
        
        #Verifica se a linha começa com caracteres '\n' ou ' ' ou '#'
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            pass
        
        elif ':' in line:
            line = line.split(':')
            line = '\n-- LABEL ' + line[0] + '\n'
            f.write(line) #Escreve no arquivo BIN.txt
            print(line,end = '') #Print apenas para debug
        
        #Se a linha for válida para conversão, executa
        else:

            flagClear = False
            
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14

            opcode, flagClear = trataMnemonico(instrucaoLine, flagClear) #Trata o mnemonico. Ex(JSR @14): x"9" @14

            if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                imed = converteArroba(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                reg = converteReg(instrucaoLine)
                    
            elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$' 
                imed = converteCifrao(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                reg = converteReg(instrucaoLine)
                
            else: #Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                imed = "000000000" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                reg = converteReg(instrucaoLine)
            
            line = 'tmp(' + str(cont) + ') := "' + opcode + '" & "' + reg + '" & "' + imed + '" ;\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                       #Entrada => 1. JSR @14 #comentario1
                                                                                                       #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                                        
            cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) #Escreve no arquivo BIN.txt
            
            print(line,end = '') #Print apenas para debug