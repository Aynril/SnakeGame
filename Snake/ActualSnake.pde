class ActualSnake {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  ArrayList<Block> tail;

  char direction;

  ActualSnake() {
    x = 0;
    y = 0;
    xSpeed = 1;
    ySpeed = 1;
    tail = new ArrayList<Block>();
    tail.clear();
    direction = 'e';
  }

  void makeSnakeLonger() {
    tail.add(new Block(this.x, this.y));
  }

  void drawSnake() {
    drawPoint(x, y, 'w');
    for (Block current : tail) {
      drawPoint(current.blockX, current.blockY, 'w');
    }
  }

  void move() {
    switch(direction) {
    case 'u': 
      y--; 
      if (x < 0) {
        x = width/scale;
      }
    case 'l': 
      x--;
      if (y < 0) {
        y = height/scale;
      }
    case 'r': 
      x++;
      if (y > height/scale) {
        y = 0;
      }
    case 'd': 
      y++; 
      if (x > width/scale) {
        x = 0;
      }
    }
    this.drawSnake();
  }
}
