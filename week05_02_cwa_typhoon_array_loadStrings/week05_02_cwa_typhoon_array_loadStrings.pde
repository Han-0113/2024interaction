int N = 299;//剛好有299張圖
PImage [] imgs = new PImage[299];//準備好299張圖 對應的陣列
void setup() {
  size(800, 800);
  //把list.txt的299行，放入filenames裡
  String [] filenames = loadStrings("list.txt");
  for (int i=0; i<N; i++) { //把每一張圖都讀進來
    imgs[i] = loadImage(filenames[i]);
  }
}
void draw() {
  int i = frameCount % N; //照時間輪 %N 取餘數，以免超過陣列大小
  background(imgs[i]);//現在要顯示第i張圖
}
