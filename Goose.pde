SplineTool splineTool;
import Jama.*;
class Goose {
  PShape goose;
  int step, x, y, z, factor, direction, dx, dy;
  float rapidez;
  ArrayList<PVector> coords;
  Goose(int x, int y, int z, int dx, int dy, float rapidez, PShape gooseObj) {
    this.goose = gooseObj;
    step = 0;
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.z = z;
    this.rapidez = rapidez;
    coords = new ArrayList<PVector>();
    splineTool = new SplineTool(rapidez);
    splineTool.p0_.set(x, y);
    splineTool.p1_.set(x+dx, y+dy);
    splineTool.p2_.set(x+dx*2, y);
    splineTool.Calcular();
    coords.addAll(splineTool.pts_);  
    
    splineTool.p0_.set(x+dx*2, y);
    splineTool.p1_.set(x+dx*3, y-dy);
    splineTool.p2_.set(x+dx*4, y);
    splineTool.Calcular();
    coords.addAll(splineTool.pts_);  
    
    splineTool.p0_.set(x+dx*4, y);
    splineTool.p1_.set(x+dx*5, y+dy);
    splineTool.p2_.set(x+dx*6, y);
    splineTool.Calcular();
    coords.addAll(splineTool.pts_);  
  
    splineTool.p0_.set(x+dx*6, y);
    splineTool.p1_.set(x+dx*7, y-dy);
    splineTool.p2_.set(x+dx*8, y);
    splineTool.Calcular();
    coords.addAll(splineTool.pts_);  
}
  void Draw() { 
    pushMatrix();
    translate(coords.get(step).x, coords.get(step).y, z);
    if(step >= coords.size() - 1) {
      step = 0;
    } else {
      step++;
    }
    scale(30,30,30);
    rotateY(radians(90));
    shape(goose);
    popMatrix();
  }
}
