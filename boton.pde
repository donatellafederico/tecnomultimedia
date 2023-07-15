void dibujaBotonRectangular(float x, float y, float ancho, float alto, String texto) {
  // Establecer colores para el botón
  color fondo = color(200);
  
  color efectoOver = color(234, 102, 102);

  // Dibujar el fondo del botón
  if ( colisionConBotonRectangular(x, y, ancho, alto) ) {
    fill(efectoOver);
  } else {
    fill(fondo);
  }
  
  rectMode(CENTER);
  rect(x, y, ancho, alto);

  
  fill(0); 
  textAlign(CENTER, CENTER); 
  textSize(16); 
  text(texto, x, y ); 
}


boolean colisionConBotonRectangular (float x, float y, float ancho, float alto ){
  boolean colisiona;
  if ( mouseX>x-ancho/2 && mouseX<x+ancho/2 &&             //  (500- 120/2)     (500 + 120/2)   (500- 80/2)  (500+80/2)     
    mouseY>y-alto/2 && mouseY<y+alto/2 ) {
    colisiona = true;
  } else {
    colisiona = false;
  }
  return colisiona;
}

 
