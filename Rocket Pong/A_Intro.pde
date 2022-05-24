void intro() {
  theme.play();
  
  background(0);
  
  //-----------------------------------------------------------------------------------TEMPORARY BACKGROUND----------------------------------------------------------------------------------------
  image(Back, 0, 0, width, height);
  
  //SinglePlayer Button
  pushStyle();
  fill(0, 80, 190);
  strokeWeight(5);
  stroke(0, 100, 200);
  rect(width/4.8, height/1.5, height/4, height/8);
  popStyle();
  singTactile();
  
  pushMatrix();
  pushStyle();
  stroke(255);
  textSize(20);
  textFont(RL, 18);
  text("SINGLEPLAYER", width/4.6 ,height/1.35);
  popStyle();
  popMatrix();
  
  //2 Player Button
  pushStyle();
  fill(0, 80, 190);
  strokeWeight(5);
  stroke(0, 100, 200);
  rect(width/1.75, height/1.5, width/5.333333, height/8);
  popStyle();
  mulTactile();
  
  pushMatrix();
  pushStyle();
  textSize(20);
  textFont(RL, 18);
  text("2 PLAYER", width/1.63, height/1.35);
  popStyle();
  popMatrix();
}

//Tactiles
void singTactile() {
  if(mouseX > width/4.8 && mouseX < width/4.8 +  height/4 && mouseY > height/1.5 && mouseY < height/1.5 + height/8) {
  pushStyle();
  fill(0, 80, 190);
  strokeWeight(5);
  stroke(255);
  rect(width/4.8, height/1.5, height/4, height/8);
  popStyle();
  }
}

void mulTactile() {
  if (mouseX > width/1.75 && mouseX < width/1.75 + height/4 && mouseY > height/1.5 && mouseY <height/1.5 + height/8) {
  pushStyle();
  fill(0, 80, 190);
  strokeWeight(5);
  stroke(255);
  rect(width/1.75, height/1.5, height/4, height/8);
  popStyle();
  }
}


void introClicks() {
  
  //SinglePlayer
  if(mouseX > width/4.8 && mouseX < width/4.8 +  height/4 && mouseY > height/1.5 && mouseY < height/1.5 + height/8) {
  mode = GAME;
  AI = true;
  }
  
  //Two Player
  if (mouseX > width/1.75 && mouseX < width/1.75 + height/4 && mouseY > height/1.5 && mouseY <height/1.5 + height/8) {
    mode = GAME;
    AI = false;
  }
}
