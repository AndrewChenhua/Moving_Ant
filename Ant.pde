class Ant {


  //Variables

  int idX;
  int idY;
  int idZ;
  int dir;

  //Constructor
  //up and down
  
  Ant(int _idX, int _idY, int _idZ, int _dir)
  {
    idX = _idX;
    idY = _idY;
    idZ = _idZ;
    dir = _dir;
  }

  void run() 
  {
    moveRule();
    borderRule();
    display();
  }
  void moveRule()
  {
    if (grid[idX][idY][idZ].state == 1)
    {
      //turnRight();
      turnUp();
      grid[idX][idY][idZ].state = 0;
      moveForward();
    } else
    {
      //turnLeft();
      turnDown();
      grid[idX][idY][idZ].state = 1;
      moveForward();
    }
  }
  
  void turnUp()
  {
    
    if(dir < 5)
    {
      dir++;
    }else{
      dir = 0;
    }
  }
  
  void turnDown()
  {
       if(dir> 0)
    {
      dir--;
    }else{
      dir = 5;
    }
      
  }
  
   void turnRight()
  {
    if(dir<3)
    {
      dir++;
    }else{
      dir = 0;
    }
      
  }
  void turnLeft()
  {
    if(dir>0)
    {
      dir--;
    }else{
      dir=4;
    }
  }
 
  
  void moveForward()
  {
    if (dir==0)
    {
      idY--;
    }
    
    if (dir == 1)
    {
      idX++;
    }
    
    if (dir==3 )
    {
      idY++;
    }
 if (dir==4 )
    {
      idX--;
    }
     if (dir == 2 )
    {
      idZ++;
      
    }
  if (dir== 5)
    {
      idZ--;
    }
  }


void borderRule()
{
  if (idX > COLS -1)
  {
    idX = 0;
  }
  if (idX < 0)
  {
    idX = COLS -1;
  }
  if (idY > ROWS -1)
  {
    idY = 0;
  }
  if (idY <0)
  {
    idY = ROWS -1;
  }
  if (idZ >DEPS -1)
  {
    idZ = 0;
  }
  if (idZ <0)
  {
    idZ = DEPS -1;
  }
}
void display() {

  PVector loc = grid[idX][idY][idZ].loc.copy();
  pushMatrix();

  translate(loc.x, loc.y, loc.z);
  fill(255, 0, 0);
  box(10);

  popMatrix();
  
  println(dir);
}
}
