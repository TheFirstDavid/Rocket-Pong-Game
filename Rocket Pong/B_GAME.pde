void game() {
  image(Gameback, 0, 0, width, height);

  //ScoreBoard
  pushStyle();
  noStroke();
  fill(0);
  rect(width/2.75, 0, width/3.75, height/10);
  popStyle();
  pushStyle();
  noStroke();
  fill(255);
  rect(width/2.1, 0, width/22, height/10);
  popStyle();

  pushStyle();
  textSize(50);
  fill(blue);
  text(rightscore, 2.75*width/5, width/16);
  popStyle();
  timer = timer -1;

  pushStyle();
  textSize(width/16);
  fill(orange);
  text(leftscore, width/2.5, width/16);
  popStyle();

  //paddles
  //left
  pushStyle();
  noFill();
  strokeWeight(3);
  stroke(200, 70, 0);
  circle(leftx, lefty, leftd);
  popStyle();
  pushMatrix();
  image(dominus, leftx, lefty-height/30, height/6.6666666, width/20);
  popMatrix();
  
  //right
  pushStyle();
  noFill();
  strokeWeight(3);
  stroke(0, 70, 180);
  circle(rightx, righty, rightd);
  popStyle();
  pushMatrix();
  image(venom, rightx-height/6.66666666, righty-height/30, height/6.6666666, width/16);
  popMatrix();

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;


  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (bally > righty) {
      righty = righty + 5.5;
    }
    if (bally < righty) {
      righty = righty -5.5;
    }
  }
  // Pause Button
  pushStyle();
  stroke(0, 100, 200);
  strokeWeight(5);
  fill(0, 80, 190);
  rect(width/20, height/20, width/9, height/14);
  popStyle();
  pauseTactile();


  pushMatrix();
  pushStyle();
  textSize(15);
  textFont(RL, width/44.44444444);
  text("PAUSE", width/15, height/ 10);
  popStyle();
  popMatrix();






  //paddle Limits
  //left paddle
  if (lefty < width/8) {
    lefty = 100;
  }
  if (lefty > height/1.2) {
    lefty = 500;
  }
  //rigth paddle
  if (righty < width/8) {
    righty = 100;
  }
  if (righty > height/1.2) {
    righty = 500;
  }

  //ball
  pushStyle();
  noFill();
  noStroke();
  circle(ballx, bally, balld);
  popStyle();
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  pushStyle();
  translate(-width/22.8571429, -width/22.8571429);
  image(pBall, ballx, bally, height/7.74193548, height/7.74193548);
  popStyle();
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vx = -3;
    vy = 0;
  }

  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vx = 3;
    vy = 0;
  }

  bally = bally + vy;
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }



  //collisions between Ball and Paddle
  //collision with left paddle and ball
  if (dist(leftx, lefty, ballx, bally) <= balld/2 + leftd/2) {
    vx = ballx/15 - leftx/15;
    vy = bally/15 - lefty/15;
  }
  //collision with right paddle and ball
  if (dist(rightx, righty, ballx, bally) <= balld/2 + rightd/2) {
    vx = ballx/15 - rightx/15;
    vy = bally/15 - righty/15;
  }

  //Ball Limits
  if (bally < 30) {
    bally = height/20;
  }
  if (bally > 570) {
    bally = height/1.05263158;
  }


  //Winning Code
  if (leftscore > 2 || rightscore > 2) {
    mode = GAMEOVER;
    
  }
}

void pauseTactile() {
  if (mouseX > width/20 && mouseX < width/6.25 && mouseY > height/20 && mouseY < height/8.5) {
    pushStyle();
    stroke(255);
    strokeWeight(5);
    fill(0, 80, 190);
    rect(width/20, height/20, width/9, height/14);
    popStyle();
  }
}



void gameClicks() {
  if (mouseX > width/20 && mouseX < width/6.25 && mouseY > height/20 && mouseY < height/8.5) {
    mode = PAUSE;
  
  }
}
