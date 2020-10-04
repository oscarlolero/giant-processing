class Decorations {
  PImage ground, background;
  Decorations() {
    ground = loadImage("textures/grass.jpg");
    background = loadImage("textures/fondoB.jpg");
  }
  void draw() {
    pushMatrix();
    rotateX(radians(90));
    translate(-250,-400);
    scale(1.3,1.3);
    image(ground, 0, 0);
    popMatrix();
    
    pushMatrix();
    scale(0.5,0.5);
    rotate(radians(180));
    translate(-2900,-2600, -250);
    image(background, 0, 0);
    image(background, 0, 0);
    popMatrix();
  }
}
