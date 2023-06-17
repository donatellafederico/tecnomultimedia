void dibujaRectangulos (){
 if (mouseX > 400){
 //sobre eje x
  noStroke ();
  fill(retornaColor());
  rectMode (CORNER);
  rect (mouseX, 0, tam1, tam2);
  
 //sobre eje y
  noStroke ();
  fill (retornaColor1());
  rectMode (CORNER);
  rect (400, mouseY, tam2, tam1);
  }
 }
