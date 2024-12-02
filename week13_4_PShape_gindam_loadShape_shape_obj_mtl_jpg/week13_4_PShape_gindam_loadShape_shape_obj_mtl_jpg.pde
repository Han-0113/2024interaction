PShape gundam;
void setup() {
  size(500, 500, P3D);
  gundam = loadShape("Gundam.obj");
}
void draw() {
  shape(gundam, 0, 0, 250, 500);
}
