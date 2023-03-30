;eseguire la somma fra due numeri
;inseriti da programma

.model small    ;dichiarazione delle variabili, dello stack e della grandezza della stessa.
.stack 200h
.data
   n db 3  ;dichiarazione variabili numeriche
   m db 3
  
.code
main:                ;inizio programma, il suo scopo sarà quello di sommare le variabili "n" e "m".
	mov ax, @data    ; i registri utilizzabili per i calcoli sono: registro bx, cx (utilizzo automatico nei cicli ma utilizzabile) e registro accumulatore.
	mov ds, ax
	
	mov al, 00h      ;pulizia variabile, inizializzazione.
	mov al, n        ;sposta in al n (precedentemente pulita),
	add al, m        ; sposta m in al (facendone la somma) e salva in al il risultato.
	
	add al,48		 ;aggiungo ad al 48 (che in ascii è 0) infatti 48 + 6 = 54
	
	mov dl, al
	
	mov ah,02h
	int 21h
	
	mov ah, 4ch
	int 21h

end main

