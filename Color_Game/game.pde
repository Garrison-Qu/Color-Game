void game() {

  background(0);
  rectMode(CORNER);
  fill(255);
  rect(0, 0, width/2, height);

  String [] words = {"red", "blue", "yellow", "green"};
  color [] colors = {red, blue, yellow, green};
  textAlign(CENTER, CENTER);
  textSize(64);
  textFont(font);
  fill(0);
  text("Match", width/4, 200);
  fill(255);
  text("Don't Match", width*3/4, 200);
  textSize(48);
  textFont(intro);
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2+y);
  y = y + vy;

  if (height/2+y > height+24) {
    mode = 3;
  }
  textSize(24);
  fill(#F0A5D9);
  text("Score:"+score, width/2, height/2 -200);
}

void puzzle() {
  match = random(0, 1);
  if (match < 0.5) {
    randomWord = (int) random(0, 4);
    randomColor = (int) random(0, 4);
    while (randomWord == randomColor) {
      randomColor = (int) random(0, 4);
    }
  } else if (match >= 0.5) {
    randomWord = (int) random(0, 4);
    randomColor = randomWord;
  }
  println(match);
  y = 0;
  vy += 0.3;
}
