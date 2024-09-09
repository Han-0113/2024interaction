// week01_4_if_mousePressed_line_mouseX_mouseY_pmouseX_pmouseY
void setup() {
  size(500, 500);
}
void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果 mouse按下去，就畫線mouse的XY座標到previous mouse XY
