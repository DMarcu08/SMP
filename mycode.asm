
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   


mov ax,0600h
mov bh,07
mov cx,1111
mov dx,184fh
int 10h
mov ah,00
mov al,13h
int 10h
   
mov ah, 02
mov dl, 07h ;07h valoarea care produce beep-ul
int 21h ;se produce sunetul
int 21h 

;tavan
mov cx,130 ; incepe linia la coloana 130
mov dx,75  ; linia 75 
tavan:mov ah,0ch
mov al,07h 
int 10h

inc cx
cmp cx,216 ; deseneaza pana la coloana 216
jnz tavan

;podea

mov cx,130
mov dx,125
podea: mov ah,0ch ;Operatii repetitive
mov al,07h
int 10h
inc cx
cmp cx,216
jnz podea

;perete stanga

mov cx,130
mov dx,75
pereteS:mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,125
jnz pereteS   

mov cx,216
mov dx,75
pereteD: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,126
jnz pereteD 

mov cx,130
mov dx,75
acoperisS:mov ah,0ch
mov al,07h
int 10h
inc cx
dec dx
cmp cx,173
cmp dx,32
jnz acoperisS

mov cx,173
mov dx,32
acoperisD: mov ah,0ch
mov al,07h
int 10h
inc cx
inc dx
cmp cx,216
cmp dx,75
jnz acoperisD 

mov cx,164
mov dx,125
usaS:mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,100
jnz usaS

mov cx,182
mov dx,125
usaD:mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,100
jnz usaD


mov cx,164
mov dx,100
usaSus:mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,183
jnz usaSus


mov cx,140
mov dx,85
zabreleS:mov ah,0ch
mov al,10
int 10h
inc dx
cmp dx,110
jnz zabreleS
 
mov ah, 02
mov dl, 07h
int 21h 
mov cx,149
mov dx,85
zabreleD:mov ah,0ch
mov al,10
int 10h
inc dx
cmp dx,110
jnz zabreleD

mov ah, 02
mov dl, 07h
int 21h 
mov cx,136
mov dx,105
zabreleO: mov ah,0ch
mov al,10
int 10h
inc cx
cmp cx,156
jnz zabreleO

mov ah, 02
mov dl, 07h
int 21h 
mov cx,136
mov dx,90
zabreleOGS: mov ah,0ch
mov al,10
int 10h
inc cx
cmp cx,156   
jnz zabreleOGS  


;Casa este gata

mov ah, 02
mov dl, 07h
int 21h 
int 21h 
int 21h
int 21h ;Alarma, a evadat detinutul 
int 21h 
int 21h
int 21h

;Apare politistul     
mov cx,100
mov dx,100
politist:mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,125
jnz politist 

mov cx,97 
mov dx,100  
capj:mov ah,0ch
mov al,07h 
int 10h
inc cx
cmp cx,103 
jnz capj 

mov cx,97 
mov dx,90  
caps:mov ah,0ch ;Cap patrat
mov al,07h 
int 10h
inc cx
cmp cx,103 
jnz caps 

mov cx,97
mov dx,90
capStanga:mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,100
jnz capStanga 
             
mov cx,103
mov dx,90
capDreapta:mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,100
jnz capDreapta 


mov cx,100
mov dx,125
piciorD:mov ah,0ch
mov al,07h
int 10h
inc cx
inc dx
cmp cx,97
cmp dx,129
jnz piciorD 

mov cx,96
mov dx,129
piciorS:mov ah,0ch
mov al,07h
int 10h
inc cx
dec dx
cmp cx,100
cmp dx,125
jnz piciorS


mov cx,100
mov dx,110
manaD:mov ah,0ch
mov al,07h
int 10h
inc cx
inc dx
cmp cx,97
cmp dx,119
jnz manaD 

mov cx,90
mov dx,119
manaS:mov ah,0ch
mov al,07h
int 10h
inc cx
dec dx
cmp cx,100
cmp dx,109
jnz manaS

mov cx,109
mov dx,100
baston:mov ah,0ch  ; se creaza bastonul
mov al,07h
int 10h
inc dx
cmp dx,119
jnz baston              
                       
ret




