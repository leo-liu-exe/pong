void game() {
  background(0);
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  //score
  textSize(50);
  fill(0, 250, 250);
  text(leftscore, width/4, 100);
  fill(255, 0, 255);
  text (rightscore, 3*width/4, 100);

  //timer
  //text(timer, 3*width/4, 550);
  timer=timer-1;
  //left paddle stop at wall
  if (dist(ballx, bally, leftx, lefty)<=balld/2+leftd/2) {
    vx=(ballx-leftx)/10;
    vy=(bally-lefty)/10;
  }
  //rightpaddle stop at wall
  if (dist(ballx, bally, rightx, righty)<=balld/2+rightd/2) {
    vx=(ballx-rightx)/10;
    vy=(bally-righty)/10;
  }
  //paddle bounce
  if (lefty<leftd/2) lefty=leftd/2;
  leftpaddle.play();
  if (lefty>width-leftd/2)lefty=width-leftd/2;
  leftpaddle.rewind();
  if (righty<rightd/2) righty=rightd/2;
  rightpaddle.play();
  if (righty>width-rightd/2)righty=width-rightd/2;
  rightpaddle.rewind();
  //leftpaddle
  fill(0, 255, 255);
  circle(leftx, lefty, leftd);
  //right paddle
  fill(255, 0, 255);
  circle(rightx, righty, rightd);
  //moving paddle
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;

  if (ai==false) {
    if (upkey==true) righty=righty-5;
    if (downkey==true) righty=righty+5;
  } else {
    if(bally>righty) righty+=5;
  if(bally<righty)righty-=5;;  }

  fill(255, 130, 0);
  circle(ballx, bally, balld);
  if (timer<0) {

    //moving
    ballx=ballx+vx;
    bally=bally+vy;
  }
  //teleport back to center 
  if (ballx<0) {
    score.play();
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=50;
    vx= random(-5, 5);
    vy= random(-5, 5);
    score.rewind();
  }

  if (ballx>800) {
    score.play();
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=50;
    vx= random(-5, 5);
    vy= random(-5, 5);
    score.rewind();
  }
if(leftscore == winScore) {
  mode=gameover;
  }
  if( rightscore== winScore) {
   mode=gameover;
  }



  //bounce off wall
  if (bally < balld/2 ||bally > height-balld/2) {
    wall.play();
    vy=vy*-1;
    wall.rewind();
  }
}
 

void gameClicks() {
  
    mode=pause;
  
}
