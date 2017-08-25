 //Ribbon_Girl sketch by Anouk Dijkman
//Image from https://i.pinimg.com/236x/cd/7a/49/cd7a49b5ed09af777f0527ec87ec7940--ballerina-illustration-ballerina-sketch.jpg

PFont font;
boolean hideText = false;
ArrayList<Rect> rectangles = new ArrayList<Rect>();  // makes it possible to draw an undefined number of rectangles
PImage img; // makes it possible to load an image.


void setup () {
  size(1024,780);
  img = loadImage("ribbon.png"); // loads the ribbon girl's image into the canvas
  background(255);
  
  //define the font and its size
  PFont f = createFont("Raleway", 30);
  textFont(f);

}

void draw() {
  
  // define what the canvas should display in 2 different situations.
  if (hideText){
    //display no text
  }
  
  else {
  // display the following instruction text
    text("1. Hide these instructions by pressing key 'h' and going to step 2.", 10, 60);
    text("2. Select a background color by pressing key 'b'.", 10, 110);
    text("3. Draw the ribbon by dragging the mouse across the screen" , 10, 160);
    text(" while changing the colour of the ribbon by pressing key 'r'." , 35, 200);
    text("4. Stop the ribbon from expanding further by pressing key 'c'." , 10, 250);
    text("5. Save your drawing by pressing key's'." , 10, 300);
    text("6. Restart your drawing by pressing key 'b'." , 10, 350);
    fill(0);
   }
   
   
  // uses the Rect class defined in the other tab and makes it possible to draw the rectancgles an unlimited number of times
  for(int size = 0; size < rectangles.size(); size++){
    fill(255);
    Rect Rect = rectangles.get(size);
    Rect.update();
    Rect.draw();
  }
  
  
  // indicates position of the ribbon girl image in the canvas
  image(img, height/2, 580, 200,200);
}
  
  
void mouseDragged() {
  rectangles.add(new Rect(mouseX, mouseY)); // draws a new rectangle at the position of the cursor when the mouse is dragged across the screen
  }

void keyPressed(){
  
  // saves one frame of the current drawing each time the S key is pressed
  if(key == 's'){
    saveFrame("screen-####.jpg");
  }
  
  //changes the colour of the background into a random pastel colour each time the B key is pressed.
  if (key == 'b'){
    background(random(200,255), random(200,255), random(200, 255)); 
    }
  
  // changes color of the ribbon to a random pastel colour each time the R key is pressed
   if (key == 'r'){
    stroke(random(200,255), random(200,255), random(200, 255));
    }
    
  // stops the update function from keeping going
 if(key == 'c'){
      rectangles.clear();
    }
  
  // sets the current text visibility to its opposite by using the previously defined if/esle statement
  if (key == 'h'){
  hideText = ! hideText; 
    }
    
  }