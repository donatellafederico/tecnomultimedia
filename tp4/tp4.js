// Federico, Donatella
// Legajo: 93051/1
// TP 4 - COMISIÓN 3
//https://youtu.be/J0jC6vcFR18

let img;
var estado = 0;
var x1, y1, radio1, velocidad1; //del objeto que cae
var x2, y2, radio2, velocidad2; //de mi personaje
var recogidas, caidas;

function setup() {
  createCanvas(600, 600);
  img = loadImage ("data/espacio.png");
}

function draw() {
  background (0);
  image (img, 0, 0, 600, 600);
  if (estado == 0){ 
   pantallaInicio ();
      
  } else if (estado == 1) { 
    pantallaJugar ();
            
  }else if (estado == 2) {
    pantallaPerder ();
            
  }else if (estado == 3) {
    pantallaGanar ();
           
  }else if (estado == 4) {
    pantallaCreditos ();    
  }
}
  
function mousePressed (){
  if (estado == 0){ 
    if (dist (mouseX, mouseY, 300, 500) <= 75){
    estado =1;
    }
   
   
   // inicio objeto
   radio1 = 20;
   y1 = -radio1-random(50, 100);
   x1= random( radio1, width-radio1 );
   velocidad1 = 7;
   
   //inicio personaje
   radio2 = 50;
   y2 = height - radio2; // le resto el radio al alto de la pantalla
   x2 = 300;
   velocidad2 = 0
   
   //inicio colisiones
   recogidas= 0;
   caidas = 0;
  
   
  }else  if ( estado==2 ) {    // pantalla pierde
    if (dist (mouseX, mouseY, 150, 450) <= 75){
    estado =0;
   }
    if (dist (mouseX, mouseY, 450, 450) <= 75){
    estado =4;
   }
    
  } else  if ( estado==3 ) {    // pantalla gana
    if (dist (mouseX, mouseY, 150, 450) <= 75){
    estado =0;
   }
    if (dist (mouseX, mouseY, 450, 450) <= 75){
    estado =4;
   }
   
  }else if (estado == 4) {
    if (dist (mouseX, mouseY, 300, 500) <= 75){
    estado =0;
    }
}
}

function keyPressed (){
  if (estado == 1){
    if (keyCode === LEFT_ARROW){
      velocidad2 = -3;
    }
    if (keyCode === RIGHT_ARROW){
      velocidad2 = 3;
    }
  }
}
function keyReleased (){
  // cuando suelto la tecla, la velocidad frena
  if (estado == 1){
    velocidad2 = 0;
  }
}
  
