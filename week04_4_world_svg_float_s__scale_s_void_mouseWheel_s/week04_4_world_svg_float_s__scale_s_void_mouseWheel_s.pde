PShape world;
void setup() {
  size(800, 400);
  world = loadShape("world.svg");
}
float s = 0.4;
void draw() {
  background(#92C2F5);
  scale(s);//改變變數 S初始值是0.4
  shape(world);
}
void mouseWheel(MouseEvent e) {
  if (e.getCount()>0) s*=1.1;
  else s *=0.9;
}
