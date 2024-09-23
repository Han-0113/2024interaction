PImage img;
void setup() {
  size(600, 400);
  img =loadImage("arufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noCursor();//不要有cursor游標/鼠標
  noStroke();//不要有框線
  fill(200, 200, 255, 128);//藍藍的半透明

  for (int i=1; i<=4; i++) {
    for (int j=0; j<i; j++) {
      float y= i*40, x=-i/2*60+j*60+((i%2==0)?30:0);
      rect(mouseX+x, mouseY-80+y, 70, 50);
    }
  }

  for (int i=3; i>=1; i--) {
    for (int j=0; j<i; j++) {
      float y= (4-i)*40+160, x=-i/2*60+j*60+((i%2==0)?30:0);
      rect(mouseX+x, mouseY-80+y, 70, 50);
    }
  }
}
