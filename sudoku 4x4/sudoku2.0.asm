;SUDOKU SOLVER (4X4)

;by
;Gaurav Shukla (paracip)
;Gagandeep Singh

;"SUDOKU SOLVER (4X4)" by paracip is licensed under CC BY 2.0
;         0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15

TABLE  DB 0, 1, 4, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 2, 3, 0   ;NORMAL
TABLE1 DB ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?   ;TRANSPOSED
TABLE2 DB ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?   ;SQUARIFIED           
ANSWER DB ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?   ;ANSWER KEY

COUNT equ 16

MOV SI, OFFSET TABLE
MOV DI, OFFSET TABLE1

MOV AL, [SI]
MOV [DI], AL

MOV AL, [SI+1]
MOV [DI+4], AL

MOV AL, [SI+2]
MOV [DI+8], AL

MOV AL, [SI+3]
MOV [DI+12], AL

MOV AL, [SI+4]
MOV [DI+1], AL

MOV AL, [SI+5]
MOV [DI+5], AL

MOV AL, [SI+6]
MOV [DI+9], AL

MOV AL, [SI+7]
MOV [DI+13], AL
        
MOV AL, [SI+8]
MOV [DI+2], AL

MOV AL, [SI+9]
MOV [DI+6], AL

MOV AL, [SI+10]
MOV [DI+10], AL

MOV AL, [SI+11]
MOV [DI+14], AL 

MOV AL, [SI+12]
MOV [DI+3], AL

MOV AL, [SI+13]
MOV [DI+7], AL

MOV AL, [SI+14]
MOV [DI+11], AL

MOV AL, [SI+15]
MOV [DI+15], AL  
 

MOV SI, OFFSET TABLE
 
MOV DI, OFFSET TABLE2
MOV AL, [SI]
MOV [DI], AL

MOV AL, [SI+1]
MOV [DI+1], AL

MOV AL, [SI+5]
MOV [DI+2], AL

MOV AL, [SI+4]
MOV [DI+3], AL

MOV AL, [SI+2]
MOV [DI+4], AL

MOV AL, [SI+3]
MOV [DI+5], AL

MOV AL, [SI+7]
MOV [DI+6], AL

MOV AL, [SI+6]
MOV [DI+7], AL
        
MOV AL, [SI+8]
MOV [DI+8], AL

MOV AL, [SI+9]
MOV [DI+9], AL

MOV AL, [SI+13]
MOV [DI+10], AL

MOV AL, [SI+12]
MOV [DI+11], AL 

MOV AL, [SI+10]
MOV [DI+12], AL

MOV AL, [SI+11]
MOV [DI+13], AL

MOV AL, [SI+15]
MOV [DI+14], AL

MOV AL, [SI+14]
MOV [DI+15], AL
  
;TABLES OVER
        MOV AX, [SI]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+1]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+2]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+3]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H         
        
        MOV DH, 1
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        
        MOV AX, [SI+4]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+5]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+6]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+7]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
                         
        MOV DH, 2
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        MOV AX, [SI+8]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+9]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+10]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+11]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV DH, 3
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        MOV AX, [SI+12]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+13]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+14]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+15]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
                   
        MOV DH, 2
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
                 
        MOV DH, 5
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H     
     ;   
        MOV AX, [DI]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+1]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+2]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+3]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H       
        
        MOV DH, 6
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 
        
        MOV AX, [DI+4]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+5]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+6]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+7]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        
        MOV DH, 7
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 
        
        MOV AX, [DI+8]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+9]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+10]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+11]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
                   
        MOV DH, 8
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 

        MOV AX, [DI+12]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+13]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+14]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+15]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        
        MOV DH, 10
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        MOV SI, OFFSET TABLE1
        ;
        MOV AX, [SI]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+1]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+2]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+3]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H       
        
        MOV DH, 11
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 
        
        MOV AX, [SI+4]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+5]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+6]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+7]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        
        MOV DH, 12
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 
        
        MOV AX, [SI+8]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+9]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+10]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+11]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
                   
        MOV DH, 13
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 

        MOV AX, [SI+12]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [SI+13]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+14]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [SI+15]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        
        MOV DH, 14
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        
        MOV DH, 15
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H   
;PRINT OVER
COUNT1 DB 5
COUNT2 DB 0 
COUNT3 DB 5
COUNT4 DB 0
COUNT5 DB 5
COUNT6 DB 0
COUNT7 DB 5
COUNT8 DB 0 
COUNT9 DB 5
COUNT10 DB 0 
COUNT11 DB 5
COUNT12 DB 0
COUNT13 DB 5
COUNT14 DB 0
COUNT15 DB 5
COUNT16 DB 0
COUNT17 DB 5
COUNT18 DB 0 
COUNT19 DB 5
COUNT20 DB 0
COUNT21 DB 5
COUNT22 DB 0
COUNT23 DB 5
COUNT24 DB 0 
COUNT25 DB 5
COUNT26 DB 0 
COUNT27 DB 5
COUNT28 DB 0
COUNT29 DB 5
COUNT30 DB 0
COUNT31 DB 5
COUNT32 DB 0 
COUNTX DB 15D
MOV SI, OFFSET TABLE 
MOV DI, SI
MOV SI, 0
MOV DI, 0     

MOV BL, [DI] 

MOV CX, 16H

LOOP1:  
        MOV COUNT1, 5
        MOV COUNT2, 0
        MOV COUNT3, 5
        MOV COUNT4, 0
        MOV COUNT5, 5
        MOV COUNT6, 0
        MOV COUNT7, 5
        MOV COUNT8, 0
        MOV COUNT9, 5
        MOV COUNT10, 0
        MOV COUNT11, 5
        MOV COUNT12, 0
        MOV COUNT13, 5
        MOV COUNT14, 0
        MOV COUNT15, 5
        MOV COUNT16, 0
        MOV COUNT17, 5
        MOV COUNT18, 0
        MOV COUNT19, 5
        MOV COUNT20, 0
        MOV COUNT21, 5
        MOV COUNT22, 0
        MOV COUNT23, 5
        MOV COUNT24, 0
        MOV COUNT25, 5
        MOV COUNT26, 0
        MOV COUNT27, 5
        MOV COUNT28, 0
        MOV COUNT29, 5
        MOV COUNT30, 0
        MOV COUNT31, 5
        MOV COUNT32, 0
        MOV DX, DI
        CMP DX, 16D
        JZ RESET
        JNZ BACK
RESET:  MOV SI, 0
        MOV DI, 0
        
        MOV DH, 17
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H 
        
        MOV AX, [DI]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+1]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+2]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+3]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H         
        
        MOV DH, 18
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        
        MOV AX, [DI+4]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+5]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+6]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+7]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
                         
        MOV DH, 19
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        MOV AX, [DI+8]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+9]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+10]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+11]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV DH, 20
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        MOV AX, [DI+12]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H  
        
        MOV AX, [DI+13]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+14]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV AX, [DI+15]
        MOV DX, AX 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        MOV DH, 22
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
          
        JMP BACK
    ;   JZ TABLECHECK
BACK:   MOV BL, [DI] 
        CMP BL, 0
        MOV CX, 5
        JZ NULL 
        INC DI
        INC SI
        DEC CX  
        DEC COUNTX
        CMP COUNTX, 0
        JZ FINISH
        JNZ LOOP1
        
NULL:   MOV DX, DI
        MOV COUNTX, 15D
        MOV AX, SI  
        MOV SI, OFFSET TABLE
        MOV SI, AX
        CMP DX, 0
        JZ CHECK1R
        CMP DX, 1
        JZ CHECK2R       
        CMP DX, 2
        JZ CHECK3R
        CMP DX, 3
        JZ CHECK4R       
        CMP DX, 4   
        JZ CHECK5R    
        CMP DX, 5   
        JZ CHECK6R
        CMP DX, 6   
        JZ CHECK7R
        CMP DX, 7   
        JZ CHECK8R
        CMP DX, 8   
        JZ CHECK9R
        CMP DX, 9   
        JZ CHECK10R
        CMP DX, 10   
        JZ CHECK11R  
        CMP DX, 11   
        JZ CHECK12R
        CMP DX, 12   
        JZ CHECK13R
        CMP DX, 13   
        JZ CHECK14R
        CMP DX, 14  
        JZ CHECK15R
        CMP DX, 15   
        JZ CHECK16R   
;1,1        
CHECK1R:DEC COUNT1          ;4
        MOV CX, SI
        MOV BL, COUNT1

        CMP BL, [SI+1]
        JZ CHECK1R
        CMP BL, [SI+2] 
        JZ CHECK1R
        CMP BL, [SI+3] 
        JZ CHECK1R
        MOV COUNT1, BL
        ADD COUNT1, 1  
        ADD SI, 16
        JNZ CHECK1C         
        
CHECK1C:DEC COUNT1          ;4
        MOV BL, COUNT1   

        CMP BL, [SI+1]
        JZ CHECK1C
        CMP BL, [SI+2] 
        JZ CHECK1C
        CMP BL, [SI+3] 
        JZ CHECK1C
        MOV COUNT1, BL
        ADD COUNT1, 1  
        ADD SI, 16

        JNZ CHECK1S
        
CHECK1S:DEC COUNT1          ;4
        MOV BL, COUNT1

        CMP BL, [SI+1]
        
        JZ CHECK1S
        CMP BL, [SI+2] 
        JZ CHECK1S
        CMP BL, [SI+3] 
        JZ CHECK1S
        MOV COUNT1, BL
        ADD COUNT1, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK1R
        
NCHECK1R:INC COUNT2          ;1
        MOV BH, COUNT2
         
        CMP BH, [SI+1]
        JZ NCHECK1R
        CMP BH, [SI+2] 
        JZ NCHECK1R
        CMP BH, [SI+3] 
        JZ NCHECK1R
        MOV COUNT2, BH
        SUB COUNT2, 1
        ADD SI, 16
        JNZ NCHECK1C    
                    
NCHECK1C:INC COUNT2          ;4
        MOV BH, COUNT2
         
        CMP BH, [SI+1]
        JZ NCHECK1C
        CMP BH, [SI+2] 
        JZ NCHECK1C
        CMP BH, [SI+3] 
        JZ NCHECK1C
        MOV COUNT2, BH
        SUB COUNT2, 1  
        ADD SI, 16
        JNZ NCHECK1S
        
NCHECK1S:INC COUNT2          ;4
        MOV BH, COUNT2
         
        CMP BH, [SI+1]
        JZ NCHECK1S
        CMP BH, [SI+2] 
        JZ NCHECK1S
        CMP BH, [SI+3] 
        JZ NCHECK1S
        MOV COUNT2, BH
        SUB COUNT2, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN
;2
CHECK2R:DEC COUNT3
        MOV CX, SI          ;4
        MOV BL, COUNT3
                
        CMP BL, [SI+1]
        JZ CHECK2R
        CMP BL, [SI+2] 
        JZ CHECK2R
        CMP BL, [SI-1] 
        JZ CHECK2R
        MOV COUNT3, BL
        ADD COUNT3, 1
        ADD SI, 19
        JNZ CHECK2C 
        
CHECK2C:DEC COUNT3          ;4
        MOV BL, COUNT3
         
        CMP BL, [SI+1]
        JZ CHECK2C
        CMP BL, [SI+2] 
        JZ CHECK2C
        CMP BL, [SI+3] 
        JZ CHECK2C
        MOV COUNT3, BL
        ADD COUNT3, 1  
        ADD SI, 13
        JNZ CHECK2S
        
CHECK2S:DEC COUNT3          ;4
        MOV BL, COUNT3
         
        CMP BL, [SI+1]
        JZ CHECK2S
        CMP BL, [SI+2] 
        JZ CHECK2S
        CMP BL, [SI-1] 
        JZ CHECK2S
        MOV COUNT3, BL
        ADD COUNT3, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK2R
        
NCHECK2R:INC COUNT4          ;1
        MOV BH, COUNT4
         
        CMP BH, [SI+1]
        JZ NCHECK2R
        CMP BH, [SI+2] 
        JZ NCHECK2R
        CMP BH, [SI-1] 
        JZ NCHECK2R
        MOV COUNT4, BH
        SUB COUNT4, 1
        ADD SI, 19
        JNZ NCHECK2C    
                    
NCHECK2C:INC COUNT4          ;4
        MOV BH, COUNT4
         
        CMP BH, [SI+1]
        JZ NCHECK2C
        CMP BH, [SI+2] 
        JZ NCHECK2C
        CMP BH, [SI+3] 
        JZ NCHECK2C
        MOV COUNT4, BH
        SUB COUNT4, 1  
        ADD SI, 13
        JNZ NCHECK2S
        
NCHECK2S:INC COUNT4          ;4
        MOV BH, COUNT4
         
        CMP BH, [SI+1]
        JZ NCHECK2S
        CMP BH, [SI+2] 
        JZ NCHECK2S
        CMP BH, [SI-1] 
        JZ NCHECK2S
        MOV COUNT4, BH
        SUB COUNT4, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN
;3
CHECK3R:DEC COUNT5
        MOV CX, SI          ;4
        MOV BL, COUNT5
                
        CMP BL, [SI+1]
        JZ CHECK3R
        CMP BL, [SI-1] 
        JZ CHECK3R
        CMP BL, [SI-2] 
        JZ CHECK3R
        MOV COUNT5, BL
        ADD COUNT5, 1
        ADD SI, 22
        JNZ CHECK3C 
        
CHECK3C:DEC COUNT5          ;4
        MOV BL, COUNT5
         
        CMP BL, [SI+1]
        JZ CHECK3C
        CMP BL, [SI+2] 
        JZ CHECK3C
        CMP BL, [SI+3] 
        JZ CHECK3C
        MOV COUNT5, BL
        ADD COUNT5, 1  
        ADD SI, 12
        JNZ CHECK3S
        
CHECK3S:DEC COUNT5          ;4
        MOV BL, COUNT5
         
        CMP BL, [SI+1]
        JZ CHECK3S
        CMP BL, [SI+2] 
        JZ CHECK3S
        CMP BL, [SI+3] 
        JZ CHECK3S
        MOV COUNT5, BL
        ADD COUNT5, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK3R
        
NCHECK3R:INC COUNT6          ;1
        MOV BH, COUNT6
         
        CMP BH, [SI+1]
        JZ NCHECK3R
        CMP BH, [SI-1] 
        JZ NCHECK3R
        CMP BH, [SI-2] 
        JZ NCHECK3R
        MOV COUNT6, BH
        SUB COUNT6, 1
        ADD SI, 22
        JNZ NCHECK3C    
                    
NCHECK3C:INC COUNT6          ;4
        MOV BH, COUNT6
         
        CMP BH, [SI+1]
        JZ NCHECK3C
        CMP BH, [SI+2] 
        JZ NCHECK3C
        CMP BH, [SI+3] 
        JZ NCHECK3C
        MOV COUNT6, BH
        SUB COUNT6, 1  
        ADD SI, 12
        JNZ NCHECK3S
        
NCHECK3S:INC COUNT6          ;4
        MOV BH, COUNT6
         
        CMP BH, [SI+1]
        JZ NCHECK3S
        CMP BH, [SI+2] 
        JZ NCHECK3S
        CMP BH, [SI+3] 
        JZ NCHECK3S
        MOV COUNT6, BH
        SUB COUNT6, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;4
CHECK4R:DEC COUNT7          ;4
        MOV CX, SI
        MOV BL, COUNT7
        
        CMP BL, [SI-1]
        JZ CHECK4R
        CMP BL, [SI-2] 
        JZ CHECK4R
        CMP BL, [SI-3] 
        JZ CHECK4R
        MOV COUNT7, BL
        ADD COUNT7, 1  
        ADD SI, 25
        JNZ CHECK4C 
        
CHECK4C:DEC COUNT7          ;4
        MOV BL, COUNT7
        
        CMP BL, [SI+1]
        JZ CHECK4C
        CMP BL, [SI+2] 
        JZ CHECK4C
        CMP BL, [SI+3] 
        JZ CHECK4C
        MOV COUNT7, BL
        ADD COUNT7, 1  
        ADD SI, 9
        JNZ CHECK4S
        
CHECK4S:DEC COUNT7          ;4
        MOV BL, COUNT7
         
        CMP BL, [SI+1]
        JZ CHECK4S
        CMP BL, [SI+2] 
        JZ CHECK4S
        CMP BL, [SI-1] 
        JZ CHECK4S
        MOV COUNT7, BL
        ADD COUNT7, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK4R
        
NCHECK4R:INC COUNT8          ;1
        MOV BH, COUNT8
         
        CMP BH, [SI-1]
        JZ NCHECK4R
        CMP BH, [SI-2] 
        JZ NCHECK4R
        CMP BH, [SI-3] 
        JZ NCHECK4R
        MOV COUNT8, BH
        SUB COUNT8, 1
        ADD SI, 25
        JNZ NCHECK4C    
                    
NCHECK4C:INC COUNT8          ;4
        MOV BH, COUNT8
         
        CMP BH, [SI+1]
        JZ NCHECK4C
        CMP BH, [SI+2] 
        JZ NCHECK4C
        CMP BH, [SI+3] 
        JZ NCHECK4C
        MOV COUNT8, BH
        SUB COUNT8, 1  
        ADD SI, 9
        JNZ NCHECK4S
        
NCHECK4S:INC COUNT8          ;4
        MOV BH, COUNT8
         
        CMP BH, [SI+1]
        JZ NCHECK4S
        CMP BH, [SI+2] 
        JZ NCHECK4S
        CMP BH, [SI-1] 
        JZ NCHECK4S
        MOV COUNT8, BH
        SUB COUNT8, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;5
CHECK5R:DEC COUNT9          ;4
        MOV CX, SI
        MOV BL, COUNT9
                
        CMP BL, [SI+1]
        JZ CHECK5R
        CMP BL, [SI+2] 
        JZ CHECK5R
        CMP BL, [SI+3] 
        JZ CHECK5R
        MOV COUNT9, BL
        ADD COUNT9, 1
        ADD SI, 13
        JNZ CHECK5C 
        
CHECK5C:DEC COUNT9          ;4
        MOV BL, COUNT9
         
        CMP BL, [SI+1]
        JZ CHECK5C
        CMP BL, [SI+2] 
        JZ CHECK5C
        CMP BL, [SI-1] 
        JZ CHECK5C
        MOV COUNT9, BL
        ADD COUNT9, 1  
        ADD SI, 18
        JNZ CHECK5S
        
CHECK5S:DEC COUNT9          ;4
        MOV BL, COUNT9
         
        CMP BL, [SI-1]
        JZ CHECK5S
        CMP BL, [SI-2] 
        JZ CHECK5S
        CMP BL, [SI-3] 
        JZ CHECK5S
        MOV COUNT9, BL
        ADD COUNT9, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK5R
        
NCHECK5R:INC COUNT10          ;1
        MOV BH, COUNT10
         
        CMP BH, [SI+1]
        JZ NCHECK5R
        CMP BH, [SI+2] 
        JZ NCHECK5R
        CMP BH, [SI+3] 
        JZ NCHECK5R
        MOV COUNT10, BH
        SUB COUNT10, 1
        ADD SI, 13
        JNZ NCHECK5C    
                    
NCHECK5C:INC COUNT10          ;4
        MOV BH, COUNT10
 
        CMP BH, [SI+1]
        JZ NCHECK5C
        CMP BH, [SI+2] 
        JZ NCHECK5C
        CMP BH, [SI-1] 
        JZ NCHECK5C
        MOV COUNT10, BH
        SUB COUNT10, 1  
        ADD SI, 18
        JNZ NCHECK5S
        
NCHECK5S:INC COUNT10          ;4
        MOV BH, COUNT10
         
        CMP BH, [SI-1]
        JZ NCHECK5S
        CMP BH, [SI-2] 
        JZ NCHECK5S
        CMP BH, [SI-3] 
        JZ NCHECK5S
        MOV COUNT10, BH
        SUB COUNT10, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;6
CHECK6R:DEC COUNT11          ;4
        MOV CX, SI
        MOV BL, COUNT11
                
        CMP BL, [SI+1]
        JZ CHECK6R
        CMP BL, [SI+2] 
        JZ CHECK6R  
        CMP BL, [SI-1] 
        JZ CHECK6R
        MOV COUNT11, BL
        ADD COUNT11, 1
        ADD SI, 16
        JNZ CHECK6C 
        
CHECK6C:DEC COUNT11          ;4
        MOV BL, COUNT11
         
        CMP BL, [SI+1]
        JZ CHECK6C
        CMP BL, [SI+2] 
        JZ CHECK6C
        CMP BL, [SI-1] 
        JZ CHECK6C
        MOV COUNT11, BL
        ADD COUNT11, 1  
        ADD SI, 13
        JNZ CHECK6S
        
CHECK6S:DEC COUNT11          ;4
        MOV BL, COUNT11
         
        CMP BL, [SI+1]
        JZ CHECK6S
        CMP BL, [SI-1] 
        JZ CHECK6S
        CMP BL, [SI-2] 
        JZ CHECK6S
        MOV COUNT11, BL
        ADD COUNT11, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK6R
        
NCHECK6R:INC COUNT12          ;1
        MOV BH, COUNT12
         
        CMP BH, [SI+1]
        JZ NCHECK6R
        CMP BH, [SI+2] 
        JZ NCHECK6R
        CMP BH, [SI-1] 
        JZ NCHECK6R
        MOV COUNT12, BH
        SUB COUNT12, 1
        ADD SI, 16
        JNZ NCHECK6C    
                    
NCHECK6C:INC COUNT12          ;4
        MOV BH, COUNT12
         
        CMP BH, [SI+1]
        JZ NCHECK6C
        CMP BH, [SI+2] 
        JZ NCHECK6C
        CMP BH, [SI-1] 
        JZ NCHECK6C
        MOV COUNT12, BH
        SUB COUNT12, 1  
        ADD SI, 13
        JNZ NCHECK6S
        
NCHECK6S:INC COUNT12          ;4
        MOV BH, COUNT12
         
        CMP BH, [SI+1]
        JZ NCHECK6S
        CMP BH, [SI-1] 
        JZ NCHECK6S
        CMP BH, [SI-2] 
        JZ NCHECK6S
        MOV COUNT12, BH
        SUB COUNT12, 1
        MOV SI, CX  
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;7
CHECK7R:DEC COUNT13          ;4
        MOV CX, SI
        MOV BL, COUNT13
                
        CMP BL, [SI+1]
        JZ CHECK7R
        CMP BL, [SI-1] 
        JZ CHECK7R
        CMP BL, [SI-2] 
        JZ CHECK7R
        MOV COUNT13, BL
        ADD COUNT13, 1
        ADD SI, 19
        JNZ CHECK7C 
        
CHECK7C:DEC COUNT13          ;4
        MOV BL, COUNT13
         
        CMP BL, [SI+1]
        JZ CHECK7C
        CMP BL, [SI+2] 
        JZ CHECK7C
        CMP BL, [SI-1] 
        JZ CHECK7C
        MOV COUNT13, BL
        ADD COUNT13, 1  
        ADD SI, 14
        JNZ CHECK7S
        
CHECK7S:DEC COUNT13          ;4
        MOV BL, COUNT13
         
        CMP BL, [SI-1]
        JZ CHECK7S
        CMP BL, [SI-2] 
        JZ CHECK7S
        CMP BL, [SI-3] 
        JZ CHECK7S
        MOV COUNT13, BL
        ADD COUNT13, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK7R
        
NCHECK7R:INC COUNT14          ;1
        MOV BH, COUNT14
         
        CMP BH, [SI+1]
        JZ NCHECK7R
        CMP BH, [SI-1] 
        JZ NCHECK7R
        CMP BH, [SI-2] 
        JZ NCHECK7R
        MOV COUNT14, BH
        SUB COUNT14, 1
        ADD SI, 19
        JNZ NCHECK7C    
                    
NCHECK7C:INC COUNT14          ;4
        MOV BH, COUNT14
         
        CMP BH, [SI+1]
        JZ NCHECK7C
        CMP BH, [SI+2] 
        JZ NCHECK7C
        CMP BH, [SI-1] 
        JZ NCHECK7C
        MOV COUNT14, BH
        SUB COUNT14, 1  
        ADD SI, 14
        JNZ NCHECK7S
        
NCHECK7S:INC COUNT14          ;4
        MOV BH, COUNT14
         
        CMP BH, [SI-1]
        JZ NCHECK7S
        CMP BH, [SI-2] 
        JZ NCHECK7S
        CMP BH, [SI-3] 
        JZ NCHECK7S
        MOV COUNT14, BH
        SUB COUNT14, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;8 
CHECK8R:DEC COUNT15          ;4
        MOV CX, SI
        MOV BL, COUNT15
                
        CMP BL, [SI-1]
        JZ CHECK8R
        CMP BL, [SI-2] 
        JZ CHECK8R
        CMP BL, [SI-3] 
        JZ CHECK8R
        MOV COUNT15, BL
        ADD COUNT15, 1 
        ADD SI, 22
        JNZ CHECK8C 
        
CHECK8C:DEC COUNT15          ;4
        MOV BL, COUNT15
         
        CMP BL, [SI+1]
        JZ CHECK8C
        CMP BL, [SI+2] 
        JZ CHECK8C
        CMP BL, [SI-1] 
        JZ CHECK8C
        MOV COUNT15, BL
        ADD COUNT15, 1  
        ADD SI, 9
        JNZ CHECK8S
        
CHECK8S:DEC COUNT15          ;4
        MOV BL, COUNT15
         
        CMP BL, [SI+1]
        JZ CHECK8S
        CMP BL, [SI-1] 
        JZ CHECK8S
        CMP BL, [SI-2] 
        JZ CHECK8S
        MOV COUNT15, BL
        ADD COUNT15, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK8R
        
NCHECK8R:INC COUNT16          ;1
        MOV BH, COUNT16
         
        CMP BH, [SI-1]
        JZ NCHECK8R
        CMP BH, [SI-2] 
        JZ NCHECK8R
        CMP BH, [SI-3] 
        JZ NCHECK8R
        MOV COUNT16, BH
        SUB COUNT16, 1
        ADD SI, 22
        JNZ NCHECK8C    
                    
NCHECK8C:INC COUNT16          ;4
        MOV BH, COUNT16
         
        CMP BH, [SI+1]
        JZ NCHECK8C
        CMP BH, [SI+2] 
        JZ NCHECK8C
        CMP BH, [SI-1] 
        JZ NCHECK8C
        MOV COUNT16, BH
        SUB COUNT16, 1  
        ADD SI, 9
        JNZ NCHECK8S
        
NCHECK8S:INC COUNT16          ;4
        MOV BH, COUNT16
         
        CMP BH, [SI+1]
        JZ NCHECK8S
        CMP BH, [SI-1] 
        JZ NCHECK8S
        CMP BH, [SI-2] 
        JZ NCHECK8S
        MOV COUNT16, BH
        SUB COUNT16, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;9 
CHECK9R:DEC COUNT17          ;4
        MOV CX, SI
        MOV BL, COUNT17
                
        CMP BL, [SI+1]
        JZ CHECK9R
        CMP BL, [SI+2] 
        JZ CHECK9R
        CMP BL, [SI+3] 
        JZ CHECK9R
        MOV COUNT17, BL
        ADD COUNT17, 1
        ADD SI, 10
        JNZ CHECK9C 
        
CHECK9C:DEC COUNT17          ;4
        MOV BL, COUNT17
         
        CMP BL, [SI+1]
        JZ CHECK9C
        CMP BL, [SI-1] 
        JZ CHECK9C
        CMP BL, [SI-2] 
        JZ CHECK9C
        MOV COUNT17, BL
        ADD COUNT17, 1  
        ADD SI, 22
        JNZ CHECK9S
        
CHECK9S:DEC COUNT17          ;4
        MOV BL, COUNT17
         
        CMP BL, [SI+1]
        JZ CHECK9S
        CMP BL, [SI+2] 
        JZ CHECK9S
        CMP BL, [SI+3] 
        JZ CHECK9S
        MOV COUNT17, BL
        ADD COUNT17, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK9R
        
NCHECK9R:INC COUNT18          ;1
        MOV BH, COUNT18
         
        CMP BH, [SI+1]
        JZ NCHECK9R
        CMP BH, [SI+2] 
        JZ NCHECK9R
        CMP BH, [SI+3] 
        JZ NCHECK9R
        MOV COUNT18, BH
        SUB COUNT18, 1
        ADD SI, 10
        JNZ NCHECK9C    
                    
NCHECK9C:INC COUNT18          ;4
        MOV BH, COUNT18
         
        CMP BH, [SI+1]
        JZ NCHECK9C
        CMP BH, [SI-1] 
        JZ NCHECK9C
        CMP BH, [SI-2] 
        JZ NCHECK9C
        MOV COUNT18, BH
        SUB COUNT18, 1  
        ADD SI, 22
        JNZ NCHECK9S
        
NCHECK9S:INC COUNT18          ;4
        MOV BH, COUNT18
         
        CMP BH, [SI+1]
        JZ NCHECK9S
        CMP BH, [SI+2] 
        JZ NCHECK9S
        CMP BH, [SI+3] 
        JZ NCHECK9S
        MOV COUNT18, BH
        SUB COUNT18, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;10 
CHECK10R:DEC COUNT19          ;4
        MOV CX, SI
        MOV BL, COUNT19
                
        CMP BL, [SI+1]
        JZ CHECK10R
        CMP BL, [SI+2] 
        JZ CHECK10R
        CMP BL, [SI-1] 
        JZ CHECK10R
        MOV COUNT19, BL
        ADD COUNT19, 1 
        ADD SI, 13
        JNZ CHECK10C 
        
CHECK10C:DEC COUNT19          ;4
        MOV BL, COUNT19
         
        CMP BL, [SI+1]
        JZ CHECK10C
        CMP BL, [SI-1] 
        JZ CHECK10C
        CMP BL, [SI-2] 
        JZ CHECK10C
        MOV COUNT19, BL
        ADD COUNT19, 1  
        ADD SI, 19
        JNZ CHECK10S
        
CHECK10S:DEC COUNT19          ;4
        MOV BL, COUNT19
         
        CMP BL, [SI+1]
        JZ CHECK10S
        CMP BL, [SI+2] 
        JZ CHECK10S
        CMP BL, [SI-1] 
        JZ CHECK10S
        MOV COUNT19, BL
        ADD COUNT19, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK10R
        
NCHECK10R:INC COUNT20          ;1
        MOV BH, COUNT20
         
        CMP BH, [SI+1]
        JZ NCHECK10R
        CMP BH, [SI+2] 
        JZ NCHECK10R
        CMP BH, [SI-1] 
        JZ NCHECK10R
        MOV COUNT20, BH
        SUB COUNT20, 1
        ADD SI, 13
        JNZ NCHECK10C    
                    
NCHECK10C:INC COUNT20          ;4
        MOV BH, COUNT20
         
        CMP BH, [SI+1]
        JZ NCHECK10C
        CMP BH, [SI-1] 
        JZ NCHECK10C
        CMP BH, [SI-2] 
        JZ NCHECK10C
        MOV COUNT20, BH
        SUB COUNT20, 1  
        ADD SI, 19
        JNZ NCHECK10S
        
NCHECK10S:INC COUNT20          ;4
        MOV BH, COUNT20
         
        CMP BH, [SI+1]
        JZ NCHECK10S
        CMP BH, [SI+2] 
        JZ NCHECK10S
        CMP BH, [SI-1] 
        JZ NCHECK10S
        MOV COUNT20, BH
        SUB COUNT20, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;11 
CHECK11R:DEC COUNT21          ;4
        MOV CX, SI
        MOV BL, COUNT21
                
        CMP BL, [SI+1]
        JZ CHECK11R
        CMP BL, [SI-1] 
        JZ CHECK11R
        CMP BL, [SI-2] 
        JZ CHECK11R
        MOV COUNT21, BL
        ADD COUNT21, 1
        ADD SI, 16
        JNZ CHECK11C 
        
CHECK11C:DEC COUNT21          ;4
        MOV BL, COUNT21
         
        CMP BL, [SI+1]
        JZ CHECK11C
        CMP BL, [SI-1] 
        JZ CHECK11C
        CMP BL, [SI-2] 
        JZ CHECK11C
        MOV COUNT21, BL
        ADD COUNT21, 1  
        ADD SI, 18
        JNZ CHECK11S
        
CHECK11S:DEC COUNT21          ;4
        MOV BL, COUNT21
         
        CMP BL, [SI+1]
        JZ CHECK11S
        CMP BL, [SI+2] 
        JZ CHECK11S
        CMP BL, [SI+3] 
        JZ CHECK11S
        MOV COUNT21, BL
        ADD COUNT21, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK11R
        
NCHECK11R:INC COUNT22          ;1
        MOV BH, COUNT22
         
        CMP BH, [SI+1]
        JZ NCHECK11R
        CMP BH, [SI-1] 
        JZ NCHECK11R
        CMP BH, [SI-2] 
        JZ NCHECK11R
        MOV COUNT22, BH
        SUB COUNT22, 1
        ADD SI, 16
        JNZ NCHECK11C    
                    
NCHECK11C:INC COUNT22          ;4
        MOV BH, COUNT22
         
        CMP BH, [SI+1]
        JZ NCHECK11C
        CMP BH, [SI-1] 
        JZ NCHECK11C
        CMP BH, [SI-2] 
        JZ NCHECK11C
        MOV COUNT22, BH
        SUB COUNT22, 1  
        ADD SI, 18
        JNZ NCHECK11S
        
NCHECK11S:INC COUNT22          ;4
        MOV BH, COUNT22
         
        CMP BH, [SI+1]
        JZ NCHECK11S
        CMP BH, [SI+2] 
        JZ NCHECK11S
        CMP BH, [SI+3] 
        JZ NCHECK11S
        MOV COUNT22, BH
        SUB COUNT22, 1
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;12  
CHECK12R:DEC COUNT23          ;4
        MOV CX, SI
        MOV BL, COUNT23
                
        CMP BL, [SI-1]
        JZ CHECK12R
        CMP BL, [SI-2] 
        JZ CHECK12R
        CMP BL, [SI-3] 
        JZ CHECK12R
        MOV COUNT23, BL
        ADD COUNT23, 1
        ADD SI, 19
        JNZ CHECK12C 
        
CHECK12C:DEC COUNT23          ;4
        MOV BL, COUNT23
         
        CMP BL, [SI+1]
        JZ CHECK12C
        CMP BL, [SI-1] 
        JZ CHECK12C
        CMP BL, [SI-2] 
        JZ CHECK12C
        MOV COUNT23, BL
        ADD COUNT23, 1  
        ADD SI, 15
        JNZ CHECK12S
        
CHECK12S:DEC COUNT23          ;4
        MOV BL, COUNT23
         
        CMP BL, [SI+1]
        JZ CHECK12S
        CMP BL, [SI+2] 
        JZ CHECK12S
        CMP BL, [SI-1] 
        JZ CHECK12S
        MOV COUNT23, BL
        ADD COUNT23, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK12R
        
NCHECK12R:INC COUNT24          ;1
        MOV BH, COUNT24
         
        CMP BH, [SI-1]
        JZ NCHECK12R
        CMP BH, [SI-2] 
        JZ NCHECK12R
        CMP BH, [SI-3] 
        JZ NCHECK12R
        MOV COUNT24, BH
        SUB COUNT24, 1
        ADD SI, 19
        JNZ NCHECK12C    
                    
NCHECK12C:INC COUNT24          ;4
        MOV BH, COUNT24
                             
        CMP BH, [SI+1]
        JZ NCHECK12C
        CMP BH, [SI-1] 
        JZ NCHECK12C
        CMP BH, [SI-2] 
        JZ NCHECK12C
        MOV COUNT24, BH
        SUB COUNT24, 1  
        ADD SI, 15
        JNZ NCHECK12S
        
NCHECK12S:INC COUNT24          ;4
        MOV BH, COUNT24
         
        CMP BH, [SI+1]
        JZ NCHECK12S
        CMP BH, [SI+2] 
        JZ NCHECK12S
        CMP BH, [SI-1] 
        JZ NCHECK12S
        MOV COUNT24, BH
        SUB COUNT24, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;13  
CHECK13R:DEC COUNT25          ;4
        MOV CX, SI
        MOV BL, COUNT25
                
        CMP BL, [SI+1]
        JZ CHECK13R
        CMP BL, [SI+2] 
        JZ CHECK13R
        CMP BL, [SI+3] 
        JZ CHECK13R
        MOV COUNT25, BL
        ADD COUNt25, 1
        ADD SI, 7
        JNZ CHECK13C 
        
CHECK13C:DEC COUNT25          ;4
        MOV BL, COUNT25
         
        CMP BL, [SI-1]
        JZ CHECK13C
        CMP BL, [SI-2] 
        JZ CHECK13C
        CMP BL, [SI-3] 
        JZ CHECK13C
        MOV COUNT25, BL
        ADD COUNT25, 1  
        ADD SI, 24
        JNZ CHECK13S
        
CHECK13S:DEC COUNT25          ;4
        MOV BL, COUNT25
         
        CMP BL, [SI-1]
        JZ CHECK13S
        CMP BL, [SI-2] 
        JZ CHECK13S
        CMP BL, [SI-3] 
        JZ CHECK13S
        MOV COUNT25, BL
        ADD COUNT25, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK13R
        
NCHECK13R:INC COUNT26          ;1
        MOV BH, COUNT26
         
        CMP BH, [SI+1]
        JZ NCHECK13R
        CMP BH, [SI+2] 
        JZ NCHECK13R
        CMP BH, [SI+3] 
        JZ NCHECK13R
        MOV COUNT26, BH
        SUB COUNT26, 1
        ADD SI, 7
        JNZ NCHECK13C    
                    
NCHECK13C:INC COUNT26          ;4
        MOV BH, COUNT26
         
        CMP BH, [SI-1]
        JZ NCHECK13C
        CMP BH, [SI-2] 
        JZ NCHECK13C
        CMP BH, [SI-3] 
        JZ NCHECK13C
        MOV COUNT26, BH
        SUB COUNT26, 1  
        ADD SI, 24
        JNZ NCHECK13S
        
NCHECK13S:INC COUNT26          ;4
        MOV BH, COUNT26
         
        CMP BH, [SI-1]
        JZ NCHECK13S
        CMP BH, [SI-2] 
        JZ NCHECK13S
        CMP BH, [SI-3] 
        JZ NCHECK13S
        MOV COUNT26, BH
        SUB COUNT26, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;14 
CHECK14R:DEC COUNT27          ;4
        MOV CX, SI
        MOV BL, COUNT27
                
        CMP BL, [SI+1]
        JZ CHECK14R
        CMP BL, [SI+2] 
        JZ CHECK14R
        CMP BL, [SI-1] 
        JZ CHECK14R
        MOV COUNT27, BL
        ADD COUNT27, 1
        ADD SI, 10
        JNZ CHECK14C 
        
CHECK14C:DEC COUNT27          ;4
        MOV BL, COUNT27
         
        CMP BL, [SI-1]
        JZ CHECK14C
        CMP BL, [SI-2] 
        JZ CHECK14C
        CMP BL, [SI-3] 
        JZ CHECK14C
        MOV COUNT27, BL
        ADD COUNT27, 1  
        ADD SI, 19
        JNZ CHECK14S
        
CHECK14S:DEC COUNT27          ;4
        MOV BL, COUNT27
         
        CMP BL, [SI+1]
        JZ CHECK14S
        CMP BL, [SI-1] 
        JZ CHECK14S
        CMP BL, [SI-2] 
        JZ CHECK14S
        MOV COUNT27, BL
        ADD COUNT27, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK14R
        
NCHECK14R:INC COUNT28          ;1
        MOV BH, COUNT28
         
        CMP BH, [SI+1]
        JZ NCHECK14R
        CMP BH, [SI+2] 
        JZ NCHECK14R
        CMP BH, [SI-1] 
        JZ NCHECK14R
        MOV COUNT28, BH
        SUB COUNT28, 1
        ADD SI, 10
        JNZ NCHECK14C    
                    
NCHECK14C:INC COUNT28          ;4
        MOV BH, COUNT28
         
        CMP BH, [SI-1]
        JZ NCHECK14C
        CMP BH, [SI-2] 
        JZ NCHECK14C
        CMP BH, [SI-3] 
        JZ NCHECK14C
        MOV COUNT28, BH
        SUB COUNT28, 1  
        ADD SI, 19
        JNZ NCHECK14S
        
NCHECK14S:INC COUNT28          ;4
        MOV BH, COUNT28
         
        CMP BH, [SI+1]
        JZ NCHECK14S
        CMP BH, [SI-1] 
        JZ NCHECK14S
        CMP BH, [SI-2] 
        JZ NCHECK14S
        MOV COUNT28, BH
        SUB COUNT28, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;15 
CHECK15R:DEC COUNT29          ;4
        MOV CX, SI
        MOV BL, COUNT29
                
        CMP BL, [SI+1]
        JZ CHECK15R
        CMP BL, [SI-1] 
        JZ CHECK15R
        CMP BL, [SI-2] 
        JZ CHECK15R
        MOV COUNT29, BL
        ADD COUNT29, 1
        ADD SI, 13
        JNZ CHECK15C 
        
CHECK15C:DEC COUNT29          ;4
        MOV BL, COUNT29
         
        CMP BL, [SI-1]
        JZ CHECK15C
        CMP BL, [SI-2] 
        JZ CHECK15C
        CMP BL, [SI-3] 
        JZ CHECK15C
        MOV COUNT29, BL
        ADD COUNT29, 1  
        ADD SI, 20
        JNZ CHECK15S
        
CHECK15S:DEC COUNT29          ;4
        MOV BL, COUNT29
         
        CMP BL, [SI-1]
        JZ CHECK15S
        CMP BL, [SI-2] 
        JZ CHECK15S
        CMP BL, [SI-3] 
        JZ CHECK15S
        MOV COUNT29, BL
        ADD COUNT29, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK15R
        
NCHECK15R:INC COUNT30          ;1
        MOV BH, COUNT30
         
        CMP BH, [SI+1]
        JZ NCHECK15R
        CMP BH, [SI-1] 
        JZ NCHECK15R
        CMP BH, [SI-2] 
        JZ NCHECK15R
        MOV COUNT30, BH
        SUB COUNT30, 1
        ADD SI, 13
        JNZ NCHECK15C    
                    
NCHECK15C:INC COUNT30          ;4
        MOV BH, COUNT30
         
        CMP BH, [SI-1]
        JZ NCHECK15C
        CMP BH, [SI-2] 
        JZ NCHECK15C
        CMP BH, [SI-3] 
        JZ NCHECK15C
        MOV COUNT30, BH
        SUB COUNT30, 1  
        ADD SI, 20
        JNZ NCHECK15S
        
NCHECK15S:INC COUNT30          ;4
        MOV BH, COUNT30
         
        CMP BH, [SI-1]
        JZ NCHECK15S
        CMP BH, [SI-2] 
        JZ NCHECK15S
        CMP BH, [SI-3] 
        JZ NCHECK15S
        MOV COUNT30, BH
        SUB COUNT30, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL
        JNZ STANDBY
        JZ CERTAIN

;16
CHECK16R:DEC COUNT31          ;4
        MOV CX, SI
        MOV BL, COUNT31
                
        CMP BL, [SI-1]
        JZ CHECK16R
        CMP BL, [SI-2] 
        JZ CHECK16R
        CMP BL, [SI-3] 
        JZ CHECK16R
        MOV COUNT31, BL
        ADD COUNT31, 1
        ADD SI, 16
        JNZ CHECK16C 
        
CHECK16C:DEC COUNT31          ;4
        MOV BL, COUNT31
         
        CMP BL, [SI-1]
        JZ CHECK16C
        CMP BL, [SI-2] 
        JZ CHECK16C
        CMP BL, [SI-3] 
        JZ CHECK16C
        MOV COUNT31, BL
        ADD COUNT31, 1  
        ADD SI, 15
        JNZ CHECK16S
        
CHECK16S:DEC COUNT31          ;4
        MOV BL, COUNT31
         
        CMP BL, [SI+1]
        JZ CHECK16S
        CMP BL, [SI-1] 
        JZ CHECK16S
        CMP BL, [SI-2] 
        JZ CHECK16S
        MOV COUNT31, BL
        ADD COUNT31, 1
        MOV DL, BL 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H   
        MOV SI, CX
        JNZ NCHECK16R
        
NCHECK16R:INC COUNT32          ;1
        MOV BH, COUNT32
         
        CMP BH, [SI-1]
        JZ NCHECK16R
        CMP BH, [SI-2] 
        JZ NCHECK16R
        CMP BH, [SI-3] 
        JZ NCHECK16R
        MOV COUNT32, BH
        SUB COUNT32, 1
        ADD SI, 16
        JNZ NCHECK16C    
                    
NCHECK16C:INC COUNT32          ;4
        MOV BH, COUNT32
         
        CMP BH, [SI-1]
        JZ NCHECK16C
        CMP BH, [SI-2] 
        JZ NCHECK16C
        CMP BH, [SI-3] 
        JZ NCHECK16C
        MOV COUNT32, BH
        SUB COUNT32, 1  
        ADD SI, 15
        JNZ NCHECK16S
        
NCHECK16S:INC COUNT32          ;4
        MOV BH, COUNT32
         
        CMP BH, [SI+1]
        JZ NCHECK16S
        CMP BH, [SI-1] 
        JZ NCHECK16S
        CMP BH, [SI-2] 
        JZ NCHECK16S
        MOV COUNT32, BH
        SUB COUNT32, 1
          
        MOV DL, BH 
        ADD DX, 48D
        MOV AH, 02H
        INT 21H
        MOV SI, CX
        CMP BH, BL 

        JNZ STANDBY
        JZ CERTAIN
        

STANDBY:MOV [DI], 0
        MOV AX, [DI]
        MOV [DI], 0      
        INC DI
        INC SI
        JMP LOOP1

CERTAIN:CMP DI, 0
        JZ COPY1
        CMP DI, 1
        JZ COPY2
        CMP DI, 2
        JZ COPY3
        CMP DI, 3
        JZ COPY4       
        CMP DI, 4   
        JZ COPY5    
        CMP DI, 5   
        JZ COPY6
        CMP DI, 6   
        JZ COPY7
        CMP DI, 7   
        JZ COPY8
        CMP DI, 8   
        JZ COPY9
        CMP DI, 9   
        JZ COPY10
        CMP DI, 10   
        JZ COPY11  
        CMP DI, 11   
        JZ COPY12
        CMP DI, 12   
        JZ COPY13
        CMP DI, 13   
        JZ COPY14
        CMP DI, 14  
        JZ COPY15
        CMP DI, 15   
        JZ COPY16
        
COPY1:  MOV [DI], BL
        MOV [DI+16], BL
        MOV [DI+32], BL
        JMP SHIFT
COPY2:  MOV [DI], BL
        MOV [DI+19], BL
        MOV [DI+32], BL
        JMP SHIFT
COPY3:  MOV [DI], BL
        MOV [DI+22], BL
        MOV [DI+34], BL
        JMP SHIFT
COPY4:  MOV [DI], BL
        MOV [DI+25], BL
        MOV [DI+34], BL
        JMP SHIFT
COPY5:  MOV [DI], BL
        MOV [DI+13], BL
        MOV [DI+31], BL
        JMP SHIFT
COPY6:  MOV [DI], BL
        MOV [DI+16], BL
        MOV [DI+29], BL
        JMP SHIFT
COPY7:  MOV [DI], BL
        MOV [DI+19], BL
        MOV [DI+33], BL
        JMP SHIFT
COPY8:  MOV [DI], BL
        MOV [DI+22], BL
        MOV [DI+31], BL
        JMP SHIFT
COPY9:  MOV [DI], BL
        MOV [DI+10], BL
        MOV [DI+32], BL
        JMP SHIFT
COPY10: MOV [DI], BL
        MOV [DI+13], BL
        MOV [DI+32], BL
        JMP SHIFT
COPY11: MOV [DI], BL
        MOV [DI+16], BL
        MOV [DI+34], BL
        JMP SHIFT
COPY12: MOV [DI], BL
        MOV [DI+19], BL
        MOV [DI+34], BL
        JMP SHIFT
COPY13: MOV [DI], BL
        MOV [DI+7], BL
        MOV [DI+31], BL
        JMP SHIFT
COPY14: MOV [DI], BL
        MOV [DI+10], BL
        MOV [DI+29], BL
        JMP SHIFT
COPY15: MOV [DI], BL
        MOV [DI+13], BL
        MOV [DI+33], BL
        JMP SHIFT
COPY16: MOV [DI], BL
        MOV [DI+16], BL
        MOV [DI+31], BL
        JMP SHIFT       
        
SHIFT:  INC DI
        INC SI
        JMP LOOP1

FINISH: MOV DH, 23
        MOV DL, 0
        MOV BH, 0
        MOV AH, 02H
        INT 10H
        
        MOV DL, 68D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 79D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 78D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 69D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 32D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 58D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 34D 
        MOV AH, 02H
        INT 21H
        
        MOV DL, 68D 
        MOV AH, 02H
        INT 21H

END                          