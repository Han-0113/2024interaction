int [][]maze = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 0, 0, 0, 1, 0, 0, 0, 1, 1},
  {1, 1, 0, 1, 1, 0, 1, 0, 1, 1},
  {1, 1, 0, 0, 1, 0, 1, 0, 1, 1},
  {1, 1, 1, 0, 0, 0, 1, 0, 1, 1},
  {1, 0, 1, 1, 0, 1, 1, 0, 1, 1},
  {1, 0, 0, 0, 0, 1, 1, 0, 1, 1},
  {1, 0, 1, 1, 1, 1, 1, 0, 1, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
};
int [][] visited = new int[10][10];
int startI = 1, startJ=1, I=1, J=1, step=1;
void setup() {
  size(400, 400);
  visited[I][J] = step;
}
void draw() {
  for (int i =0; i<maze.length; i++) {
    for (int j =0; j<maze[0].length; j++) {
      if (maze[i][j]==1) fill(0);
      else fill(255);
      rect(j*40, i*40, 40, 40);
    }
  }
  fill(255, 0, 0);
  rect(startJ*40, startI*40, 40, 40);
  for (int i=0; i<maze.length; i++) {
    for (int j=0; j<maze[0].length; j++) {
      if (visited[i][j]>0) {
        fill(0, 0, 255);
        text(""+visited[i][j], j*40+20, i*40+20);
      }
    }
  }
}
void mousePressed() {
  if (maze[I+1][J]==0) {
    I=I+1;
    visited[I][J] = ++step;
  } else if (maze[I][J+1]==0) {
    J=J+1;
    visited[I][J] = ++step;
  }
}
