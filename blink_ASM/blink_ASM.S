.global setup
.global loop

setup:
sbi 0x04, 5;
ret

loop:
sbi 0x03, 5;
call _delay_ms;
cbi 0x03, 5;
call _delay_ms;
rjmp loop;


_delay_ms:
ldi r16, 255 ;
ldi r17, 255 ;
dey:  nop    ;
dec r16    ;
brne skip  ;
dec r17    ;
skip:  brne dey ;
