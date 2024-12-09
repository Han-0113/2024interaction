void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  //pixels
}
void mouseDragged() {
  if (mouseButton==LEFT) { //在左鍵dragged拖曳時
    line(mouseX, mouseY, pmouseX, pmouseY);//本來的線，是灰黑色，不是白色
    loadPixels();//取出畫面的像素
    //println(pixels[0]);//白色是-1
    for (int i=0; i<width*height; i++) { //全部的點都去巡一下色彩
      if (pixels[i]!=-1) pixels[i] = color(random(255), random(255), random(255));
    }
    updatePixels();//若有修改，要再放回去
  }
}
