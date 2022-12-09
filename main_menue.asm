include 'emu8086.inc'
.MODEL LARGE
.STACK 1000H
.DATA
M1 DB 0AH,0DH,0AH,0DH,  '                   Welcome to Shobra Restaurants$' 
M2 DB 0AH,0DH,0AH,0DH,                ' Please Enter your Choise $'
  
;Main menue  
Menu1  DB 0AH,0DH, '  --                 1.Main Dishes             --$' 
Menu2  DB 0AH,0DH, '  --                 2.Appetisers              --$'
Menu3  DB 0AH,0DH, '  --                 3.Salads                  --$'
Menu4  DB 0AH,0DH, '  --                 4.Desserts                --$'
Menu5  DB 0AH,0DH, '  --                 5.Drinks                  --$'
           

               
M8 DB 0AH,0DH,0AH,0DH,              '  Choise your food from the menu$' 

MSG DB 0AH,0DH,0AH,0DH,       '  --          Dish                         Price                   --$'
                                                                                         
;Main Dishes  
Dish1 DB 0AH,0DH,0AH,0DH,     '  --          1.Grilled Chicken            120LE                   --$' 
Dish2 DB 0AH,0DH,             '  --          2.Fried Chicken              120LE                   --$'
Dish3 DB 0AH,0DH,             '  --          3.Pasta                      100LE                   --$'
Dish4 DB 0AH,0DH,             '  --          4.Beef stack                 160LE                   --$'
Dish5 DB 0AH,0DH,             '  --          5.Grilled Shrimps            120LE                   --$'
Dish6 DB 0AH,0DH,             '  --          6.Mix Grill                  140LE                   --$'
Dish7 DB 0AH,0DH,             '  --          7.Stuffed cabbage            80LE                    --$'
Dish8 DB 0AH,0DH,             '  --          8.Kofta                      120LE                   --$'
                                                             
;Drinks   
D1 DB 10,13,                  ' --           1.Shoft Drinks               8LE                     --$'
D2 DB 10,13,                  ' --           2.Coffee                     7LE                     --$'
D3 DB 10,13,                  ' --           3.Tea                        5LE                     --$'
D4 DB 10,13,                  ' --           4.Orange juice               8LE                     --$'
D5 DB 10,13,                  ' --           5.Milk                       7LE                     --$'

 
                     





Choice DB 10,13,10,13,'Enter your order: $'

BR1 DB 0AH,0DH,'  --                                           --$'
BR2 DB 0AH,0DH,'  -----------------------------------------------$'

BR3 DB 0AH,0DH,'  --                                           --$'


BR4 DB 0AH,0DH,'  --                                                               --$'
BR5 DB 0AH,0DH,'  -------------------------------------------------------------------$'



BR6 DB 0AH,0DH,'  --                                          --$'
BR7 DB 0AH,0DH,'  ----------------------------------------------$'


Invalid DB 0AH,0DH, ' Invalid choice$'


New_line DB 0AH,0DH,0AH,0DH,' $'

Quantitynum DB 0AH,0DH, 'Enter quantity: $' 

order DB ?
quantity DB ?  
sum DW ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP: 

  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,New_line
    MOV AH,9
    INT 21H
    
    
    LEA DX,BR2
    MOV AH,9
    INT 21H     
    
    LEA DX,BR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,Menu1
    MOV AH,9
    INT 21H
    
    LEA DX,Menu2
    MOV AH,9
    INT 21H
    
    LEA DX,Menu3
    MOV AH,9
    INT 21H
    
    LEA DX,Menu4
    MOV AH,9
    INT 21H
    
    LEA DX,Menu5
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,BR1
    MOV AH,9
    INT 21H
    
    
    LEA DX,BR2
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Main_Dishes
    
    CMP BH,5
    JE Drinks 

    
 
   
       
    
    
   Main_Dishes:
    
    
    LEA DX,M8    
    MOV AH,9
    INT 21H
    
    LEA DX,New_line
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    LEA DX,BR4
    MOV AH,9
    INT 21H   
    
    LEA DX,MSG   
    MOV AH,9
    INT 21H 
    
   
    LEA DX,Dish1    
    MOV AH,9
    INT 21H 
    
    
    LEA DX,Dish2  
    MOV AH,9
    INT 21H
    
    LEA DX,Dish3
    MOV AH,9          
    INT 21H 
    
    LEA DX,Dish4
    MOV AH,9           
    INT 21H
    
    
    LEA DX,Dish5         
    MOV AH,9
    INT 21H
    
    
    LEA DX,Dish6     
    MOV AH,9
    INT 21H
            
    
    LEA DX,Dish7
    MOV AH,9           
    INT 21H
            
            
    LEA DX,Dish8      
    MOV AH,9
    INT 21H
    

    
   
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    
    
   
    MOV order,AL
   
    
    CMP order,1
    JE calc120
    
    
    CMP order,2
    JE calc120
    
    
    CMP order,3
    JE calc100
    
    
    CMP order,4
    JE calc160
    
    
    CMP order,5
    JE calc120
    
    
    CMP order,6
    JE calc140
    
    
    CMP order,7
    JE calc80  
    
    
    CMP order,1
    JE calc120
    
    calc120:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,120
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit 
    
    
    calc100:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,100
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit   
    
    calc160:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,160
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit
    
    calc80:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,80
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit
    
     
     
    calc140:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,140
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit
    
  
    
   DISPLAY_NUM PROC NEAR
        XOR CX, CX ;To count the digits
        MOV BX, 10 ;Fixed divider
        
        DIGITS:
        XOR DX, DX ;Zero DX for word division
        DIV BX
        PUSH DX ;Remainder (0,9)
        INC CX
        TEST AX, AX
        JNZ DIGITS ;Continue until AX is empty
        
        NEXT:
        POP DX
        ADD DL, 30H
        MOV AH, 02H
        INT 21H
        LOOP NEXT
        
        RET  
    
    
        
    Drinks: 
      
    LEA DX,M8    
    MOV AH,9
    INT 21H
    
    LEA DX,New_line
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    LEA DX,BR4
    MOV AH,9
    INT 21H 
    
    LEA DX,D1    
    MOV AH,9
    INT 21H 
    
    
    LEA DX,D2  
    MOV AH,9
    INT 21H
    
    LEA DX,D3
    MOV AH,9          
    INT 21H 
    
    LEA DX,D4
    MOV AH,9           
    INT 21H
    
    
    LEA DX,D5         
    MOV AH,9
    INT 21H  
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV order,AL
   
    
    CMP order,1
    JE calc8 
    
    CMP order,2
    JE calc7
    
    
    CMP order,3
    JE calc5
    
    
    CMP order,4
    JE calc8
    
    
    CMP order,5
    JE calc7
    
         
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp Exit
    
    calc8:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,8
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM 
    
     jmp Exit  
    
    
    calc7: 
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,7
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit       
          
    calc5:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,5
    
   
    
    MUL quantity
    
    
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Exit 
    


      
     EXIT:
    
    MOV AH,4CH
    INT 21H
 
    
END MAIN