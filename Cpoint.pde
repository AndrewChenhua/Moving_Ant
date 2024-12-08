class Cpoint
{
  //Variables
  int indexX;
  int indexY;
  int indexZ;
  int state = 0;
  PVector loc;
  

  //Constructor
  Cpoint(PVector _loc, int _indexX, int _indexY,int _indexZ)
  {
    indexX = _indexX;
    indexY = _indexY;
    indexZ = _indexZ;
    loc = _loc;
  }
  //Functions
  
  void run(){
  
    display();
    
    
  }
  
  void display(){
    
    if ( state == 0 )
    {
      
    stroke(255);
    strokeWeight(1);
    point(loc.x,loc.y,loc.z);
    }
   
    if (state == 1 )
    {
      pushMatrix();
      translate(loc.x, loc.y, loc.z);
      fill(255);
      box(5);
      popMatrix();
    }
}
}
