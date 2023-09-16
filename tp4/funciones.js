function botonJugar(tam) {
  if (dist(mouseX, mouseY, 300, 350) <= 40) {
    fill(200, 0, 0);
  } else {
    fill(200);
  }
  circle(300, 350, 80);
  fill(0);
  textSize(tam);
  text("Jugar", 270, 355);
}

function botonCreditos(tam) {
  if (dist(mouseX, mouseY, 300, 450) <= 40) {
    fill(200, 0, 0);
  } else {
    fill(200);
  }
  circle(300, 450, 80);
  fill(0);
  textSize(tam);
  text("Creditos", 265, 455);
}

function botonMenu(tam) {
  if (dist(mouseX, mouseY, 300, 350) <= 40) {
    fill(200, 0, 0);
  } else {
    fill(200);
  }
  circle(300, 350, 80);
  fill(0);
  textSize(tam);
  text("Menu", 280, 355);
}
