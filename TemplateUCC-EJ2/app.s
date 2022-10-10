.globl app
app:
	//---------------- Inicialización GPIO --------------------

	mov w20, PERIPHERAL_BASE + GPIO_BASE     // Dirección de los GPIO.		
	
	// Configurar GPIO 17 como input:
	mov X21,#0
	str w21,[x20,GPIO_GPFSEL1] 		// Coloco 0 en Function Select 1 (base + 4)   
		
	
	//---------------- Main code --------------------
	// X0 contiene la dirección base del framebuffer (NO MODIFICAR)
	mov X21,#0x240    //en binario, 1100
       str w21,[x20,0] 		// Coloco 1 para los GPIO 2 y 3 en Function Select 0 (base)
       
       mov w21, 0x4
	str w21, [x20, 0x1C] 	// leo X21 y lo guardo en el registro GPIO Pin Output set 0
	mov w3, 0x0000    	// 0x0000 = Negro
	add x10, x0, 0		// X10 contiene la dirección base del framebuffer
	//fondo de laberinto

	mov x2,512         	// Tamaño en Y
inicio1:
	mov x1,512         	// Tamaño en X	
inicio0:
	sturh w3,[x10]	   	// Setear el color del pixel N
	add x10,x10,2	   	// Siguiente pixel
	sub x1,x1,1	   	// Decrementar el contador X
	cbnz x1,inicio0	   	// Si no terminó la fila, volver a pintar
	sub x2,x2,1	   	// Decrementar el contador Y
	cbnz x2,inicio1	  	// Si no es la última fila, saltar

formas:
        
    mov x4, 243         //inicio de la figura, argumento inicio x 4
    mov x6, 62        //argumento inicio y
    mov x7, 64       //argumento final y
    mov x5, 249       // argumento final x
    bl rectangulo          // llama a la funcion que dibuja la figura

    mov x4, 244         //inicio de la figura, argumento inicio x 4
    mov x6, 61        //argumento inicio y
    mov x7, 65       //argumento final y
    mov x5, 248       // argumento final x
    bl rectangulo          // llama a la funcion que dibuja la figura

    mov x4, 245         //inicio de la figura, argumento inicio x 4
    mov x6, 60        //argumento inicio y
    mov x7, 66       //argumento final y
    mov x5, 247       // argumento final x
    bl rectangulo          // llama a la funcion que dibuja la figura
    
	mov x4,50         //inicio de la figura, argumento inicio x 2
	mov x6,100	    //argumento inicio y
	mov x7,240	   //argumento final y
	mov x5,150	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura	
	
	mov x4,180         //inicio de la figura, argumento inicio x 3
	mov x6,120	    //argumento inicio y
	mov x7,270	   //argumento final y
	mov x5,300	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300         //inicio de la figura, argumento inicio x 4
	mov x6,25	    //argumento inicio y
	mov x7,180	   //argumento final y
	mov x5,350	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300         //inicio de la figura, argumento inicio x 4
	mov x6,0	    //argumento inicio y
	mov x7,180	   //argumento final y
	mov x5,320	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,25         //inicio de la figura, argumento inicio x 5
	mov x6,0	    //argumento inicio y
	mov x7,15	   //argumento final y
	mov x5,250	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 6
	mov x6,0	    //argumento inicio y
	mov x7,240	   //argumento final y
	mov x5,25	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	mov x4,25         //inicio de la figura, argumento inicio x 7
	mov x6,260	    //argumento inicio y
	mov x7,320	   //argumento final y
	mov x5,50	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,25         //inicio de la figura, argumento inicio x 8
	mov x6,340	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,80	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,80         //inicio de la figura, argumento inicio x 9
	mov x6,280	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,100	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,110         //inicio de la figura, argumento inicio x 9.2
	mov x6,265	    //argumento inicio y
	mov x7,305	   //argumento final y
	mov x5,200	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,100          //inicio de la figura, argumento inicio x 10
	mov x6,320	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,200	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,240          //inicio de la figura, argumento inicio x 11
	mov x6,180	    //argumento inicio y
	mov x7,360	   //argumento final y
	mov x5,300	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300          //inicio de la figura, argumento inicio x 11 ver
	mov x6,350	    //argumento inicio y
	mov x7,360	   //argumento final y
	mov x5,340	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,310          //inicio de la figura, argumento inicio x 11 ver
	mov x6,330	    //argumento inicio y
	mov x7,340	   //argumento final y
	mov x5,370	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300          //inicio de la figura, argumento inicio x 11 ver
	mov x6,310	    //argumento inicio y
	mov x7,320	   //argumento final y
	mov x5,340	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	//mov x4,300          //inicio de la figura, argumento inicio x 11 ver
	//mov x6,310	    //argumento inicio y
	//mov x7,330	   //argumento final y
	//mov x5,320	   // argumento final x
	//bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	
//-----------------------------------------------------------------------
	mov x4,310          //inicio de la figura, argumento inicio x 11 ver
	mov x6,290	    //argumento inicio y
	mov x7,300	   //argumento final y
	mov x5,370	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura

        mov x4,300          //inicio de la figura, argumento inicio x 11 ver
	mov x6,270	    //argumento inicio y
	mov x7,280	   //argumento final y
	mov x5,340	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	 mov x4,310          //inicio de la figura, argumento inicio x 11 ver
	mov x6,250	    //argumento inicio y
	mov x7,260	   //argumento final y
	mov x5,370	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
//---------------------------------------------------------------------	

         mov x4,350          //inicio de la figura, argumento inicio x 12
	mov x6,360	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,355	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura	
	
	
	mov x4,200          //inicio de la figura, argumento inicio x 12
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,300	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,380         //inicio de la figura, argumento inicio x 13
	mov x6,0	    //argumento inicio y
	mov x7,180	   //argumento final y
	mov x5,405	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	mov x4,420         //inicio de la figura, argumento inicio x 14
	mov x6,20	    //argumento inicio y
	mov x7,256	   //argumento final y
	mov x5,512	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,420         //inicio de la figura, argumento inicio x 15
	mov x6,256	    //argumento inicio y
	mov x7,380	   //argumento final y
	mov x5,470	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	mov x4,420         //inicio de la figura, argumento inicio x 16
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,470	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,505         //inicio de la figura, argumento inicio x 16.2
	mov x6,256	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,512	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300         //inicio de la figura, argumento inicio x 17
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,350	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,350         //inicio de la figura, argumento inicio x 18
	mov x6,190	    //argumento inicio y
	mov x7,370	   //argumento final y
	mov x5,380	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 19
	mov x6,0	    //argumento inicio y
	mov x7,2	   //argumento final y
	mov x5,512	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 20
	mov x6,240	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,5	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 21
	mov x6,507	    //argumento inicio y
	mov x7,512	   //argumento final y
	mov x5,512	   // argumento final x
	bl rectangulo	  // llama a la funcion que dibuja la figura

	mov x4 ,508
	mov x6 ,0
	mov x7,20
	mov x5, 512
	bl rectangulo1
	
	//mov x4,300          //inicio de la figura, argumento inicio x 11 ver
	//mov x6,310	    //argumento inicio y
	//mov x7,330	   //argumento final y
	//mov x5,320	   // argumento final x
	//bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	
//-----------------------------------------------------------------------
	mov x4,310          //inicio de la figura, argumento inicio x 11 ver
	mov x5,370	   // argumento final x
	mov x6,290	    //argumento inicio y
	mov x7,300	   //argumento final y
	bl rectangulo	  // llama a la funcion que dibuja la figura

        mov x4,300          //inicio de la figura, argumento inicio x 11 ver
        mov x5,340	   // argumento final x
	mov x6,270	    //argumento inicio y
	mov x7,280	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	 mov x4,310          //inicio de la figura, argumento inicio x 11 ver
	 mov x5,370	   // argumento final x
	mov x6,250	    //argumento inicio y
	mov x7,260	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
//---------------------------------------------------------------------	

         mov x4,350          //inicio de la figura, argumento inicio x 12
         mov x5,355	   // argumento final x
	mov x6,360	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura	
	
	
	mov x4,200          //inicio de la figura, argumento inicio x 12
	mov x5,300	   // argumento final x
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,380         //inicio de la figura, argumento inicio x 13
	mov x5,405	   // argumento final x
	mov x6,0	    //argumento inicio y
	mov x7,180	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	


	
	
	mov x4,420         //inicio de la figura, argumento inicio x 14
	mov x5,512	   // argumento final x
	mov x6,20	    //argumento inicio y
	mov x7,256	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,420         //inicio de la figura, argumento inicio x 15
	mov x5,470	   // argumento final x
	mov x6,256	    //argumento inicio y
	mov x7,380	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	
	mov x4,420         //inicio de la figura, argumento inicio x 16
	mov x5,470	   // argumento final x
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,505         //inicio de la figura, argumento inicio x 16.2
	mov x5,512	   // argumento final x
	mov x6,256	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,300         //inicio de la figura, argumento inicio x 17
	mov x5,350	   // argumento final x
	mov x6,390	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,350         //inicio de la figura, argumento inicio x 18
	mov x5,380	   // argumento final x
	mov x6,190	    //argumento inicio y
	mov x7,370	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 19
	mov x5,512	   // argumento final x
	mov x6,0	    //argumento inicio y
	mov x7,2	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 20
	mov x5,5	   // argumento final x
	mov x6,240	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura
	
	mov x4,0         //inicio de la figura, argumento inicio x 21
	mov x5,512	   // argumento final x
	mov x6,507	    //argumento inicio y
	mov x7,512	   //argumento final y
	
	bl rectangulo	  // llama a la funcion que dibuja la figura

	mov x4 ,508
	mov x5, 512
	mov x6 ,0
	mov x7,20
	
	bl rectangulo1
	
	//mov x4 ,300
	//mov x6 ,390
	//mov x7,512
	//mov x5, 350
	//bl rectangulo1
	
	//mov x4 ,325
	//mov x6 ,390
	//mov x7,391
	//mov x5, 326
	//bl triangulo
	
	mov x4 ,370
	mov x5,390
	mov x6,400
	mov x7 ,430
	bl rectangulo
	
	mov x4 ,380  // primer punto de arriba del triangulo
	mov x5,381
	mov x6,400
	mov x7 ,401
	bl triangulo
	
	mov x4 ,379  // segundo punto de  del triangulo ala izq
	mov x5,380
	mov x6,401
	mov x7 ,402
	bl triangulo
	
	mov x4 ,381  // segun punto de  del triangulo ala der
	mov x5,382
	mov x6,401
	mov x7 ,402
	bl triangulo
	
	mov x4 ,378  // tercer punto de  del triangulo ala izq
	mov x5,379
	mov x6,402
	mov x7 ,403
	bl triangulo
	
	mov x4 ,382  // tercer punto de  del triangulo ala der
	mov x5,383
	mov x6,402
	mov x7 ,403
	bl triangulo
	
	mov x4 ,377  // cuart punto de  del triangulo ala izq
	mov x5,378
	mov x6,403
	mov x7 ,404
	bl triangulo
	
	mov x4 ,383  // cuart punto de  del triangulo ala der
	mov x5,384
	mov x6,403
	mov x7 ,404
	bl triangulo
	
	mov x4 ,376  // cuart punto de  del triangulo ala izq
	mov x5,377
	mov x6,404
	mov x7 ,405
	bl triangulo
	
	mov x4 ,384  // cuart punto de  del triangulo ala der
	mov x5,385
	mov x6,404
	mov x7 ,405
	bl triangulo
	
	mov x4 ,375 // cuart punto de  del triangulo ala izq
	mov x5,376
	mov x6,405
	mov x7 ,406
	bl triangulo
	
	mov x4 ,385  // cuart punto de  del triangulo ala der
	mov x5,386
	mov x6,405
	mov x7 ,406
	bl triangulo
	
	mov x4 ,374 // cuart punto de  del triangulo ala izq
	mov x5,375
	mov x6,406
	mov x7 ,407
	bl triangulo
	
	mov x4 ,386  // cuart punto de  del triangulo ala der
	mov x5,387
	mov x6,406
	mov x7 ,407
	bl triangulo
	
	mov x4 ,373 // cuart punto de  del triangulo ala izq
	mov x5,374
	mov x6,407
	mov x7 ,408
	bl triangulo
	
	mov x4 ,387  // cuart punto de  del triangulo ala der
	mov x5,388
	mov x6,407
	mov x7 ,408
	bl triangulo
	
	mov x4 ,372 // cuart punto de  del triangulo ala izq
	mov x5,373
	mov x6,408
	mov x7 ,409
	bl triangulo
	
	mov x4 ,388  // cuart punto de  del triangulo ala der
	mov x5,389
	mov x6,408
	mov x7 ,409
	bl triangulo
	
	
	mov x4 ,371 // cuart punto de  del triangulo ala izq
	mov x5,372
	mov x6,409
	mov x7 ,410
	bl triangulo
	
	mov x4 ,389  // cuart punto de  del triangulo ala der
	mov x5,390
	mov x6,409
	mov x7 ,410
	bl triangulo
	
	mov x4 ,370 // cuart punto de  del triangulo ala izq
	mov x5,371
	mov x6,410
	mov x7 ,411
	bl triangulo
	
	mov x4 ,390  // cuart punto de  del triangulo ala der
	mov x5,391
	mov x6,410
	mov x7 ,411
	bl triangulo
	
	
	//------------------base del triangulo-----------
	mov x4 ,370  
	mov x5,391
	mov x6,410
	mov x7 ,411
	bl triangulo
	
	
	//cuadrado sobrante de amarillo
	mov x4 ,370  
	mov x5,391
	mov x6,411
	mov x7 ,430
	bl triangulo
	
	
	// ahora pinto por columnas, sobre las diagonales del triangulo
	
	mov x4 ,370 // cuart punto de  del triangulo ala izq
	mov x5,371
	mov x6,400
	mov x7 ,410
	bl triangulo
	
	mov x4 ,390  // cuart punto de  del triangulo ala der
	mov x5,391
	mov x6,400
	mov x7 ,410
        bl triangulo
	
	mov x4 ,371 // cuart punto de  del triangulo ala izq
	mov x5,372
	mov x6,400
	mov x7 ,409
	bl triangulo
	
	mov x4 ,389  // cuart punto de  del triangulo ala der
	mov x5,390
	mov x6,400
	mov x7 ,409
	bl triangulo
	
	mov x4 ,372 // cuart punto de  del triangulo ala izq
	mov x5,373
	mov x6,400
	mov x7 ,408
	bl triangulo
	
	mov x4 ,388  // cuart punto de  del triangulo ala der
	mov x5,389
	mov x6,400
	mov x7 ,408
	bl triangulo
	
	
	mov x4 ,373 // cuart punto de  del triangulo ala izq
	mov x5,374
	mov x6,400
	mov x7 ,407
	bl triangulo
	
	mov x4 ,387  // cuart punto de  del triangulo ala der
	mov x5,388
	mov x6,400
	mov x7 ,407
	bl triangulo
	
	mov x4 ,374 // cuart punto de  del triangulo ala izq
	mov x5,375
	mov x6,400
	mov x7 ,406
	bl triangulo
	
	mov x4 ,386  // cuart punto de  del triangulo ala der
	mov x5,387
	mov x6,400
	mov x7 ,406
	bl triangulo
	
	mov x4 ,375 // cuart punto de  del triangulo ala izq
	mov x5,376
	mov x6,400
	mov x7 ,405
	bl triangulo
	
	mov x4 ,385  // cuart punto de  del triangulo ala der
	mov x5,386
	mov x6,400
	mov x7 ,405
	bl triangulo
	
	mov x4 ,376 // cuart punto de  del triangulo ala izq
	mov x5,377
	mov x6,400
	mov x7 ,404
	bl triangulo
	
	mov x4 ,384  // cuart punto de  del triangulo ala der
	mov x5,385
	mov x6,400
	mov x7 ,404
	bl triangulo
	
	mov x4 ,377 // cuart punto de  del triangulo ala izq
	mov x5,378
	mov x6,400
	mov x7 ,403
	bl triangulo
	
	mov x4 ,383  // cuart punto de  del triangulo ala der
	mov x5,384
	mov x6,400
	mov x7 ,403
	bl triangulo
	
	mov x4 ,378 // cuart punto de  del triangulo ala izq
	mov x5,379
	mov x6,400
	mov x7 ,402
	bl triangulo
	
	mov x4 ,382  // cuart punto de  del triangulo ala der
	mov x5,383
	mov x6,400
	mov x7 ,402
	bl triangulo
	
	
	mov x4 ,379 // cuart punto de  del triangulo ala izq
	mov x5,380
	mov x6,400
	mov x7 ,401
	bl triangulo
	
	mov x4 ,381  // cuart punto de  del triangulo ala der
	mov x5,382
	mov x6,400
	mov x7 ,401
	bl triangulo
	
	
	
	
	
	
	
	
//------------------------------------------------------------------------
	jugador1:
	mov w3, 0xF800   	// color de jugador
	mov x8,15		//posicion en x del jugador ini
	mov x9,500             // posicion en y del jugador	ini
jugador:
	add x10, x0, 0		// X10 contiene la dirección base del framebuffer
	mov x16,1024       //avanzo en las filas
	mov x17,2          //avanzo en las columnas
	mul x19,x9,x16      // multiplica registro x14, con x9, del eje y del jugador con las  filas, pone en la fila que quiero 
	mul x14,x8,x17     //  multiplica registro x15, con x8, del eje x del jugador con las  columnas, pone en la columna q quiero
	add x19,x19,x14	   // sumo el offset
	add x10,x10,x19    // offset ajustado
	add x14,x5,0      //contador y

loop0:
//la mascara  del and lo que hace en el caso de tener un valor grande, un bit arriba de todo, le paso la mascara del valor que le quiero pasar, si no esta ese valor, se queda con el original o 0, si esta borra los bits y se queda con el valor que se le pasa 

	sturh w3,[x10]	   	// Setear el color del pixel N
	bl inputRead       //hago lectura de los botones, se guarda en x22 y viene devuelta
	and w23,w22,#0x20000  //hace la mascara para ver si este valor esta en w22 y lo guardo en w23 
	cmp w23,#0x20000   //compara si el boton de abajo gpio17 esta apretado  
	b.eq abajo	   // de ser asi voy a la funcion de mover abajo
	and w23,w22,#0x4000  //hace la mascara para ver si este valor esta en w22 y lo guardo en w23 
	cmp w23,#0x4000   //compara si el boton de arriba gpio14 esta apretado  
	b.eq arriba	   //de ser asi voy a la funcion de mover arriba
	and w23,w22,#0x40000 //hace la mascara para ver si este valor esta en w22 y lo guardo en w23 
	cmp w23,#0x40000   //compara si el boton de izquierda gpio18 esta apretado  
	b.eq izquierda	   // de ser asi voy a la funcion de mover izquierda
	and w23,w22,#0x8000  //hace la mascara para ver si este valor esta en w22 y lo guardo en w23 
	cmp w23,#0x8000   //compara si el boton de izquierda gpio18 esta apretado
	b.eq derecha	   // de ser asi voy a la funcion de mover derecha
	b delay2      
	
//------------------------------------------------------------------	
	
abajo:

// esta implementacion se basa en que al no poder pasar offsets tan grandes, debo calcular el mismo, corroborando hacia donde me quiero desplazar y haciendo el control de colision

    
        add x25,x0,0	    //x23 contiene la dirección base del framebuffer
	mov x16,512       // almaceno 1024
	mov x17,2          // almaceno 2
	add x24,x9,5	    // en x24 guardo a donde quiere ir, esto es y
	mul x19,x24,x16      // pone en la fila que quiero ,eje y * 512
	add x19,x19,x8       // y *512 +x 
	mul x19,x19,x17    // 2*[x+[y*512]]
	add x25,x25,x19    // sumo la direccion de inicio del fb =Direccion inicio+2*[x+[y*512]]
	ldurh w19,[x25]  //cargo cual va a ser el valor al que iria a saltar
	mov w25,#0xFFE0  // guardo en w25 el valor de las paredes
	cmp w25,w19      // comparo el registro w25 que tiene el color de la pared con el w19 que es el registro al que iria a saltar
	beq delay2    //si cuando el registro q cargo es igual al de la pared entonces no salto
	mov w29,#0x0000
        sturh w29,[x10]
	add x9,x9,5  // mueve el eje x del jugador abajo
	b delay2
	


       
arriba:
       
        add x25,x0,0	    //x23 contiene la dirección base del framebuffer
	mov x16,512       // almaceno 1024
	mov x17,2          // almaceno 2
	sub x24,x9,5	    // en x24 guardo a donde quiere ir, esto es y
	mul x19,x24,x16      // pone en la fila que quiero ,eje y * 512
	add x19,x19,x8       // y *512 +x 
	mul x19,x19,x17    // 2*[x+[y*512]]
	add x25,x25,x19    // sumo la direccion de inicio del fb =Direccion inicio+2*[x+[y*512]]
	ldurh w19,[x25]  //cargo cual va a ser el valor al que iria a saltar
	mov w25,#0xFFE0  // guardo en w25 el valor de las paredes
	cmp w25,w19      // comparo el registro w25 que tiene el color de la pared con el w19 que es el registro al que iria a saltar
	beq delay2    //si cuando el registro q cargo es igual al de la pared entonces no salto
	mov w29,#0x0000
        sturh w29,[x10]
	sub x9,x9,5  // mueve el eje x del jugador abajo
	b delay2
derecha:
        ldurh w4,[x10,#10]
        mov w19,#0xFFE0
        cmp w4,w19 
        beq delay2
        mov w29,#0x0000
        sturh w29,[x10]//borro rastro una vez que se mueve	
	add x8,x8,5   // mover el jugador hacia la derecha
	mov w28,#0x07E0
	cmp w4,w28
	beq ledverde
	b delay2
izquierda:
       
        ldurh w4,[x10,#-10]
        mov w19,#0xFFE0
        cmp w4,w19    
        beq delay2
        mov w29,#0x0000
        sturh w29,[x10]
	sub x8,x8,5  // mover el jugador hacia la izquierda
	b delay2
	
ledverde:
	mov w21, 0x4
	str w21, [x20, 0x28] 	
	b  ganador
	
ganador:
mov x4,0
mov x5,512
mov x6,0
mov x7,512
bl rectangulo1	
b inf 
inf:
b inf
//------------------------------------------------------------------
  triangulo:
  vueltaaa2:
	mov w8,0x0000        //seteo color de rectangulo, negro
	add x10,x0,0	    // X10 contiene la dirección base del framebuffer
	mov x16,1024       //almaceno en x16, corresponde a avanzar entre filas, 512*2 de la formula
	mov x17,2          //almaceno en x17, corresponde a avanzar entre columnas
	mul x9,x6,x16      // multiplica registro x16, con x5, del eje y del jugador con las filas 
	mul x14,x4,x17     //multiplica registro x17, con x4, del eje x del rectangulo con las columnas 
	add x9,x9,x14	   // sumo el offset
	add x10,x10,x9    
	add x14,x6,0      //cont y
vueltaaa1:
	add x9,x4,0    //cont x
vueltaaa0:
	sturh w8,[x10]	   	// Setear el color del pixel N
	add x10,x10,2	   	// Siguiente pixel
	add x9,x9,1	   	// Aumentar el contador X
	cmp x9,x5               //comparo con el final de x
	b.ne vuelta0		// Si no terminó la fila de la figura, volver a pintar
	add x14,x14,1	   	// Aumentar el contador Y
	sub x15,x5,x4		//resto el final de x con el inicial
	mul x15,x15,x17	//multiplica por 2 para ajustar por pixeles
	sub x15,x16,x15	//renauda en la siguiente fila desde donde pinto la anterior
	add x10,x10,x15     //suma la distancia para dibujar correctamente
	cmp x14,x7
	b.ne vuelta1	  	// Si no es la última fila, saltar
	
	 br x30 		
  
  
  
//------------------------------------------------------------------  
   rectangulo1:
    
    
vueltaa2:
	mov w8,0x07E0        //seteo color de rectangulo, verde
	add x10,x0,0	    // X10 contiene la dirección base del framebuffer
	mov x16,1024       //almaceno en x16, corresponde a avanzar entre filas
	mov x17,2          //almaceno en x17, corresponde a avanzar entre columnas
	mul x9,x6,x16      // multiplica registro x16, con x5, del eje y del jugador con las filas 
	mul x14,x4,x17     //multiplica registro x17, con x4, del eje x del rectangulo con las columnas 
	add x9,x9,x14	   // sumo el offset
	add x10,x10,x9    // offset ajustado
	add x14,x6,0      //contador y
vueltaa1:
	add x9,x4,0    //contador x
vueltaa0:
	sturh w8,[x10]	   	// Setear el color del pixel N
	add x10,x10,2	   	// Siguiente pixel
	add x9,x9,1	   	// Aumentar el contador X
	cmp x9,x5               //comparo con el final de x
	b.ne vuelta0		// Si no terminó la fila de la figura, volver a pintar
	add x14,x14,1	   	// Aumentar el contador Y
	sub x15,x5,x4		//resto el final de x con el inicial
	mul x15,x15,x17	//multiplica por 2 para ajustar por pixeles
	sub x15,x16,x15	//renauda en la siguiente fila desde donde pinto la anterior
	add x10,x10,x15     //suma la distancia para dibujar correctamente
	cmp x14,x7
	b.ne vuelta1	  	// Si no es la última fila, saltar
	
	 br x30 		//Vuelvo a la instruccion link
	 
//-----------------------------------------------------------------------------------------------------------------------------    
 
rectangulo:
    
   
vuelta2:
	mov w8,0xFFE0        //seteo color de rectangulo, amarillo
	add x10,x0,0	    // X10 contiene la dirección base del framebuffer
	mov x16,1024       //almaceno en x16, corresponde a avanzar entre filas
	mov x17,2          //almaceno en x17, corresponde a avanzar entre columnas
	mul x9,x6,x16      // multiplica registro x16, con x5, del eje y del jugador con las filas 
	mul x14,x4,x17     //multiplica registro x17, con x4, del eje x del rectangulo con las columnas 
	add x9,x9,x14	   // sumo el offset
	add x10,x10,x9    // offset ajustado
	add x14,x6,0      //contador y
vuelta1:
	add x9,x4,0    //contador x
vuelta0:
	sturh w8,[x10]	   	// Setear el color del pixel N
	add x10,x10,2	   	// Siguiente pixel
	add x9,x9,1	   	// Aumentar el contador X
	cmp x9,x5               //comparo con el final de x
	b.ne vuelta0		// Si no terminó la fila de la figura, volver a pintar
	add x14,x14,1	   	// Aumentar el contador Y
	sub x15,x5,x4		//resto el final de x con el inicial
	mul x15,x15,x17	//multiplica por 2 para ajustar por pixeles
	sub x15,x16,x15	//renauda en la siguiente fila desde donde pinto la anterior
	add x10,x10,x15     //suma la distancia para dibujar correctamente
	cmp x14,x7
	b.ne vuelta1	  	// Si no es la última fila, saltar
	
	 br x30 		//Vuelvo a la instruccion link
	
//---------------------------------------------------------------------------------------------------------

	

			
delay2:
	
	// --- Delay loop ---
	movz x11, 0x10, lsl #16
delay1: 
	sub x11,x11,#1
	cbnz x11, delay1
	// ------------------
				
	b jugador    //vuelve a dibujar el jugador solamente
	
