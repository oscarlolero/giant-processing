Goose goose1, goose2, goose3, goose4, goose5, goose6;
PShape gooseObj;
class Gooses {
  Gooses() {
    gooseObj = loadShape("goose/Aveee.obj");
                      //x,   y,  z,  ampl,  altura, rapidez
    goose1 = new Goose(-100, 50, 30, 150, 30, 1.2, gooseObj);
    goose2 = new Goose(-100, 50, 70, 150, 30, 1.5, gooseObj);
    goose3 = new Goose(-100, 20, 200, 160, 10, 0.6, gooseObj);
    goose4 = new Goose(-100, 100, -60, 200, 10, 0.5, gooseObj);
    goose5 = new Goose(-100, 100, -40, 200, 10, 0.5, gooseObj);
    goose6 = new Goose(-100, 20, 140, 160, 10, 0.6, gooseObj);
  }
  void drawAll() {
   goose1.Draw();
   goose2.Draw();
   goose3.Draw();
   goose4.Draw();
   goose5.Draw();
   goose6.Draw();
  }
}
