PShape world;
void setup() {
  size(800, 400);
  world = loadShape("world.svg");
}
float s = 0.4, x=0, y=0;
void draw() {
  background(#92C2F5);
  translate(x, y);//要再加上一個移動量 x,y
  scale(s);//改變變數 S初始值是0.4
  shape(world);
}
void mouseDragged() {//void mouseDragged()
  x+=mouseX - pmouseX;
  y+=mouseY - pmouseY;
}
void mouseWheel(MouseEvent e) {
  if (e.getCount()>0) s*=1.1;
  else s *=0.9;
}
