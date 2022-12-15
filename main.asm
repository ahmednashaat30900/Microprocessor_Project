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
B1 DB 0AH,0DH,                '  --          9.Back to Menu                                       --$'


;apptizers 
APP1 DB 0AH,0DH,0AH,0DH,     '  --          1.Mozzarella stickes         20LE                   --$' 
APP2 DB 0AH,0DH,             '  --          2.French Fries               15LE                   --$'
APP3 DB 0AH,0DH,             '  --          3.chips                      10LE                   --$'
APP4 DB 0AH,0DH,             '  --          4.Hotdog Sandwich            20LE                   --$'
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
 
Dess1 DB 0AH,0DH,0AH,0DH,     '  --          1.Cheesecake            30LE                   --$' 
Dess2 DB 0AH,0DH,             '  --          2.Cobbler               25LE                   --$'
Dess3 DB 0AH,0DH,             '  --          3.Cookies               10LE                   --$'
Dess4 DB 0AH,0DH,             '  --          4.Cakes                 20LE                   --$'
Dess5 DB 0AH,0DH,             '  --          5.Apple pie             15LE                   --$'
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


M10 DB 0AH,0DH,0AH,0DH,                  '  Choose your Drink from the menu$' 

MSG4 DB 0AH,0DH,0AH,0DH,                 '  --          Drink                        Price                   --$'
  

;return_to_menu
Q1 DB 0AH,0DH,0AH,0DH,  '  --         1.Choose another item                                 --$ '
Q2 DB 0AH,0DH,0AH,0DH,  '  --          2.Back to Menu                               --$'
Q3 DB 0AH,0DH,          '  --                 6.Finish Order            --$' 

 
                     

intArray DW 100 dup (0)
    index    DW 0


Choice DB 10,13,10,13,'Enter your order: $'

BR1 DB 0AH,0DH,'  --                                           --$'
BR2 DB 0AH,0DH,'  -----------------------------------------------$'

BR3 DB 0AH,0DH,'  --                                           --$'


BR4 DB 0AH,0DH,'  --                                                               --$'
BR5 DB 0AH,0DH,'  -------------------------------------------------------------------$'



BR6 DB 0AH,0DH,'  --                                          --$'
BR7 DB 0AH,0DH,'  ----------------------------------------------$'


Invalid DB 10,13,10,13,'***&&INVALID ENTRY&&***$' 
tr DB 10,13,'      ***&&Try Again&&***$'


New_line DB 0AH,0DH,0AH,0DH,' $'

Quantitynum DB 0AH,0DH, 'Enter quantity: $' 

order DB ?
quantity DB ?  
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

DRAW_MAIN_MENU ENDP






CLEAR_SCREEN PROC NEAR               ;clear the screen by restarting the video mode
MOV AH,00h                   ;set the configuration to video mode
MOV AL,12h                   ;choose the video mode
INT 10h                         ;execute the configuration
MOV AH,00h                      ;set the configuration
MOV BH,00h                      ;to the background color
MOV BL,00h                      ;choose black as background color
INT 10h                         ;execute the configuration
RET
CLEAR_SCREEN ENDP
    
 
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

    
     Finish_order:
        jmp EXIT
 
 
 
   Return_Menu:

    LEA DX,BR5
    MOV AH,9
    INT 21H
    
    LEA DX,BR4
    MOV AH,9
    INT 21H   
    
    LEA DX,Q1
    MOV AH,9
    INT 21H 
    
    LEA DX,Q2
    MOV AH,9
    INT 21H 

    LEA DX,Q3
    MOV AH,9
    INT 21H 
    
    LEA DX,BR4
    MOV AH,9
    INT 21H
    
    LEA DX,BR5
    MOV AH,9
    INT 21H 
    
    LEA DX,M2              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV Ans,AL
   
    CMP Ans,1
    ;JE selectOrder
    
    CMP Ans,2
    JE TOP

    CMP Ans,3
    JE Exit

    
    
  
  
  
  
   Main_Dishes: 
   CALL CLEAR_SCREEN
    
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
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    
    mov order,AL
    
  
  
  
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
    
    
    CMP order,8
    JE calc120
    
    CMP order,9
    jE TOP 
    
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    
           
    calc120:
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    mov quantity,AL 

    mov al,120
    MUL quantity
  
    mov sum, ax
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
            
            
            
            
    
    calc100:
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    mov quantity,AL 

    mov al,100
    MUL quantity
    
    mov sum, ax     
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
    
    
      
    
    calc160:
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    mov quantity,AL 
  
    mov al,160
    MUL quantity
 
    mov sum, ax
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
    
    
    
    
    
    calc80: 
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    mov quantity,AL 
 
    mov al,80
    MUL quantity
 
    mov sum, ax 
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu
    
     
     
    calc140:
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    mov quantity,AL 

    mov al,140
  
    MUL quantity
    mov sum, ax     
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu
    
               
               
               
    Appetizers:
    
    CALL CLEAR_SCREEN
    
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
    
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    
    
   
    MOV order,AL
   
    
    CMP order,1
    JE calc20
    
    
    CMP order,2
    JE calc15
    
    
    CMP order,3
    JE calc10
    
    
    CMP order,4
    JE calc20
    
    
    CMP order,5
    JE calc15
    
    
    CMP order,6
    JE calc10
    
    CMP order,7
    JE TOP
    
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    ; jmp Return_Menu
        
        
        
        
        
   calc10: 

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,AL 
    mov AL,10
    
                   
    
    MUL quantity
    
    
    mov sum, ax 
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]  
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu  
    
   
   
    
    
    calc15:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,15
    
   
    
    MUL quantity
    
    
    mov sum, ax 
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
        
        
        
        
   calc20:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,20   
    
    
   
    
    MUL quantity
    
    
    mov sum, ax
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
    
    
   
   
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
    
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    
    
   
    MOV order,AL
   
    
    CMP order,1
    JE calc20
    
    
    CMP order,2
    JE calc30
    
    
    CMP order,3
    JE calc20
    
    
    CMP order,4
    JE calc20
    
    
    CMP order,5
    JE calc25
    
    
    CMP order,6
    JE calc30
    
    CMP order,7
    JE TOP
          
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp Return_Menu
    
   
   
   
    calc25:
    

    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,25
    
   
    
    MUL quantity
    
    
    mov sum, ax     
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
    
    
    
    
    
    calc30:
    

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
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu
    
          
    
    
    Desserts:
    
    CALL CLEAR_SCREEN
    
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
    
    
    LEA DX,Choice              
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48 
    
    MOV order,AL
   
    
    CMP order,1
    JE calc30 
    
    CMP order,2
    JE calc25
    
    
    CMP order,3
    JE calc10
    
    
    CMP order,4
    JE calc20
    
    
    CMP order,5
    JE calc15
    
    CMP order,6
    JE TOP
    
         
    LEA DX,invalid
    MOV AH,9
    INT 21H
    jmp Return_Menu
    
   
    
    
    
        
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
    
    
    
    
    
    
    
    try_again:
    
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
    
    LEA DX,tr
    MOV AH,9
    INT 21H
       
    jmp Return_Menu
    
    
   
   
   
   
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
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM 
    
     jmp Return_Menu  
    
    
    
    
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
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
          
          
    
    
    
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
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu 
    
     
  
  
  
  calc16: 
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
   
    
    
    mov quantity,al 
    mov al,16
    
   
    
    MUL quantity    
   
    
    
    mov sum, ax
   mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index] 
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu       
           
           
 
 
 
 
  calc23: 
    
    LEA DX,Quantitynum              
    MOV AH,9
    INT 21H 
 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    mov quantity,al 
    mov al,23
    
   
    
    MUL quantity
    
    
    mov sum, ax     
    mov    bx, [index]
    mov      [intArray+bx], ax 
    inc      [index]
    
    printn '  total price is'
    
    call DISPLAY_NUM  
    
    jmp Return_Menu       
               
    
    
    
    
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
      
    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    HELP:
    
END MAIN