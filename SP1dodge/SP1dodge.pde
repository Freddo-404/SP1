ArrayList<Square> squares = new ArrayList<>(); //arraylist to keep the squares in
int score = 0; // need this to count the score
void setup() {
  fullScreen(); // makes the game fullscrren
  frameRate(60); // set framerate to 60
  }


void draw() {
  background(255);
  rect(mouseX, mouseY, 1, 1);
  displayScore(); // to display score
  
  if (frameCount % 60 == 0) {   // Spawns sqaures with framecount 
    squares.add(new Square()); // adds new square object to the arraylist
  }

  for (int i = 0; i < squares.size(); i++) { //for loop that runs methods so the squares can get spawned from arraylist
   //methods made in the square calss
    Square square = squares.get(i);
    square.move(random(1,30));
    square.display();
    square.end();
    

    // Remove squares if they move under the screen
    if (square.y > height) {
      squares.remove(i);
    }
  }
}

int displayScore() { // return method to make score calculated from framecount (use 60 as framerate is 60)
  score = frameCount /60;
  return score;
  }
