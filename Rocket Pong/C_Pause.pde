void pause() {
  theme.pause();
  pushMatrix();
  pushStyle();
  fill(255, 0, 0);
  stroke(255);
  textSize(100);
  textFont(RL, width/8);
  text("PAUSE", width/3.25 ,height/1.8);
  popStyle();
  popMatrix();
  
 pushStyle();
 stroke(0, 100, 200);
 strokeWeight(5);
 fill(0, 80, 190);
 rect(width/20, height/20, width/9, height/14);
 popStyle();
 
 pushMatrix();
 pushStyle();
 textSize(15);
 textFont(RL, height/33.333333333);
 text("PAUSE", width/15, height/ 10);
 popStyle();
 popMatrix();
}

void pauseClicks() {
  if (mouseX > width/20 && mouseX < width/6.25 && mouseY > height/20 && mouseY < height/8.5) {
    mode = GAME;
  theme.play();
  }
}
