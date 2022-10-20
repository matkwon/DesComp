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
                            0.___Setup:
                            0.___LDI R1, $0
                            1.___STA @0, R1 # Constante 0
                            2.___STA @2, R1 # 
                            3.___LDI R0, $1
                            4.___STA @1, R0
                            4.___
                            4.___Loop:
                            5.___LDA R0, @KEY2
                            6.___AND R0, @1
                            7.___CEQ R0, @0
                            8.___JEQ @Loop
                            9.___JSR @Incremento
                            10.__JMP @Loop
                            10.__
                            10.__Incremento:
                            11.__CLR @KEY2
                            12.__LDA R0, @2
                            13.__SOMA R0, @1
                            14.__STA R0, @2
                            15.__STA R0, @HEX0
                            16.__STA R0, @LED9
                            17.__RET
                            
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



assembly = 'C:\DesComp\Contador\Assembler\ASM.txt' # Arquivo de entrada de contém o assembly
destinoBIN = 'C:\DesComp\Contador\Assembler\BIN.txt' # Arquivo de saída que contém o binário formatado para VHDL
# assembly = 'ASM.txt' # Arquivo de entrada de contém o assembly
# destinoBIN = 'BIN.txt' # Arquivo de saída que contém o binário formatado para VHDL

# Definição dos mnemônicos e seus 
# respectivo OPCODEs (em Decimal)
mne =	{ 
        "NOP":   0,
        "LDA":   1,
        "SOMA":  2,
        "SUB":   3,
        "AND":   4,
        "LDI":   5,
        "STA":   6,
        "CLR":   6,
        "JMP":   7,
        "JEQ":   8,
        "CEQ":   9,
        "JSR":   10,
        "RET":   11,
}

# Endereco de variáveis, outputs e 
# labels (em Decimal)
addr = {
        "LEDb": 256,
        "LED8": 257,
        "LED9": 258,

        "HEX0": 288,
        "HEX1": 289,
        "HEX2": 290,
        "HEX3": 291,
        "HEX4": 292,
        "HEX5": 293,

        "SWb": 320,
        "SW8": 321,
        "SW9": 322,

        "KEY0": 352,
        "KEY1": 353,
        "KEY2": 354,
        "KEY3": 355,
        "FPGA_RESET": 356,

        "LIM0": 6,
        "LIM1": 7,
        "LIM2": 8,
        "LIM3": 9,
        "LIM4": 11,
        "LIM5": 12,

        "MEM0": 13,
        "MEM1": 14,
        "MEM2": 15,
        "MEM3": 16,
        "MEM4": 17,
        "MEM5": 18,

        "FLAG": 19,
}

# Endereçamento de registradores (em Decimal)
regs = {
        "R0" : 0,
        "R1" : 1,
        "R2" : 2,
        "R3" : 3,
        "R4" : 4,
        "R5" : 5,
        "R6" : 6,
        "R7" : 7,
}

# Flag para indicar limpeza de botão
flagClear = False

# Converte o valor após o caractere arroba '@'
# em um valor binário de 9 bits
def converteArroba(line):
    line = line.split('@')[1].split(', ')[0]
    if line in addr.keys():
        line = addr[line]
    if flagClear:
        return f"{863-int(line):09b}"
    else:
        return f"{int(line):09b}"
 
# Converte o valor após o caractere cifrão'$'
# em um valor binário de 9 bits
def converteCifrao(line):
    line = line.split('$')
    return f"{int(line[1]):09b}"

# Consulta o dicionário de registradores e "converte"
# o registrador em seu respectivo valor em binário
def converteReg(line):
    line = line.split(' ')
    if len(line) > 2:
        if '@' in line[1]:
            return f"{regs[line[2]]:03b}"
        else:
            return f"{regs[line[1].strip(',')]:03b}"
    else:
        return "000"

# Remove o comentário a partir do caractere 
# cerquilha '#', deixando apenas a instrução
def defineInstrucao(line):
    line = line.split(' #')
    line = line[0]
    return line
    
# Consulta o dicionário e "converte" o mnemônico em
# seu respectivo valor em binário (opcode)
def trataMnemonico(line, flagClear):
    line = line.replace("\n", "") # Remove o caracter de final de linha
    line = line.replace("\t", "") # Remove o caracter de tabulacao
    line = line.split(' ')
    if line[0] == "CLR":
        flagClear = True
    return f"{mne[line[0]]:04b}", flagClear

with open(assembly, "r") as f: # Abre o arquivo ASM
    lines = f.readlines() # Lê as linhas
    
    
with open(destinoBIN, "w") as f:  # Abre o destino BIN

    cont = 0 # Cria uma variável para contagem
    
    # Verificar labels e guardar seus endereços
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
        
        # Verifica se a linha começa com o caractere '\n' ou ' ' ou '#'
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            pass
        
        # Indica onde há labels com comentário
        elif ':' in line:
            line = line.split(':')
            line = '\n-- LABEL ' + line[0] + '\n'
            f.write(line) # Escreve no arquivo BIN.txt
            print(line,end = '') # Print apenas para debug
        
        # Se a linha for válida para conversão, executa
        else:

            flagClear = False
            
            # Exemplo de linha => 1. STA @10, R1 #comentario1
            comentarioLine = line.replace("\n","") # Linha será mostrada como comentário depois de comando
            instrucaoLine = defineInstrucao(line).replace("\n","") # Define a instrução. Ex: STA @10, R1

            opcode, flagClear = trataMnemonico(instrucaoLine, flagClear) # Transforma o mnemonico em opcode
                                                                         # e indica se está limpando um
                                                                         # botão. Ex(STA @10, R1): 0110, False
            reg = converteReg(instrucaoLine) # Verifica o registrador em questão. Ex(STA @10, R1): 001

            if '@' in instrucaoLine: # Se encontrar o caractere arroba '@' 
                imed = converteArroba(instrucaoLine) # Converte o número após o caractere Ex(STA @10, R1): 000001010
                    
            elif '$' in instrucaoLine: # Se encontrar o caractere cifrão '$' 
                imed = converteCifrao(instrucaoLine) # Converte o número após o caractere Ex(LDI $5): 000000101
                
            else: # Senão, se a instrução não possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                imed = "000000000" # Imediato não será utilizado, então pouco impota o valor atribuído aqui.
            
            line = ('tmp(' + str(cont) + ') := "' +
                    opcode +
                    '" & "' +
                    reg +
                    '" & "' +
                    imed +
                    '" ;\t-- ' + comentarioLine + '\n') # Formata para o arquivo BIN
                                                        # Entrada => 1. STA @10, R1 #comentario1
                                                        # Saída =>   1. tmp(0) := "0110" & "001" & "000001010";	-- STA @10, R1 	#comentario1
                                        
            cont+=1 # Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) # Escreve no arquivo BIN.txt
            
            print(line,end = '') # Print apenas para debug