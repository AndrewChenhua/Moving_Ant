
import peasy.*;
import java.util.Iterator;

PeasyCam jCam;

Cpoint [][][] grid;

//Ant anty;
//Ant anty2;
//Ant anty3;
//Ant anty4;

Ant [] anty1 = new Ant[10];

int COLS = 50 ;
int ROWS = 50;
int DEPS = 50;


int Frame_Count = 0;
int Total_Frame = 2000;

void setup()
{
  size(1920, 1080, P3D);
  frameRate(60);
  jCam = new PeasyCam(this, 500, 500, 540, 1500);

  grid = new Cpoint[COLS][ROWS][DEPS];
  //anty1 = new Ant(COLS/2,ROWS/2,DEPS/2);
  //anty2 = new Ant(COLS/2,ROWS/2,0);
  //anty3 = new Ant(COLS/2,ROWS/2,0);
  //anty4 = new Ant(COLS/2,ROWS/2,0);
  
  
  
  for (int i = 0; i < COLS; i++)
  {
    for (int j = 0; j <ROWS; j++)
    {
      for(int d = 0; d <DEPS; d++)
      {
      PVector v = new PVector(i*20, j*20, d*20);
      grid[i][j][d]= new Cpoint(v, i, j ,d);
    }
  }
  }
  for (int aa = 0; aa< anty1.length; aa++)
  {
    anty1[aa] = new Ant ((COLS/2),(ROWS/2),(DEPS/2),0);//zero
  }
}

void draw()
{
  background(0);

  pushMatrix();

  translate(500, 500, 540);
  noFill();
  stroke(255, 100);
  strokeWeight(2);
  //box(1000);

  popMatrix();

  for (int i=0; i<COLS; i++)
  {
    for (int j= 0; j <ROWS; j++)
    {
      for(int d =0; d<DEPS; d++)
      grid[i][j][d].run();
    }
  }
  
  for (int aa = 0; aa< anty1.length; aa++)
  {
    anty1[aa].run();
  }
  //anty.run();
   //anty2.run();
   // anty3.run();
   //  anty4.run();
   
   
}
