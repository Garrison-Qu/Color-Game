void keyPressed() {
  if (mode == 1 || mode == 3) {
    if (key == ' ') {
      mode = 2;
      puzzle();
      vy = 1;
      y = 0;
      score = 0;
    }
  }

  if (mode == 2) {
    if (keyCode == LEFT && match >= 0.5) {
      score++;
      puzzle();
    } else if (keyCode == LEFT && match < 0.5) {
      mode = 3;
    } else if (keyCode == RIGHT && match >= 0.5) {
      mode = 3;
    } else if (keyCode == RIGHT && match < 0.5) {
      score++;
      puzzle();
    }
  }

  //if (mode == 3) {
  //  if (key == ' ') {
  //    mode = 2;
  //  }
  //}
}
