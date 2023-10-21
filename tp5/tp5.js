// Federico, Donatella
// Legajo: 93051/1
// TP 5 - COMISIÓN 3
//https://youtu.be/t-MkRD-coV4

let objJuego;
let recogidas = 0;
let caidas = 0;
let estado = 0;
function setup() {
  createCanvas(600, 600);
  objJuego = new Juego ();
}


function draw() { 
  objJuego.dibujar();
}

function keyPressed (){
  objJuego.teclaPresionada(keyCode);   //se lo paso al juego y el juego se lo pasa al personaje
}
function keyReleased (){
   objJuego.teclaSoltar();
  
}
function mousePressed (){
  if (estado == 0){ 
    if (dist (mouseX, mouseY, 300, 450) <= 75){
    estado =1;
    }
  } else if (estado == 2){   // pantalla pierde
    if (dist (mouseX, mouseY, 300, 450) <= 75){
    estado =0;
   }
  }else  if ( estado==3 ) {    // pantalla gana
    if (dist (mouseX, mouseY, 300, 450) <= 75){
    estado =0;
   }
  }
  
}
