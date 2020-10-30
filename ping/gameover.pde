void gameover() {

   if(leftscore == winScore) {
    text("left wins!",275,400);
  }
  if( rightscore== winScore) {
   text("right wins!",275,400);
  }
}
 

void gameoverClicks() {
  reset();
  mode = intro;
}
