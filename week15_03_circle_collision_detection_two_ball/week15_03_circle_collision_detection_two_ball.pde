void setup() {
  size(640, 360);
}
Ball ball= new Ball(100, 200, 60);
Ball ball2= new Ball(300, 200, 60);
void draw() {
  background(51);
  if( ball.checkCollision(ball2) ) fill(#FFAAAA);
  else fill(255);
  ball.update();
  ball.display();
  ball2.update();
  ball2.display();
}
