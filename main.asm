include 'emu8086.inc'
.MODEL LARGE
.STACK 1000H
.DATA
M1 DB 0AH,0DH,0AH,0DH,  '                   Welcome to Shobra Restaurants$' 
M2 DB 0AH,0DH,0AH,0DH,                ' Please Enter your Choise $'
  
;Main menue  
Menu1  DB 0AH,0DH, '  --                 1.Main Dishes             --$' 
Menu2  DB 0AH,0DH, '  --                 2.Appetizers              --$'
Menu3  DB 0AH,0DH, '  --                 3.Salads                  --$'
Menu4  DB 0AH,0DH, '  --                 4.Desserts                --$'
Menu5  DB 0AH,0DH, '  --                 5.Drinks                  --$'
           
filename db "project.txt",0
handler dw ?
               
M8 DB 0AH,0DH,0AH,0DH,              '  Choise your food from the menu$' 

MSG DB 0AH,0DH,0AH,0DH,       '  --          Dish                         Price                   --$'
                                                                                         
;Main Dishes  
Dish1 DB 0AH,0DH,0AH,0DH,     '            1.Grilled Chicken            120LE  $' 
Dish2 DB 0AH,0DH,             '            2.Fried Chicken              120LE  $'
Dish3 DB 0AH,0DH,             '            3.Pasta                      100LE  $'
Dish4 DB 0AH,0DH,             '            4.Beef stack                 160LE  $'
Dish5 DB 0AH,0DH,             '            5.Grilled Shrimps            120LE  $'
Dish6 DB 0AH,0DH,             '            6.Mix Grill                  140LE  $'
Dish7 DB 0AH,0DH,             '            7.Stuffed cabbage            80LE   $'
Dish8 DB 0AH,0DH,             '            8.Kofta                      120LE $'
B1 DB 0AH,0DH,                '            9.Back to Menu                    $'


;apptizers 
APP1 DB 0AH,0DH,0AH,0DH,     '  --          1.Mozzarella stickes         40LE                   --$' 
APP2 DB 0AH,0DH,             '  --          2.French Fries               15LE                   --$'
APP3 DB 0AH,0DH,             '  --          3.chips                      10LE                   --$'
APP4 DB 0AH,0DH,             '  --          4.Hotdog Sandwich            40LE                   --$'
APP5 DB 0AH,0DH,             '  --          5.Onion Rings                15LE                   --$'
APP6 DB 0AH,0DH,             '  --          6.Wedge Fries                10LE                   --$'
B2 DB 0AH,0DH,               '  --          7.Back to Menu                                      --$'

;Salads
Salad1 DB 0AH,0DH,0AH,0DH,              '  --          1.Green salad                20LE                    --$'   
Salad2 DB 0AH,0DH,                      '  --          2.Chicken caesar salad       30LE                    --$'
Salad3 DB 0AH,0DH,                      '  --          3.Caesar salad               20LE                    --$'
Salad4 DB 0AH,0DH,                      '  --          4.Greek salad                20LE                    --$'
Salad5 DB 0AH,0DH,                      '  --          5.Tuna salad                 25LE                    --$'
Salad6 DB 0AH,0DH,                      '  --          6.Italian pasta salad        30LE                    --$' 
B3 DB 0AH,0DH,                          '  --          7.Back to Menu                                       --$'                       
;Desserts
 
Dess1 DB 0AH,0DH,0AH,0DH,     '  --          1.Cheesecake            35LE                   --$' 
Dess2 DB 0AH,0DH,             '  --          2.Cobbler               50LE                   --$'
Dess3 DB 0AH,0DH,             '  --          3.Cookies               60LE                   --$'
Dess4 DB 0AH,0DH,             '  --          4.Cakes                 35LE                   --$'
Dess5 DB 0AH,0DH,             '  --          5.Apple pie             60LE                   --$'
B4 DB 0AH,0DH,                '  --          6.Back to Menu                                 --$'    
                                                                                                                          
;Drinks   
D1 DB 10,13,                  ' --           1.Shoft Drinks               8LE                     --$'
D2 DB 10,13,                  ' --           2.Coffee                     7LE                     --$'
D3 DB 10,13,                  ' --           3.Tea                        5LE                     --$'
D4 DB 10,13,                  ' --           4.Orange juice               8LE                     --$'
D5 DB 10,13,                  ' --           5.Milk                       7LE                     --$'
D6 DB 10,13,                  ' --           6.Cocktail                   16LE                    --$'
D7 DB 10,13,                  ' --           7.Chocolate                  23LE                    --$'
B5 DB 10,13,                  ' --           8.Back to Menu                                       --$'                                             

M9 DB 0AH,0DH,0AH,0DH,                  '  Choose your Salad from the menu$' 

MSG2 DB 0AH,0DH,0AH,0DH,                 '  --          Salad                        Price                   --$'

MSG3 DB 0AH,0DH,0AH,0DH,                 '  --          Appetizer                        Price                   --$' 
MSG5 DB 0AH,0DH,0AH,0DH,                 '  --          Dessert                        Price                   --$'

M10 DB 0AH,0DH,0AH,0DH,                  '  Choose your Drink from the menu$' 

MSG4 DB 0AH,0DH,0AH,0DH,                 '  --          Drink                        Price                   --$'
  

;return_to_menu
Q1 DB 0AH,0DH,0AH,0DH,  '  --         1.Choose another item                                 --$ '
Q2 DB 0AH,0DH,0AH,0DH,  '  --          2.Back to Menu                               --$'
Q3 DB 0AH,0DH,          '  --                 6.Finish Order            --$' 

 
Dish DB ?
Dishdess DB ? 
space DB ' '             

Choice DB 10,13,10,13,'Enter your order: $'

BR1 DB 0AH,0DH,'  --                                           --$'
BR2 DB 0AH,0DH,'  -----------------------------------------------$'

BR3 DB 0AH,0DH,'  --                                           --$'


BR4 DB 0AH,0DH,'  --                                                               --$'
BR5 DB 0AH,0DH,'  -------------------------------------------------------------------$'



BR6 DB 0AH,0DH,'  --                                          --$'
BR7 DB 0AH,0DH,'  ----------------------------------------------$'


Invalid DB 10,13,10,13,'     ***&&INVALID ENTRY&&***$      ' 


New_line DB 0AH,0DH,0AH,0DH,' $'

Quantitynum DB 0AH,0DH, 'Enter quantity: $' 

order DB ?
quantity DB 0AH,0DH ?  
sum DW ?
Ans DB ? 
counter DB  ?


      TEXT_GAME_OVER_MAIN_MENU DB 'Press E to exit to main menu','$' ;text main menu message
	TEXT_MAIN_MENU_TITLE DB 'MAIN MENU press 1','$' ;text with the main menu title
	TEXT_MAIN_MENU_HELP DB 'HELP press 2','$' ;text with the help message
	TEXT_MAIN_MENU_EXIT DB 'EXIT press 3','$' ;text with the exit game message




.CODE 


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    CALL Open
    CALL DRAW_MAIN_MENU 
    
    
    
    
    DRAW_MAIN_MENU PROC NEAR
      ;  CALL CLEAR_SCREEN
    ;       Shows the menu title
MOV AH,02h                       ;set cursor position
MOV BH,00h                       ;set page number
MOV DH,04h                       ;set row
MOV DL,04h                         ;set column
INT 10h

MOV AH,09h                       ;WRITE STRING TO STANDARD OUTPUT
LEA DX,TEXT_MAIN_MENU_TITLE      ;give DX a pointer
INT 21h                          ;print the string

;       Shows the help message
MOV AH,02h                       ;set cursor position
MOV BH,00h                       ;set page number
MOV DH,06h                       ;set row
MOV DL,04h                         ;set column
INT 10h

MOV AH,09h                       ;WRITE STRING TO STANDARD OUTPUT
LEA DX,TEXT_MAIN_MENU_HELP     ;give DX a pointer
INT 21h                          ;print the string

;       Shows the exit message
MOV AH,02h                       ;set cursor position
MOV BH,00h                       ;set page number
MOV DH,08h                       ;set row
MOV DL,04h                         ;set column
INT 10h   
MOV AH,09h                       ;WRITE STRING TO STANDARD OUTPUT
		LEA DX,TEXT_MAIN_MENU_EXIT      ;give DX a pointer 
		INT 21h 
                        ;print the string





MAIN_MENU_WAIT_FOR_KEY:
;       Waits for a key press
			MOV AH,00h
			INT 16h
		
;       Check whick key was pressed
			CMP AL,'1'
			JE TOP
			
			
			
			JMP MAIN_MENU_WAIT_FOR_KEY	
RET

DRAW_MAIN_MENU ENDp

CLEAR_SCREEN PROC NEAR               ;clear the screen by restarting the video mode
MOV AH,00h                   ;set the configuration to video mode
MOV AL,12h                   ;choose the video mode
INT 10h                         ;execute the configuration
MOV AH,00h                      ;set the configuration
MOV BH,00h                      ;to the background color
MOV BL,00h                      ;choose black as background color
INT 10h                            ;execute the configuration
RET
CLEAR_SCREEN ENDP
    
 
  TOP:
   
     ; CALL CLEAR_SCREEN
  
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
    
    LEA DX,Q3
    MOV AH,9
    INT 21H
    
 
    LEA DX,BR1
    MOV AH,9
    INT 21H
    
    
    LEA DX,BR2
    MOV AH,9
    INT 21H
            
            
            
            
    select_choice:
    LEA DX,M2
    MOV AH,9
    INT 21H

    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE Main_Dishes
    
    CMP BH,2
    JE Appetizers
    
    CMP BH,3
    JE Salads
    
    CMP BH,4
    JE Desserts 
    
    CMP BH,5
    JE Drinks
    
    CMP BH,6
    JE Finish_order
    
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_choice
    
   
     Finish_order: 
    ; CALL CLEAR_SCREEN
    ; CALL Read
        mov ax,sum
        printn '  total price is'
        call DISPLAY_NUM
   ; CALL Close
    mov ah,08h
    int 21h 
 
   

    
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  
  
   Main_Dishes: 
  ; CALL CLEAR_SCREEN
    
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
    
    LEA DX,B1      
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    select_order1:
                    
                    
    printn ' '               
    printn 'enter your order'           
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    
    mov order,AL
    
  
    
    CMP order,1 
    JE calcDish1
    
    
    CMP order,2 
    JE calcDish2
    
    
    CMP order,3  
    JE calcDish3
    
    
    CMP order,4
    JE calcDish4
    
    
    CMP order,5
    JE calcDish5
    
    
    CMP order,6                                                        
    JE calcDish6
    
    
    CMP order,7 
    JE calcDish7  
    
    
    CMP order,8
    JE calcDish8
    
    CMP order,9
    jE TOP 
    
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order1
    
    
    Movestring PROC
        
    CLD                           ; Clear the contents of Direction Flag
    MOV CH,00H                    ; Since CX should be 00xx
    MOV CL,50
    REP MOVSB
    
    ret
    ENDP
     
    calcDish1:
    
   ; call QuantityNumber 
   
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,120
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish1                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         

    call Movestring 
    
    call convert

    call WriteFile
                  
    jmp Main_Dishes 
               
               
    
    calcDish2:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al 
    
    mov al,120
    MUL quantity
    
    ADD sum, ax 
    
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
                  
    jmp Main_Dishes    
            
            
            
            
    calcDish3:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al

    mov al,100
    MUL quantity
    
    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish3                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring 
    
    call convert
    
    call WriteFile    
    
    jmp Main_Dishes 
    
    
    
    
    
    
    calcDish4:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
  
    mov al,160
    MUL quantity
 
    ADD sum, ax   
    
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish4                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
    
    jmp Main_Dishes 
    
    
    
    
    
    calcDish5: 
   
  LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
 
    mov al,120
    MUL quantity
 
    ADD sum, ax  
    
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         

    call Movestring 
    call convert

    call Movestring
    
    call convert 

    
    call WriteFile
   
    jmp Main_Dishes
    
     
     
    calcDish6:
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al

    mov al,140
    MUL quantity

    ADD sum, ax  
    
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish6                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile   
   
    jmp Main_Dishes 
    
    
    
    
    
    
    
    calcDish7:    
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
    mov al,80
    MUL quantity

    ADD sum, ax  
    
  
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish7                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         

    

    call Movestring
    
    call convert 

    
    call WriteFile   
   
    jmp Main_Dishes 
       
       
               
               
               
    calcDish8:    
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al

    mov al,120
    MUL quantity

    ADD sum, ax  
    
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish8                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    call convert 
    
    call WriteFile   
   
    jmp Main_Dishes
    
                 
                 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               
               
    Appetizers:
    
  ;  CALL CLEAR_SCREEN
    
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
    
    LEA DX,MSG3   
    MOV AH,9
    INT 21H  
    
    
    LEA DX,APP1    
    MOV AH,9
    INT 21H 
    
    
    LEA DX,APP2  
    MOV AH,9
    INT 21H
    
    LEA DX,APP3
    MOV AH,9          
    INT 21H 
    
    LEA DX,APP4
    MOV AH,9           
    INT 21H
    
    
    LEA DX,APP5         
    MOV AH,9
    INT 21H
    
    
    LEA DX,APP6     
    MOV AH,9
    INT 21H
    
    LEA DX,B2     
    MOV AH,9
    INT 21H
             
             
             
             
             
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    select_order2:
    printn ' '
    printn 'enter your order'             
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    
    
   
    MOV order,AL
   
    
    CMP order,1
    JE calcAPP1
    
    
    CMP order,2
    JE calcAPP2
    
    
    CMP order,3
    JE calcAPP3
    
    
    CMP order,4
    JE calcAPP4
    
    
    CMP order,5
    JE calcAPP5
    
    
    CMP order,6
    JE calcAPP6
    
    CMP order,7
    JE TOP
    
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order2
        
        
                   
        
        
   calcAPP1: 

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov AL,40 
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP1                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Appetizers  
    
   
   
    
    
    calcAPP2:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,15
    MUL quantity

    ADD sum, ax 
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
    
    jmp  Appetizers
    
    
    calcAPP3:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,10
    MUL quantity
    
    ADD sum, ax 
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP3                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Appetizers
    
    calcAPP4:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,40
    MUL quantity
    
    ADD sum, ax 
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP4                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Appetizers
    
    calcAPP5:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,15
    MUL quantity
    
    ADD sum, ax 
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Appetizers 
    
    calcAPP6:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,10
    MUL quantity
    
    ADD sum, ax 
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,APP6                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Appetizers   
        
        
        
        
                ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
   
   
    Salads:
    
   ; CALL CLEAR_SCREEN
    
    LEA DX,M9    
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
    
    LEA DX,MSG2   
    MOV AH,9
    INT 21H 
    
   
    LEA DX,Salad1    
    MOV AH,9
    INT 21H 
    
    
    LEA DX,Salad2   
    MOV AH,9
    INT 21H
    
    LEA DX,Salad3 
    MOV AH,9          
    INT 21H 
    
    LEA DX,Salad4 
    MOV AH,9           
    INT 21H
    
    
    LEA DX,Salad5          
    MOV AH,9
    INT 21H
    
    
    LEA DX,Salad6      
    MOV AH,9
    INT 21H
    
    LEA DX,B3      
    MOV AH,9
    INT 21H
            
    
  
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    select_order3:
    printn ' '
    printn 'enter your order'            
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    
    
   
    MOV order,AL
   
    
    CMP order,1
    JE calcSalad1
    
    
    CMP order,2
    JE calcSalad2
    
    
    CMP order,3
    JE calcSalad3
    
    
    CMP order,4
    JE calcSalad4
    
    
    CMP order,5
    JE calcSalad5
    
    
    CMP order,6
    JE calcSalad6
    
    CMP order,7
    JE TOP
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order3
    
   
    calcSalad1:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,20
    MUL quantity
    
    ADD sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad1                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile 
 
    jmp Salads
    
   
    calcSalad2:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,30
    MUL quantity
     
    mov sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad2                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      

    jmp Salads 
    
     
    calcSalad3:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,20
    MUL quantity
    
    ADD sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad3                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
   
    jmp Salads
      
    
    calcSalad4:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,20
    MUL quantity
    
    ADD sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad4                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
   
    jmp Salads
     
    
    calcSalad5:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,25
    MUL quantity
    
    ADD sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
   
    jmp Salads 
     
    
    calcSalad6:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,30
    MUL quantity
    
    ADD sum, ax
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Salad6                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
   
    jmp Salads   
    
          
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    Desserts:
    
   ; CALL CLEAR_SCREEN
    
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
    
    
    LEA DX,MSG5  
    MOV AH,9
    INT 21H 
    
    LEA DX,Dess1    
    MOV AH,9
    INT 21H 
    
    
    LEA DX,Dess2  
    MOV AH,9
    INT 21H
    
    LEA DX,Dess3
    MOV AH,9          
    INT 21H 
    
    LEA DX,Dess4
    MOV AH,9           
    INT 21H
    
    
    LEA DX,Dess5         
    MOV AH,9
    INT 21H
    
    LEA DX,B4         
    MOV AH,9
    INT 21H
      
    
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    select_order4:
    printn ' '
    printn 'enter your order'       
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV order,AL
   
    
    CMP order,1
    JE calcDess1 
    
    CMP order,2
    JE calcDess2
    
    
    CMP order,3
    JE calcDess3
    
    
    CMP order,4
    JE calcDess4
    
    
    CMP order,5
    JE calcDess5
    
    CMP order,6
    JE TOP
    
         
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order4
             
             
         
         
               
             
         
   calcDess1: 

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov AL,35 
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess1                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts 
    
    
    
         
         
         
    
    calcDess2: 

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov AL,50 
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts 
    
    
    
    
    
     
   calcDess3: 

     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov AL,60 
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess3                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts  
    
    
    
    
    
    
    calcDess4: 

     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov AL,35 
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess4                ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts  
    
    
    
    
    
    
    
    
    calcDess5: 

     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov AL,60
    MUL quantity
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess5                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts 

    
    
   
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
             
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
        
    Drinks:
    
   ; CALL CLEAR_SCREEN
    printn ' '
    printn "Enter your order"  
    LEA DX,M10   
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
    
    LEA DX,MSG4   
    MOV AH,9
    INT 21H 

    LEA DX,New_line
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
    
    LEA DX,D6         
    MOV AH,9
    INT 21H  
    
    LEA DX,D7         
    MOV AH,9
    INT 21H
    
    LEA DX,B5         
    MOV AH,9
    INT 21H 
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    
    select_order5:  
    
    
    printn " "
    printn 'enter your order'             
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV order,AL
   
    
    CMP order,1
    JE calcDrink1 
    
    CMP order,2
    JE calcDrink2
    
    
    CMP order,3
    JE calcDrink3
    
    
    CMP order,4
    JE calcDrink4   ;calc8
    
    
    CMP order,5
    JE calcDrink5  ;calc7
    
    CMP order,6
    JE calcDrink6
    
    CMP order,7
    JE calcDrink7
    
    CMP order,8
    JE TOP
      
    LEA DX,invalid
    MOV AH,9
    INT 21H
       
    jmp select_order5
    
    

   calcDrink1:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov al,8
    MUL quantity
    
    ADD sum, ax 
        
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D1                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
    jmp Drinks  
    
  
   calcDrink2: 
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,7
    MUL quantity
    
    ADD sum, ax   
        
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
    jmp Drinks 
          
         
   calcDrink3:
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,5
    MUL quantity
    
    ADD sum, ax
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D3                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
    
    jmp Drinks 
    
     
     
     calcDrink4:
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   

    mov al,8
    MUL quantity
    
    ADD sum, ax 
        
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D4                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
    
    jmp Drinks
    
    calcDrink5: 
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov al,7
    MUL quantity
    
    ADD sum, ax 
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D5                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile      
    
    jmp Drinks   
    
 calcDrink6: 
    
     LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov al,16
    MUL quantity    
    
    ADD sum, ax
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D6                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile  
    
    jmp Drinks       
           
       
  calcDrink7: 
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov al,23
    MUL quantity

    ADD sum, ax
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,D7                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile     

    jmp Drinks       
               
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
  
    
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
    
     
        DISPLAY_NUM ENDP  
     
     
     
     
      
   WriteFile PROC NEAR

   mov ah, 42h  ; "lseek"
   mov al, 2    ; position relative to end of file
   mov cx, 0    ; offset MSW
   mov dx, 0    ; offset LSW
   int 21h
                                    
                                   
   mov bx, [handler]
   mov dx, offset Dish
   mov cx, 50
   mov ah, 40h
   int 21h ; write to file...  
   
   mov bx, [handler]
   mov dx, offset space
   mov cx, 6
   mov ah, 40h
   int 21h ; write to file... 
   
   mov bx, [handler]
   mov dx, offset quantity
   mov cx, 2
   mov ah, 40h
   int 21h ; write to file... 
  
  RET    
                  
                  
  WriteFile ENDP   
   
   
   
   
   
    
     Create PROC NEAR 
        mov al,00h
        mov ah,3ch
        LEA DX,filename
        mov cx,00H
        int 21h   
        
        ;Display part
        JC EXIT    ; If carry Flag is Set, It means File is not Created
        
        mov handler,ax
        RET
        Create ENDP  
     
     
     
     
     
     
     Close PROC NEAR 
        mov ah,3eh
        mov bx,handler
        int 21h
        RET
        Close ENDP
     
     
     
     
     
     Open PROC NEAR
        mov ah,3dh
        lea dx,filename
        mov al,2
        int 21h
        mov handler,ax 
        RET
        Open ENDP
                    
                    
                    
                    
                    
     Read PROC NEAR
        mov ah,3fh 
        mov bx,handler
        mov cx,10000
        lea dx,Dishdess
        int 21h
        mov dx,offset Dishdess
        mov ah,09h
        int 21h
        RET
        Read ENDP 
     
     
     
     
     
      convert proc
        
        push bp
        mov bp, sp
    
        mov si, offset quantity 
        mov ax, [si]
    
        mov cl, "$"
        mov [bx], cl 
        
        
        
        
        
        
        
       divide:
       
        mov ah, 0
        mov cl, 10
        div cl         ; div number(in ax) by 10
        dec bx
        add ah, 48     ;Make into a character
        mov quantity, ah  
        cmp al, 0
        jne divide
    
        pop bp
        ret 4
        
        convert endp
     
     EXIT:
    
    MOV AH,4CH
    INT 21H
    HELP:
   
    
    
END MAIN     