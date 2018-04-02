PVector p1 = new PVector(400,500);
PVector p2 = new PVector(650, 150);
PVector p3 = new PVector(100, 300);
 
 void setup(){
   size(800, 600, P2D);
 }
 
 void draw(){
   fill(255);
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float alpha = f_ab(x, y, p2, p3) / f_ab(p1.x, p1.y, p2, p3);
      float theta = f_ab(x, y, p3, p1) / f_ab(p2.x, p2.y, p3, p1);
      float gamma = f_ab(x, y, p1, p2) / f_ab(p3.x, p3.y, p1, p2);
      if(alpha >= 0 &&  alpha <= 1 && theta >= 0 &&  theta <= 1 && gamma >= 0 &&  gamma <= 1){
        point(x,y);
      }
    }
  }
  
 }
 
float f_ab(float a, float b, PVector pa, PVector pb){
  return (pa.y - pb.y) * a + (pb.x - pa.x) * b + pa.x*pb.y - pb.x*pa.y;
}