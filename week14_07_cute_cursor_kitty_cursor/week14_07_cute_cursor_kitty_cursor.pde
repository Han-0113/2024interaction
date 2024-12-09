PImage imgCute, imgKitty;
void setup() {
  size(500, 500);
  imgCute = loadImage("cute.png");
  imgKitty = loadImage("kitty.png");
  cursor(imgKitty);
}
void draw() {
  background(#FFFFF2);
  if (frameCount%120 ==0) cursor(imgCute);
  if (frameCount %120==60) cursor(imgKitty);
}
