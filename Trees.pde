class Trees {
  PShape arbol1, arbol2, arbol3;
  int randomNumbers [];
  Trees() {
    arbol1 = loadShape("trees/arbol1.obj");
    randomNumbers = new int[10];
    for(int i : randomNumbers) {
      randomNumbers[i] = int(random(-10,10));
    }
  }
  void draw() {
    pushMatrix();
    translate(-200,0,-130);
    rotateY(0.4);
    scale(4,4,4);
    for(int j = 0; j<25; j++) {
      pushMatrix();
      translate(0, 0, j*25);
      for(int i = 0; i<25; i++) {
        shape(arbol1, i*25, 0);
      }
      popMatrix();
    }
    popMatrix();
  }
}
