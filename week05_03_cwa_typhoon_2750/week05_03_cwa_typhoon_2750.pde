PImage img;
void setup() {
  size(500, 500);//小視窗、大圖片
  img=loadImage("LCC_VIS_TRGB_2750-2024-10-02-07-40.jpg");
}
float s=1.0, x=0, y=0;
float realX =0, realY=0;
void draw() {
  background(255);//白背景
  translate(x, y);
  scale(s);
  image(img, 0, 0);
}
void mouseDragged() {//void mouseDragged()
  x+=mouseX - pmouseX;
  y+=mouseY - pmouseY;
}
void mouseWheel(MouseEvent e) {
  realX = (mouseX - x)/s;
  realY = (mouseY - y)/s;
  float oldS=s;
  if (e.getCount()<0) s*=1.1;//大於，小於可決定縮放方向
  else s *=0.9;
  x=x+realX*oldS -realX*s;
  y=y+realY*oldS - realY*s;
  if (x>0)x=0;
  if (y>0)y=0;
  if (s<0.2) {
    x=0;
    y=0;
    s=0.2;
  }
}
