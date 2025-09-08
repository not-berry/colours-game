color correct = #2ABC32;
color wrong = #BC2A2A;

float clickedX = 0;
float releasedX = 0;

void game() {
  background(white);
  if(releasedX > clickedX) {
    fill(correct, 50);
    rect(-100,-100, width+200,height+200);
  } else if(releasedX < clickedX) {
    fill(wrong, 50);
    rect(-100,-100, width+200,height+200);
  }
}

void gamePressed() {
  clickedX = mouseX;
  releasedX = mouseX;
}

void gameReleased() {
  releasedX = mouseX;
}
