int [][] floor ={
  {21, 7, 7, 7, 21, 9, 16, 7, 7, 7, 7, 2, 7, 7, 4, 7, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 7, 7, 17, 7, 7, 7, 7, 1, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 17, 7, 7, 7, 7, 18, 7, 7, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 8, 7, 16, 7, 7, 9, 7, 7, 7, 7, 7, 20, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 9, 7, 7, 20, 7, 7, 7, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 5, 7, 7, 7, 7, 5, 7, 16, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 19, 7, 7, 7, 7, 8, 7, 1, 7, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 2, 16, 7, 7, 7, 7, 7, 18, 7, 7, 21},
  {21, 7, 7, 7, 21, 5, 7, 16, 7, 7, 17, 7, 7, 4, 7, 7, 7, 15, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 11, 7, 7, 5, 7, 7, 8, 7, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 2, 7, 4, 7, 7, 16, 7, 7, 7, 20, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 20, 7, 8, 8, 8, 7, 7, 7, 5, 7, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 7, 7, 7, 16, 7, 7, 7, 7, 16, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 4, 17, 7, 7, 19, 7, 2, 7, 6, 7, 7, 21},
  {21, 7, 7, 7, 21, 4, 7, 7, 7, 7, 19, 7, 7, 7, 4, 7, 7, 7, 4, 21},
};
PImage img, user;
PImage [] fimg = new PImage[40];
void setup() {
  size(640, 480); //15格=480,480/15=32小圖
  img=loadImage("640x480.png");
  user = loadImage("16.png");
  for (int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userI = 12, userJ=15;
void draw() {
  //background(img);
  for (int i=0; i<floor.length; i++) { //高度480 對應y座標 左手i
    for (int j=0; j<20; j++) { //寬度640 對應x座標 右手j
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, userJ*32, userI*32);
  if (gameOver) background(0, 255, 0);
}
boolean gameOver = false;
void keyPressed() {
  int newI = userI, newJ = userJ;//新的可能位置
  if (keyCode==RIGHT) newJ++;
  if (keyCode==LEFT) newJ--;
  if (keyCode==UP) newI--;
  if (keyCode==DOWN) newI++;
  if (floor[newI][newJ]!= 1 && floor[newI][newJ]!=3) {
    userI= newI;
    userJ=newJ;
    if (floor[userI][userJ]==19 || floor[userI][userJ]==20) gameOver = true;
    floor[userI][userJ] = 7;
  }
}
