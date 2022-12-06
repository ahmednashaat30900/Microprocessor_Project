	STACK SEGMENT PARA STACK
	DB 64 DUP (' ')
STACK ENDS

DATA SEGMENT PARA 'DATA'
    TEXT_GAME_OVER_MAIN_MENU DB 'Press E to exit to main menu','$' ;text with the game over main menu message
	TEXT_MAIN_MENU_TITLE DB 'MAIN MENU press 1','$' ;text with the main menu title
	TEXT_MAIN_MENU_SINGLEPLAYER DB 'HELP press 2','$' ;text with the singleplayer message
	TEXT_MAIN_MENU_EXIT DB 'EXIT press 3','$' ;text with the exit game message
DATA ENDS

    CODE SEGMENT PARA 'CODE'

	MAIN PROC FAR
	ASSUME CS:CODE,DS:DATA,SS:STACK      ;assume as code,data and stack segments the respective registers
	PUSH DS                              ;push to the stack the DS segment
	SUB AX,AX                            ;clean the AX register
	PUSH AX                              ;push AX to the stack
	MOV AX,DATA                          ;save on the AX register the contents of the DATA segment
	MOV DS,AX                            ;save on the DS segment the contents of AX
	POP AX                               ;release the top item from the stack to the AX register
	POP AX                               ;release the top item from the stack to the AX register
		
		CALL CLEAR_SCREEN                ;set initial video mode configurations
        SHOW_MAIN_MENU:
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

;       Shows the singleplayer message
MOV AH,02h                       ;set cursor position
MOV BH,00h                       ;set page number
MOV DH,06h                       ;set row
MOV DL,04h                         ;set column
INT 10h

MOV AH,09h                       ;WRITE STRING TO STANDARD OUTPUT
LEA DX,TEXT_MAIN_MENU_SINGLEPLAYER      ;give DX a pointer
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
			JE MAIN
			
			CMP AL,'2'
			JE HELP
			
			CMP AL,'E'
			JE EXIT
			
			JMP MAIN_MENU_WAIT_FOR_KEY	
RET

DRAW_MAIN_MENU ENDP
CLEAR_SCREEN PROC NEAR               ;clear the screen by restarting the video mode
MOV AH,00h                   ;set the configuration to video mode
MOV AL,13h                   ;choose the video mode
INT 10h                         ;execute the configuration
MOV AH,00h                      ;set the configuration
MOV BH,00h                      ;to the background color
MOV BL,00h                      ;choose black as background color
INT 10h                         ;execute the configuration
RET
CLEAR_SCREEN ENDP 

MAIN_MENU:

HELP:

EXIT:
