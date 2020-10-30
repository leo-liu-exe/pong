void intro() {
  intros.play();
  background(0);
  textSize(100);
  fill(0, 255, 255);
  text("PONG", 255, 400);

  if (mouseX>100&&mouseX<350&&mouseY>500&&mouseY<625) {
    textSize(50);
    fill(100);
    rect(100, 500, 250, 125);
    fill(255);
    text("1 player", 120, 575);
  } else {
    strokeWeight(1);
    textSize(50);
    fill(255);
    rect(100, 500, 250, 125);
    fill(0);
    text("1 player", 120, 575);
  }
  if (mouseX>450&&mouseX<650&&mouseY>500&&mouseY<625) {
    textSize(50);
    fill(100);
    rect(450, 500, 250, 125);
    fill(255);
    text("2 player", 470, 575);
  } else {
    strokeWeight(1);
    textSize(50);
    fill(255);
    rect(450, 500, 250, 125);
    fill(0);
    text("2 player", 470, 575);
  }
}

void introClicks() {
  if (mouseX>100&&mouseX<350&&mouseY>500&&mouseY<625) {
    mode=game;
    intros.pause();
    intros.rewind();
    ai=true;
  }

  if (mouseX>450&&mouseX<650&&mouseY>500&&mouseY<625) {
    mode=game;
    intros.pause();
    intros.rewind();
    ai=false;
  }
}
