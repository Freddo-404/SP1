class Square { //class for square
  float x; 
  float y;
  float boxWidth;
  float boxHeight;

  Square() { //constructor for square
    x = random(width)-10; // -10 so im sure it hits the for left side of the screen.
    y = -800; // spawn out side the screen
    boxWidth = random(100,800); //so i can spawn from 100-800;
    boxHeight = random(100,800); // so i can spawn from 100-800;
  }

  void display() { //method for displaying square
   float a=random(0,255);// random red color
    float b=random(0,255); // random green color
    float c=random(0,255); // random blue color
    fill(a,b,c); // fill with random rgb so it flashes when running through draw
    rect(x,y,boxWidth,boxHeight); // creating the squares
  }

  void end() { // method for endning game if the falling squares hit the mouse
    if (mouseX > x && mouseX < x+boxWidth && mouseY > y && mouseY < y+boxHeight) {
      noLoop(); // stops the loops and "ends" the game
      textSize(50);// for text display
      fill(255,0,0); // so text is red
      text("GAME OVER you lasted: "+score+ " seconds",width/3,height/2); // writes game over and display how long the player has survived
      
      // this to give a litlle message to the player when the game end
        if(score < 10){
  text("You suck",width/3,height/2+35);
    }
     else if(score > 15 && score < 20){
  text("Better but still bad",width/3,height/2+40);
    }
     else if(score > 20 && score < 30){
  text("Getting up there",width/3,height/2+40);
    }
     else if(score >= 30 && score < 40){
  text("Some what good",width/3,height/2+40);
    }
    else if(score >= 40&& score < 50){
  text("Pro in the making?",width/3,height/2+40);
    }
       else if(score >= 50 && score <60){
  text("Well done",width/3,height/2+40);
    }
       else if(score > 60){
  text("Pro",width/3,height/2+40);
    }
  }
  }

  void move(float i) { //makes sqaures fall at random pace kinda flawed due to it switchs up the speed.
   float r = random(1,30);
    y=y+i;
  }
}
