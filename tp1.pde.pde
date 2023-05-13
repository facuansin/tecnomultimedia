String estado;
int c;
PImage osoPolar;
PImage osoMojado;
PImage osoDormido;
PImage saludoDeOso;
PFont superFuente;
float posX, posY, posX1, posY1, posX2, posY2, posX3, posY3;
float velY, velX, velX1, velX2;
color colorcillo;
color colorillo;


void setup(){
  osoPolar = loadImage("osoPolar.jpg");
  size( 640, 480 );
  textAlign( CENTER, CENTER );
  textSize( 50 );
  fill( 200 );
  estado = "menu";
  
  //asignacion de valores
  posX = 180;
  posY = 0; 
  posX1 = -270;
  posY1 = 370;
  posX2 = 700;
  posY2 = 160;
  posX3 = -140;
  posY3 = 300;
  velY = 1;
  velX = 3;
  velX1 = - 7;
  velX2 = 8;
  colorcillo = color(0, 200, 0);
  colorillo = color(255, 128, 0);
  
  frameRate( 60 );
}

void draw(){
  
  if( estado.equals("menu")){
    float imageX =  width/2 - osoPolar.width/2;
    float imageY = height/2 - osoPolar.height/2;
    image(osoPolar, imageX, imageY);
    fill(0,200,0);                                             // Menu (imagen,texto, etc)
    text( "EMPEZAR", 190, 360);
    fill(0);
    text( "Los Osos Polares", posX, posY);
    fill(colorcillo);
    circle( width/2, height/4*3, 50);
    fill(255);
  

  superFuente = loadFont("isis.vlw");
  textFont(superFuente);                 //fuente
  
     posY = posY + velY;
     
     if( posY >= 160 ){
     velY = 0;
     }
 
  }else if(estado.equals("p1")){
    osoMojado = loadImage("osoMojado.jpg");
    float imageX =  width/2 - osoMojado.width/2;
    float imageY = height/2 - osoMojado.height/2;       // pantalla 1
    image(osoMojado, imageX, imageY);
    text( "Tambien llamado el rey del Artico \n el oso polar puede vivir en los extremos \n frios helados.", posX1, posY1);
    textSize(27);
    
    posX1 = posX1 + velX;
    
    if ( posX1 >= 320){
      velX = 0;
    }
    
    c++;                     //suma 1 frame por segundo
    if(c >= 600){          //60fps*10seg = 600
      estado = "p2";
      c = 0;
    }
    

  }else if( estado.equals("p2")){
    osoDormido = loadImage("osoDormido.jpg");
    float imageX =  width/2 - osoDormido.width/2;
    float imageY = height/2 - osoDormido.height/2;  
    image( osoDormido, imageX, imageY);                        //pantalla 2
    fill(10);
    text("Con su distintivo pelaje blanco y su tamaño imponente, \n  los osos polares son símbolos emblemáticos de la \n vida silvestre ártica.", posX2, posY2);
    textSize(20);
    fill(255);
    text("Su habilidad para cazar en el hielo y nadar largas distancias \n los convierte en depredadores altamente eficientes.", posX3, posY3);
    
    posX2 = posX2 + velX1;
    
    posX3 = posX3 + velX2;
    
    if( posX2 <= 320){
      velX1 = 0;
      
    }
    if( posX3 >= 320){
      velX2 = 0;
    }
    c++;
    if( c >= 1200 ){
      estado = "p3";
      c = 0;
    }
    

  }else if(estado.equals("p3")){
    saludoDeOso = loadImage("saludoDeOso.jpg");                     // pantalla 3
    float imageX =  width/2 - saludoDeOso.width/2;
    float imageY = height/2 - saludoDeOso.height/2;  
    image( saludoDeOso, imageX, imageY);
    fill(colorillo);
    circle( width/2, height/4*3, 50);
    fill(20);
    text("Gracias por ver :)", width/2, height/3.5);
    textSize(22);
    fill(255,128,0);
    text("Volver a empezar", width/2, height/1.5);
  }
  println( estado );
}
void mouseMoved(){
  if(estado.equals("menu")){
    if(dist(width/2, height/4*3, mouseX, mouseY)
    <50/2){
      colorcillo = color(0,150,0);
    }else{
      colorcillo = color(0,200,0);
    }
  }
  if(estado.equals("p3")){
    if(dist(width/2, height/4*3, mouseX, mouseY)
    <50/2){
      colorillo = color(220, 98, 0);
    }else{
      colorillo = color(255,128,0);
      }
    }
}
void mousePressed(){
  if(estado.equals("menu")){
    if( dist(width/2, height/4*3, mouseX, mouseY)      // boton de reinicio de presentacion
    <50/2){
      estado = "p1";
    }
  }
  if( estado.equals("p3")){
    if( dist(width/2, height/4*3, mouseX, mouseY)      // boton de reinicio de presentacion
    <50/2){
    estado = "menu";
    }
  }
}
