void mouseClicked() {
  if (mode == 2) {
    if (mouseX >= 0 && mouseX <= width/2 && mouseY >= 0 && mouseY <= height && match >= 0.5) {
      success.rewind();
      success.play();
      score++;
      puzzle();
    } else if (mouseX >= 0 && mouseX <= width/2 && mouseY >= 0 && mouseY <= height && match < 0.5) {
      failure.rewind();
      failure.play();
      mode = 3;
    } else if (mouseX >= width/2 && mouseX <= width && mouseY >= 0 && mouseY <= height && match >= 0.5) {
      failure.rewind();
      failure.play();
      mode = 3;
    } else if (mouseX >= width/2 && mouseX <= width && mouseY >= 0 && mouseY <= height && match < 0.5) {
      success.rewind();
      success.play();
      score++;
      puzzle();
    }
  }
}
