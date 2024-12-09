void setup() {
  size(500, 500);
  background(#FFFFF2);
}
void draw() {
  if (mousePressed && mouseButton == LEFT) line(mouseX, mouseY, pmouseX, pmouseY);
  if (mousePressed && mouseButton ==RIGHT) {
    loadPixels();
    color c1 = pixels[mouseX+mouseY*500];
    color c2 = color (random(255), random(255), random(255));
    if (c1!=c2) myFloodFill(mouseX, mouseY, c1, c2);
    updatePixels();
  }
}
boolean isOK(int x, int y, color c1) {
  if (x<0 || y<0 || x>=500 ||y>=500) return false;
  if (pixels[x+y*500]!= c1)return false;
  return true;
}
void myFloodFill(int x, int y, color c1, color c2) {
  pixels[x+y*500]=c2;
  if (isOK(x+1, y, c1)) myFloodFill(x+1, y, c1, c2);
  if (isOK(x-1, y, c1)) myFloodFill(x-1, y, c1, c2);
  if (isOK(x, y+1, c1)) myFloodFill(x, y+1, c1, c2);
  if (isOK(x, y-1, c1)) myFloodFill(x, y-1, c1, c2);
}
