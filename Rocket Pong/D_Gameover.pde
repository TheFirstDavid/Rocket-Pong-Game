void gameover() {
  theme.pause();
  win.play();
  if(leftscore > rightscore) {
    pushStyle();
    textSize(width/8);
    fill(orange);
    text("Left Wins!", width/4.75, height/1.75);
    popStyle();
  } else {
    pushStyle();
    fill(blue);
    textSize(width/8);
    text("Right Wins!", width/4.75, height/1.75);
    popStyle();
  }
  
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  win.pause();
  win.rewind();
  leftscore = 0;
    rightscore = 0;
}
