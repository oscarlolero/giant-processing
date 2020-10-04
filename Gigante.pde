class Gigante {
   PShape giganteObj, egg;
   Gigante() {
     giganteObj = loadShape("giant/giganta_leonora_car.obj");
   }
   
   void draw() {
     pushMatrix();
     translate(410, -10, 0);
     scale(190,190, 190);
     shape(giganteObj);
     popMatrix();
   }
}
