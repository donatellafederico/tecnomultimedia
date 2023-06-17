// FEDERICO, DONATELLA (legajo 93051/1)
// COMISIÓN 3
// TP 2
//https://www.youtube.com/watch?v=9EM2byY5xvs

PImage img;
int cantidad = 4;
int tam1;
int tam2;
void setup (){
  size (800, 400);
  img = loadImage ("ImagenOptica1.jpg");
  tam1 = 100; 
  tam2 =400;
  

}
void draw (){
  dibujaFondo (183);
  dibujaRectangulos (); 
  float posX=600;
  float incX= 15;  
  for (int i=0; i<=18; i=i+1){
   color from = color  (80, 59, 40);
   color to = color (255, 124, 15);
   float inc = sin (map (i, 0, 18, 0, PI));
   color col = lerpColor (from, to, inc);   //degradé
   stroke (col);
   strokeWeight (8);
   float lado = map (i, 0, 18, 400, 0);
   noFill();
   rectMode (CENTER);
   rect (posX, 200, lado, lado);
   posX= posX-incX;
   incX= incX * 0.6;
   
}
  image (img, 0, 0);

}
