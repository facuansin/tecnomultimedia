//ANSIN, Facundo
 //legajo 93054/5 
 //tp3, comision 2 
 //Video: https://www.youtube.com/watch?v=N_HULQsebK0&ab_channel=FacundoAnsin
 int cant = 14; 
 PImage [] pantallasI = new PImage[cant]; 
 PImage [] opcionesI = new PImage[3]; 
 String [] textos = {"El Gato con Botas", "Un molinero deja como herencia a su hijo menor solo un gato, mientras que sus hermanos reciben molinos y tierras.", "El gato llega al palacio y engaña al rey, diciendo que su amo es el Marqués de Carabás. Asegura que el Marqués tiene tierras y títulos impresionantes.","El rey les cree", "El gato persuade a su amo para que se bañe en un río, luego oculta su ropa y le dice al rey que está siendo robado. El rey le ofrece ropa y hospitalidad al supuesto Marqués.", "El Gato organiza una reunion con campesinos para fingir que las tierras pertenecen al Marques.", 
 "El rey lleva al Marqués a su castillo, donde el gato revela que la princesa viene de visita.", "El gato elabora un plan para que su amo y la princesa se casen. Buscando en el bosque encuentra un castillo enorme que le pertenece a un Ogro que puede cambiar de forma.", "El gato se enfrenta al ogro y le convence de transformarse en un ratón. Luego lo atrapa y mata, heredando su riqueza.", "El gato pide al rey que vaya a cazar cerca del río. El Gato caza conejos y otros animales para el rey, presentándolos como regalos del Marqués.", "El rey está impresionado por la generosidad del falso Marqués.", "El Marqués se casa con la princesa, convirtiéndose en el heredero de la riqueza del ogro. El gato disfruta de una vida de lujos.", "Fin", "Creditos:"} ; 
 String [] opciones = { "Gato es encarcelado por mentir.", "Los campesinos no se toman muy bien las amenazas del Gato y deciden ahogarlos a los dos en el rio.", "El Gato tarda demasiado en proponer que su amo y la princesa se casen, hasta que el Rey se entera de la mentira y los ejecuta."}; 
 String [] creditos = { "Director: Facundo Ansin 93054/5", "Programador: Facundo Ansin 93054/5", "Imagenes: IA / Google", "Autor: Charles Perrault"}; 
 int pantalla = 0; 
 int opcionesB = 0; 
  
 void setup(){ 
   size (600, 600); 
     for (int i=0; i<cant; i++) { 
     pantallasI[i] = loadImage("foto"+i+".jpg"); 
     } 
  
        for (int i=0; i<3; i++) { 
     opcionesI[i] = loadImage("foto"+i+"(B).jpg"); 
     } 
 textSize(25); 
 } 
  
 void draw(){ 
    if(pantalla==0){ 
     image( pantallasI [0], 0, 0, 600, 600); 
     Botones(500, 550, 150, 60, "INICIO", 150, 60); 
     Botones(125, 550, 200, 60, "CREDITOS", 200, 60); 
    } 
  
    if(pantalla==1 ){ 
     image( pantallasI [1], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 150, 550, 175, 50); 
     fill(0); 
     text (textos [1], 300, 275, 500, 400); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if(pantalla==2){ 
     image( pantallasI [2], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 150, 550, 175, 50); 
     fill(0); 
     text (textos [2], 300, 275 ,500, 400); 
     Botones(500, 300, 160, 60, "CONFESAR", 160, 60); 
     Botones(100, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if( pantalla == 3){ 
     image( pantallasI [3], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 150, 350, 100, 50); 
     fill(0); 
     text (textos [3], 300, 325 ,500, 400); 
     Botones(100, 300, 160, 60, "VOLVER", 160, 60); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
      else if( opcionesB == 3){ 
       image( opcionesI [0], 0, 0, 600, 600); 
       fill(255, 255, 255, 100); 
       rect( 300, 150, 450, 150, 50); 
       fill(0); 
       text (opciones [0], 300, 300, 500, 400); 
       Botones (300, 550, 150, 60, "VOLVER", 150, 60); 
      } 
  
    if(pantalla==4){ 
     image( pantallasI [4], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 130, 500, 250, 50); 
     fill(0); 
     text (textos [4], 300, 225, 500, 400); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if(pantalla==5){ 
     image( pantallasI [5], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 70, 500, 120, 50); 
     fill(0); 
     text (textos [5], 300, 225, 500, 400); 
     Botones (100, 300, 160, 60, "PERSUADIR", 160, 60); 
     Botones(500, 300, 160, 60, "AMENAZAR", 160, 60); 
    } 
  
    if(pantalla==6){ 
     image( pantallasI [6], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 70, 500, 120, 50); 
     fill(0); 
     text (textos [6], 290, 230, 500, 400); 
     Botones(100, 300, 160, 60, "VOLVER", 160, 60); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
       else if( opcionesB == 6){ 
        image( opcionesI [1], 0, 0, 600, 600); 
        fill(255, 255, 255, 100); 
        rect( 300, 70, 500, 150, 50); 
        fill(0); 
        text (opciones [1], 290, 210, 500, 400); 
        Botones (300, 550, 150, 60, "VOLVER", 150, 60); 
       } 
  
    if(pantalla==7){ 
     image( pantallasI [7], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 100, 500, 200, 50); 
     fill(0); 
     text (textos [7], 300, 220, 500, 400); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if(pantalla==8){ 
     image( pantallasI [8], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 100, 500, 200, 50); 
     fill(0); 
     text (textos [8], 300, 220, 500, 400); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if(pantalla==9){ 
     image( pantallasI [9], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 100, 500, 200, 50); 
     fill(0); 
     text (textos [9], 300, 220, 500, 400); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
    if(pantalla==10){ 
     image( pantallasI [10], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 100, 500, 150, 50); 
     fill(0); 
     text (textos [10], 300, 270, 500, 400); 
     Botones (500, 300, 160, 60, "PROPONER", 160, 60); 
     Botones(100, 300, 160, 60, "NO PROPONER", 160, 60); 
    } 
  
    if(pantalla==11){ 
     image( pantallasI [11], 0, 0, 600, 600); 
     fill(255, 255, 255, 100); 
     rect( 300, 100, 500, 150, 50); 
     fill(0); 
     text (textos [11], 300, 260, 500, 400); 
     Botones(100, 300, 160, 60, "VOLVER", 160, 60); 
     Botones (500, 300, 160, 60, "CONTINUAR", 160, 60); 
    } 
  
       else if(opcionesB== 11){ 
        image( opcionesI [2], 0, 0, 600, 600); 
        fill(255, 255, 255, 100); 
        rect( 300, 100, 500, 150, 50); 
        fill(0); 
        text (opciones [2], 300, 250, 500, 400); 
        Botones (300, 550, 150, 60, "VOLVER", 150, 60);    
       } 
  
    if( pantalla == 12){ 
     image( pantallasI [12], 0, 0, 600, 600); 
     Botones (300, 550, 150, 60, "CONTINUAR", 160, 60); 
    } 
  
    if( pantalla == 13){ 
     image( pantallasI [13], 0, 0, 600, 600); 
     text (textos [13], 150, 100); 
        for (int i=0; i<4; i++) { 
         text(creditos[i], 300, 200+i*70); 
        } 
     Botones(300, 550, 150, 60, "INICIO", 150, 60); 
    } 
 }
