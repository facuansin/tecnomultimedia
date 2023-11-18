class ClaseJuego {
    constructor() {
      this.pantalla = 0;
      this.contador = 3600;
      this.puntos = 0;
      this.personaje = new Personaje();
      this.piedras = new Piedras();
      this.fondo = loadImage('assets/bosque.png');
      this.pantallaInicio = loadImage('assets/fondo2.png');
      this.fuente2 = loadFont('assets/CCOverbyteOn.ttf');
    }
  
    PantallaEstados() {
      switch (this.pantalla) {
        // Instrucciones - Contexto
        case 0:
   image(this.pantallaInicio,0,0);
   textFont(this.fuente2);
   fill(240);
      rect(50, 80, 520, 130);
      fill(20);
      textSize(21);
      text("Mientras Gato andaba de paseo por el bosque con el Rey, unos bandidos decidieron atacar su carroaje. Mueve las flechas de izquierda a derecha para defender al rey de la mayor cantidad de piedras",70,100,500);
   stroke(20);
    fill(245);
    rect(50, 490, 500, 75);
    fill(20);
    textSize(40);
    text("Siguiente",205,540);
          break;
        // Juego
        case 1:
          image(this.fondo, 0, 0);
          // Contador del juego y condiciones
          if (this.contador <= 3600) {
            this.contador--;
            if (this.contador === 0) {
              if (this.puntos >= 45) {
                this.pantalla = 2; // Pantalla ganadora
              } else {
                this.pantalla = 3; // Pantalla perdedora
              }
            }
          }
          this.minutos = floor(this.contador / 60);
          this.segundos = this.contador % 60;
          textFont(this.fuente2);
          textSize(50);
          fill(255);
          text(this.minutos + ":" + nf(this.segundos, 2), 250, 100);
          text("puntos:" + this.puntos, 200, 150);
          // Llamando métodos
          this.personaje.dibujarPersonaje();
          this.piedras.piedrasCayendo();
          if (this.piedras.colision(this.personaje)) {
            this.puntos++;
          }
          break;
        // Pantalla Ganaste
        case 2:
           background(98, 227, 48);
      textFont(this.fuente2);
      fill(220);
      textSize(100);
      fill(20);
      text('Ganaste', 100, 250);
       stroke(20);
    fill(245);
    rect(50, 490, 500, 75);
    fill(20);
    textSize(40);
    text("Reiniciar",205,540);
      this.contador=3600;
          break;
        // Pantalla Perdiste
        case 3:
          background(242, 10, 65);
          textFont(this.fuente2);
          fill(220);
          textSize(100);
          fill(20);
          text('Perdiste', 100, 250);
           stroke(20);
    fill(245);
    rect(50, 490, 500, 75);
    fill(20);
    textSize(40);
    text("Reiniciar",205,540);
          this.contador=3600;
          break;
      }
    }
  
    teclas() {
      this.personaje.moverPersonaje(keyCode, LEFT_ARROW, RIGHT_ARROW);
    }
    BotonSiguiente(X, Y) {
    if (this.pantalla === 0 && X > 50 && X < 550 && Y > 490 && Y < 565) {
      this.pantalla = 1;
    }
    if (this.pantalla === 2 && X > 50 && X < 550 && Y > 490 && Y < 565) {
      this.pantalla = 0;
    }
    if (this.pantalla === 3 && X > 50 && X < 550 && Y > 490 && Y < 565) {
      this.pantalla = 0;
    }
  }
  }