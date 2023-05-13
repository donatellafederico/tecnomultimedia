// FEDERICO, DONATELLA (legajo 93051/1)
// COMISIÓN 3
// TP 1 

// declaracion con asignacion 
// tipo de dato: string
// espacio en memoria guardamos la cadena de texto "inicio"
String pantalla = "inicio";
int cuentaFotograma = 0;
PImage img;
PImage img1;
PImage img2;
PFont miFuente;


void setup() {
  size (640, 480);
  frameRate (30); //establecemos 30 fotogramas por segundo - (1seg = 30 fotog)
  img = loadImage ("arkamuro.jpg");
  img1 = loadImage ("arkamuro1.jpg");
  img2 = loadImage ("arkamuro2.jpg");
  miFuente = loadFont ("Calibri-Italic-30.vlw");
}
void draw () {
  textFont (miFuente, 30);
  println (frameRate); 
  background (122, 162, 188);
  textSize (20);
  fill (0);
  
  
// pantalla de inicio 
  if (pantalla.equals ("inicio") ) { //equals pregunta si es verdadero o falso
  fill (255);
  ellipse (550, 400, 100, 100); //boton 
  fill (0);
  textAlign (CENTER); //centrar el texto
  textSize (17); // tamaño de letra
  text ("¡COMENZAR!", 550, 407);
  textSize (60);
  text ("TRABAJO PÁCTICO 1", 320, 240);
  } 
// pantalla 1
    else if (pantalla.equals ("pantalla 1") ) { //equals pregunta si es verdadero o falso
    fill (0);
    textAlign (CENTER); //centrar el texto
    textSize (40); // tamaño de letra
    text ("ARKAMURO", 320, cuentaFotograma-30);
    image (img, 120, 200, 420, 260);
    if (cuentaFotograma>=50){
     textSize (20);
     text ("arte", 230, 170);
    }
    if (cuentaFotograma>=70){
      textSize (20);
      text ("electrónico", 297, 170);
    }
    if (cuentaFotograma>=90){
      textSize (20);
      text ("interactivo", 390, 170);
    }
    
    

    
    cuentaFotograma = cuentaFotograma +1; // igual que decir cuentaFotograma++
    if (cuentaFotograma >= 150){   //150 fotogramas = 5 seg
      pantalla = "pantalla 2";
      cuentaFotograma = 0;
    }
 }
// pantalla 2
    else if (pantalla.equals ("pantalla 2") ) { //equals pregunta si es verdadero o falso
    fill (0);
    textAlign (CENTER); //centrar el texto
    textSize (40); // tamaño de letra
    text ("ARKAMURO", 320, 120);
    textSize (20);
    text ("Usina del Arte, Buenos Aires (2018).", cuentaFotograma+170, 150);
    image (img1, 120, 200, 420, 260);
    
   
    
    cuentaFotograma = cuentaFotograma +1; // igual que decir cuentaFotograma++
    if (cuentaFotograma >= 150){   //150 fotogramas = 5 seg
      pantalla = "pantalla 3";
      cuentaFotograma = 0;
    }
  }
// pantalla 3
    else if (pantalla.equals ("pantalla 3") ) { //equals pregunta si es verdadero o falso
    fill (0);
    textAlign (CENTER); //centrar el texto
    textSize (40); // tamaño de letra
    text ("ARKAMURO", 320, 120);
    textSize (20);
    text ("Usina del Arte, Buenos Aires (2018).", 320, 150);
    textSize (20);
    text ("Obra con tecnicas de videomapping.", cuentaFotograma+170, 180);
    image (img2, 120, 200, 420, 260);
    
    cuentaFotograma = cuentaFotograma +1; // igual que decir cuentaFotograma++
    if (cuentaFotograma >= 150){   //150 fotogramas = 5 seg
      pantalla = "pantalla 4";
      cuentaFotograma = 0;
    }
  }
// pantalla 4
    else if (pantalla.equals ("pantalla 4") ) { //equals pregunta si es verdadero o falso
    fill (255);
    ellipse (550, 400, 100, 100); //boton
    fill (0);
    textAlign (CENTER); //centrar el texto
    textSize (60);
    text ("FIN.", 320, 240);
    textSize (18);
    text ("¡VOLVER", 550, 395);
    text ("AL", 550, 410);
    text ("INICIO!", 550, 425);
    }

}
void mousePressed (){
  if (pantalla.equals ("inicio")){
    if (dist (mouseX, mouseY, 550, 400) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
    pantalla = "pantalla 1";
    cuentaFotograma = 0;
    }
  }
  else if (pantalla.equals ("pantalla 1")){
    pantalla = "pantalla 2";
    cuentaFotograma = 0;
  }
  else if (pantalla.equals ("pantalla 2")){
    pantalla = "pantalla 3";
    cuentaFotograma = 0;
  }
  else if (pantalla.equals ("pantalla 3")){
    pantalla = "pantalla 4";
    cuentaFotograma = 0;
  }
  
  else if (pantalla.equals ("pantalla 4")){
    if (dist (mouseX, mouseY, 550, 400) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
    pantalla = "inicio";
    cuentaFotograma = 0;
    }
  }
}
