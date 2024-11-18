class Card {
  int x, y;
  void draw() {
    rect(x, y, 100, 150);
  }
}
Card card1 = new Card();
void setup() {
  size(500, 400);
  card1.x = 100;
  card1.y = 100;
}
void draw() {
  card1.draw();
}
