
include 'emu8086.inc'
.MODEL LARGE
.STACK 1000H
.DATA    
;------------------------------------------------------------------------------------------
M1 DB 0AH,0DH,0AH,0DH,  '                   Welcome to Shobra Restaurants$' 
M2 DB 0AH,0DH,0AH,0DH,                ' Please Enter your Choise $'
  
;------------------------------------------------------------------------------------------ 
Menu1  DB 0AH,0DH, '  --                 1.Main Dishes             --$' 
Menu2  DB 0AH,0DH, '  --                 2.Appetizers              --$'     
Menu3  DB 0AH,0DH, '  --                 3.Salads                  --$'   ;main menue
Menu4  DB 0AH,0DH, '  --                 4.Desserts                --$'
Menu5  DB 0AH,0DH, '  --                 5.Drinks                  --$'                                                                                        
;------------------------------------------------------------------------------------------
Dish1 DB 0AH,0DH,0AH,0DH,    '           1.Grilled Chicken            120LE$' 
Dish2 DB 0AH,0DH,            '           2.Fried Chicken              120LE$'
Dish3 DB 0AH,0DH,            '           3.Pasta                      100LE$'
Dish4 DB 0AH,0DH,            '           4.Beef stack                 160LE$'
Dish5 DB 0AH,0DH,            '           5.Grilled Shrimps            120LE$'  ;Main dishes
Dish6 DB 0AH,0DH,            '           6.Mix Grill                  140LE$'
Dish7 DB 0AH,0DH,            '           7.Stuffed cabbage            80LE $'
Dish8 DB 0AH,0DH,            '           8.Kofta                      120LE$'
B1 DB 0AH,0DH,               '           9.Back to Menu                    $'
;------------------------------------------------------------------------------------------

APP1 DB 0AH,0DH,0AH,0DH,     '           1.Mozzarella stickes         40LE $' 
APP2 DB 0AH,0DH,             '           2.French Fries               15LE $'
APP3 DB 0AH,0DH,             '           3.chips                      10LE $'
APP4 DB 0AH,0DH,             '           4.Hotdog Sandwich            40LE $'  ;Appetisers
APP5 DB 0AH,0DH,             '           5.Onion Rings                15LE $'
APP6 DB 0AH,0DH,             '           6.Wedge Fries                10LE $'
B2 DB 0AH,0DH,               '           7.Back to Menu                    $'
;------------------------------------------------------------------------------------------
Salad1 DB 0AH,0DH,0AH,0DH,   '           1.Green salad                20LE $'   
Salad2 DB 0AH,0DH,           '           2.Chicken caesar salad       30LE $'
Salad3 DB 0AH,0DH,           '           3.Caesar salad               20LE $'
Salad4 DB 0AH,0DH,           '           4.Greek salad                20LE $'  ;Salads
Salad5 DB 0AH,0DH,           '           5.Tuna salad                 25LE $'
Salad6 DB 0AH,0DH,           '           6.Italian pasta salad        30LE $' 
B3 DB 0AH,0DH,               '           7.Back to Menu                    $'                       
;------------------------------------------------------------------------------------------
 
Dess1 DB 0AH,0DH,0AH,0DH,    '           1.Cheesecake                 35LE $' 
Dess2 DB 0AH,0DH,            '           2.Cobbler                    50LE $'
Dess3 DB 0AH,0DH,            '           3.Cookies                    60LE $'  ;Desserts
Dess4 DB 0AH,0DH,            '           4.Cakes                      35LE $'
Dess5 DB 0AH,0DH,            '           5.Apple pie                  60LE $'
B4 DB 0AH,0DH,               '           6.Back to Menu                    $'    
;---------------------------------------------------------------------------------------                                                                                                                          
D1 DB 10,13,                 '           1.Shoft Drinks               8LE  $'
D2 DB 10,13,                 '           2.Coffee                     7LE  $'
D3 DB 10,13,                 '           3.Tea                        5LE  $'
D4 DB 10,13,                 '           4.Orange juice               8LE  $'  ;Drinks
D5 DB 10,13,                 '           5.Milk                       7LE  $'
D6 DB 10,13,                 '           6.Cocktail                   16LE $'
D7 DB 10,13,                 '           7.Chocolate                  23LE $'
B5 DB 10,13,                 '           8.Back to Menu                    $'                                             
;-------------------------------------------------------------------------------------
MSG DB 0AH,0DH,0AH,0DH,       '  --          Dish                         Price                   --$'
MSG2 DB 0AH,0DH,0AH,0DH,      '  --          Salad                        Price                   --$'
MSG3 DB 0AH,0DH,0AH,0DH,      '  --          Appetizer                    Price                   --$' 
MSG4 DB 0AH,0DH,0AH,0DH,      '  --          Drink                        Price                   --$'
;-----------------------------------------------------------------------------------------
M10 DB 0AH,0DH,0AH,0DH,                  '  Choose your Drink from the menu$' 
M9 DB 0AH,0DH,0AH,0DH,                  '  Choose your Salad from the menu$' 
;---------------------------------------------------------------------------------
;return_to_menu
Q1 DB 0AH,0DH,0AH,0DH,  '  --         1.Choose another item       $ '
Q2 DB 0AH,0DH,0AH,0DH,  '  --         2.Back to Menu              $'
Q3 DB 0AH,0DH,          '  --         6.Finish Order              $' 
;----------------------------------------------------------------------------
            

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
;--------------------------------------------------------------------------------
order DB ?
quantity DB 0AH,0DH ?  
sum DW ?
Ans DB ? 
counter DB  ? 
Dish DB ?
quantityclc DW ? 
;----------------------------------------------------------------------------
filename db "project.txt",0
handler dw ?
buffer db 255 DUP ?
;---------------------------------------------------------------------------
    TEXT_GAME_OVER_MAIN_MENU DB 'Press E to exit to main menu','$' ;text main menu message
	TEXT_MAIN_MENU_TITLE DB 'MAIN MENU press 1','$' ;text with the main menu title
	TEXT_MAIN_MENU_HELP DB 'HELP press 2','$' ;text with the help message
	TEXT_MAIN_MENU_EXIT DB 'EXIT press 3','$' ;text with the exit game message

;-------------------------------------------------------------------------------


.CODE 


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    CALL Open    
    MOV counter, 01h
    CALL DRAW_MAIN_MENU 
    
    
    
    
    DRAW_MAIN_MENU PROC NEAR
        CALL CLEAR_SCREEN
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
xor cx,cx
mov dh,25
mov dl,80
mov bh,7
mov ax,700h                      ;choose black as background color
INT 10h                         ;execute the configuration
RET
CLEAR_SCREEN ENDP
    
;---------------------------------------------------------------------------------------
  TOP:
 
    CALL CLEAR_SCREEN
  
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
;--------------------------------------------------------------------------------    
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
; -----------------------------------------------------------------------------------  
     Finish_order: 
       CALL read
        mov ax,sum
        printn '  total price is'
        call DISPLAY_NUM
        
        mov ah,08h
        int 21h 
 ;----------------------------------------------------------------------------------
  
   Main_Dishes: 
   CALL CLEAR_SCREEN
    
    LEA DX,M2   
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
;-------------------------------------------------------------------------------   
    select_order1:
    mov ax,@data 
    mov ds,ax
    LEA DX,Choice              
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
;-----------------------------------------------------------------------------------------   
  
    calcDish1:
    
    call QuantityNumber 
   
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al
   
    mov al,120
    MUL quantity 
    mov quantityclc,ax
    
    ADD sum, ax 
    
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dish1                  ; Location of STR1 is loaded to SI
    LEA DI,Dish 
                                                            
    call Movestring  
    call convert
    call WriteFile  
    jmp Main_Dishes 
 ;----------------------------------------------------------------------------------------   
    
    calcDish2:
    
    call QuantityNumber

    mov al,120
    MUL quantity
    
    ADD sum, ax 
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish 
                                                            
    call Movestring 
    call convert
    call WriteFile             
    jmp Main_Dishes    
;---------------------------------------------------------------------------------------            
    
    calcDish3:
    
    call QuantityNumber

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
;-------------------------------------------------------------------------
    calcDish4:
    
    call QuantityNumber
  
    mov al,160
    MUL quantity
 
    ADD sum, ax   
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish4                  ; Location of STR1 is loaded to SI
    LEA DI,Dish
                                                             
    call Movestring 
    call convert
    call WriteFile
    jmp Main_Dishes 
;------------------------------------------------------------------------
    
    calcDish5: 
   
   call QuantityNumber
 
    mov al,120
    MUL quantity
 
    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish  
                                                           
    call Movestring 
    call convert
    call WriteFile
    jmp Main_Dishes
 ;---------------------------------------------------------------------
      
    calcDish6:
    call QuantityNumber

    mov al,140
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish6                 ; Location of STR1 is loaded to SI
    LEA DI,Dish  
                                                           
    call Movestring 
    call convert
    call WriteFile   
    jmp Main_Dishes 
; ---------------------------------------------------------------------
   
    calcDish7:
    call QuantityNumber

    mov al,80
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish7                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    
    call convert
    call WriteFile   
    jmp Main_Dishes 
 ;--------------------------------------------------------------------   
    calcDish8:
    call QuantityNumber

    mov al,120
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Dish8                 ; Location of STR1 is loaded to SI
    LEA DI,Dish    
                                                         
    call Movestring 
    call convert
    call WriteFile   
    jmp Main_Dishes
;-----------------------------------------------------------------------
                           
    Appetizers:
    
    CALL CLEAR_SCREEN
    
    LEA DX,M2
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
 ;-----------------------------------------------------------------------------------   
    select_order2:
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  

    MOV order,AL
      
    CMP order,1
    JE calcAppetiser1
      
    CMP order,2
    JE calcAppetiser2
    
    CMP order,3
    JE calcAppetiser3
    
    CMP order,4
    JE calcAppetiser4
   
    CMP order,5
    JE calcAppetiser5 
    
    CMP order,6
    JE calcAppetiser6
    
    CMP order,7
    JE TOP
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order2
        
 ;---------------------------------------------------------------------------------              
        
  calcAppetiser1:

  call QuantityNumber

    mov al,40
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP1                 ; Location of STR1 is loaded to SI
    LEA DI,Dish 
                                                            
    call Movestring 
    call convert
    call WriteFile    
    jmp  Appetizers  
;-------------------------------------------------------------------------------  
    
   calcAppetiser2:

   call QuantityNumber

    mov al,15
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP2                 ; Location of STR1 is loaded to SI
    LEA DI,Dish
                                                             
    call Movestring 
    call convert
    call WriteFile    
    jmp  Appetizers 
;-----------------------------------------------------------------------------
                     
   calcAppetiser3:

    call QuantityNumber

    mov al,10
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP3                 ; Location of STR1 is loaded to SI
    LEA DI,Dish
                                                             
    call Movestring 
    call convert
    call WriteFile    
    jmp  Appetizers 
;---------------------------------------------------------------------------
   
   calcAppetiser4:

   call QuantityNumber

    mov al,40
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP4                 ; Location of STR1 is loaded to SI
    LEA DI,Dish   
                                                          
    call Movestring 
    call convert
    call WriteFile     
    jmp  Appetizers 
;-------------------------------------------------------------------------    
    calcAppetiser5:

    call QuantityNumber

    mov al,15
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish    
                                                         
    call Movestring 
    call convert
    call WriteFile    
    jmp  Appetizers 
 ;------------------------------------------------------------------------   
    calcAppetiser6:

    call QuantityNumber

    mov al,10
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,APP6                 ; Location of STR1 is loaded to SI
    LEA DI,Dish      
                                                     
    call Movestring 
    call convert
    call WriteFile    
    jmp  Appetizers      
;-------------------------------------------------------------------------
   
    Salads:
    
    CALL CLEAR_SCREEN
    
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
;----------------------------------------------------------------- 
    select_order3:
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48   
   
    MOV order,AL
    
    CMP order,1
    JE calcsalad1
    
    CMP order,2
    JE calcsalad2
  
    CMP order,3
    JE calcsalad3
     
    CMP order,4
    JE calcsalad4 
    
    CMP order,5
    JE calcsalad5
    
    CMP order,6
    JE calcsalad6
    
    CMP order,7
    JE TOP
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order3
    
;----------------------------------------------------------------
    calcsalad1:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad1                 ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    
    call Movestring
    call convert
    call WriteFile   
    jmp Salads
;--------------------------------------------------------------------
    calcsalad2:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad2               ; Location of STR1 is loaded to SI
    LEA DI,Dish    
                                                         
    call Movestring
    call convert
    call WriteFile   
    jmp Salads
;-----------------------------------------------------------------------
    calcSalad3:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad3                ; Location of STR1 is loaded to SI
    LEA DI,Dish 
                                                            
    call Movestring
    call convert
    call WriteFile   
    jmp Salads 
;----------------------------------------------------------------------
    calcSalad4:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad4                 ; Location of STR1 is loaded to SI
    LEA DI,Dish          
                                                   
    call Movestring
    call convert
    call WriteFile   
    jmp Salads 
;------------------------------------------------------------------------   
    calcSalad5:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad5                 ; Location of STR1 is loaded to SI
    LEA DI,Dish    
                                                         
    call Movestring   
    call convert
    call WriteFile   
    jmp Salads   
;----------------------------------------------------------------------- 
    calcSalad6:
    
    call QuantityNumber

    mov al,20
    MUL quantity

    ADD sum, ax  
    
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Salad6                 ; Location of STR1 is loaded to SI
    LEA DI,Dish 
                                                            
    call Movestring        
    call convert
    call WriteFile   
    jmp Salads
;-------------------------------------------------------------------
    
    Desserts:
    
    CALL CLEAR_SCREEN
    
    LEA DX,M2    
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
;------------------------------------------------------------------------------
    select_order4:
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV order,AL
   
    CMP order,1
    JE calcDess1 
    
    CMP order,2
<<<<<<< HEAD
    JE calcDess2
    
    
    CMP order,3
    JE calcDess3
    
    
    CMP order,4
    JE calcDess4
    
=======
    JE calc50
     
    CMP order,3
    JE calc60
   
    CMP order,4
    JE calc35 
>>>>>>> 7d8600f03094a74d8e6cb96caef3d1e60e305347
    
    CMP order,5
    JE calcDess5
    
    CMP order,6
    JE TOP
    
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp select_order4
<<<<<<< HEAD
<<<<<<< HEAD
             
             
         
         
               
             
         
   calcDess1: 
=======
 ------------------------------------------------------------------------------  
=======
 ;------------------------------------------------------------------------------  
>>>>>>> 3500f2c97d9d8364356b4043fddd9dd87af88a4f
    
    calc35:
>>>>>>> 7d8600f03094a74d8e6cb96caef3d1e60e305347

   call QuantityNumber

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

    call QuantityNumber

    mov AL,50 
    MUL quantity
    
    ADD sum, ax 
    
<<<<<<< HEAD
<<<<<<< HEAD
    MOV Ax,Ds
    MOV ES,AX
    LEA SI,Dess2                  ; Location of STR1 is loaded to SI
    LEA DI,Dish                                                         
    call Movestring
    
    call convert 
    
    call WriteFile
 
    jmp  Desserts 
    
    
    
    
    
     
   calcDess3: 

    call QuantityNumber

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

    call QuantityNumber

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

    call QuantityNumber

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
    
        
=======
 ------------------------------------------------------------------------------    
>>>>>>> 7d8600f03094a74d8e6cb96caef3d1e60e305347
=======
 ;------------------------------------------------------------------------------    
>>>>>>> 3500f2c97d9d8364356b4043fddd9dd87af88a4f
    Drinks:
    
    CALL CLEAR_SCREEN
      
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
;-------------------------------------------------------------------
    
    select_order5:
    
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
    
    CMP order,6
    JE calc16
    
    CMP order,7
    JE calc23
    
    CMP order,8
    JE TOP
      
    LEA DX,invalid
    MOV AH,9
    INT 21H
       
    jmp select_order5  
;-------------------------------------------------------------------------------

   calc8:
    
    call QuantityNumber

    mov al,8
    MUL quantity
    
    ADD sum, ax     
    
    jmp Drinks  
    
  
   calc7: 
    
    call QuantityNumber

    mov al,7
    MUL quantity
    
    ADD sum, ax       
    
    jmp Drinks 
          
         
   calc5:
    
    call QuantityNumber

    mov al,5
    MUL quantity
    
    ADD sum, ax      
    
    jmp Drinks 
    
   
  calc16: 
    
    call QuantityNumber

    mov al,16
    MUL quantity    
    
    ADD sum, ax  
    
    jmp Drinks       
           
       
  calc23: 
    
    call QuantityNumber
    mov al,23
    MUL quantity

    ADD sum, ax     

    jmp Drinks       
;-----------------------------------------------------------------------
    
     QuantityNumber PROC

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    MOV AH,1
    INT 21H
    SUB AL,48

    mov quantity,al 
    
    ENDP
 ;----------------------------------------------------------------   
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
 ;---------------------------------------------------------------
      
   WriteFile PROC NEAR   
   

   mov bx, ax
   mov ah, 42h  ; "lseek"
   mov al, 2    ; position relative to end of file
   mov cx, 0    ; offset MSW
   mov dx, 0    ; offset LSW
   int 21h
                                   
   mov bx, [handler]
   mov dx, offset Dish
   mov cx, 40
   mov ah, 40h
   int 21h ; write to file...  
 
   mov bx, [handler]
   mov dx, offset quantity
   mov cx, 1
   mov ah, 40h
   int 21h ; write to file... 
  
  RET    
      
  WriteFile ENDP
;---------------------------------------------------------------
    
     Create PROC NEAR
        mov ah,3ch
        LEA DX,filename
        mov cl,0
        int 21h
        mov handler,ax
        RET
        Create ENDP 
;---------------------------------------------------------------
     
     Close PROC NEAR 
        mov ah,3eh
        mov bx,handler
        int 21h
        RET
        Close ENDP     
;------------------------------------------------------------
     Open PROC NEAR
        mov ah,3dh
        lea dx,filename
        mov al,2
        int 21h
        mov handler,ax 
        RET
        Open ENDP
;------------------------------------------------------------
    proc   convert
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
    endp    convert  
;-------------------------------------------------------------  
        read proc    
            
        MOV AX,@DATA 
        MOV DS,AX 

		mov ah,3Dh   
		mov al,0   ; 
		mov dx,offset filename  
		int 21h  
		mov handler,ax   


		mov ah,3Fh
		mov cx,255   
		mov dx,offset buffer  
		mov bx,handler    
		int 21h   



		mov dx,offset buffer
		add dx,ax    ; Function 3Fh returns the actual amount of bytes read in AX (should be 4 if
				; nothing went wrong.
		mov bx,dx
		mov byte [bx],'$'   ; byte pointer so we don't mess with the whole word (a word is 16bits).
            
        mov cl,20
        mov bl,1
        lea si,buffer
        label:  
        mov al,[si] 
        mov dl,al
        mov ah,2h
        int 21h
        call moving1      
        cmp al,'a'
        jge changeLetter
           
        inc si 
        dec cl
           
           
       jnz label
       jz Print
           ;;;;;;;;;;;;;;;;;
       changeLetter:
       cmp bl,1
       je changefirst  
       inc si 
       dec cl
       jnz label
           ;;;;;;;;;;;;;;;;       
		             
	   changefirst:
       inc si  
		 
	  mov al,[si]
	  sub al,32d  
	  mov [si],al
      mov bl,0
		   
      dec si 
      inc si 
      dec cl
      jnz label       
		     ;ret                
		     
	Print:

		mov dx,offset buffer  ; put the pointer back in DX.
		mov ah,9
		int 21h    ; call DOS Function 9 (Print String).
		mov ah,4Ch
		int 21h      ; Function 4Ch (Exit Program)               
		  
moving1: 
cmp al,' '

je increment
 ret
increment:
mov bl,1  

   ret
        ENDP 
;----------------------------------------------------------------------------
 Movestring PROC
        
    CLD                           ; Clear the contents of Direction Flag
    MOV CH,00H                    ; Since CX should be 00xx
    MOV CL,100
    REP MOVSB
    
    ret
 ENDP
 ;---------------------------------------------------------------
    EXIT:
    
    MOV AH,4CH
    INT 21H  
;--------------------------------------------------------------
    HELP:
    there: 

    
END MAIN      
