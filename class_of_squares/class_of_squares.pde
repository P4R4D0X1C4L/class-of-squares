class Square{                        // Class name
  int h; 

  public Square(int h){              // Constructor
  this.h = h;                        // this. is reffering to the 'h' I have as a parameter, while the second 'h' is reffering to the 'h' variable which is in the global scope
  square(h, random(width/2), random(height/2));
  }
  
  int getArea(){                    // Method within my Class
    return h*h;
  }
  
  void render(){                    // Method within my Class
  rect(random(width), random(height), h, h);
  }
  
}

void setup(){
  size(400, 400);
  Square[] mySquares = new Square[30];    // 30 antallet af kvadrater
  /*
  for (int i = 0; i < 30; ++i){
  mySquares[i] = new Square(30);
  }*/
  for (Square s : mySquares){
  fill(random(1, 255), random(1, 255), random(1,255));
  s = new Square((int) random(1,100));                     // 44 er antallet af kvadrater
  s.render();
  }
  
  Square f = new Square(40);
  println(f.getArea());                  // Printing 
  
  
  
  
}
