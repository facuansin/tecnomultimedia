PImage d;
int cant= 800;
int tam;
color colorcillo;
color colorillo;
color colorin;
boolean barraApretada = false;


void setup() {
 size (800, 400);
 d = loadImage("d.jpeg");
 d.resize(400, 400);
 
 colorin = color(0);
 colorcillo = color(0);
 colorillo = color(255);
}

void draw() {
  translate(400, 0);
  background(colorin);
    if(mousePressed == true) {                          //si mantenes apretado y moves el mouse, cambia de color
    fill(colorillo);
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0 ,255);
    background(mx, 0, my);
    colorcillo = color(mx, 0, my);
   
  }else{
    background(colorin);
    colorcillo = colorin;
  }
  
  
  
  fill(colorillo);
  
  for(int x= 10; x< cant; x+=20){
    rect(x, 0, 10, 100);
  }
   for(int x= -20; x< cant; x+=20){
    rect(x, 100 , 10, 100);                            //rectas del fondo
  }
    for(int x= 10; x< cant; x+=20){
    rect(x, 200, 10, 100);
    
  }
    for(int x= -20; x< cant; x+=20){
    rect(x, 300 , 10, 100);
  }
  
  fill(255);
  
  /*  for(int x= -280; x< cant; x+=140){
    for(int y= -280; y< cant; y+=140){
       rombo(x, y, 70, 70);
    }                                                    //rombos para guiarme
    }
    for(int x= -350; x< cant; x+=140){
    for(int y= -210; y< cant; y+=140){
        rombo(x, y, 70, 70);
    }
    }  */
    
    
    fill(colorillo);   
    
    
    
    bordeCinco();
    bordeCuatro();
    bordeTres();
    bordeDos();
    bordeUno();
    romboByNocho();                          //todos los rombos (hechos con triangulos) no sabia como meter traingulos en un ciclo for
    romboByNsiete();
    romboByNseis();
    romboByNcinco();
    romboByNcuatro();
    romboByNtres();
    romboByNdos();
    romboByNuno();
    romboByN();
    
    rect(-400, 0, 400, 400); 
    image (d, -400,0, 400, 400); 
    
   }
   void keyPressed(){if(key == ' '){
     barraApretada = true;
     
     if(colorcillo == 0){
       colorcillo = 255;
     }else{
       colorcillo = 0;
     }
     
     if(colorillo == 255){                          //si apretas la barra espaciadora, cambia de color entre blanco y negro
       colorillo = 0;
     }else{
       colorillo = 255;
     }
     if(colorin == 0){
       colorin = 255;
     }else{
       colorin = 0;
     }
   }
   }
   
   void keyReleased(){
     if(key == ' '){
       barraApretada = false;
     }
   }
   
  
