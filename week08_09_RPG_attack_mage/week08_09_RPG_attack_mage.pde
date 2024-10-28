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
  size(640, 480); //15格=480, 480/15=32 小圖
  img = loadImage("640x480.png");
  user = loadImage("16.png"); //勇者/使用者
  for (int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userI = 12, userJ= 16;
void draw() {
  for (int i=0; i<floor.length; i++) { //高度 480 對應 y 座標 左手i
    for (int j=0; j<20; j++) { //寬度 640 對應 x 座標 右手j
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16); //左邊上面的圖
  textSize(30);
  text("Level:  " + level, 16, 90);
  textSize(20);
  text("HP:   " + hp, 16, 140);
  text("Attack:  " + attack, 16, 170);
  text("Defense:  " + defense, 16, 200);
  text("Magic:   " + magic, 16, 230);
  text("Exp:     " + exp, 16, 260);
  text("Coins:    "+ coin, 16, 290);
  image(user, userJ*32, userI*32);
  if (gameOver==1) background(0, 255, 0); //綠色過關
  if (gameOver==2) background(255, 0, 0); //紅色死掉
}
int level = 1, hp = 2693, attack = 14, defense = 16, magic = 10, exp = 72, coin = 72;
int gameOver = 0;
void keyPressed() {
  int newI = userI, newJ = userJ; //新的可能的位置
  if (keyCode==RIGHT) newJ++;
  if (keyCode==LEFT) newJ--;
  if (keyCode==UP) newI--;
  if (keyCode==DOWN) newI++;
  if (floor[newI][newJ]==9) { //遇到魔法師
    if (hp-10<=0) gameOver = 2;
    else {
      hp -= 10; //扣你的血
      coin += 10; //加錢
      exp += 1; //加經驗值
      userI = newI;
      userJ = newJ;
      floor[userI][userJ] = 7;
    }
  } else if (floor[newI][newJ]!=1 && floor[newI][newJ]!=3) { //不是石頭牆,也不是木頭牆,才能走過去
    userI = newI;
    userJ = newJ;
    if (floor[userI][userJ]==19 || floor[userI][userJ]==20) gameOver = 1;
    floor[userI][userJ] = 7;
  }
}
