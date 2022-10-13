void intro() {
  music.play();

  image(gif[i], 0, 0, width, height);
  if (frameCount % 3 == 0) i++;
  if (i == n) i = 0;

  textAlign(CENTER);
  textFont(intro);
  textSize(48);
  text("Color", width/2, 220);
  text("Game", width/2, 260);

  textSize(20);
  text("Press SPACE to Start", width/2, 400);
}
