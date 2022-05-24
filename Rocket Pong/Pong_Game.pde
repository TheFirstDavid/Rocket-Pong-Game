import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//David Bakker
//Block 2-4
//2022/04/26


//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int OPTIONS  = 5;

//Images
PImage Back, dom, oct, Gameback, pBall, venom, dominus;

//Font
PFont RL;

//colors
color orange = #FC680C;
color blue = #0C58FC;


//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
boolean AI;

//variable ball speed
float vx, vy;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//scoring
int leftscore, rightscore, timer;

//sound variables
Minim minim;
AudioPlayer theme, hit, win, scoring, wait;


void setup() {
  size(800, 600);
  mode = INTRO;
  
//Music
minim = new Minim(this);
theme = minim.loadFile("monkey.mp3");
win = minim.loadFile("win.mp3");
  
//Images
Back = loadImage("Back.PNG");
Gameback = loadImage("Game Background.PNG");
pBall = loadImage("pBall.png");
venom = loadImage("venom.png");
dominus = loadImage("dominus.png");
RL = createFont("Font.ttf", 20);
  
//entity variables
  //Initialize paddles
  
  //left paddle
  leftx = 0;
  lefty = height/2;
  leftd = width/4;
  
  //right Paddle
  rightx = width;
  righty = height/2;
  rightd = width/4;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = height/10;
  
  //Variable movement of ball
  vx = 3;
  vy = 0;
  
  //initialise score
  rightscore = leftscore = 0;
  timer = 100;
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  
  
}

void draw() {
  if (mode == INTRO){
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode err9r: " + mode);
  }
}
