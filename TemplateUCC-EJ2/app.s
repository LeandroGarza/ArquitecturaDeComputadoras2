.globl app
app:
	//---------------- Inicialización GPIO --------------------

	mov w20, PERIPHERAL_BASE + GPIO_BASE     // Dirección de los GPIO.		
	
	// Configurar GPIO 17 como input:
	mov X21,#0
	str w21,[x20,GPIO_GPFSEL1] 		// Coloco 0 en Function Select 1 (base + 4)   	
	
	//---------------- Main code --------------------
	// X0 contiene la dirección base del framebuffer (NO MODIFICAR)
	
	mov w3, 0xDFFF    	// color	
	add x10, x0, 0		// X10 contiene la dirección base del framebuffer
loop2:
	mov x2,512         	// Tamaño en Y
loop1:
	mov x1,512         	// Tamaño en X
loop0:
	sturh w3,[x10]	   	// Setear el color del pixel N
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1	   		// Decrementar el contador X
	cbnz x1,loop0	   	// Si no terminó la fila, saltar
	sub x2,x2,1	   		// Decrementar el contador Y
	cbnz x2,loop1	  	// Si no es la última fila, saltar

	add x10,x0,0		// reiniciar el framebuffer
	mov w3, 0x2FFF		// celeste paliducho
	mov x2,16		// tama;o en y
techo1:
	mov x1,512		// tama;o en x
techo0:
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1	   	// Decrementar el contador X
	cbnz x1,techo0	// Si no terminó la fila, saltar
	sub x2,x2,1	   	// Decrementar el contador Y
	cbnz x2,techo1	// Si no es la última fila, saltar
	
	mov x2,480
paredizq1:
	mov x1,16
paredizq0:
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1	   	// Decrementar el contador X
	cbnz x1,paredizq0	// Si no terminó la fila, saltar
	add x10,x10,992
	sub x2,x2,1	   	// Decrementar el contador Y
	cbnz x2,paredizq1	// Si no es la última fila, saltar
	
	mov x2,16
piso1:
	mov x1,512		// tama;o en x
piso0:
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1	   	// Decrementar el contador X
	cbnz x1,piso0	// Si no terminó la fila, saltar
	sub x2,x2,1	   	// Decrementar el contador Y
	cbnz x2,piso1	// Si no es la última fila, saltar
	
	
	add x10,x0,0
	mov x13,512
	mov x2,496
paredder1:
	mov x1,512
paredder0:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,496	   	
	bne paredder0		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,15		// Incrementar el contador Y
	bne paredder1		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,78
obsh11:
	mov x1,326
obsh10:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,62	   	
	bne obsh10		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,62		// Incrementar el contador Y
	bne obsh11		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,140
obsh21:
	mov x1,388
obsh20:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,186	   	
	bne obsh20		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,124		// Incrementar el contador Y
	bne obsh21		// Si no es la última fila, saltar
	
	add x10,x0,0
	mov x2,202
obsh31:
	mov x1,450
obsh30:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,140	   	
	bne obsh30		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,186		// Incrementar el contador Y
	bne obsh31		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,202
obsh41:
	mov x1,78
obsh40:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,15	   	
	bne obsh40		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,186		// Incrementar el contador Y
	bne obsh41		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,264
obsh51:
	mov x1,264
obsh50:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,140	   	
	bne obsh50		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,248		// Incrementar el contador Y
	bne obsh51		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,326
obsh61:
	mov x1,326
obsh60:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,248	   	
	bne obsh60		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,310		// Incrementar el contador Y
	bne obsh61		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,326
obsh71:
	mov x1,496
obsh70:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,388	   	
	bne obsh70		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,310		// Incrementar el contador Y
	bne obsh71		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,388
obsh81:
	mov x1,202
obsh80:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,78	   	
	bne obsh80		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,372		// Incrementar el contador Y
	bne obsh81		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,388
obsh91:
	mov x1,388
obsh90:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,310	   	
	bne obsh90		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,372		// Incrementar el contador Y
	bne obsh91		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,450
obsh101:
	mov x1,140
obsh100:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,62	   	
	bne obsh100		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,434		// Incrementar el contador Y
	bne obsh101		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,450
obsh111:
	mov x1,450
obsh110:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,186	   	
	bne obsh110		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,434		// Incrementar el contador Y
	bne obsh111		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,140
obsv11:
	mov x1,78
obsv10:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,62	   	
	bne obsv10		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,78		// Incrementar el contador Y
	bne obsv11		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,388
obsv21:
	mov x1,78
obsv20:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,62	   	
	bne obsv20		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,186		// Incrementar el contador Y
	bne obsv21		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,326
obsv31:
	mov x1,140
obsv30:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,124	   	
	bne obsv30		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,78		// Incrementar el contador Y
	bne obsv31		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,434
obsv41:
	mov x1,140
obsv40:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,124	   	
	bne obsv40		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,388		// Incrementar el contador Y
	bne obsv41		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,372
obsv51:
	mov x1,202
obsv50:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,186	   	
	bne obsv50		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,310		// Incrementar el contador Y
	bne obsv51		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,434
obsv61:
	mov x1,264
obsv60:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,248	   	
	bne obsv60		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,326		// Incrementar el contador Y
	bne obsv61		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,310
obsv71:
	mov x1,326
obsv70:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,310	   	
	bne obsv70		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,202		// Incrementar el contador Y
	bne obsv71		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,372
obsv81:
	mov x1,388
obsv80:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,372	   	
	bne obsv80		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,248		// Incrementar el contador Y
	bne obsv81		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,124
obsv91:
	mov x1,388
obsv90:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,372	   	
	bne obsv90		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,15		// Incrementar el contador Y
	bne obsv91		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,264
obsv101:
	mov x1,450
obsv100:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,434	   	
	bne obsv100		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,62		// Incrementar el contador Y
	bne obsv101		// Si no es la última fila, saltar

	add x10,x0,0
	mov x2,496
obsv111:
	mov x1,450
obsv110:
	mul x12,x2,x13
	add x10,x12,x1
	add x10,x10,x10
	add x10,x0,x10
	sturh w3,[x10]
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1		// Incrementar el contador X
	cmp x1,434	   	
	bne obsv110		// Si no terminó la fila, saltar
	sub x2,x2,1
	cmp x2,372		// Incrementar el contador Y
	bne obsv111		// Si no es la última fila, saltar
	b InfLoop


// --- Delay loop ---
	movz x11, 0x10, lsl #16
delay1: 
	sub x11,x11,#1
	cbnz x11, delay1
	// ------------------
		
	bl inputRead		// Leo el GPIO17 y lo guardo en x21
	mov w3, 0x001F    	// 0x001F = AZUL	
	add x10, x0, 0		// X10 contiene la dirección base del framebuffer
	cbz X22, loop2
	mov w3, 0x07E0    	// 0x07E0 = VERDE			
	b loop2
	
	// --- Infinite Loop ---	
InfLoop: 
	b InfLoop
