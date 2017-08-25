
//defining the rectangles used for the drawing of the ribbon
class Rect {
  
  //setting the variables of the rectangles
  int x;
  int y;
  float size ;
  color c;
  
  Rect(int a, int b){
    x= a;
    y= b;
    size = 0;
  }
  
  // making the rectangles expand in size with a maxium of 100
  void update(){
    if(size <= 100){
    size ++;
    }
  }
  
  
  void draw() {
    rect(x, y, size,size);

  }
  
}