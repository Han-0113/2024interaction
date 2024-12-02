void setup() {
  size(500, 300);//寬度是500，兩倍是1000
}
void draw() {
  background(#FFFFF2);
  float x = (frameCount*5 %1000);
  if (x>500) x=1000-x;
  ellipse(x, 150, 100, 100);
}
