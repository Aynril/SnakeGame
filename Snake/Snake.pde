int scale = 30;
ActualSnake snake;
void setup() {
  size(1000, 1000);
  background(0);
  fill(255);
  stroke(70);
  for (int i = 0; i < width/scale; i++) {
    line(i * scale, 0, i * scale, height);
  }
  for (int i = 0; i < height/scale; i++) {
    line(0, i * scale, width, i * scale);
  }
  snake = new ActualSnake();
}

void draw() {
  snake.drawSnake();
}

void drawPoint(int x, int y, char colour){
  if(colour == 'w'){
    fill(255);
  }
  else{
    fill(255, 0, 0);
  }
  rect(x * scale, y * scale, scale, scale);
}

void keyPressed(){
  switch(key){
    case 'w': snake.direction = 'u'; return;
    case 'a': snake.direction = 'l'; return;
    case 's': snake.direction = 'd'; return;
    case 'd': snake.direction = 'r'; return;
  }
  snake.move();
}
