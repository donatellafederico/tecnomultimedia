// Federico, Donatella
// Legajo: 93051/1
// TP 3 - COMISIÓN 3
// Los botones del lado derecho ("CLÁSICO") llevan a la historia tradicional. El resto son variaciones con finales alternativos ("VARIACIÓN").
// https://www.youtube.com/watch?v=mQ7Os1XzqhA



PImage [] fotos;
String [] textos;
int estado;
int imagenes = 14;

void setup (){
  size (600, 600);
  fotos = new PImage [20];
   fotos[0]= loadImage ("espejo.jpg");
   fotos[1]= loadImage ("cazador.jpg");
   fotos[2]= loadImage ("cazador.mata.jpg");
   fotos[3]= loadImage ("cazador.advierte.jpg");
   fotos[4]= loadImage ("perdida.jpg");
   fotos[5]= loadImage ("casa.enanitos.jpg");
   fotos[6]= loadImage ("segunda.orden.jpg");
   fotos[7]= loadImage ("cazador.enamorado.jpg");
   fotos[8]= loadImage ("reina.anciana.jpg");
   fotos[9]= loadImage ("se.apiada.jpg");
   fotos[10]= loadImage ("reina.muere.jpg");
   fotos[11]= loadImage ("blanc.muere.jpg");
   fotos[12]= loadImage ("beso.jpg");
   fotos[13]= loadImage ("despierta.jpg");
   
   
  textos = new String[20];
  textos[0] = "La reina malvada, madrastra de Blancanieves, le pregunta a su espejo mágico: ¿quién es la más bella del reino? El espejo responde: Blancanieves";
  textos[1] = "Descontenta con la respuesta, la reina da la orden al cazador de capturar a Blancanieves, llevarla al bosque y asesinarla";
  textos[2] = "El cazador mata a Blancanieves";
  
  textos[3] = "Al ver la bondad de Blancanieves, el cazador se arrepiente y le advierte que no vuelva al castillo";
  textos[4] = "Blancanieves se pierde en el bosque y es encontrada por la reina malvada, quien la asesina";
  
  textos[5] = "Blancanieves, perdida en el bosque, llega a la pequeña casa de los 7 enanitos";
  textos[6] = "La reina vuelve a dar la orden a otro cazador para matarla";
  textos[7] = "El cazador se enamora de Blancanieves y mata a la reina";
  
  textos[8] = "La reina se convierte en anciana y va a buscar a Blancanieves para matarla";
  textos[9] = "Blancanieves se da cuenta que es la reina e intercambia las manzanas envenenadas";
  textos[10] = "La reina muere envenenada";
  
  textos[11] = "Le ofrece una manzana, la cual esta envenenada y Blancanieves muere";
  textos[12] = "El príncipe besa a Blancanieves"; 
  textos[13] = "El beso del príncipe despierta a Blancanieves";
  }
  
  void draw() {
  if ( estado == 0 ) {
    dibujaPantalla ( fotos[0], textos[0] );
     dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
     
  } else  if ( estado == 1 ) {
    dibujaPantalla( fotos[1], textos[1] );
    dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
    dibujaBotonRectangular( 100, 500, 120, 80, "VARIACIÓN");
    
  } else  if ( estado == 2 ) {
    dibujaPantalla( fotos[2], textos[2] );
    dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
  }
    else if (estado==3){
      dibujaPantalla (fotos[3], textos[3]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
      dibujaBotonRectangular( 100, 500, 120, 80, "VARIACIÓN");
    }
    else if (estado==4){
      dibujaPantalla (fotos[4], textos[4]);
      dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
      
    }
    else if (estado==5){
      dibujaPantalla (fotos[5], textos[5]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
      dibujaBotonRectangular( 100, 500, 120, 80, "VARIACIÓN");
    }
    else if (estado==6){
      dibujaPantalla (fotos[6], textos[6]);
      dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
      
    }
    else if (estado==7){
      dibujaPantalla (fotos[7], textos[7]);
      dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
      
    }
    else if (estado==8){
      dibujaPantalla (fotos[8], textos[8]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
      dibujaBotonRectangular( 100, 500, 120, 80, "VARIACIÓN");
    }
    else if (estado==9){
      dibujaPantalla (fotos[9], textos[9]);
      dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
      
    }
    else if (estado==10){
      dibujaPantalla (fotos[10], textos[10]);
      dibujaBotonRectangular( 500, 500, 120, 80, "VARIACIÓN");
      
    }
    else if (estado==11){
      dibujaPantalla (fotos[11], textos[11]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
      
    }
    else if (estado==12){
      dibujaPantalla (fotos[12], textos[12]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
      
    }
    
    else if (estado==13){
      dibujaPantalla (fotos[13], textos[13]);
      dibujaBotonRectangular( 500, 500, 120, 80, "CLÁSICO");
     
    }
    else if (estado==14){
      push();
      background (255);
      fill (234, 102, 102);
      ellipse (300, 400, 100, 100);
      fill (0);
      textSize (40);
      textAlign (CENTER, CENTER);
      text ("CRÉDITOS", 300, 90);
      textSize (18);
      text ("Autor: Hermanos Grimm", 300, 150);
      text ("Directora: Federico, Donatella", 300, 200);
      text ("Artista: Federico, Donatella", 300, 250);
      text ("Programadora: Federico, Donatella", 300, 300);
      text ("VOLVER", 300, 400);
      pop();
    }
    else if (estado == 15){
      push();
      background (255);
      fill (234, 102, 102);
      ellipse (400, 400, 100, 100); //boton volver
      ellipse (200, 400, 100, 100);
      fill (0);
      textAlign (CENTER); //centrar el texto
      textSize (60);
      text ("FIN.", 300, 240);
      textSize (18);
      text ("¡VOLVER", 400, 395);
      text ("AL", 400, 410);
      text ("INICIO!", 400, 425);
      text ("CRÉDITOS", 200, 410);
      pop();
    }
  }
