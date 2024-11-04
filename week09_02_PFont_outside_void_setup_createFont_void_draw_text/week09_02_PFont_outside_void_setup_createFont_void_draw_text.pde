// week09_02_PFont_outside_void_setup_createFont_void_draw_text
PFont font0, font, font2; //3種字型:英文、中文、注音文(外面宣告，兩個函式都看得到)
void setup() {
  size(500, 500);//大視窗
  font0=createFont("Arial", 50);
  font=createFont("標楷體", 50);
  font2=createFont("elffont-rock.otf", 50);
}
void draw() {
  background(0);//黑色背景
  textSize(50);
  textFont(font0);
  text("Hello", 50, 50);
  textFont(font);
  text("中文看到了", 50, 150);

  //PFont font = createFont("標楷體", 50);
  textFont(font);
  text("中文看到了", 50, 150);
  //PFont font2 = createFont("elffont-rock.otf", 50);
  textFont(font2);
  text("ㄇㄉㄈㄎ", 50, 250);
}
