int D = 20;
int x = 0;
int y = 200;
int vx = 1;
int vy = 0;
int vy2 = 2;
int px = 380;
int py = 170;


void setup() {
  size(400,400);
  background(0);
  fill(255);
}

void drawBall(int x, int y) {
  ellipse(x,y,D,D);
}

void drawPaddle(int x,int y) {
  rect(x,y,10,60);
}

boolean isColliding(int bx, int by, int px, int py) {
  boolean result = false;
  if(bx + D/2 >= px && by + D/2 >= py) result = true;
  return result;
}
boolean isCollidingR(int bx, int by, int px, int py) {
  boolean resultR = false;
  if(bx - D/2 >= px && by - D/2 >= py) resultR = true;
  return resultR;
}

void walls() {
  if(x > width || x < 0) vx *= -1;
  if(y  > height || y < 0) vy *= -1;
}

void update() {
  x += vx;
  y += vy;
}

void updatePaddle() {
  py += vy2;
}

void wallsPaddle() {
  if(py  > height || py < 0) vy2 *= -1;
}

void draw() {
  background(0);
  drawPaddle(10,170);
  drawPaddle(px,py);
  updatePaddle();
  wallsPaddle();
  drawBall(x,y);
  update();
  walls();
  if(isColliding(x,y,px,py)) vx *= -1;
  if(isCollidingR(x,y,10,py)) vx *= -1;
}
