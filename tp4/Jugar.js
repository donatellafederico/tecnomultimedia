function pantallaJugar (){
  fill (255);
  textSize (20);
  textAlign (LEFT);
  text ("Recogidas: " + recogidas, 10, 20);
  text ("Caidas: " + caidas, 10, 50);
  
  //objeto
  y1 = y1 +  velocidad1; // sumo el valor de la velocidad para que caiga
  if (y1 > height + radio1){   // si llega al final de la pantalla, vuelve arriba
    y1 = -radio1;
    x1 = random( radio1, width-radio1); // ubicacion random desde 20 hasta el final de la pantalla-20
    caidas = caidas + 1;
    if (caidas == 6){  //pierde
      estado = 2;
    }
  }
    
  //personaje
  x2 = x2 + velocidad2; 
  if (x2 < radio2){ //  El borde del personaje va a chocar con el borde de la pantalla porque va a avanzar hasta que el centro del personaje se ubique en 50 del eje x
    x2 = radio2;
  }
  if (x2 > width - radio2){ 
    x2 = width - radio2;   // le resto el radio para que coincida el borde del personaje con el de la pantalla
  }
  
    
    
  if (dist(x2, y2, x1, y1) <= radio1 + radio2){
    y1 = -radio1;
    x1 = random( radio1, width-radio1);
    recogidas = recogidas + 1; 
    if (recogidas == 6){
      estado = 3;      //gana
    }  
}


  dibujaPersonaje();
  dibujaObjeto ();
}  


function dibujaObjeto (){
  push();
  fill (noise (frameCount*0.1)*255, noise (frameCount*0.3)*255, 255 );
  ellipseMode(CENTER);
  ellipse(x1, y1, radio1*2, radio1*2);
  pop();
}

function dibujaPersonaje (){
  push();
  fill (158, 28, 188);
  ellipseMode (CENTER);
  ellipse (x2, y2, radio2*2, radio2*2);
  
  if (recogidas == 1){
    y2= height - radio2 - 10; // para que siga coincidiendo el borde del personaje con el borde de la pantalla
    //amarillo
    fill (255, 245, 41); 
    ellipseMode (CENTER);
    ellipse (x2, y2, 120, 120);
  }
  else if (recogidas == 2){
    y2= height - radio2 - 20;
    //celeste
    fill (52, 223, 255);
    ellipseMode (CENTER);
    ellipse (x2, y2, 140, 140);
  }
  else if (recogidas == 3){
    y2 = height - radio2 - 30;
    //verde
    fill (41, 255, 64);
    ellipseMode (CENTER);
    ellipse (x2, y2, 160, 160);
  }
  else if (recogidas == 4){
    y2 = height - radio2 - 40;
    //rosa
    fill (251, 41, 255);
    ellipseMode (CENTER);
    ellipse (x2, y2, 180, 180);
  }
  else if (recogidas == 5){
    y2 = height - radio2 - 50;
    //naranja
    fill (255, 198, 41);
    ellipseMode (CENTER);
    ellipse (x2, y2, 200, 200);
  }
  
  pop();
}
