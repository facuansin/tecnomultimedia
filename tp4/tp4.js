//Facundo Ansin
//Comision 2
//Trabajo Practico n4
// link del video: https://youtu.be/O4NKOwXN6z8

let pantalla = 0;
let contador = 0;
let i1 = 0;
let i2 = 0;
let i3 = 0;
let i4 = 0;
let i5 = 0;
let i6 = 0;
let x1;
let x2;
let x3;
let x4;
let x5;
let x6;

function setup() {
  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  x4 = random(width);
  x5 = random(width);
  x6 = random(width);
}

function draw() {
  /// Menu ///
  if (pantalla === 0) {
    createCanvas(600, 600);
    background(255);
    fill(0);
    textSize(30);
    fill(255);
    rect(180, 160, 220, 70);
    fill(200);
    rect(400, 550, 180, 40);
    fill(0);
    text("instrucciones", 410, 580);
    text("CIRCUS MANIA", 180, 200);
    textSize(25);
    botonJugar(20);
    botonCreditos(20);
  }
  /// juego ///
  if (pantalla === 1) {
    let e = mouseX - 50;
    let d = mouseX + 40;
    background(255);
    rect(mouseX - 45, 550, 90, 10);
    rect(e, 530, 10, 20); 
    rect(d, 530, 10, 20);

    /// Objetos ///
    fill(0, 255, 0);
    ellipse(x1, i1, 30, 30);
    fill(0, 0, 255);
    ellipse(x2, i2, 30, 30);
    fill(255, 255, 0);
    ellipse(x3, i3, 30, 30);
    fill(255, 0, 0);
    ellipse(x4, i4, 30, 30);
    ellipse(x5, i5, 30, 30);
    ellipse(x6, i6, 30, 30);
    fill(255);
    i1 += 5;
    i2 += 6;
    i3 += 7;
    i4 += 5;
    i5 += 6;
    i6 += 7;
    /// Colisiones de puntos buenos ///
    if (i1 >= 620) {
      i1 = 0;
      x1 = random(600);
    }
    if (i2 >= 620) {
      i2 = 0;
      x2 = random(600);
    }
    if (i3 >= 620) {
      i3 = 0;
      x3 = random(600);
    }
    /// colisiones de puntos malos ///
    if (i4 >= 620) {
      i4 = 0;
      x4 = random(600);
    }
    if (i5 >= 620) {
      i5 = 0;
      x5 = random(600);
    }
    if (i6 >= 620) {
      i6 = 0;
      x6 = random(600);
    }
    /// puntos buenos ///
    if (x1 > e && x1 < d && i1 >= 550) {
      contador++;
      i1 = 0;
      x1 = random(600);
    }
    if (x2 > e && x2 < d && i2 >= 550) {
      contador++;
      i2 = 0;
      x2 = random(600);
    }
    if (x3 > e && x3 < d && i3 >= 550) {
      contador++;
      i3 = 0;
      x3 = random(600);
    }
    /// puntos malos ///
    if (x4 > e && x4 < d && i4 >= 550) {
      contador--;
      i4 = 0;
      x4 = random(600);
    }
    if (x5 > e && x5 < d && i5 >= 550) {
      contador--;
      i5 = 0;
      x5 = random(600);
    }
    if (x6 > e && x6 < d && i6 >= 550) {
      contador--;
      i6 = 0;
      x6 = random(600);
    }
    fill(0);
    textSize(40);
    text(contador, 50, 50);
    fill(255);
  }
  /// You Win pantalla ///
  if (pantalla === 2) {
    background(255);
    fill(0);
    text("YOU WIN!!! CONGRATULATIONS", 150, 200);
    botonMenu(20);
    botonCreditos(20);
  }
  /// You Lose ///
  if (pantalla === 3) {
    background(255);
    fill(0);
    textSize(30);
    text("YOU LOSE", 230, 200);
    textSize(20);
    botonMenu(20);
    botonCreditos(20);
  }
  /// Creditos ///
  if (pantalla === 4) {
    background(255);
    fill(0);
    text(
      "Creditos: \n Facundo Ansin \n Legajo: 93054/5 \n Comision 2 \n Profesor: Matias Jauregui Lorda",
      150,
      150
    );
    botonMenu(20);
  }
  if (pantalla === 5) {
    background(255);
    fill(255);
    rect(80, 70, 340, 240);
    fill(0);
    text( "Mueve el Mouse de izquierda \n a derecha para atrapar \n las bolas de color y \n ganar el juego! \n Ten cuidado, si atrapas las bolas rojas \n tus puntos se disminuiran \n y perderas!", 100,100 );
    botonMenu(20);
  }
  if (pantalla === 1 && contador >= 15) {
    pantalla = 2;
  }
  if (pantalla === 1 && contador <= -5) {
    pantalla = 3;
  }
}

function mousePressed() {
  if (pantalla === 0 && dist(mouseX, mouseY, 300, 350) <= 40) {
    pantalla = 1;
  }
  if (pantalla === 0 && dist(mouseX, mouseY, 300, 450) <= 40) {
    pantalla = 4;
  }
  if (pantalla === 2 && dist(mouseX, mouseY, 300, 350) <= 40) {
    pantalla = 0;
    contador = 0;
  }
  if (pantalla === 2 && dist(mouseX, mouseY, 300, 450) <= 40) {
    pantalla = 4;
  }
  if (pantalla === 3 && dist(mouseX, mouseY, 300, 350) <= 40) {
    pantalla = 0;
    contador = 0;
  }
  if (pantalla === 3 && dist(mouseX, mouseY, 300, 450) <= 40) {
    pantalla = 4;
  }
  if (pantalla === 4 && dist(mouseX, mouseY, 300, 350) <= 40) {
    pantalla = 0;
    contador = 0;
  }
  if (pantalla === 0 && dist(mouseX, mouseY, 500, 560) <= 50) {
    pantalla = 5;
  }
  if (pantalla === 5 && dist(mouseX, mouseY, 300, 350) <= 40) {
    pantalla = 0;
  }
}
