PShape s;
//Eje3D eje;
Trees trees;
Gooses gooses;
Decorations decorations;
Gigante gigante;
float x, y, z, xLook, yLook, zLook;

void setup() {
  frameRate(15);
  size(1800, 900, P3D);
  //eje = new Eje3D();
  trees = new Trees();
  gooses = new Gooses();
  gigante = new Gigante();
  decorations = new Decorations();
  x = 383;
  y = 71;
  z = 371;
  xLook = 383;
  yLook = 71;
  zLook = 0;
}

void draw() {
  lights();
  background(0);
  //eje.Dibujar();
  trees.draw();
  gooses.drawAll();
  gigante.draw();
  decorations.draw();
  camera(x, y, z+100, xLook, yLook, zLook, 0.0, -1.0, 0.0);
  
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      z-=3;
      zLook-=3;
    } else if(key == 's' || key == 'S') {
      z+=3;
      zLook+=3;
    } else if(key == 'd' || key == 'D') {
      x-=3;
      xLook-=3;
    } else if(key == 'a' || key == 'A') {
      x+=3;
      xLook+=3;
    } else if(key == 'r' || key == 'R') {
      y+=3;
      yLook+=3;
    } else if(key == 'f' || key == 'F') {
      y-=3;
      yLook-=3;
    } else if (key == CODED) {
      if (keyCode == UP) {
        y+=3;
      } else if (keyCode == DOWN) {
        y-=3;
      } else if (keyCode == RIGHT) {
        x-=3;
      } else if (keyCode == LEFT) {
        x+=3;
      } 
    }
  }
}
