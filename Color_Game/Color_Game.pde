import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int randomColor;
int randomWord;
PImage gif[];
int n;
int i;
int mode = 1;
PFont intro;
PFont font;
color puzzle;
color blue = #0DEAFC;
color red = #FC0D21;
color yellow = #FCF10D;
color green = #27FC0D;
float match;
color textColor;
boolean text;
int score = 0;
int highScore = 0;
float y = 0;
float vy = 1;

Minim minim;
AudioPlayer success, failure, music;

void setup() {
  size(540, 540, P2D);
  n = 30;
  gif = new PImage [n];
  i = 0;

  while (i < n) {
    gif [i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i++;
  }
  if (i == n) i = 0;

  intro = createFont("TheBeast.ttf", 48);
  font = createFont("Hallway.ttf", 48);

  minim = new Minim(this);
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  music = minim.loadFile("MUSIC.mp3");

  puzzle();
  noStroke();
}

void draw() {
  if (mode == 1) intro();
  if (mode == 2) game();
  if (mode == 3) gameOver();
}
