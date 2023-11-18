//Facundo Ansin
//legajo: 93054/5
//link video: 

let j;
function setup() {
  createCanvas(600, 600);
  j = new ClaseJuego();
  
}

function draw() {
  
  j.PantallaEstados();
  
}

function keyPressed(){
j.teclas();
}

function mousePressed(){
j.BotonSiguiente(mouseX,mouseY);
}