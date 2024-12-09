void setup() {
  size(500, 500);
}
int x = -1, y=-1;
void draw() {
  if (x!=-1) {
    ellipse(x, y, 1, 1);
    y++;//往下滴(x,y)座標中，y慢慢變大，就是往下滴的感覺
  }
}
void mouseDragged() {
  if (mouseButton==LEFT) line(mouseX, mouseY, pmouseX, pmouseY);
  if (mouseButton==RIGHT) {
    x=mouseX;
    y=mouseY;
  }
}
