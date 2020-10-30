import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer clapping, intros, leftpaddle, rightpaddle, wall, score;



int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
final int option = 5;
//entity  variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float x, y, d;
float vx, vy;
boolean ai;
//scoring
int leftscore, rightscore, timer;
int winScore = 3;
//keyboard variables
boolean wkey, skey, upkey, downkey;



void setup() {
  size(800, 800);
  mode = intro;



  leftx =0;
  lefty=height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;

  ballx=width/2;
  bally=height/2;
  balld=100;
  vx= random(-5, 5);
  vy= random(-5, 5);

  rightscore=leftscore=0;
  timer=50;


  wkey=skey=upkey=downkey=false;
  minim= new Minim(this);
  intros=minim.loadFile("intro.wav");
  clapping=minim.loadFile("clapping.wav");
  leftpaddle=minim.loadFile("leftpaddle.wav");
  rightpaddle=minim.loadFile("rightpaddle.wav");
  wall=minim.loadFile("wall.wav");
  score=minim.loadFile("score.wav");
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    print("mode error:" +mode);
  }
}
