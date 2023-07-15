void mousePressed() {
  if ( estado == 0 ) {
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 0 a 1");                          // boton derecho
      estado = 1;
    }
    
    // estado 1
  } else if ( estado == 1 ) {
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 1 a 3");                        // boton derecho
      estado = 3;
    }
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de estado 1 a 2");                        //boton izquierdo
      estado = 2;
    }
    // estado 2
  } else if ( estado==2) {
     if (colisionConBotonRectangular(500, 500, 120, 80)) {
      println("flujo de estado 2 a 15");                       //boton derecho
      estado = 15;
    }
    // estado 3
  } else if ( estado == 3){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 3 a 5");                       //boton derecho
      estado = 5;
    }
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println(" flujo de estado 3 a 4");                       // boton izquierdo
      estado = 4;
    }
    
    // estado 4
  } else if (estado == 4) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 4 a 15");                   //boton derecho
      estado = 15;
    }
    
    // estado 5
  } else if ( estado == 5){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 5 a 8");                        //boton derecho
      estado = 8;
    }
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de 5 a 6");                                // boton izquierdo
      estado = 6;
    }
    // estado 6
  } else if (estado == 6) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 6 a 7");
      estado = 7;
    }
    
    // estado 7
  } else if (estado == 7) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println(" flujo de 7 a 15");
      estado = 15;
    }
    
    // estado 8
  } else if ( estado == 8){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 8 a 11");
      estado = 11;
     }
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de 8 a 9");                              // boton izquierdo
      estado = 9; 
   
    }
    
    // estado 9
  } else if (estado == 9) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 9 a 10");
      estado = 10;
    }
    
    // estado 10
  } else if (estado == 10) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 10 a 15");
      estado = 15;
    }
    
    // estado 11
  } else if ( estado == 11){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 11 a 12");
      estado = 12;
    
    }
    // estado 12
  } else if ( estado == 12){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 12 a 13");
      estado = 13;
    
    }
    // estado 13
  } else if ( estado == 13){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 13 a 15");
      estado = 15;
    
    }
    
    //estado 15 (fin)
  } else if (estado == 15){
    if (dist (mouseX, mouseY, 400, 400) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
    estado = 0;
    }
    if (dist (mouseX, mouseY, 200, 400) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
    estado = 14;
    }
  
  
  
  } else if (estado ==14){
    if (dist (mouseX, mouseY, 300, 400) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
    estado = 15;
    }
    
  }
  
}
