void gameOver() {
  background(0);
  if (highScore < score) {
    highScore = score;
  }

  image(gif[i], 0, 0, width, height);
  if (frameCount % 3 == 0) i++;
  if (i == n) i = 0;

  fill(255);
  textSize(48);
  textFont(intro);
  text("Game Over", width/2, height/2 - 75);

  textSize(24);
  text("Score:"+score, width/2, height/2+10);
  text("High Score"+highScore, width/2, height/2+50);
  text("Press Space To Restart", width/2, height/2+100);
}
